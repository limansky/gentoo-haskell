# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Quasi-quoters for XML and HTML Documents"
HOMEPAGE="https://github.com/cdepillabout/xml-html-qq"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

PATCHES=( "${FILESDIR}/${PN}-0.1.0.1-cabal-doctest.patch" )

RDEPEND="dev-haskell/blaze-markup:=[profile?]
	dev-haskell/conduit:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/from-sum:=[profile?]
	>=dev-haskell/heterocephalus-1.0.4.0:=[profile?]
	dev-haskell/html-conduit:=[profile?]
	dev-haskell/resourcet:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/th-lift:=[profile?]
	dev-haskell/th-lift-instances:=[profile?]
	dev-haskell/xml-conduit:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/doctest
		dev-haskell/cabal-doctest
		dev-haskell/glob
		dev-haskell/tasty
		dev-haskell/tasty-hunit )
"
