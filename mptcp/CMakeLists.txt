check_include_file_cxx(stdint.h HAVE_STDINT_H)
if(HAVE_STDINT_H)
    add_definitions(-DHAVE_STDINT_H)
endif()

set(examples_as_tests_sources)
if(${ENABLE_EXAMPLES})
    set(examples_as_tests_sources
        #test/mptcp-examples-test-suite.cc
        )
endif()

build_lib(
    LIBNAME mptcp
    SOURCE_FILES model/mp-tcp-typedefs.cc
    model/mp-tcp-subflow.cc
    model/mp-tcp-socket-base.cc
                 # helper/mp-tcp-helper.cc

    HEADER_FILES model/mp-tcp-typedefs.h
    model/mp-tcp-subflow.h
    model/mp-tcp-socket-base.h
                 # helper/mp-tcp-helper.h

    LIBRARIES_TO_LINK ${libcore}
    TEST_SOURCES #test/mptcp-test-suite.cc
                 #${examples_as_tests_sources}
)

