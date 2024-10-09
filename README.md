# Greenglass Project Documentation

The Greenglass Project Documentation is created using  [Markdown](https://www.markdownguide.org/cheat-sheet/) and  [mkdocs](https://www.mkdocs.org).

It can be viewed in 2 ways.

- Using mkdocs.
- Using a docker image that exposes it as a website.

The instructions shown here are for Linux, or MacOS. It is recommended that Windows users either:

- Install Windows  [Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/install) with Ubuntu, or Debian.
- Create .bat file equivalents of the shell scripts.

## Viewing the documents using mkdocs

This requires  Python3 to be installed.

```shell
pip install mkdocs
pip install mkdocs-material
pip install mkdocs-awesome-pages-plugin
pip install mkdocs-with-pdf
```

To build and run the site:

```
mkdocs serve
```

then point a browser to  [http://127.0.0.1:8000/]( http://127.0.0.1:8000/ ) 

## Building a docker image

This requires docker to be installed.

Run the build script to create the docker image.

```
./build.sh
```

Run the image using docker compose:

```
docker compose up -d
```

Then point a browser to  [http://127.0.0.1:8888/]( http://127.0.0.1:8888/ ) 

Run 

```
docker compose down
```

to stop it.