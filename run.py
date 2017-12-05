#!/usr/bin/python
# -*- coding: utf-8 -*-

import incref

for i in range(10000):
    r = incref.createTrueResult()
    b = r.isFalse()
    print(b)
