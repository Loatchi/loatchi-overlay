# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Jailbreak for iPhone 5s through iPhone X, iOS 12.0 and up"
HOMEPAGE="https://checkra.in/"

IUSE="amd64 arm arm64 x86"

SRC_URI="
    amd64? ( https://assets.checkra.in/downloads/linux/cli/x86_64/845bd19fb857e5546ba312e768ab42e8aeab7a34470b07f60a9892e92fe8273e/checkra1n -> ${P}-amd64 )
    arm? ( https://assets.checkra.in/downloads/linux/cli/arm/b62b07ac9ed2ed6208066b396772d6073f4462057828d4fe6c777f3544d58778/checkra1n -> ${P}-arm )
    arm64? ( https://assets.checkra.in/downloads/linux/cli/arm64/74c1e85fa3de91a89db95c6d39b65553ed542c7827a4d0ae5078717175bc70f8/checkra1n -> ${P}-arm64 )
    x86? ( https://assets.checkra.in/downloads/linux/cli/i486/9f497cbb9ecffec91f5c534c53911c433a8cfee71e6e577aaa4a640f0ddb7cd4/checkra1n -> ${P}-x86 )
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