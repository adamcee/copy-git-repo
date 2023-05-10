from github import Github
import subprocess
import sys

# define orgs
from_org = sys.argv[1]
to_org = sys.argv[2]

print(from_org, to_org)

# get hidden token
token_file = open("token.txt", "r")
token = token_file.read()
token_file.close()

# using an access token
gh = Github(token)

repos = gh.get_organization(from_org).get_repos()

for repo in repos:
    subprocess.run(['./copyrepo_to_org.sh', from_org, to_org, repo.name])
