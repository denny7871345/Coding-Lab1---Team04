if(EXISTS "/mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table/ut_all[1]_tests.cmake")
  include("/mnt/c/Users/danny/OneDrive/桌面/程式/OOP/noice-course-table/ut_all[1]_tests.cmake")
else()
  add_test(ut_all_NOT_BUILT ut_all_NOT_BUILT)
endif()