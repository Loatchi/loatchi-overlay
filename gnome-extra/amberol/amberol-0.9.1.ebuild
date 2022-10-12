# Copyright 2022 Loatchi
# Distributed under the terms of the GNU General Public License v2

EAPI=8
DESCRIPTION="A small and simple sound and music player that is well integrated with GNOME."
HOMEPAGE="https://gitlab.gnome.org/World/amberol/"

SRC_URI="https://gitlab.gnome.org/World/${PN}/-/archive/${PV}/${P}.tar.gz"
LICENSE="GPL3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
        >=gui-libs/gtk-4.6.0
        gui-libs/libadwaita
        >=media-libs/gst-plugins-bad-1.16
        >=media-libs/gstreamer-1.16
        >=media-libs/gst-plugins-base-1.16
        >=media-libs/gst-plugins-bad-1.16
"
DEPEND="${RDEPEND}"
BDEPEND="dev-util/meson"


inherit meson

src_compile(){
    meson_src_compile
}

src_install(){
    meson_src_install
}
