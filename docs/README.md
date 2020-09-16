# Mirror Action

A GitHub action to check if the content of 2 files are the same.

```yml
name: Check Mirror Files
on: push
jobs:
  check-mirror-readme:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: tianhaoz95/mirror-action@v1
        with:
          original: 'README.md'
          mirror: 'docs/README.md'
```
