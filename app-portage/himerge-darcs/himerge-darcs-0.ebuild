# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

CABAL_FEATURES="bin"
inherit eutils haskell-cabal darcs

DESCRIPTION="hImerge is a graphical user interface for emerge (Gentoo's Portage system) written in Haskell using gtk2hs."
HOMEPAGE="http://www.fmap.us/himerge.html"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

EDARCS_REPOSITORY="http://haskell.org/himerge/himerge/"
EDARCS_GET_CMD="get --partial --verbose"
EDARCS_LOCALREPO="himerge"

DEPEND=">=dev-lang/ghc-6.6
	dev-haskell/cabal
	dev-haskell/gtk2hs-darcs"
RDEPEND=""

pkg_setup() {
	if ! built_with_use -o dev-haskell/gtk2hs-darcs firefox ; then
		echo
		eerror "gtk2hs was not merged with the mozilla or firefox USE flag."
		eerror "hImerge requires gtk2hs be compiled with any of these flags."
		die "gtk2hs missing web browser support."
	fi
}

src_install() {
	cabal-copy
	cabal-pkg
	einfo "Installing data files."
	mkdir -p ${D}/usr/local/share/himerge/{css,icons}
	cp ${S}/data/himerge/css/himerge.css ${D}/usr/local/share/himerge/css
	cp ${S}/data/himerge/icons/* ${D}/usr/local/share/himerge/icons/

}

