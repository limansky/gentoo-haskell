# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Type-safe datatype-database mapping library."
HOMEPAGE="http://hackage.haskell.org/package/groundhog"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/blaze-builder-0.3.0.0:=[profile?]
		<dev-haskell/blaze-builder-0.4:=[profile?]
		=dev-haskell/monad-control-0.3*:=[profile?]
		>=dev-haskell/mtl-2.0:=[profile?]
		>=dev-haskell/text-0.8:=[profile?]
		<dev-haskell/text-0.12:=[profile?]
		>=dev-haskell/transformers-0.2.1:=[profile?]
		<dev-haskell/transformers-0.4:=[profile?]
		dev-haskell/transformers-base:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
