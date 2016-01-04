title: Python argparse
date: 2015-04-04 22:40:00
categories: python
---

There are two ways to handle parameters from command line in python. One is using C style function "getopt", and the other is using argparse. The argparse module is more powerful and flexible.

## Module:
import argparse

## Initialization:
ArgumentParser():
return a parser with description. 

## Add Arguments:
add_argument()
    - '-shortname',
    - '--longname',
    - action='store'|'store_true'|'store_False',
      Save the value, after optionally converting it to a different type.
    - default='True|False',
    - dest="string",
    - help='string', 
    - type=dataType

Store the argument value. if a type is provided, the value is converted to that type before it is stored. If the dest argument is provided, the value is saved to an attribute of that name on the Namespace object returned when the command line arguments are parsed.

## Get Result:
parse_args():
get namespace result from parser. By default, the argument will get from argv[1:].

eg. 
```python
import argparse

parser = argparse.ArgumentParser(description="sample")

parser.add_argument('-a', action="store_true", default=False)
parser.add_argument('-b', action="store", dest="b")
parser.add_argument('-c', action="store", dest="ctype", type=int)

result =  parser.parse_args()
print(result.a)
print(result.b)
print(result.ctype)
```

## [References]:
1. http://pymotw.com/2/argparse/
2. https://docs.python.org/3.4/howto/argparse.html#id1
