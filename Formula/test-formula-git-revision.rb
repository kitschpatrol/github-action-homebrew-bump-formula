class TestFormulaGitRevision < Formula
  desc "Formula to test Action"
  homepage "https://github.com/Debian/dh-make-golang"
  url "https://github.com/Debian/dh-make-golang.git",
      tag: "v0.8.2",
      revision: "6eec7672e012a819bb9cd6b234f379de9dc80304"
  license "MIT"
  head "https://github.com/Debian/dh-make-golang.git"

  def install
    (buildpath / "test").write <<~EOS
      test
    EOS

    share.install "test"
  end

  test { sleep 1 }
end
