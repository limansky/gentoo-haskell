# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Group streams into substreams"
HOMEPAGE="https://hackage.haskell.org/package/pipes-group"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

# Ambiguous module name ‘Control.Monad.Trans.Free’: it was found in multiple packages: free-5.1.2 transformers-free-1.0.1
RESTRICT=test

RDEPEND=">=dev-haskell/free-3.2:=[profile?]
	>=dev-haskell/pipes-4.0:=[profile?] <dev-haskell/pipes-4.4:=[profile?]
	>=dev-haskell/pipes-parse-3.0.0:=[profile?] <dev-haskell/pipes-parse-3.1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/doctest-0.9.12
		dev-haskell/lens-family-core )
"

src_prepare() {
	default

	cabal_chdeps \
		'free         >= 3.2     && < 5.2' 'free         >= 3.2' \
		'doctest          >= 0.9.12 && < 0.17' 'doctest          >= 0.9.12' \
		'lens-family-core              < 1.3' 'lens-family-core'
}