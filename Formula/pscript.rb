class Pscript < Formula
  desc "pScript — a BASIC interpreter for the command line, written in Swift"
  homepage "https://github.com/johnrpenner/parseEval"
  version "0.9.60"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/johnrpenner/parseEval/releases/download/v0.9.60/pscript"
      sha256 "sha256:1e0f44b23db02b8adf7fb42962deda125239fddc57994d370e549e837d73191b"

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
