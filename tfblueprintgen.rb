class Tfblueprintgen < Formula
    desc "This contains the formula for installing tfblueprintgen. tfblueprintgen cli utility developed using charmbracelet CLI assets, which generates the Modular file structure with the code for your Terraform code to speed up the development."
    homepage ""
    url "https://github.com/krishnaduttPanchagnula/tfblueprintgen/archive/refs/tags/0.3.tar.gz"
    sha256 "0ef05a67fa416691c849bd61d312bfd2e2194aadb14d9ac39ea2716ce6a834a6"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
        puts `ls`
        # system ("cd tfblueprintgen-0.2")
         system ("go build -o tfblueprintgen main.go  ")
  
        bin.install "tfblueprintgen"
    end
  
    test do
      system "#{bin}/tfblueprintgen  --version"
      expected_version = "Tfblueprintgen version: 0.3"
      actual_version = shell_output("#{bin}/tfblueprintgen --version").strip
      assert_match expected_version, actual_version
    end
  end
  