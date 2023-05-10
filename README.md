## Reqirements
- git, obviously
- `gh` (See [here](https://cli.github.com/))
- Generate a personal auth token [here](https://github.com/settings/tokens)

## Usage

1. Create a new file at the root level named 'token.txt' and save your [auth token](https://github.com/settings/tokens) here. This is necessary because auth tokens need to be kept secret and will be unique to the individual using this program.

2. Install dependencies

```sh
pip install -r requirements.txt
```

3. Run

```sh
python main.py <repo-to-clone-from> <repo-to-push-to>
```

## Examples
Copy all repos from romeoplatoon org to sierraplatoon org:

```sh
python main.py romeoplatoon sierraplatoon
```


