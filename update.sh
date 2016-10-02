git add -A \
  && git commit -m "$(git log --pretty=format:"%s" HEAD^..HEAD)" \
  && git push
