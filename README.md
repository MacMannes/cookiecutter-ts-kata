# cookiecutter-ts-kata

This is a simple Cookiecutter template for TypeScript katas.

## Requirements

The following packages have to be installed on your machine

-  **Node.js**  See: [Download Node.js](https://nodejs.org/en/download/package-manager)
-  **cookiecutter** installed on your machine. See: [Install cookiecutter](https://cookiecutter.readthedocs.io/en/1.7.0/installation.html)
-  **GitHub CLI**. See: [Install GitHub CLI](https://cli.github.com/manual/installation)

## Quick Start (Mac OS)

The easiest way to get started is to use HomeBrew. If you don't have HomeBrew installed, you can install it by running the following command:

### HomeBrew 

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

When HomeBrew is installed, you can install the required packages by running the following commands:

```shell
brew install node
brew install gh
brew install cookiecutter
```

```shell

## Usage

To create a new TypeScript kata project, run the following command:

```shell
cookiecutter gh:macmannes/cookiecutter-ts-kata
```