# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_10 )

inherit python-r1 systemd wrapper

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
    dev-python/imaplib2
"
RDEPEND="${DEPENDS}"

KEYWORDS="amd64"

PATCHES=(
    "${FILESDIR}/capsule-farmer-evolved-1.4-change-config-and-logs-to-home-dir.diff"
)

src_unpack() {
  unpack ${A}
  S="${WORKDIR}/$(ls ${WORKDIR})"
}

src_install() {
    local DIR="/opt/${PN}"

    einfo ${S}

    insinto "${DIR}"
    doins -r "${S}/src"/*

    elog "Do not forget to add the credentials in ~/.cache/capsule-farmer-evolved/config/config.yaml"

    fperms 755 "${DIR}/main.py"

    echo "#!/bin/sh" >> "${PN}"
    echo "cd \"${DIR}\"" >> "${PN}"
    echo "python main.py" "\"\$@\"" >> "${PN}"

    dobin "${PN}"

    systemd_douserunit "${FILESDIR}/capsule-farmer-evolved.service"

    if use systemd; then
        elog "You can start the ${PN} daemon by starting the capsule-farmer-evolved service: "
        elog "    systemctl start --user ${PN}.service"
    fi
}



