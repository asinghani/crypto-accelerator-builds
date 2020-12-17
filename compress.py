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
import os
import subprocess

FIND_CMD = "find . -type f -size +99M"
EXCLUDE = [".git"]

proc = subprocess.Popen(FIND_CMD, shell=True, stdout=subprocess.PIPE)
proc.wait()
files = [x.decode().strip() for x in proc.stdout.readlines() if len(x.strip()) > 10]

print("Found large files:")
print("\n".join(files))

basedir = os.getcwd()

for file in files:
    if any([x in file for x in EXCLUDE]):
        print("Skipping {}...".format(file))
        continue

    inp = ""
    while len(inp.strip()) < 1:
        inp = input("Compress file {} [y/n]? ".format(file))

    if inp != "y":
        print("Skipping {}...".format(file))
        continue

    dirname, filename = os.path.split(file)
    print("Entering {}".format(dirname, filename))
    os.chdir(dirname)

    subprocess.Popen("ls -1 | grep {}".format(filename), shell=True).wait()
    os.system("gzip {}".format(filename))
    subprocess.Popen("ls -1 | grep {}".format(filename), shell=True).wait()

    os.chdir(basedir)
    print("Done compressing {}".format(filename))

