# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999
#hackport: flags: -testcoverage

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A library to support dataflow analysis and optimization"
HOMEPAGE="http://ghc.cs.tufts.edu/hoopl/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE=""
RESTRICT="test" # files are missing

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/mtl-2.1.3.1
		>=dev-haskell/parsec-3.1.7
		<dev-haskell/test-framework-0.9
		<dev-haskell/test-framework-hunit-0.4 )
"

CABAL_CORE_LIB_GHC_PV='PM:8.0.1_rc2 PM:8.0.1_rc3 PM:8.0.1_rc4 PM:8.0.1'

src_configure() {
	haskell-cabal_src_configure \
		--flag=-testcoverage
}
