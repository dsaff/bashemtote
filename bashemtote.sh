function ensure_git {
  if ! git status >/dev/null; then
    git init
  fi

  if ! cat .gitignore | grep -q bashemtote; then
    echo >> .gitignore
    echo .bashemtote >> .gitignore
  fi

  mkdir -p .bashemtote/tags
}

