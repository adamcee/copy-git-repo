import argparse
from github import Github
import subprocess


def run(from_org, to_org, token):
    # using an access token
    gh = Github(token)

    repos = gh.get_organization(from_org).get_repos()

    for repo in repos:
        subprocess.run(['./copyrepo_to_org.sh', from_org, to_org, repo.name])


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--from_org", required=True)
    parser.add_argument("--to_org", required=True)
    parser.add_argument("--token", required=True)
    args = parser.parse_args()
    run(args.from_org, args.to_org, args.token)
