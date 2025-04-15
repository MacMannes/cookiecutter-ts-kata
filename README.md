# cookiecutter-ts-kata

This is a simple Cookiecutter template for TypeScript katas.

## Requirements

The following packages have to be installed on your machine

- **Node.js** See:
  [Download Node.js](https://nodejs.org/en/download/package-manager)
- **pnpm** See: [Install pnpm](https://pnpm.io/installation)
- **cookiecutter** See:
  [Install cookiecutter](https://cookiecutter.readthedocs.io/en/1.7.0/installation.html)
- **GitHub CLI**. See:
  [Install GitHub CLI](https://cli.github.com/manual/installation)

## Quick Start (Mac OS)

The easiest way to get started is to use HomeBrew. If you don't have HomeBrew
installed, you can install it by running the following command:

### HomeBrew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

When HomeBrew is installed, you can install the required packages and
authenticate GitHub CLI by running the following commands:

```shell
brew install node
brew install pnpm
brew install cookiecutter
brew install gh
gh auth login
```

## Default Config

You can define default values in the file `.cookiecutterrc` in your home
directory. The file should look like this:

```yaml
default_context:
  author: "André Mathlener"
  github_user_name: "MacMannes"
```

## Usage

To create a new TypeScript kata project, run the following command:

```shell
cookiecutter gh:macmannes/cookiecutter-ts-kata
```
## SonarCloud

After creating the project, visit the README.md of the newly created project to see how you can set up SonarCloud.

