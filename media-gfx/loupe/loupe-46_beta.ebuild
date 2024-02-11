# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8


CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aho-corasick@1.1.2
	anstream@0.6.11
	anstyle@1.0.6
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anyhow@1.0.79
	arc-swap@1.6.0
	ashpd@0.7.0
	async-broadcast@0.5.1
	async-channel@2.2.0
	async-executor@1.8.0
	async-fs@1.6.0
	async-fs@2.1.1
	async-global-executor@2.4.1
	async-io@1.13.0
	async-io@2.3.1
	async-lock@2.8.0
	async-lock@3.3.0
	async-net@2.0.0
	async-process@1.8.1
	async-recursion@1.0.5
	async-signal@0.2.5
	async-task@4.7.0
	async-trait@0.1.77
	atomic-waker@1.1.2
	autocfg@1.1.0
	backtrace@0.3.69
	bitflags@1.3.2
	bitflags@2.4.2
	block@0.1.6
	block-buffer@0.10.4
	blocking@1.5.1
	bytemuck@1.14.3
	byteorder@1.5.0
	cairo-rs@0.19.1
	cairo-sys-rs@0.19.1
	cc@1.0.83
	cfg-expr@0.15.7
	cfg-if@1.0.0
	colorchoice@1.0.0
	concurrent-queue@2.4.0
	cpufeatures@0.2.12
	crc32fast@1.3.2
	crossbeam-utils@0.8.19
	crypto-common@0.1.6
	derivative@2.2.0
	digest@0.10.7
	dunce@1.0.4
	enumflags2@0.7.8
	enumflags2_derive@0.7.8
	env_filter@0.1.0
	env_logger@0.11.1
	equivalent@1.0.1
	errno@0.3.8
	event-listener@2.5.3
	event-listener@3.1.0
	event-listener@4.0.3
	event-listener@5.0.0
	event-listener-strategy@0.4.0
	event-listener-strategy@0.5.0
	fastrand@1.9.0
	fastrand@2.0.1
	field-offset@0.3.6
	flate2@1.0.28
	foreign-types@0.5.0
	foreign-types-macros@0.2.3
	foreign-types-shared@0.3.1
	form_urlencoded@1.2.1
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-io@0.3.30
	futures-lite@1.13.0
	futures-lite@2.2.0
	futures-macro@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	gdk-pixbuf@0.19.0
	gdk-pixbuf-sys@0.19.0
	gdk4@0.8.0
	gdk4-sys@0.8.0
	gdk4-wayland@0.8.0
	gdk4-wayland-sys@0.8.0
	gdk4-x11@0.8.0
	gdk4-x11-sys@0.8.0
	generic-array@0.14.7
	getrandom@0.2.12
	gettext-rs@0.7.0
	gettext-sys@0.21.3
	gimli@0.28.1
	gio@0.19.0
	gio-sys@0.19.0
	glib@0.19.0
	glib-macros@0.19.0
	glib-sys@0.19.0
	glycin@1.0.0-beta
	glycin-utils@1.0.0-beta
	gobject-sys@0.19.0
	graphene-rs@0.19.0
	graphene-sys@0.19.0
	gsk4@0.8.0
	gsk4-sys@0.8.0
	gtk4@0.8.0
	gtk4-macros@0.8.0
	gtk4-sys@0.8.0
	gvdb@0.5.3
	gvdb-macros@0.1.11
	gweather-sys@4.4.0
	hashbrown@0.14.3
	heck@0.4.1
	hermit-abi@0.3.5
	hex@0.4.3
	humantime@2.1.0
	idna@0.5.0
	indexmap@2.2.2
	instant@0.1.12
	io-lifetimes@1.0.11
	itoa@1.0.10
	jobserver@0.1.28
	kamadak-exif@0.5.5
	lazy_static@1.4.0
	lcms2@6.0.4
	lcms2-sys@4.0.4
	libadwaita@0.6.0
	libadwaita-sys@0.6.0
	libc@0.2.153
	libgweather@4.4.0
	libseccomp@0.3.0
	libseccomp-sys@0.2.1
	linux-raw-sys@0.3.8
	linux-raw-sys@0.4.13
	litrs@0.4.1
	locale_config@0.3.0
	log@0.4.20
	malloc_buf@0.0.6
	memchr@2.7.1
	memfd@0.6.4
	memmap2@0.9.4
	memoffset@0.7.1
	memoffset@0.9.0
	miniz_oxide@0.7.2
	mutate_once@0.1.1
	nix@0.26.4
	nix@0.27.1
	objc@0.2.7
	objc-foundation@0.1.1
	objc_id@0.1.1
	object@0.32.2
	once_cell@1.19.0
	ordered-stream@0.2.0
	pango@0.19.0
	pango-sys@0.19.0
	parking@2.2.0
	percent-encoding@2.3.1
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	piper@0.2.1
	pkg-config@0.3.29
	polling@2.8.0
	polling@3.4.0
	ppv-lite86@0.2.17
	proc-macro-crate@1.3.1
	proc-macro-crate@3.1.0
	proc-macro-error@1.0.4
	proc-macro-error-attr@1.0.4
	proc-macro2@1.0.78
	quick-xml@0.31.0
	quote@1.0.35
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	regex@1.10.3
	regex-automata@0.4.5
	regex-syntax@0.8.2
	rustc-demangle@0.1.23
	rustc_version@0.4.0
	rustix@0.37.27
	rustix@0.38.31
	ryu@1.0.16
	safe-transmute@0.11.2
	same-file@1.0.6
	semver@1.0.21
	serde@1.0.196
	serde_derive@1.0.196
	serde_json@1.0.113
	serde_repr@0.1.18
	serde_spanned@0.6.5
	sha1@0.10.6
	signal-hook-registry@1.4.1
	slab@0.4.9
	smallvec@1.13.1
	socket2@0.4.10
	static_assertions@1.1.0
	syn@1.0.109
	syn@2.0.48
	system-deps@6.2.0
	target-lexicon@0.12.13
	temp-dir@0.1.12
	tempfile@3.10.0
	thiserror@1.0.56
	thiserror-impl@1.0.56
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	toml@0.8.10
	toml_datetime@0.6.5
	toml_edit@0.19.15
	toml_edit@0.21.1
	toml_edit@0.22.4
	tracing@0.1.40
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	typenum@1.17.0
	uds_windows@1.1.0
	unicode-bidi@0.3.15
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	url@2.5.0
	utf8parse@0.2.1
	version-compare@0.1.1
	version_check@0.9.4
	waker-fn@1.1.1
	walkdir@2.4.0
	wasi@0.11.0+wasi-snapshot-preview1
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	winnow@0.5.39
	xdg-home@1.1.0
	zbus@3.15.0
	zbus_macros@3.15.0
	zbus_names@2.6.0
	zvariant@3.15.0
	zvariant_derive@3.15.0
	zvariant_utils@1.0.1
"


declare -A GIT_CRATES=(
     [librsvg]="https://github.com/GNOME/librsvg;b831e077174ae608d8cd09e532fc0e7ce1fe5c4f"
)

inherit cargo meson xdg-utils gnome2-utils

DESCRIPTION="A simple image viewer application written with GTK4 and Rust."
HOMEPAGE="https://gitlab.gnome.org/Incubator/loupe"
SRC_URI="https://gitlab.gnome.org/Incubator/loupe/-/archive/46.beta/loupe-46.beta.tar.gz
    $(cargo_crate_uris)
"

IUSE="X"

DEPEND="
    sys-libs/libseccomp
    >=gui-libs/gtk-4.13.6
    gui-libs/libadwaita
    dev-libs/libgweather
    media-libs/lcms
    >=media-libs/glycin-1.0_beta
"

RDEPEND="${DEPEND}"

LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0 CC0-1.0 GPL-3+ LGPL-2.1+ MIT MIT-0 MPL-2.0 Unicode-DFS-2016 Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

S="${WORKDIR}/loupe-46.beta"

src_prepare(){
    default

    # cargo.eclass works with gitlab uris and gitlab.gnome.org is not considered a gitlab uri :-(
    sed -i "s/gitlab.gnome.org/github.com/g" Cargo.{toml,lock} || die

    # sed -i '/librsvg/s/.*/librsvg = { path="..\/librsvg-b831e077174ae608d8cd09e532fc0e7ce1fe5c4f" }/' Cargo.toml
    sed -i "\|CARGO_HOME|s|.*|cargo_env = { 'CARGO_HOME': '${WORKDIR}/cargo_home' }|" src/meson.build

	sed -i '/^gnome.post_install($/,/^)$/d' meson.build || die
}

src_configure() {
    local emesonargs=(
        -Ddisable-glycin-sandbox=false
        -Dx11=$(if use X; then echo "enabled"; else echo "disabled"; fi)
    )
    meson_src_configure
}

src_compile() {
	meson_src_compile
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