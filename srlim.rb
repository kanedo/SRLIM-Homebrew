require "formula"

# place url to the tar.gz file and make appropriate changes in makefile before

class Srlim < Formula
  homepage ""
  url ""
  sha1 "52f8276a623c77fa2517c4da014c2121c5c22fc2"

  # depends_on "cmake" => :build
  #depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # system "cmake", ".", *std_cmake_args
    system "make", "MACHINE_TYPE=macosx", "World" # if this fails, try separate make/make install steps
    bin.install Dir["bin/macosx/*"]
    lib.install  Dir["lib/macosx/*.a"]
    include.install  Dir["include/*.h"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test srlim`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
