# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A Testing Framework for Haskell"
HOMEPAGE="http://hspec.github.io/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/call-stack:=[profile?]
	~dev-haskell/hspec-core-2.5.0:=[profile?]
	~dev-haskell/hspec-discover-2.5.0:=[profile?]
	>=dev-haskell/hspec-expectations-0.8.2:=[profile?] <dev-haskell/hspec-expectations-0.8.3:=[profile?]
	>=dev-haskell/hunit-1.5.0.0:=[profile?]
	>=dev-haskell/quickcheck-2.10:2=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hspec-meta-2.3.2
		dev-haskell/stringbuilder )
"
