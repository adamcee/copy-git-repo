#!/bin/bash
# copyrepos
# ---------------
# Clone a list of repos from one gh organization into another organization --
# the new repos have the same name.
# Intended to help us easily copy assignment repos from one org to another,
# as we currently create a new gh org for each platoon/cohort.
#
# Reqirements
# --------------
# - github cli tool.
#	- See https://cli.github.com/ for docs & install instructions.
#	- You must have this installed.
#	- You must then run `gh authenticate login` have the gh cli tool authenticate against and log
#	  into your github account so it has the necessary permission to do stuff.
# - git, obviously.

# Examples
# -------------
# Copy the guessing-game repo from romeoplatoon org to sierraplatoon org:
# ./copyrepos.sh romeoplatoon sierraplatoon oop-guessing-game

# See https://stackoverflow.com/questions/36273665/what-does-set-x-do
[ "$DEBUG" == 'true' ] && set -x

# See https://towardsdev.com/what-does-set-u-mean-in-a-bash-script-52b048271741
set -u

source_org=$1
target_org=$2
repo_name=$3

source_url="https://github.com/$source_org/$repo_name"
target_url="https://github.com/$target_org/$repo_name"

# TODO: Allow public/private/internal to be set as a command line flag

# Create empty repo in target org
gh repo create $target_org/$repo_name --private


# Copy repo from source org into target org repo
./copyrepo.sh $source_url $target_url
