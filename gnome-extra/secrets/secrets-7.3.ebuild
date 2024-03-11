# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_{9..11} )

inherit meson python-single-r1 xdg-utils gnome2-utils


DESCRIPTION="A password manager which integrates perfectly with the GNOME desktop"
HOMEPAGE="https://gitlab.gnome.org/World/secrets"
SRC_URI="https://gitlab.gnome.org/World/secrets/-/archive/${PV}/secrets-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"


KEYWORDS="amd64 ~amd64"

DEPEND=""
RDEPEND="${DEPEND}
    ${PYTHON_DEPS}
	dev-libs/glib
	dev-libs/gobject-introspection
	gui-libs/gtk
	gui-libs/libadwaita
	dev-python/pyotp
	dev-python/validators
	dev-python/pykeepass
	dev-python/zxcvbn
"

src_prepare(){
    default

    sed -i 's/Cryptodome/Crypto/g' gsecrets/utils.py || die
    sed -i '/gnome.post_install/,$d' meson.build || die
}

src_configure() {
    local emesonargs=(
	)
	meson_src_configure
}

src_install() {
	meson_src_install
	python_optimize

	python_fix_shebang "${D}/usr/bin/secrets"
}

src_test() {
	virtx meson_src_test
}

pkg_preinst() {
   gnome2_schemas_savelist
}

pkg_postinst() {
   gnome2_schemas_update
   xdg_icon_cache_update
   xdg_desktop_database_update
   xdg_mimeinfo_database_update
}

pkg_postrm() {
   gnome2_schemas_update
   xdg_icon_cache_update
   xdg_desktop_database_update
   xdg_mimeinfo_database_update
}
