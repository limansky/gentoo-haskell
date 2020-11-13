# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Helper functions for using yesod with colonnade"
HOMEPAGE="https://github.com/andrewthad/colonnade#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/blaze-html-0.8:=[profile?] <dev-haskell/blaze-html-0.10:=[profile?]
	>=dev-haskell/blaze-markup-0.7:=[profile?] <dev-haskell/blaze-markup-0.9:=[profile?]
	>=dev-haskell/colonnade-1.2:=[profile?] <dev-haskell/colonnade-1.3:=[profile?]
	>=dev-haskell/conduit-1.3:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	>=dev-haskell/conduit-extra-1.3:=[profile?] <dev-haskell/conduit-extra-1.4:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/yesod-core-1.6:=[profile?] <dev-haskell/yesod-core-1.7:=[profile?]
	>=dev-haskell/yesod-elements-1.1:=[profile?] <dev-haskell/yesod-elements-1.2:=[profile?]
	>=dev-lang/ghc-8.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0
"

src_prepare() {
	default

	cabal_chdeps \
		'base >= 4.9.1.0 && < 4.12' 'base >= 4.9.1.0'
}