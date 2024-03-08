# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson xdg-utils gnome2-utils vala

DESCRIPTION="A beautiful GTK 4 terminal."
HOMEPAGE="https://gitlab.gnome.org/raggesilver/blackbox"
SRC_URI="https://gitlab.gnome.org/raggesilver/blackbox/-/archive/v${PV}/blackbox-v${PV}.tar"

LICENSE="GPL-3"
SLOT="0"


KEYWORDS="~amd64 amd64"

BDEPEND="
    <dev-lang/vala-0.56.15
"

RDEPEND="
    dev-libs/glib
    gui-libs/gtk
    >=gui-libs/libadwaita-1.3.0
    gui-libs/libpqmarble
    gui-libs/vte
    dev-libs/json-glib
    dev-libs/libpcre
    dev-libs/libxml2
    gnome-base/librsvg
    dev-libs/libgee
    media-libs/graphene
"

src_prepare() {

    # marble is a lib for writing gnome software, however its name changed to 'pqmarble' which leads to a build failure
    # here. Changing the name to match the one in loatchi's tree is sufficient
    # sed -i "s/marble/pqmarble/g" src/meson.build
    # find src -type f -exec sed -i 's/Marble/PQMarble/g' {} \;

    # should be done in source code in the future : https://gitlab.gnome.org/raggesilver/blackbox/-/merge_requests/60/pipelines DONE !
    # sed -i "s/'appdata'/'metainfo'/g" data/meson.build

    vala_setup
    default
}

src_configure() {
    local emesonargs=(
        -Dblackbox_is_flatpak=false
    )
	meson_src_configure
}

src_unpack() {
    unpack ${A}
    mv $(ls) ${S}
}

src_install() {
	meson_src_install
}

pkg_preinst() {
   gnome2_schemas_savelist
}

pkg_postinst() {
   gnome2_schemas_update
   xdg_icon_cache_update
   xdg_desktop_database_update
}

pkg_postrm() {
   gnome2_schemas_update
   xdg_icon_cache_update
   xdg_desktop_database_update
}
