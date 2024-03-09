# Copyright 1999-2024 LoaTcHi
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit shell-completion

DESCRIPTION="Add doas support for bash-completion using aarchetype's pull request."
HOMEPAGE="https://github.com/scop/bash-completion/pull/766"
SRC_URI="https://raw.githubusercontent.com/scop/bash-completion/2d7a7f0415158f0e5733bb259c36550fa673c3c2/completions/doas"

LICENSE="UNKNOWN"
SLOT="0"
KEYWORDS="amd64 x86"

S=${WORKDIR}

src_unpack(){
    cp ${DISTDIR}/doas ${WORKDIR}
}

src_install(){
    dobashcomp doas
}
