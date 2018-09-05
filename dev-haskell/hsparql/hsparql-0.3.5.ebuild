# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A SPARQL query generator and DSL, and a client to query a SPARQL server"
HOMEPAGE="https://github.com/robstewart57/hsparql"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # needs network

RDEPEND=">=dev-haskell/http-4:=[profile?]
	dev-haskell/missingh:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/network:=[profile?]
	dev-haskell/network-uri:=[profile?]
	>=dev-haskell/rdf4h-3.0.1:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/xml:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.9.2
	test? ( dev-haskell/http-types
		dev-haskell/hunit
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		>=dev-haskell/wai-3.0.0
		>=dev-haskell/warp-3.0.1 )
"
