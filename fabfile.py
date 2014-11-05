#! /usr/bin/env python
# -*- coding: utf-8 -*-
"""
@author: xuyaoqiang
@contact: xuyaoqiang@gmail.com
@date: 2014-11-05 23:40
@version: 0.0.0
@license:
@copyright:

"""

import os
from fabric.api import *
env.hosts = ["127.0.0.1"]
env.user = "test"
env.password = "test"

 def __user_exists__(name='scheduler'):
     with settings(hide('warnings'), warn_only=True):
         result = run('id %s'%(name))
         return not result.failed



