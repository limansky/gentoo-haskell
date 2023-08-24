# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.1.9999
#hackport: flags: -developer,-bytestring-builder,-fast

CABAL_HACKAGE_REVISION=3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast JSON parsing and encoding"
HOMEPAGE="https://github.com/haskell/aeson"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="cffi +ordered-keymap"

RESTRICT=test # one test case fails

RDEPEND="
	>=dev-haskell/attoparsec-0.14.2:=[profile?] <dev-haskell/attoparsec-0.15:=[profile?]
	>=dev-haskell/base-compat-batteries-0.10.0:=[profile?] <dev-haskell/base-compat-batteries-0.14:=[profile?]
	>=dev-haskell/data-fix-0.3.2:=[profile?] <dev-haskell/data-fix-0.4:=[profile?]
	>=dev-haskell/dlist-0.8.0.4:=[profile?] <dev-haskell/dlist-1.1:=[profile?]
	>=dev-haskell/generically-0.1:=[profile?] <dev-haskell/generically-0.2:=[profile?]
	>=dev-haskell/hashable-1.3.5.0:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-haskell/indexed-traversable-0.1.2:=[profile?] <dev-haskell/indexed-traversable-0.2:=[profile?]
	>=dev-haskell/onetuple-0.3.1:=[profile?] <dev-haskell/onetuple-0.5:=[profile?]
	>=dev-haskell/primitive-0.7.3.0:=[profile?] <dev-haskell/primitive-0.9:=[profile?]
	>=dev-haskell/quickcheck-2.14.2:2=[profile?] <dev-haskell/quickcheck-2.15:2=[profile?]
	>=dev-haskell/scientific-0.3.7.0:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/semialign-1.2:=[profile?] <dev-haskell/semialign-1.4:=[profile?]
	>=dev-haskell/strict-0.4:=[profile?] <dev-haskell/strict-0.6:=[profile?]
	>=dev-haskell/tagged-0.8.6:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/text-short-0.1.5:=[profile?] <dev-haskell/text-short-0.2:=[profile?]
	>=dev-haskell/th-abstraction-0.3.0.0:=[profile?] <dev-haskell/th-abstraction-0.6:=[profile?]
	>=dev-haskell/these-1.1.1.1:=[profile?] <dev-haskell/these-1.3:=[profile?]
	>=dev-haskell/time-compat-1.9.6:=[profile?] <dev-haskell/time-compat-1.10:=[profile?]
	>=dev-haskell/unordered-containers-0.2.10.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/uuid-types-1.0.5:=[profile?] <dev-haskell/uuid-types-1.1:=[profile?]
	>=dev-haskell/vector-0.12.0.1:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-haskell/witherable-0.4.2:=[profile?] <dev-haskell/witherable-0.5:=[profile?]
	>=dev-lang/ghc-8.10.1:=
	|| (
		( >=dev-haskell/text-1.2.3.0 <dev-haskell/text-1.3 )
		( >=dev-haskell/text-2.0 <dev-haskell/text-2.1 )
	)
	dev-haskell/text:=[profile?]
	cffi? (
		<dev-haskell/text-2.0:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? (
		dev-haskell/base-compat
		>=dev-haskell/base-orphans-0.5.3 <dev-haskell/base-orphans-0.10
		dev-haskell/base16-bytestring
		>=dev-haskell/diff-0.4 <dev-haskell/diff-0.5
		>=dev-haskell/generic-deriving-1.10 <dev-haskell/generic-deriving-1.15
		>=dev-haskell/integer-logarithms-1 <dev-haskell/integer-logarithms-1.1
		>=dev-haskell/quickcheck-instances-0.3.29 <dev-haskell/quickcheck-instances-0.4
		dev-haskell/tasty
		dev-haskell/tasty-golden
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck
	)
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-bytestring-builder \
		$(cabal_flag cffi cffi) \
		--flag=-developer \
		--flag=-fast \
		$(cabal_flag ordered-keymap ordered-keymap)
}
