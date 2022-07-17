# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1
#hackport: flags: +network-uri

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Authentication for Yesod"
HOMEPAGE="https://www.yesodweb.com/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?]
	>=dev-haskell/authenticate-1.3.4:=[profile?]
	dev-haskell/base16-bytestring:=[profile?]
	dev-haskell/base64-bytestring:=[profile?]
	dev-haskell/blaze-builder:=[profile?]
	>=dev-haskell/blaze-html-0.5:=[profile?]
	>=dev-haskell/blaze-markup-0.5.1:=[profile?]
	>=dev-haskell/conduit-1.3:=[profile?]
	dev-haskell/conduit-extra:=[profile?]
	dev-haskell/cryptonite:=[profile?]
	dev-haskell/data-default:=[profile?]
	>=dev-haskell/email-validate-1.0:=[profile?]
	dev-haskell/file-embed:=[profile?]
	>=dev-haskell/http-client-0.5:=[profile?]
	dev-haskell/http-client-tls:=[profile?]
	>=dev-haskell/http-conduit-2.1:=[profile?]
	dev-haskell/http-types:=[profile?]
	dev-haskell/memory:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?]
	>=dev-haskell/nonce-1.0.2:=[profile?] <dev-haskell/nonce-1.1:=[profile?]
	>=dev-haskell/persistent-2.8:=[profile?]
	>=dev-haskell/random-1.0.0.2:=[profile?]
	dev-haskell/safe:=[profile?]
	dev-haskell/shakespeare:=[profile?]
	>=dev-haskell/text-0.7:=[profile?]
	dev-haskell/unliftio:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-haskell/wai-1.4:=[profile?]
	>=dev-haskell/yesod-core-1.6:=[profile?] <dev-haskell/yesod-core-1.7:=[profile?]
	>=dev-haskell/yesod-form-1.6:=[profile?] <dev-haskell/yesod-form-1.8:=[profile?]
	>=dev-haskell/yesod-persistent-1.6:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=network-uri
}
