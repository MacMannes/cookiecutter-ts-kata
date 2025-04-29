#!/bin/sh

git init
pnpm install

create_github_repo="{{ cookiecutter.create_github_repo }}"
class_name="{{ cookiecutter.__class_name }}"
instance_name="$(echo "${class_name:0:1}" | tr '[:upper:]' '[:lower:]')${class_name:1}"

typescript_file="src/{{cookiecutter.__project_slug }}.test.ts"

# Use sed to replace "clazz" with `instance_name` in the TypeScript file
if [ -f "$typescript_file" ]; then
    # For GNU sed
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sed -i "s/clazz/$instance_name/g" "$typescript_file"
    # For BSD sed (e.g., macOS)
    else
        sed -i '' "s/clazz/$instance_name/g" "$typescript_file"
    fi
else
    echo "TypeScript file not found: $typescript_file"
fi

git add -A
git commit -m "chore: initial commit"
git remote add origin {{cookiecutter.__git_repo}}

if [ "$create_github_repo" = "True" ]; then
    echo ""
    echo "Creating and pushing GitHub repository..."
    gh repo create {{cookiecutter.__project_slug}} --public
    git push --set-upstream origin main
fi

echo ""
echo "Project initialized. Happy coding!"
echo "To open IntelliJ IDEA, run 'idea {{cookiecutter.__project_slug}}'"
