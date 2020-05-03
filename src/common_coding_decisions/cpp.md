# cpp

## Naming Conventions

[Google CPP Style Guide](https://google.github.io/styleguide/cppguide.html)

One good rule is to not abbreviate unless ```wikipedia``` abbreviate so for example:

```cpp
// good
class PeerManager {};

// bad
class PM {};
```

## Doxygen Comments

```cpp
/**
 * @brief This is brief
 *
 * @param param Talk about param
 * @return false Talk about return false
 */
```

*Rationale*: Consistency and also easier to read

## Constant Array

This applies even in case where we have to ```const_cast``` the return type of ```std::array.data()``` to not be const to fit the signature, just make sure the pointer is actually to const instead of the API just forgetting to have const

```cpp
// good
constexpr std::array<uint16_t, 2> TIMETABLE_SERVICE_UUID_BASE{ 0xBC, 0x8A };

// bad
#define TIMETABLE_SERVICE_UUID_BASE { 0xBC, 0x8A }
```

*Rationale*: Don't use macros, also the array has a lot more convenient functions
