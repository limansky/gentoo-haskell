# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999
#hackport: flags: -cross

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A configuration language guaranteed to terminate"
HOMEPAGE="https://dhall-lang.org
	https://hackage.haskell.org/package/dhall"
HACKAGE_REV="2"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/${HACKAGE_REV}.cabal -> ${PF}.cabal"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+http +http-client-tls"

PATCHES=(
	"${FILESDIR}/${PN}-1.40.2-cabal-doctest.patch"
	"${FILESDIR}/${PN}-1.40.1-disable-http-tests.patch"
	"${FILESDIR}/${PN}-1.40.2-disable-buggy-tests.patch"
)

RDEPEND=">=dev-haskell/aeson-1.0.0.0:=[profile?] <dev-haskell/aeson-2.1:=[profile?]
	<dev-haskell/aeson-pretty-0.9:=[profile?]
	>=dev-haskell/ansi-terminal-0.6.3.1:=[profile?] <dev-haskell/ansi-terminal-0.12:=[profile?]
	>=dev-haskell/atomic-write-0.2.0.7:=[profile?] <dev-haskell/atomic-write-0.3:=[profile?]
	>=dev-haskell/base16-bytestring-1.0.0.0:=[profile?]
	<dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/cborg-0.2.0.0:=[profile?] <dev-haskell/cborg-0.3:=[profile?]
	>=dev-haskell/cborg-json-0.2.2.0:=[profile?] <dev-haskell/cborg-json-0.3:=[profile?]
	<dev-haskell/contravariant-1.6:=[profile?]
	dev-haskell/cryptohash-sha256:=[profile?]
	<dev-haskell/data-fix-0.4:=[profile?]
	>=dev-haskell/diff-0.2:=[profile?] <dev-haskell/diff-0.5:=[profile?]
	>=dev-haskell/dotgen-0.4.2:=[profile?] <dev-haskell/dotgen-0.5:=[profile?]
	>=dev-haskell/either-5:=[profile?] <dev-haskell/either-5.1:=[profile?]
	>=dev-haskell/exceptions-0.8.3:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/half-0.2.2.3:=[profile?] <dev-haskell/half-0.4:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-haskell/haskeline-0.7.2.1:=[profile?] <dev-haskell/haskeline-0.9:=[profile?]
	>=dev-haskell/lens-family-core-1.0.0:=[profile?] <dev-haskell/lens-family-core-2.2:=[profile?]
	>=dev-haskell/megaparsec-8:=[profile?] <dev-haskell/megaparsec-10:=[profile?]
	<dev-haskell/mmorph-1.3:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/optparse-applicative-0.14.0.0:=[profile?] <dev-haskell/optparse-applicative-0.18:=[profile?]
	dev-haskell/parser-combinators:=[profile?]
	>=dev-haskell/parsers-0.12.4:=[profile?] <dev-haskell/parsers-0.13:=[profile?]
	<dev-haskell/pretty-simple-4.1:=[profile?]
	>=dev-haskell/prettyprinter-1.7.0:=[profile?] <dev-haskell/prettyprinter-1.8:=[profile?]
	>=dev-haskell/prettyprinter-ansi-terminal-1.1.1:=[profile?] <dev-haskell/prettyprinter-ansi-terminal-1.2:=[profile?]
	>=dev-haskell/profunctors-3.1.2:=[profile?] <dev-haskell/profunctors-5.7:=[profile?]
	>=dev-haskell/repline-0.4.0.0:=[profile?] <dev-haskell/repline-0.5:=[profile?]
	>=dev-haskell/scientific-0.3.0.0:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/serialise-0.2.0.0:=[profile?] <dev-haskell/serialise-0.3:=[profile?]
	>=dev-haskell/text-0.11.1.0:=[profile?] <dev-haskell/text-2.1:=[profile?]
	>=dev-haskell/text-manipulate-0.2.0.1:=[profile?] <dev-haskell/text-manipulate-0.4:=[profile?]
	>=dev-haskell/th-lift-instances-0.1.13:=[profile?] <dev-haskell/th-lift-instances-0.2:=[profile?]
	>=dev-haskell/unordered-containers-0.1.3.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	<dev-haskell/uri-encode-1.6:=[profile?]
	>=dev-haskell/vector-0.11.0.0:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	http? ( >=dev-haskell/http-client-0.5.0:=[profile?] <dev-haskell/http-client-0.8:=[profile?]
		>=dev-haskell/http-types-0.7.0:=[profile?] <dev-haskell/http-types-0.13:=[profile?] )
	http-client-tls? ( >=dev-haskell/http-client-tls-0.2.0:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	app-text/dos2unix
	test? ( >=dev-haskell/doctest-0.7.0
		<dev-haskell/foldl-1.5
		>=dev-haskell/generic-random-1.3.0.0 <dev-haskell/generic-random-1.6
		<dev-haskell/mockery-0.4
		>=dev-haskell/quickcheck-2.14 <dev-haskell/quickcheck-2.15
		>=dev-haskell/quickcheck-instances-0.3.12 <dev-haskell/quickcheck-instances-0.4
		<dev-haskell/special-values-0.2
		<dev-haskell/spoon-0.4
		dev-haskell/system-filepath
		>=dev-haskell/tasty-0.11.2 <dev-haskell/tasty-1.5
		<dev-haskell/tasty-expected-failure-0.13
		>=dev-haskell/tasty-hunit-0.10 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.9.2 <dev-haskell/tasty-quickcheck-0.11
		<dev-haskell/tasty-silver-3.4
		>=dev-haskell/temporary-1.2.1 <dev-haskell/temporary-1.4
		>=dev-haskell/text-0.11.1.0 <dev-haskell/text-1.3
		<dev-haskell/turtle-1.6 )
"

src_prepare() {
	# pull revised cabal from upstream
	cp "${DISTDIR}/${PF}.cabal" "${S}/${PN}.cabal" || die

	# Convert to unix line endings
	dos2unix "${S}/${PN}.cabal" || die

	# Apply patches *after* pulling the revised cabal
	default
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-cross \
		$(cabal_flag http-client-tls use-http-client-tls) \
		$(cabal_flag http with-http)
}
