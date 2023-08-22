# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999
#hackport: flags: pkgconfig:system-cmark

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast, accurate CommonMark (Markdown) parser and renderer"
HOMEPAGE="https://github.com/jgm/cmark-hs"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="system-cmark"

RDEPEND=">=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-2.1:=[profile?]
	>=dev-lang/ghc-8.8.1:=
	system-cmark? ( app-text/cmark )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.7 )
"
BDEPEND="system-cmark? ( virtual/pkgconfig )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag system-cmark pkgconfig)
}