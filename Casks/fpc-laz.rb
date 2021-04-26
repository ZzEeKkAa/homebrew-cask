cask "fpc-laz" do
  version "3.2.0,2.0.12"
  sha256 "77a55f4ab985124bb550e6fa80dfbb2c3ee449c41261325f2623e01a6afd13ad"

  url "https://downloads.sourceforge.net/lazarus/Lazarus%20macOS%20x86-64/Lazarus%20#{version.after_comma}/fpc-#{version.before_comma}.intel-macosx.dmg",
      verified: "sourceforge.net/lazarus/"
  name "Pascal compiler for Lazerus"
  desc "Pascal compiler for Lazerus"
  homepage "https://www.lazarus-ide.org/"

  livecheck do
    skip
  end

  conflicts_with formula: "fpc"

  pkg "fpc-#{version.before_comma}-intel-macosx.pkg"

  uninstall pkgutil: [
    "org.freepascal.freePascalCompiler320.fpcinst386",
    "org.freepascal.fpc",
  ]
end
