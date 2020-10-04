# Mirror Action
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-2-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

A GitHub action to check if the content of 2 files are the same.

```yml
name: Check Mirror Files
on: push
jobs:
  check-mirror-readme:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: tianhaoz95/mirror-action@v1.0.1
        with:
          original: 'README.md'
          mirror: 'docs/README.md'
```

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://tianhaoz.com"><img src="https://avatars3.githubusercontent.com/u/16887772?v=4" width="100px;" alt=""/><br /><sub><b>Tianhao Zhou</b></sub></a><br /><a href="https://github.com/tianhaoz95/mirror-action/commits?author=tianhaoz95" title="Code">💻</a></td>
    <td align="center"><a href="http://hangyuan.xyz"><img src="https://avatars0.githubusercontent.com/u/7655454?v=4" width="100px;" alt=""/><br /><sub><b>angerhang</b></sub></a><br /><a href="https://github.com/tianhaoz95/mirror-action/issues?q=author%3Aangerhang" title="Bug reports">🐛</a> <a href="https://github.com/tianhaoz95/mirror-action/commits?author=angerhang" title="Documentation">📖</a></td>
  </tr>
</table>

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->
<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!