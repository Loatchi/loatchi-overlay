# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DESCRIPTION="A utility for managing BetterDiscord on Linux"
HOMEPAGE="https://github.com/bb010g/betterdiscordctl"

SRC_URI="https://github.com/bb010g/${PN}/archive/refs/tags/v${PV}.tar.gz"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="net-misc/curl"
DEPEND="${RDEPEND}"
BDEPEND=""

src_prepare(){
    default
    sed -i "s/DISABLE_SELF_UPGRADE=/DISABLE_SELF_UPGRADE=1/g" betterdiscordctl
}

src_install(){
    exeinto "/usr/bin"
    doexe "betterdiscordctl"
}
