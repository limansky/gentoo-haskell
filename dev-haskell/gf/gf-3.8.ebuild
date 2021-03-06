# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999
#hackport: flags: -c-runtime,+custom-binary

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Grammatical Framework"
HOMEPAGE="http://www.grammaticalframework.org/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2 LGPL-2 BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+interrupt +network-uri +server"

RESTRICT=test # missing files

RDEPEND="dev-haskell/exceptions:=[profile?]
	dev-haskell/haskeline:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/old-locale:=[profile?]
	>=dev-haskell/parallel-3:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/terminfo-0.4:=[profile?]
	dev-haskell/time-compat:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	server? ( >=dev-haskell/cgi-3001.2.2.0:=[profile?]
			>=dev-haskell/httpd-shed-0.4.0.3:=[profile?]
			dev-haskell/json:=[profile?]
			network-uri? ( >=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-2.7:=[profile?]
					>=dev-haskell/network-uri-2.6:=[profile?] )
			!network-uri? ( >=dev-haskell/network-2.3:=[profile?] <dev-haskell/network-2.6:=[profile?] ) )
"
DEPEND="${RDEPEND}
	dev-haskell/alex
	>=dev-haskell/cabal-1.10
	dev-haskell/happy
	test? ( dev-haskell/htf
		dev-haskell/hunit )
"

src_prepare() {
	default

	# runs dist/build/idris directly and breaks sandboxing
	export LD_LIBRARY_PATH="${S}/dist/build${LD_LIBRARY_PATH+:}${LD_LIBRARY_PATH}"
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-c-runtime \
		--flag=custom-binary \
		$(cabal_flag interrupt interrupt) \
		$(cabal_flag network-uri network-uri) \
		$(cabal_flag server server)
}
