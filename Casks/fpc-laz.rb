cask "fpc-laz" do
  version "3.2.0,2.0.12"
  sha256 "77a55f4ab985124bb550e6fa80dfbb2c3ee449c41261325f2623e01a6afd13ad"

  url "https://downloads.sourceforge.net/lazarus/Lazarus%20macOS%20x86-64/Lazarus%20#{version.after_comma}/fpc-#{version.before_comma}.intel-macosx.dmg",
      verified: "sourceforge.net/lazarus/"
  appcast "https://sourceforge.net/projects/lazarus/rss"
  name "Free Pascal Compiler"
  homepage "https://www.freepascal.org/"

  pkg "fpc-#{version.before_comma}-intel-macosx.pkg"

  uninstall pkgutil: "org.freepascal.fpc"
end
