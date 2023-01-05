
# copyrepos

Clone a list of repos from one github organization into another organization --
the new repos have the same name.

Intended to help us easily copy assignment repos from one org to another,
as we currently create a new github org for each platoon/cohort.


## Reqirements


 - github cli tool.
	- See https://cli.github.com/ for docs & install instructions.
	- You must have this installed.
	- You must then run `gh authenticate login` have the gh cli tool authenticate against and log
	  into your github account so it has the necessary permission to do stuff.
 - git, obviously.


## Examples
Copy the oop-guessing-game repo from romeoplatoon org to sierraplatoon org:
```
./copyrepo_to_org.sh romeoplatoon sierraplatoon oop-guessing-game
```


