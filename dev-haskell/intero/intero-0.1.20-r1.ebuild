# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="test-suite"
inherit haskell-cabal

DESCRIPTION="Complete interactive development program for Haskell"
HOMEPAGE="https://github.com/commercialhaskell/intero"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # tests are dependent on ghc version

RDEPEND="dev-haskell/ghc-paths:=
	dev-haskell/haskeline:=
	dev-haskell/syb:=
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hspec
		dev-haskell/regex-compat
		dev-haskell/temporary )
"

src_prepare() {
	default

	cabal_chdeps \
		'ghc >= 7.8 && < 8.0.2' 'ghc >= 7.8'
}
