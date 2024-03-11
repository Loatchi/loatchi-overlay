# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	adler@1.0.2
	aho-corasick@1.1.2
	anes@0.1.6
	anstream@0.6.11
	anstyle@1.0.6
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	assert_cmd@2.0.13
	autocfg@1.1.0
	base64@0.21.7
	bit_field@0.10.2
	bitflags@1.3.2
	bitflags@2.4.2
	bstr@1.9.0
	bumpalo@3.14.0
	bytemuck@1.14.3
	byteorder@1.5.0
	cast@0.3.0
	cc@1.0.83
	cfg-if@1.0.0
	ciborium@0.2.2
	ciborium-io@0.2.2
	ciborium-ll@0.2.2
	clap@4.5.0
	clap_builder@4.5.0
	clap_complete@4.5.0
	clap_derive@4.5.0
	clap_lex@0.7.0
	clap_mangen@0.2.20
	color_quant@1.1.0
	colorchoice@1.0.0
	colored@2.1.0
	crc32fast@1.4.0
	criterion@0.5.1
	criterion-plot@0.5.0
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.19
	crunchy@0.2.2
	diff@0.1.13
	difflib@0.4.0
	doc-comment@0.3.3
	either@1.10.0
	env_filter@0.1.0
	env_logger@0.11.1
	errno@0.3.8
	exr@1.72.0
	fastrand@2.0.1
	fdeflate@0.3.4
	flate2@1.0.28
	float-cmp@0.9.0
	flume@0.11.0
	form_urlencoded@1.2.1
	getrandom@0.2.12
	gif@0.12.0
	half@2.3.1
	heck@0.4.1
	hermit-abi@0.3.5
	hoot@0.1.3
	hootbin@0.1.1
	httparse@1.8.0
	humantime@2.1.0
	idna@0.5.0
	image@0.24.8
	is-terminal@0.4.12
	itertools@0.10.5
	itoa@1.0.10
	jpeg-decoder@0.3.1
	js-sys@0.3.68
	lazy_static@1.4.0
	lebe@0.5.2
	libc@0.2.153
	linux-raw-sys@0.4.13
	lock_api@0.4.11
	log@0.4.20
	memchr@2.7.1
	miniz_oxide@0.7.2
	normalize-line-endings@0.3.0
	num-traits@0.2.18
	once_cell@1.19.0
	oorandom@11.1.3
	percent-encoding@2.3.1
	plotters@0.3.5
	plotters-backend@0.3.5
	plotters-svg@0.3.5
	png@0.17.11
	predicates@3.1.0
	predicates-core@1.0.6
	predicates-tree@1.0.9
	pretty_assertions@1.4.0
	proc-macro2@1.0.78
	qoi@0.4.1
	quote@1.0.35
	rayon@1.8.1
	rayon-core@1.12.1
	regex@1.10.3
	regex-automata@0.4.5
	regex-syntax@0.8.2
	ring@0.17.7
	roff@0.2.1
	rustix@0.38.31
	rustls@0.22.2
	rustls-pki-types@1.2.0
	rustls-webpki@0.102.2
	ryu@1.0.16
	same-file@1.0.6
	scopeguard@1.2.0
	serde@1.0.196
	serde_derive@1.0.196
	serde_json@1.0.113
	simd-adler32@0.3.7
	smallvec@1.13.1
	spin@0.9.8
	strsim@0.11.0
	subtle@2.5.0
	syn@2.0.48
	terminal_size@0.3.0
	termtree@0.4.1
	thiserror@1.0.57
	thiserror-impl@1.0.57
	tiff@0.9.1
	tinytemplate@1.2.1
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	unicode-bidi@0.3.15
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	untrusted@0.9.0
	ureq@2.9.5
	url@2.5.0
	utf8parse@0.2.1
	wait-timeout@0.2.0
	walkdir@2.4.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.91
	wasm-bindgen-backend@0.2.91
	wasm-bindgen-macro@0.2.91
	wasm-bindgen-macro-support@0.2.91
	wasm-bindgen-shared@0.2.91
	web-sys@0.3.68
	webpki-roots@0.26.1
	weezl@0.1.8
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
	yansi@0.5.1
	zeroize@1.7.0
	zune-inflate@0.2.54
"

inherit cargo shell-completion

DESCRIPTION="Convert images from multiple formats (jpg, png, webp, etc…) to ASCII art"
HOMEPAGE="https://github.com/FineFindus/artem"
SRC_URI="https://github.com/FineFindus/${PN}/archive/refs/tags/v${PV}.tar.gz
    ${CARGO_CRATE_URIS}
"

LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD Boost-1.0 ISC MIT MPL-2.0 Unicode-DFS-2016 Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64 amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_install(){
    default

    cargo_src_install

    dodoc README.md
    dodoc CHANGELOG.md

    mkdir "${WORKDIR}/deployment"
    cp -r "${WORKDIR}"/artem-"${PV}"/target/release/build/artem-*/out/* "${WORKDIR}/deployment"

    newbashcomp "${WORKDIR}/deployment"/${PN}.bash ${PN}
    dofishcomp "${WORKDIR}/deployment"/${PN}.fish
    dozshcomp "${WORKDIR}/deployment"/_${PN}

    doman "${WORKDIR}/deployment"/${PN}.1
}
