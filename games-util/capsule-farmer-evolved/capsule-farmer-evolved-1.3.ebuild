# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_10 )

inherit python-r1 systemd

DESCRIPTION="A program to trick lolesports.com into thinking you are watching streams."
HOMEPAGE="https://github.com/LeagueOfPoro/CapsuleFarmerEvolved"
SRC_URI="https://github.com/LeagueOfPoro/CapsuleFarmerEvolved/archive/refs/tags/v${PV}.tar.gz"

IUSE="+systemd"

LICENSE="CC-BY-NC-SA-4.0"
SLOT="0"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"
DEPEND="${PYTHON_DEPS}
    dev-python/requests
    dev-python/cloudscraper
    dev-python/httpx
    dev-python/beautifulsoup4
    dev-python/pyyaml
    dev-python/rich
    dev-python/pyjwt
"
RDEPEND="${DEPENDS}"

KEYWORDS="amd64"

src_unpack() {
  unpack ${A}
  S="${WORKDIR}/$(ls ${WORKDIR})"
}

src_install() {

    einfo ${S}

    insinto "/usr/share/${PN}"
    doins -r "${S}/src"/*
    doins -r "${S}/config"

    elog "Do not forget to change the credentials in /usr/share/${PN}/config/config.yaml"

    echo "#!/bin/sh" >> "${PN}"
    echo "cd \"/usr/share/${PN}\"" >> "${PN}"
    echo "python main.py" "\"\$@\"" >> "${PN}"

    dobin "${PN}"

    cat <<-EOF > "${PN}.service"
		[Unit]
		Description=CapsuleFarmerEvolved
		After=network.target

		[Service]
		ExecStart=/usr/bin/${PN}
		WorkingDirectory=/path/to/CapsuleFarmerEvolved
		StandardOutput=syslog
		StandardError=syslog
		SyslogIdentifier=CapsuleFarmerEvolved
		User=root
		Group=root
		Restart=always
		RestartSec=5

		[Install]
		WantedBy=multi-user.target
		EOF

    systemd_dounit "${PN}.service"

    if use systemd; then
        elog "You can start the ${PN} daemon by starting the ${PN} service: "
        elog "systemctl start ${PN}.service"
    fi
}



