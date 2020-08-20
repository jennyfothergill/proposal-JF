import subprocess as sp


def tag_only(line):
    """get just the tag from the line with '@article'"""
    start = line.index("{")
    end = line.index(",")
    return line[start+1:end]

def main():
    """I'm always worried that Mendeley is losing my papers.
    This script is to give me some peace of mind that
    my bibs aren't disappearing before I commit the new bib file.

    usage:
        first do
            $cp library-link.bib library.bib
        then
            $python checkbibs.py
    """
    command = ["git", "diff", "library.bib"]
    p = sp.run(command, capture_output=True)
    lines = p.stdout.decode("utf-8").split("\n")
    tags = [line for line in lines if "@article" in line]
    plus = {tag_only(tag) for tag in tags if tag[0] == "+"}
    minus = {tag_only(tag) for tag in tags if tag[0] == "-"}
    if minus.issubset(plus):
        print("All good! No bibs missing")
    else:
        missing = []
        check = minus - plus
        for tag in check:
            # check if just an 'a', 'b' got added/removed etc
            if tag[:-1] not in plus:
                missing.append(tag)
        if missing:
            print("These bibs were missing: ", missing)
        else:
            print("All good! No bibs missing")


if __name__ == "__main__":
    main()
