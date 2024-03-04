# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A version of Hspec which is used to test Hspec itself"
HOMEPAGE="https://hspec.github.io/"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/ansi-terminal-0.6.2:=[profile?]
	>=dev-haskell/call-stack-0.2.0:=[profile?]
	dev-haskell/haskell-lexer:=[profile?]
	>=dev-haskell/hspec-expectations-0.8.4:=[profile?] <dev-haskell/hspec-expectations-0.8.5:=[profile?]
	>=dev-haskell/hunit-1.6:=[profile?] <dev-haskell/hunit-1.7:=[profile?]
	>=dev-haskell/quickcheck-2.13.1:=[profile?]
	>=dev-haskell/quickcheck-io-0.2.0:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/tf-random:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"
