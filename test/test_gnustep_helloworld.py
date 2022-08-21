import unittest
import subprocess

def extract_content_from_log(executable_name, log):
    return log.split("] ")[1]

class GNUstepHelloWorldTestCase(unittest.TestCase):
    def test_hellowold_output(self):
        result = subprocess.run(['./Applications/HelloWorld/obj/HelloWorld'], capture_output=True, text=True)
        lines = result.stderr.split('\n')
        line0 = extract_content_from_log("HelloWorld", lines[0])
        line1 = extract_content_from_log("HelloWorld", lines[1])

        self.assertEqual(line0, "Hello World")
        self.assertEqual(line1, "Hello GNUstep")

