#!/bin/sh

git init
{{cookiecutter.build_tool}} install

create_github_repo="{{ cookiecutter.create_github_repo }}"

git add -A
git commit -m "Initial commit"
git remote add origin {{cookiecutter.__git_repo}}

if [ "$create_github_repo" = "True" ]; then
    echo ""
    echo "Creating and pushing GitHub repository..."
    gh repo create {{cookiecutter.__project_slug}} --public
    git push origin main
fi

echo ""
echo "Project initialized. Happy coding!"
echo "To open IntelliJ IDEA, run 'idea {{cookiecutter.__project_slug}}'"
