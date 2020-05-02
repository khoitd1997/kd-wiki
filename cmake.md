# cmake

## Naming Conventions

[This Guide](https://docs.salome-platform.org/latest/dev/cmake/html/various.html)

```cmake
PROJECT(MyProject C CXX) # CamelCase project name

_some_var # internal variable

SOME_VAR # global variable from other files

LIST(...) # upper case for cmake commands

# custom function written by users
function(func_name func_var)
    # function body
endfunction()

# name the exe path variable by appending _exe
find_program(nrfjprog_exe NAMES nrfjprog)
```

## Order of variable in function call

```cmake
# good
SET(var_name "${platform_indepdendent_c_and_cpp_flags} -std=c++17")

# bad
SET(var_name "-std=c++17 ${platform_indepdendent_c_and_cpp_flags}")
```

*Rationale*: Mostly for consistency sake
