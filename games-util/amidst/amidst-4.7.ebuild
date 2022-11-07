# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit java-pkg-2

DESCRIPTION="${MAVEN_ID}"
HOMEPAGE="https://github.com/toolbox4minecraft/amidst"
SRC_URI="https://github.com/toolbox4minecraft/amidst/releases/download/v${PV}/amidst-v4-7.zip"

LICENSE="GNU"
SLOT="0"

CDEPEND=""

DEPEND="
	>=virtual/jdk-17:*
"

RDEPEND="
	>=virtual/jre-17:*
"

S="${WORKDIR}"

src_install(){
    java-pkg_newjar "Amidst.app/Contents/Java/amidst/amidst/4.7/amidst-4.7.jar" "./${PN}.jar"
    java-pkg_dolauncher
}