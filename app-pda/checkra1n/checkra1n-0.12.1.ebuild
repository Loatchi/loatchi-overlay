# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Jailbreak for iPhone 5s through iPhone X, iOS 12.0 and up"
HOMEPAGE="https://checkra.in/"

IUSE="amd64 arm arm64 x86"

SRC_URI="
    amd64? ( https://assets.checkra.in/downloads/linux/cli/x86_64/63282886157dd08079c8e41522fdc6d58cfecda783ea8cca79ffc1116f13c355/checkra1n -> ${P}-amd64 )
    arm? ( https://assets.checkra.in/downloads/linux/cli/arm/1e0082c5ea7c62f17c54ce4cc709a4daf452b93bea7e9d9bc23799656ee56df9/checkra1n -> ${P}-arm )
    arm64? ( https://assets.checkra.in/downloads/linux/cli/arm64/bf5a0f30e208ec525617e1658dde27513fcca6e37ede1b6b361b7bae1ec7754b/checkra1n -> ${P}-arm64 )
    x86? ( https://assets.checkra.in/downloads/linux/cli/i486/7ea7cc69d58308e2e96bc9f40f63f4f135d3b8fafd49a1bb4f4a849876f49fdb/checkra1n -> ${P}-x86 )
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