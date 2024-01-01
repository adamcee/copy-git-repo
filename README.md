## Reqirements
- git, obviously
- `gh` (See [here](https://cli.github.com/))
- Generate a personal auth token [here](https://github.com/settings/tokens)

## Usage

1. Get your [auth token](https://github.com/settings/tokens). Auth tokens need to be kept secret and will be unique to the individual using this program.

2. Create Virtual Environment and Install dependencies
```sh
pip install -r requirements.txt
```

3. Run
```sh
python main.py --from_org <repo-to-clone-from> --to_org <repo-to-push-to> --token <your-gh-token>
```

## Examples
Copy all repos from romeoplatoon org to sierraplatoon org:
```sh
python main.py --from_org romeoplatoon --to_org sierraplatoon --token ghp_fake987234hsfASDF78
```


