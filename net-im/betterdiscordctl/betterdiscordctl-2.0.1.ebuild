# Copyright 2022 Loatchi
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

src_install(){
    exeinto "/usr/bin"
    doexe "betterdiscordctl"
}
