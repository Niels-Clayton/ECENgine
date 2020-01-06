file(REMOVE_RECURSE
  "../bin/test.exe"
  "../bin/test.exe.manifest"
  "../bin/test.pdb"
  "../lib/libtest.dll.a"
  "CMakeFiles/test.dir/src/engine.cpp.obj"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/test.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
