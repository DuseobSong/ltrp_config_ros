import os, sys

import math


class Util:
    def __init__(self):
        pass
    def deg2rad(self, deg):
        return math.pi * deg / 180.0
    
    def rad2deg(self, rad):
        return rad * 180.0 / math.pi