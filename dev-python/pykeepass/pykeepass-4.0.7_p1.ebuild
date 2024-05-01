# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{7..12} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="This library allows you to write entries to a KeePass database."
HOMEPAGE="https://github.com/libkeepass/pykeepass"


# SRC_URI="https://github.com/libkeepass/pykeepass/archive/refs/tags/v${PV}.tar.gz"
SRC_URI="https://files.pythonhosted.org/packages/c5/3a/dc4c067aa600e7fdb38a4981ce40768fc75c6b6b708f305ec7c94c767f72/pykeepass-4.0.7.post1.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-python/argon2-cffi-23.1.0[${PYTHON_USEDEP}]
	>=dev-python/construct-2.10.68[${PYTHON_USEDEP}]
	>=dev-python/lxml-4.8.0[${PYTHON_USEDEP}]
	>=dev-python/pycryptodome-3.14.1[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}"

S="${WORKDIR}/pykeepass-4.0.7.post1"

src_prepare() {
	distutils-r1_src_prepare
	sed -i 's/Cryptodome/Crypto/g' pykeepass/kdbx_parsing/{common,twofish}.py || die
}