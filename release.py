import json
import sys

from subprocess import call


def make_release(version):
    """Push a new release to GitHub.
    """
    with open("Microsoft/meta.json") as f:
        d = json.loads(f.read())
        d["version"] = version

    with open("Microsoft/meta.json", "w") as f:
        f.write(json.dumps(d))

    call("git tag {0})".format(version))
    call("git push origin {0})".format(version))


if __name__ == "__main__":
    make_release(sys.argv[0])
