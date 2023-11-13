file(REMOVE_RECURSE
  "../../build/lib/libns3.40-mptcp-default.pdb"
  "../../build/lib/libns3.40-mptcp-default.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libmptcp.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
