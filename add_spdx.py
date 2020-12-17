#SPDX-FileCopyrightText: 2020 Anish Singhani
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0
import glob
import re
import subprocess

def istext(path):
    return re.search(r':.* text', subprocess.Popen(["file", '-L', path], stdout=subprocess.PIPE).stdout.read().decode()) is not None

paths = glob.glob("**/*", recursive=True)

PREFIXES = [("//", "//", ""), ("#", "#", "")]
EXCLUDE = ["openlane/", "gds/", "lef/", "mag/", "def/", "maglef/", "spi/", "qflow/", "ngspice/"]

fulltext = """
 SPDX-FileCopyrightText: 2020 Anish Singhani

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 SPDX-License-Identifier: Apache-2.0
""".strip()

for path in paths:
    if not istext(path) or any(x in path for x in EXCLUDE):
        print("Skipping {}...".format(path))
    else:
        print("Checking {}...".format(path))
        with open(path, "r") as f:
            lines = f.readlines()

        if len(lines) > 3 and "SPDX-FileCopyrightText: 2020 Efabless Corporation" in lines[0]+lines[1]+lines[2]:
            print("Efabless SPDX found")

        elif len(lines) > 3 and "SPDX-FileCopyrightText: 2020 Anish Singhani" in lines[0]+lines[1]+lines[2]:
            print("Correct SPDX found")

        else:
            if len(lines) > 3 and ("Copyright" in lines[0] or "Copyright" in lines[1] or "Copyright" in lines[2]):
                ans = ""
                while ans not in ["y", "n"]:
                    ans = input("Partial identifier found. Fix [y/n]? ").lower()

                if ans == "y":
                    if "Copyright" in lines[0]:
                        offset = 0
                    elif "Copyright" in lines[1]:
                        offset = 1
                    elif "Copyright" in lines[2]:
                        offset = 2

                    lines2 = lines[:offset]
                    lines = lines[offset:]

                    lines[0] = lines[0][:lines[0].index("Copyright")] + "SPDX-FileCopyrightText: 2020 Anish Singhani\n"

                    lines.pop(1)
                    lines.pop(1)

                    license_ind = min(i for i, e in enumerate(lines) if "limitations under the License" in e)

                    lines.insert(license_ind+1, lines[license_ind].replace("limitations under the License.", "SPDX-License-Identifier: Apache-2.0"))

                    lines = lines2 + lines

                    with open(path, "w") as f:
                        f.write("".join(lines) + "\n")
                    print("Fixed")
                else:
                    print("Leaving as-is")

            else:
                ans = ""
                while ans not in list(map(str, range(len(PREFIXES)))) + ["n"]:
                    ans = input("No identifier found. ("+(",".join(x[0] for x in PREFIXES))+") Add ["+("/".join(map(str, range(len(PREFIXES)))))+"/n]? ").lower()

                if ans != "n":
                    i = int(ans)
                    prefix = PREFIXES[i][1]
                    pre_lines = [prefix + x + "\n" for x in fulltext.splitlines()]
                    lines = pre_lines + lines

                    with open(path, "w") as f:
                        f.write("".join(lines) + "\n")

                    print("Fixed")
                else:
                    print("Leaving as-is")


