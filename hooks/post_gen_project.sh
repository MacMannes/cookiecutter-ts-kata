#!/bin/sh

git init
{{cookiecutter.build_tool}} install

git add -A
git commit -m "Initial commit"
{%- if cookiecutter.create_github_repo -%}
    gh repo create --public {{cookiecutter.__project_slug}}
{% endif %}
git remote add origin {{cookiecutter.__git_repo}}
echo ""
echo "Project initialized. Happy coding!"
echo "To open IntelliJ IDEA, run 'idea {{cookiecutter.__project_slug}}'"
