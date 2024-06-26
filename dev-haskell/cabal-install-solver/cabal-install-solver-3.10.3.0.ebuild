# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: -debug

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="The command-line interface for Cabal and Hackage"
HOMEPAGE="https://www.haskell.org/cabal/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="debug"

RDEPEND=">=dev-haskell/cabal-3.10.3:=[profile?] <dev-haskell/cabal-3.11:=[profile?]
	>=dev-haskell/cabal-syntax-3.10:=[profile?] <dev-haskell/cabal-syntax-3.11:=[profile?]
	>=dev-haskell/edit-distance-0.2.2:=[profile?] <dev-haskell/edit-distance-0.3:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	|| (
		( >=dev-haskell/text-1.2.3.0 <dev-haskell/text-1.3 )
		( >=dev-haskell/text-2.0 <dev-haskell/text-2.2 )
	)
	dev-haskell/text:=[profile?]
	debug? ( >=dev-haskell/tracetree-0.1:=[profile?] <dev-haskell/tracetree-0.2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/tasty-1.2.3 <dev-haskell/tasty-1.6
		>=dev-haskell/tasty-hunit-0.10
		dev-haskell/tasty-quickcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-debug \
		$(cabal_flag debug debug-conflict-sets) \
		$(cabal_flag debug debug-expensive-assertions) \
		$(cabal_flag debug debug-tracetree)
}
