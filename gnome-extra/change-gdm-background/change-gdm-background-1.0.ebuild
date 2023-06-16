# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DESCRIPTION="This script automates the process of setting an image or color in GDM's background"
HOMEPAGE="https://github.com/Loatchi/gentoo-change-gdm-background"

SRC_URI="https://github.com/Loatchi/gentoo-change-gdm-background/archive/refs/tags/${PV}.tar.gz"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64 amd64"
IUSE=""

RDEPEND="dev-libs/glib"
DEPEND="${RDEPEND}"
BDEPEND=""

# Do not work as intended on OpenRC
# If anyone manage to make it work, feel free to contact me
IUSE="systemd"
REQUIRED_USE="systemd"

S="${WORKDIR}/gentoo-change-gdm-background-${PV}"

src_install(){
    exeinto "/usr/bin"
    newexe "gentoo-change-gdm-background" "change-gdm-background"
}