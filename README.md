# Strange

Make sense of time.

```
$ date
Wed  9 Jan 2019 16:06:56 AEDT

$ strange
+---------------------------+-----+---------------------------+
|            Local time: 2019-01-09 16:06:36 +1100            |
+---------------------------+-----+---------------------------+
| America/Los_Angeles (PST) |     | 2019-01-08 21:06:36 -0800 |
| America/New_York (EST)    |     | 2019-01-09 00:06:36 -0500 |
| Europe/London (GMT)       |     | 2019-01-09 05:06:36 +0000 |
| Europe/Berlin (CET)       |     | 2019-01-09 06:06:36 +0100 |
| Australia/Sydney (AEDT)   | DST | 2019-01-09 16:06:36 +1100 |
+---------------------------+-----+---------------------------+

$ strange tomorrow at noon
+---------------------------+-----+---------------------------+
|            Local time: 2019-01-10 12:00:00 +1100            |
+---------------------------+-----+---------------------------+
| America/Los_Angeles (PST) |     | 2019-01-09 17:00:00 -0800 |
| America/New_York (EST)    |     | 2019-01-09 20:00:00 -0500 |
| Europe/London (GMT)       |     | 2019-01-10 01:00:00 +0000 |
| Europe/Berlin (CET)       |     | 2019-01-10 02:00:00 +0100 |
| Australia/Sydney (AEDT)   | DST | 2019-01-10 12:00:00 +1100 |
+---------------------------+-----+---------------------------+

$ strange Friday at 6pm
+---------------------------+-----+---------------------------+
|            Local time: 2019-01-11 18:00:00 +1100            |
+---------------------------+-----+---------------------------+
| America/Los_Angeles (PST) |     | 2019-01-10 23:00:00 -0800 |
| America/New_York (EST)    |     | 2019-01-11 02:00:00 -0500 |
| Europe/London (GMT)       |     | 2019-01-11 07:00:00 +0000 |
| Europe/Berlin (CET)       |     | 2019-01-11 08:00:00 +0100 |
| Australia/Sydney (AEDT)   | DST | 2019-01-11 18:00:00 +1100 |
+---------------------------+-----+---------------------------+

$ strange Friday at 8am GMT
+---------------------------+-----+---------------------------+
|            Local time: 2019-01-13T08:00:00+00:00            |
+---------------------------+-----+---------------------------+
| America/Los_Angeles (PST) |     | 2019-01-13 00:00:00 -0800 |
| America/New_York (EST)    |     | 2019-01-13 03:00:00 -0500 |
| Europe/London (GMT)       |     | 2019-01-13 08:00:00 +0000 |
| Europe/Berlin (CET)       |     | 2019-01-13 09:00:00 +0100 |
| Australia/Sydney (AEDT)   | DST | 2019-01-13 19:00:00 +1100 |
+---------------------------+-----+---------------------------+
```

Strange parses input using [Chronic](https://github.com/mojombo/chronic/) and
accepts a huge variety of time and date formats written in natural language.

Timezone abbreviations (E.g. GMT, PST, AEDT etc.) can be passed as the final
argument to Strange.
