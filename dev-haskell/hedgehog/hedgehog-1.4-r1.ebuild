# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_HACKAGE_REVISION=3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Release with confidence"
HOMEPAGE="https://hedgehog.qa"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/ansi-terminal-0.6:=[profile?] <dev-haskell/ansi-terminal-1.1:=[profile?]
	>=dev-haskell/async-2.0:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/barbies-1.0:=[profile?] <dev-haskell/barbies-2.2:=[profile?]
	>=dev-haskell/concurrent-output-1.7:=[profile?] <dev-haskell/concurrent-output-1.11:=[profile?]
	>=dev-haskell/erf-2.0:=[profile?] <dev-haskell/erf-2.1:=[profile?]
	>=dev-haskell/lifted-async-0.7:=[profile?] <dev-haskell/lifted-async-0.11:=[profile?]
	>=dev-haskell/mmorph-1.0:=[profile?] <dev-haskell/mmorph-1.3:=[profile?]
	>=dev-haskell/monad-control-1.0:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/pretty-show-1.6:=[profile?] <dev-haskell/pretty-show-1.11:=[profile?]
	>=dev-haskell/primitive-0.6:=[profile?] <dev-haskell/primitive-0.10:=[profile?]
	>=dev-haskell/random-1.1:=[profile?] <dev-haskell/random-1.3:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?] <dev-haskell/resourcet-1.4:=[profile?]
	>=dev-haskell/safe-exceptions-0.1:=[profile?] <dev-haskell/safe-exceptions-0.2:=[profile?]
	>=dev-haskell/text-1.1:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-haskell/transformers-base-0.4.5.1:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/wl-pprint-annotated-0.0:=[profile?] <dev-haskell/wl-pprint-annotated-0.2:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"