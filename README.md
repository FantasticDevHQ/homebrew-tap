<p align="center">
  <a href="https://fantastic.dev"><img src="assets/fantastic-dev-logo.svg" width="80" height="80" alt="Fantastic.Dev" /></a>
</p>

<h1 align="center">Fantastic.Dev Homebrew tap</h1>

<p align="center"><strong>Install Fantastic.Dev command-line tools with Homebrew.</strong></p>

<div align="center">

[A Fantastic.Dev Project](https://fantastic.dev)

</div>

<p align="center">
  <a href="https://fantastic.dev"><img src="https://img.shields.io/badge/Fantastic.dev-94C173?style=for-the-badge&amp;logoColor=0c0e13" alt="Visit Fantastic.Dev" /></a>
  <a href="https://github.com/FantasticDevHQ"><img src="https://img.shields.io/badge/GitHub-0c0e13?style=for-the-badge&amp;logo=github&amp;logoColor=white" alt="Fantastic.Dev on GitHub" /></a>
  <a href="https://www.youtube.com/@FantasticDevHQ"><img src="https://img.shields.io/badge/YouTube-FF0033?style=for-the-badge&amp;logo=youtube&amp;logoColor=white" alt="Fantastic.Dev on YouTube" /></a>
  <a href="https://twitter.com/FantasticDevHQ"><img src="https://img.shields.io/badge/Twitter_%2F_X-0c0e13?style=for-the-badge&amp;logo=x&amp;logoColor=white" alt="Fantastic.Dev on Twitter / X" /></a>
</p>

<p align="center">
  <a href="https://github.com/FantasticDevHQ/homebrew-tap/actions/workflows/check.yml"><img src="https://img.shields.io/github/actions/workflow/status/FantasticDevHQ/homebrew-tap/check.yml?branch=main&amp;style=flat-square&amp;label=checks" alt="Formula checks on main" /></a>
  <a href="LICENSE"><img src="https://img.shields.io/github/license/FantasticDevHQ/homebrew-tap?style=flat-square" alt="MIT license" /></a>
  <a href="https://github.com/FantasticDevHQ/homebrew-tap/stargazers"><img src="https://img.shields.io/github/stars/FantasticDevHQ/homebrew-tap?style=flat-square" alt="GitHub stars" /></a>
</p>

---

FantasticDevHQ's Homebrew tap. Currently hosting:

- [`finch`](https://github.com/FantasticDevHQ/finch) — a Twitter/X CLI for humans and agents

Install with:

```bash
brew install fantasticdevhq/tap/finch
```

## Checks

GitHub Actions schedules formula syntax and whitespace checks on UbiCloud Linux using `ubicloud-standard-2-ubuntu-2404`. Run `ruby -c Formula/finch.rb` locally. These checks validate Ruby syntax; they do not install or audit bottles on macOS.

## Contributing

Contributions are welcome. Read the
[contributing guide](https://github.com/FantasticDevHQ/.github/blob/main/CONTRIBUTING.md)
and [Code of Conduct](https://github.com/FantasticDevHQ/.github/blob/main/CODE_OF_CONDUCT.md),
and report vulnerabilities privately as described in the
[security policy](https://github.com/FantasticDevHQ/.github/blob/main/SECURITY.md).

Formula changes need Ruby 3.3 (the version CI uses) and Git. There are no
dependencies to install. Run the same checks as CI:

```sh
find Formula -name '*.rb' -exec ruby -c {} +   # formula Ruby syntax
git show --format= --check HEAD                # whitespace errors in the last commit
```

These checks do not run Homebrew (`brew audit`, `brew style` or the formula's
`test do` block); see [Checks](#checks). Pull requests follow the shared
contributing guide.

## License

[MIT](LICENSE)
