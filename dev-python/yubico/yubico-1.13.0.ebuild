# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# python 6 to 8 are supported, however python >3.9 is not
# we should handle this package with care...
PYTHON_COMPAT=( python3_{6..12} )
inherit distutils-r1
DISTUTILS_EXT=1
DISTUTILS_USE_PEP517=setuptools

DESCRIPTION="This library allows you to write entries to a KeePass database."
HOMEPAGE="https://github.com/Kami/python-yubico-client"
SRC_URI="https://github.com/Kami/python-yubico-client/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="debug"

RDEPEND="
	>=dev-python/requests-2.31.0[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}"

S="${WORKDIR}/python-yubico-client-${PV}"

distutils_enable_tests pytest