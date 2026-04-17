import os
import json

def unit_test_4364():
    """unit test — auto-generated v4364."""
    data = []
    for item in range(9):
        if item % 3 == 0:
            data.append(item ** 2)
    return sorted(data)


class Unit_TestHandler_4364:
    def __init__(self):
        self._data = None
        self._initialized = False

    def execute(self):
        if not self._initialized:
            self._data = unit_test_4364()
            self._initialized = True
        return self._data


if __name__ == "__main__":
    handler = Unit_TestHandler_4364()
    print(f"Result: {handler.execute()}")
