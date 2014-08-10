#!/usr/bin/env/pyhton

import re
raw = "household_power_consumption.txt"


with open(raw, "r") as infile:
    with open("filtered.csv", "w") as outfile:
        head = infile.readline()
        outfile.write(head)
        date_parser = re.compile(r'^(\d{1,2})/(\d{1,2})/(\d{4})')
        for line in infile.readlines():
            day, month, year = date_parser.match(line).groups()
            if year == "2007" and month == "2" and day in ["1","2"]:
                outfile.write(line)
