# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{6..12} )
inherit distutils-r1 pypi
DISTUTILS_EXT=1
DISTUTILS_USE_PEP517=setuptools

DESCRIPTION="A complete PKCS#11 wrapper for Python."
HOMEPAGE="
	https://github.com/LudovicRousseau/PyKCS11
	https://pypi.org/project/PyKCS11/
"

DEPEND="${RDEPEND}"

IUSE="debug"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

distutils_enable_tests pytest