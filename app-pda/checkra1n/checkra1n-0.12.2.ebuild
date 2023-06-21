# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Jailbreak for iPhone 5s through iPhone X, iOS 12.0 and up"
HOMEPAGE="https://checkra.in/"

IUSE="amd64 arm arm64 x86"

SRC_URI="
    amd64? ( https://assets.checkra.in/downloads/linux/cli/x86_64/4bf2f7e1dd201eda7d6220350db666f507d6f70e07845b772926083a8a96cd2b/checkra1n -> ${P}-amd64 )
    arm? ( https://assets.checkra.in/downloads/linux/cli/arm/f060f8e27005b553de42b04abd0af6b18eeacd005e68b126e991c6096f51b0b7/checkra1n -> ${P}-arm )
    arm64? ( https://assets.checkra.in/downloads/linux/cli/arm64/11c0a214dc0fc19050a8103ed5b0ebf4874df3191e34491e177f3af3baced0e7/checkra1n -> ${P}-arm64 )
    x86? ( https://assets.checkra.in/downloads/linux/cli/i486/7926a90f4d0b73bdc514bd813e1443e4fc579e1674e34622b4bd1002a3322e0f/checkra1n -> ${P}-x86 )
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