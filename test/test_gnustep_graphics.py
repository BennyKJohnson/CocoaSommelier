import unittest
import subprocess

class GNUstepGraphicsTestCase(unittest.TestCase):
    def test_NSBezierPathTest(self):
        result = subprocess.run(['compare','-metric','ae','-fuzz', '15%','NSBezierPathTestApp.png','images/NSBezierPathTestApp.png','NSBezierPathTestApp-difference.png'], capture_output=True, text=True)
        self.assertEqual(result.returncode, 0);

    def test_rect_fill(self):
        result = subprocess.run(['compare','-metric','ae','-fuzz', '5%','RectFillTestApp.png','images/RectFillApp.png','RectFillApp-difference.png'], capture_output=True, text=True)
        self.assertEqual(result.returncode, 0);

