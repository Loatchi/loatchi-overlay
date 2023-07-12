# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rpm

DESCRIPTION="Epson Inkjet Printer Driver (ESC/P-R)"
HOMEPAGE="https://download.ebz.epson.net/dsc/search/01/search/?OSC=LX"
SRC_URI="https://download3.ebz.epson.net/dsc/f/03/00/14/61/06/ad3f08f88782de47a1aec9acda205e354309636e/epson-inkjet-printer-escpr-1.8.0-1.src.rpm"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc64"

DEPEND="net-print/cups"
RDEPEND="${DEPEND}"

PATCHES=(
	"${FILESDIR}/1.6.5-warnings.patch"
	"${FILESDIR}/${PN}-1.7.7-fnocommon.patch"
)

src_unpack() {
    rpm_src_unpack "${A}"
}

src_configure() {
	econf --disable-shared

	# Makefile calls ls to generate a file list which is included in Makefile.am
	# Set the collation to C to avoid automake being called automatically
	unset LC_ALL
	export LC_COLLATE=C
}

src_install() {
	emake -C ppd DESTDIR="${D}" install
	emake -C src DESTDIR="${D}" install
	einstalldocs
}
