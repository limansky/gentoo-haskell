# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Binding to the Pango text rendering engine"
HOMEPAGE="https://projects.haskell.org/gtk2hs/"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/cairo-0.13.0.0:=[profile?] <dev-haskell/cairo-0.14:=[profile?]
	>=dev-haskell/glib-0.13.0.0:=[profile?] <dev-haskell/glib-0.14:=[profile?]
	>=dev-haskell/text-0.11.0.6:=[profile?] <dev-haskell/text-2.2:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	x11-libs/cairo
	x11-libs/pango
	x11-libs/pango[introspection]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0 <dev-haskell/cabal-3.11
	>=dev-haskell/gtk2hs-buildtools-0.13.2.0 <dev-haskell/gtk2hs-buildtools-0.14
	virtual/pkgconfig
"

GHC_BOOTSTRAP_PACKAGES=( gtk2hs-buildtools )
