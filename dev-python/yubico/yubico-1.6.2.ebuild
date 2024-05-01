# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{6..11} )
inherit distutils-r1 pypi
DISTUTILS_EXT=1

DESCRIPTION="This library allows you to write entries to a KeePass database."
HOMEPAGE="https://github.com/libkeepass/pykeepass"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="debug"

RDEPEND="
	>=dev-python/requests-2.31.0[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}"

distutils_enable_tests pytest

src_install(){
    default
}