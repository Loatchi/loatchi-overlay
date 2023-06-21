# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Jailbreak for iPhone 5s through iPhone X, iOS 12.0 and up"
HOMEPAGE="https://checkra.in/"

IUSE="amd64 arm arm64 x86"

SRC_URI="
    amd64? ( https://assets.checkra.in/downloads/linux/cli/x86_64/dac9968939ea6e6bfbdedeb41d7e2579c4711dc2c5083f91dced66ca397dc51d/checkra1n -> ${P}-amd64 )
    arm? ( https://assets.checkra.in/downloads/linux/cli/arm/ff05dfb32834c03b88346509aec5ca9916db98de3019adf4201a2a6efe31e9f5/checkra1n -> ${P}-arm )
    arm64? ( https://assets.checkra.in/downloads/linux/cli/arm64/43019a573ab1c866fe88edb1f2dd5bb38b0caf135533ee0d6e3ed720256b89d0/checkra1n -> ${P}-arm64 )
    x86? ( https://assets.checkra.in/downloads/linux/cli/i486/77779d897bf06021824de50f08497a76878c6d9e35db7a9c82545506ceae217e/checkra1n -> ${P}-x86 )
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