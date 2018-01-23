class Sonm < Formula
  desc "Supercomputer Organized by Network Mining"
  homepage "https://sonm.io"
  url "https://github.com/sonm-io/core/releases/download/v0.3.0/sonm_v0.3.0_darwin64.zip"
    sha256 "cfb6a36ae8dab5a84be5c0f28247bc2ce973546752f3d136d5a813cc81b536e0"
   depends_on "docker"
   def install
 
   #system "./configure", "--prefix=#{"/usr/local/Cellar/sonm/64"}"
    system "unzip ~/Library/Caches/Homebrew/sonm-64.zip /usr/local/Cellar/sonm"
   #system "cd /usr/local/Cellar/sonm/64", "unzip ./sonm_v0.3.0_darwin64.zip ./sonm"
   #system "ln ./sonm/cli/sonmcli_darwin64 "
   
end
   test do
    #`test do` will create, run in and delete a temporary directory.
    #
    #This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test core`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"

  end
bottle do   
  root_url "https://example.com"   
  prefix "/opt/homebrew"   
  cellar "/opt/homebrew/Cellar"   
  revision 4   
  sha256 "4921af80137af9cc3d38fd17c9120da882448a090b0a8a3a19af3199b415bfca" => :yosemite   
  sha256 "c71db15326ee9196cd98602e38d0b7fb2b818cdd48eede4ee8eb827d809e09ba" => :mavericks   
  sha256 "85cc828a96735bdafcf29eb6291ca91bac846579bcef7308536e0c875d6c81d7" => :mountain_lion 
end

end
