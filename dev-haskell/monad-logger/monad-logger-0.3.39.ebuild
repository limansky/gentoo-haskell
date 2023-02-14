# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A class of monads which can log messages"
HOMEPAGE="https://github.com/snoyberg/monad-logger#readme"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+template-haskell"

RDEPEND=">=dev-haskell/conduit-1.0:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	>=dev-haskell/conduit-extra-1.1:=[profile?] <dev-haskell/conduit-extra-1.4:=[profile?]
	>=dev-haskell/fast-logger-2.1:=[profile?] <dev-haskell/fast-logger-3.2:=[profile?]
	dev-haskell/lifted-base:=[profile?]
	>=dev-haskell/monad-control-1.0:=[profile?]
	dev-haskell/monad-loops:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?] <dev-haskell/resourcet-1.4:=[profile?]
	dev-haskell/stm:=[profile?]
	dev-haskell/stm-chans:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	>=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag template-haskell template_haskell)
}
