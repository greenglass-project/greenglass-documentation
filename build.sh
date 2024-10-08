#/bin/sh
rm -r -f site
mkdocs build
docker build -t documentation:latest .