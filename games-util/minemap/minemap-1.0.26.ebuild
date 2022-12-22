# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit java-pkg-2 desktop xdg-utils

HOMEPAGE="https://github.com/hube12/Minemap"
SRC_URI="https://github.com/hube12/Minemap/releases/download/1.0.26/MineMap-1.0.26.jar -> ${P}.jar"

LICENSE="GNU"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc64 ~x86 ~amd64-linux ~x86-linux"

CDEPEND=""

DEPEND="
	>=virtual/jdk-8:*
"

RDEPEND="
	>=virtual/jre-8:*
"

S="${WORKDIR}"

src_install(){
    java-pkg_newjar "${DISTDIR}/${P}.jar" "./${PN}.jar"
    java-pkg_dolauncher "${PN}" --pkg_args "--no-update" # making sure the package is updated using Portage
    newicon icon/others/logo.png "${PN}.png"
    make_desktop_entry "${PN}" "${PN}" "${PN}"
}

pkg_postinst() {
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_icon_cache_update
}
