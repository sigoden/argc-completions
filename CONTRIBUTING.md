# Contributing

Welcome to argc-completions and thank you for considering contributing!

## Tool docs

* [argc-completions docs](https://github.com/sigoden/argc-completions/tree/main/docs)
* [argc docs](https://github.com/sigoden/argc/tree/main/docs)
* [yq docs](https://mikefarah.gitbook.io/yq/)
* [awk docs](https://www.gnu.org/software/gawk/manual/html_node/index.html)
* [sed docs](https://www.gnu.org/software/sed/manual/sed.html)

## Set up your own fork of the argc-completions repository

1. [Fork the sigoden/argc-completions repository on GitHub](https://github.com/sigoden/argc-completions/fork).

This creates a personal remote repository that you can push to. This is needed because only argc-completions maintainers have push access to the main repositories.

2. Change to the ARGC_COMPLETIONS_ROOT

```sh
cd $ARGC_COMPLETIONS_ROOT
```

3. Add your pushable forked repository as a new remote:

```sh
git remote add <YOUR_USERNAME> https://github.com/<YOUR_USERNAME>/argc-completions.git
```

## Create your pull request from a new branch

To make changes on a new branch and submit it for review, create a GitHub pull request with the following steps:

1. Check out the `main` branch:

```sh
git checkout main
```

2. Retrieve new changes to the master branch:

```sh
git pull origin main
./scripts/download-tools.sh
```

3. Make your changes.


4. Check your completion script

```sh
argc check <COMMAND>
```

5. Commit the changes

Our prefered commit message format:

- `add: COMMAND`  if your add a new completion script. e.g. `add: cargo binstall`

- `COMMAND: ...`  if your modify a completion script.

6. Upload your branch of new commits to your fork:

```
git push --set-upstream <YOUR_USERNAME> <YOUR_BRANCH_NAME>
```

7. Go to the https://github.com/sigoden/argc-completions and create a pull request to request review and merging of the commits from your pushed branch.

8. Await feedback or a merge from Homebrew’s maintainers.