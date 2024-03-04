# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: +network-uri

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="An HTTP client engine"
HOMEPAGE="https://github.com/snoyberg/http-client"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

PATCHES=(
	"${FILESDIR}/${PN}-0.7.16-disable-net-tests.patch"
)

RDEPEND=">=dev-haskell/async-2.0:=[profile?]
	>=dev-haskell/base64-bytestring-1.0:=[profile?]
	>=dev-haskell/blaze-builder-0.3:=[profile?]
	>=dev-haskell/case-insensitive-1.0:=[profile?]
	dev-haskell/cookie:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?]
	>=dev-haskell/iproute-1.7.5:=[profile?]
	dev-haskell/mime-types:=[profile?]
	>=dev-haskell/network-2.6:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/streaming-commons-0.1.0.2:=[profile?] <dev-haskell/streaming-commons-0.3:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/hspec
		dev-haskell/monad-control
		>=dev-haskell/streaming-commons-0.1.1
		dev-haskell/zlib )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=network-uri
}
