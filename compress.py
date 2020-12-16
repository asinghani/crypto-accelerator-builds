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
