# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Jailbreak for iPhone 5s through iPhone X, iOS 12.0 and up"
HOMEPAGE="https://checkra.in/"

IUSE="amd64 arm arm64 x86"

SRC_URI="
    amd64? ( https://assets.checkra.in/downloads/linux/cli/x86_64/5323e3cf5a2c2d12d39b4e8489bab0250c0c002e9d1c21213987f77936b3de6c/checkra1n -> ${P}-amd64 )
    arm? ( https://assets.checkra.in/downloads/linux/cli/arm/f2ae569ff84a0a95697bbf849490b139ecb1aa8133abb29d33e616ac63ae8489/checkra1n -> ${P}-arm )
    arm64? ( https://assets.checkra.in/downloads/linux/cli/arm64/81047292f1f35e595f2a6bb67f9226a6772ffbc51944aa4c7a7c806fa4698093/checkra1n -> ${P}-arm64 )
    x86? ( https://assets.checkra.in/downloads/linux/cli/i486/a0d4a5e2046582188d8e1ccfa91579947ebe5ce4e3c27ea718a14ce69a780b88/checkra1n -> ${P}-x86 )
"

LICENSE="UNKNOWN"
SLOT="0"

KEYWORDS="~amd64 ~arm ~arm64 ~x86"

RDEPEND="app-pda/usbmuxd"

S=${WORKDIR}

src_install(){
    exeinto "/usr/bin"
    newexe "${DISTDIR}/${P}-${ARCH}" "checkra1n"
}