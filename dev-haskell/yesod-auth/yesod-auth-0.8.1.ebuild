# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.15

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Authentication for Yesod."
HOMEPAGE="http://www.yesodweb.com/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.5
		=dev-haskell/authenticate-1.0*
		>=dev-haskell/blaze-html-0.4.1.3
		<dev-haskell/blaze-html-0.5
		=dev-haskell/hamlet-0.10*
		>=dev-haskell/http-conduit-1.2.5
		<dev-haskell/http-conduit-1.3
		=dev-haskell/lifted-base-0.1*
		>=dev-haskell/mime-mail-0.3
		<dev-haskell/mime-mail-0.5
		=dev-haskell/persistent-0.8*
		=dev-haskell/persistent-template-0.8*
		>=dev-haskell/puremd5-2.0
		<dev-haskell/puremd5-2.2
		>=dev-haskell/pwstore-fast-2.2
		<dev-haskell/pwstore-fast-3
		>=dev-haskell/sha-1.4.1.3
		<dev-haskell/sha-1.6
		=dev-haskell/shakespeare-css-0.10*
		>=dev-haskell/text-0.7
		<dev-haskell/text-0.12
		>=dev-haskell/transformers-0.2.2
		<dev-haskell/transformers-0.3
		dev-haskell/unordered-containers
		=dev-haskell/wai-1.1*
		>=dev-haskell/yesod-core-0.10.1
		<dev-haskell/yesod-core-0.11
		>=dev-haskell/yesod-form-0.4.1
		<dev-haskell/yesod-form-0.5
		>=dev-haskell/yesod-json-0.3.1
		<dev-haskell/yesod-json-0.4
		>=dev-haskell/yesod-persistent-0.3.1
		<dev-haskell/yesod-persistent-0.4
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6.0"
