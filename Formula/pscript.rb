class Pscript < Formula
  desc "pScript — a BASIC interpreter for the command line, written in Swift"
  homepage "https://github.com/johnrpenner/parseEval"
  version "0.9.59"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/johnrpenner/parseEval/releases/download/v0.9.59/pscript"
      sha256 "3f91a9f9f77cde3f952a7e150659aa560fc60913cb8c0b192c96fc6c248acb89"

      def install
        bin.install "pscript"
      end
    else
      odie "pScript does not yet have an Intel (x86_64) build. Apple Silicon only."
    end
  end
  
  test do
    # pscript launches into an interactive REPL — just verify the binary runs
    assert_predicate bin/"pscript", :executable?
  end
end
