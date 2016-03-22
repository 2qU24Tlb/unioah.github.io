title: time processing in Python
date: 2016-01-03 21:32:44
categories: Python
tags: time
---

There are 3 modules that often used in Python to process date & time.

## time module:
Two different are used in time module.
- floating-point number represents **second** that starts from 12:00am, January 1, 1970.
- **time structures** for the detail view:

| entry  | range |
| ------- | ----- |
| tm_year | 1~12  |
| tm_mon  | 1~12  |
| tm_mday | 1~31  |
| tm_hour | 0~23  |
| tm_min  | 0~59  |
| tm_sec  | 0~61(leap-seconds) |
| tm_wday | 0~6 |
| tm_yday | 1~366 |
| tm_isdst| -1, 0, 1 |

- some useful functions:

| name | usage |
| ---- | ----- |
| time() | get current system time in seconds |
| ctime(seconds) | convert seconds to human readable string |
| clock() | get current CPU(clock) time, for measuring |
| localtime(seconds) | convert seconds to struct_time |
| asctime(struct_time) | convert struct_time to human readable string |
| mktime(tuple from struct_time) | convert struct_time to seconds |
| strptime(string) | convert a specified tring representation to struct_time |
| strftime(struct_time) | convert struct_time to s specified tring reprensentation |

## calendar module:
Get day information in a month.

## datetime module:
To be continued...

### References:
1. http://www.tutorialspoint.com/python/python_date_time.htm
2. https://pymotw.com/2/time/
