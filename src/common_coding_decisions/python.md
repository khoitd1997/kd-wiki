# Python

## Naming Conventions

[Pep8](https://www.python.org/dev/peps/pep-0008/). Summary below

```python
# also applies to exceptions
def ClassName():
    @classmethod
    def class_method(cls):

    def instance_public_method(self):

    def _private_method(self):

    class_variable = 5

    def __init__(self):
        self._instance_variable = 4

# type variable
from typing import TypeVar

# standalone function
def func_name(param_1):
    # ...

# constants
MAX_OVERFLOW = 5
```
