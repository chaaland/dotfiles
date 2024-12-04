import itertools
import json
import os
import re
import sys
import types

import numpy as np
import polars as pl

from collections import Counter, defaultdict, namedtuple
from pathlib import Path


def imports():
    for _, val in globals().items():
        if isinstance(val, types.ModuleType):
            yield val.__name__


print(
    "successfully imported: [{:s}]".format(
        ", ".join(
            sorted(
                set(
                    [
                        '"{:s}"'.format(e)
                        for e in imports()
                        if "__" not in e and "types" not in e
                    ]
                )
            )
        )
    )
)
