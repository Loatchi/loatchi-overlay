# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson xdg-utils gnome2-utils vala

DESCRIPTION="Utility library for GNOME apps."
HOMEPAGE="https://gitlab.gnome.org/raggesilver/marble"
SHA="f240b2ec7d5cdacb8fdcc553703420dc5101ffdb"
SRC_URI="https://gitlab.gnome.org/raggesilver/marble/-/archive/${SHA}/marble-${SHA}.tar"

LICENSE="GPL-3"
SLOT="0"

KEYWORDS="~amd64 amd64"

BDEPEND="
    <dev-lang/vala-0.56.11
"

RDEPEND="
    dev-libs/glib
    gui-libs/gtk
"

src_prepare() {

    # was releases as '42.alpha0' and yet 2.0.0 is here (it causes issues with blackblock needing >=42
    sed -i "s/2.0.0/42/g" meson.build

    vala_setup
    default
}

src_configure() {
    local emesonargs=( )
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
