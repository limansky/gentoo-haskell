# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_HACKAGE_REVISION=4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Core functionality and class for client function generation for servant APIs"
HOMEPAGE="https://docs.servant.dev/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

CABAL_CHDEPS=(
	'hspec      >= 2.6.0    && < 2.10' 'hspec >= 2.6.0'
	'hspec-discover:hspec-discover >= 2.6.0 && <2.10' 'hspec-discover:hspec-discover >= 2.6.0'
)

RDEPEND="
	>=dev-haskell/aeson-1.4.1.0:=[profile?] <dev-haskell/aeson-3:=[profile?]
	>=dev-haskell/base-compat-0.10.5:=[profile?] <dev-haskell/base-compat-0.13:=[profile?]
	>=dev-haskell/base64-bytestring-1.0.0.1:=[profile?] <dev-haskell/base64-bytestring-1.3:=[profile?]
	>=dev-haskell/constraints-0.2:=[profile?] <dev-haskell/constraints-0.14:=[profile?]
	>=dev-haskell/free-5.1:=[profile?] <dev-haskell/free-5.2:=[profile?]
	>=dev-haskell/http-media-0.7.1.3:=[profile?] <dev-haskell/http-media-0.9:=[profile?]
	>=dev-haskell/http-types-0.12.2:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/network-uri-2.6.1.0:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/safe-0.3.17:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-haskell/servant-0.19:=[profile?]
	>=dev-haskell/sop-core-0.4.0.0:=[profile?] <dev-haskell/sop-core-0.6:=[profile?]
	>=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
	test? (
		>=dev-haskell/hspec-2.6.0
		>=dev-haskell/quickcheck-2.12.6.1 <dev-haskell/quickcheck-2.15
	)
"
BDEPEND="
	>=dev-haskell/hspec-discover-2.6.0
"