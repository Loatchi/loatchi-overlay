# Copyright 2022 Loatchi
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DESCRIPTION="This script automates the process of setting an image or color in GNOME Display Manager 3 background"
HOMEPAGE="https://github.com/anirudhgupta109/arch-change-gdm-background"

SRC_URI="https://github.com/anirudhgupta109/arch-change-gdm-background/archive/refs/heads/master.zip"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-libs/glib"
DEPEND="${RDEPEND}"
BDEPEND=""

# Do not work as intended on OpenRC
IUSE="systemd"
REQUIRED_USE="systemd"

S="${WORKDIR}/arch-change-gdm-background-master"

src_install(){
    exeinto "/usr/bin"
    newexe "arch-change-gdm-background" "change-gdm-background"
}