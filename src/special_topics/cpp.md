# C++

## Learning Resources

- [Core Guidelines](3): CPP Core Guidelines.
- [GSL](1): Implementation of the Guidelines Support Library.
- [Folly](2): Facebook general library.
- [SG20 Education Working Group](4): Lots of curated videos.

## Tooling

- [GCC 10 Built-in Static Analysis](7)
- [Sanitizers](8): Way better than Valgrind

## Improving Compile Time

- [CMake 3.16 supports unity build](5): Works by combining multiple source files into one source file and then build it at once. Note that there is a lot of "but" and can be hard to use for every cases.
- [CMake 3.16 supports precompiled headers](6): Partially parses compiled headers and save it for later. Took kind of  a lot of work to set it up

[1]: https://github.com/Microsoft/gsl
[2]: https://github.com/facebook/folly
[3]: https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines
[4]: https://www.cjdb.com.au/sg20-and-videos.html

[5]: https://cmake.org/cmake/help/v3.16/prop_tgt/UNITY_BUILD.html
[6]: https://cmake.org/cmake/help/latest/command/target_precompile_headers.html
[7]: https://developers.redhat.com/blog/2020/03/26/static-analysis-in-gcc-10/
[8]: https://github.com/google/sanitizers
