class Sonm < Formula
  desc "Supercomputer Organized by Network Mining"
  homepage "https://sonm.com"
  url "https://github.com/sonm-io/core/releases/download/v0.3.0/sonm_v0.3.0_darwin64.zip"
    sha256 "cfb6a36ae8dab5a84be5c0f28247bc2ce973546752f3d136d5a813cc81b536e0"
   depends_on "docker"
   def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
   #system "unzip ~/Library/Caches/Homebrew/sonm-64.zip  ~/Library/Caches/Homebrew/ -j"
   system "cd /usr/local/Cellar/", "mv ./sonm_v0.3.0_darwin64 ./sonm"
   system "mkdir ~/.sonm"
   system "cp /usr/local/Cellar/sonm/cli/cli.yaml ~/.sonm/cli.yaml"
   system "cp /usr/local/Cellar/sonm/hub/hub.yaml ~/.sonm/hub.yaml"
   system "cp /usr/local/Cellar/sonm/node/node.yaml ~/.sonm/node.yaml"
   system "cp /usr/local/Cellar/sonm/cli/worker.yaml ~/.sonm/worker.yaml"
     
     
   

   system "cd /usr/local", "ln -s bin"
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
  root_url "https://sonm.com"   
  prefix "sonm"   
  cellar "/opt/homebrew/Cellar"   
  #revision 1		
end

end
