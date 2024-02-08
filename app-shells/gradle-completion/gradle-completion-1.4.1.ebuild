# Copyright 1999-2024 LoaTcHi
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit shell-completion

DESCRIPTION="Bash and Zsh completion support for Gradle."
HOMEPAGE="https://github.com/gradle/gradle-completion"

SRC_URI="https://github.com/gradle/gradle-completion/archive/refs/tags/v${PV}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"

src_install(){
    dodoc README.md

    sed -i '/complete \-F _gradle .\/gradle/d' gradle-completion.bash

    newbashcomp gradle-completion.bash gradle
    bashcomp_alias gradle gradlew gradlew.bat gradle.bat
    dozshcomp _gradle
}
