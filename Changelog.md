# 1.3.1

**Dependency updates**

* Updated `simplematrixbotlib` to 2.13.1, `matrix-nio` to 0.26.0, `PyYAML` to 6.0.4,
  `aiohttp` to 3.14.5 and `pytest` to 9.2.0.
* Raised the minimum Python version to 3.10, which is required by `matrix-nio` 0.26.
* Updated the container image build to Python 3.13 on Debian 13 (trixie). `libolm` is
  no longer required because `matrix-nio` now uses `vodozemac` for end-to-end encryption.
* Updated the Forgejo CI actions and the Ansible role dependencies.
* Updated the documentation to use the maintained container image on
  `git.justprojects.de` instead of the outdated Docker Hub image.
* Consolidated the README into a single Markdown file used by both the repository
  and PyPI.
* Updated package metadata to use an SPDX license expression.

# 1.2.2

Updating dependencies

**New docker versioning**
We also introduce a new docker version scheme. Docker versions should follow the versioning
of `<package-version>-0` where 0 ist the docker iteration and is increased by one for each docker build of the same
package version. This helps if the package is okay but the docker build has an error. Docker tag `1.2.2` can be seen as
`1.2.2-0` but you should use `1.2.2-1` or newer.

# 1.2.0

**NO user action needed**

## Enhancements

* **Encryption support 🥳**: The bot can now use encryption by default. This is possible thanks to the work of [simple-matrix-bot-lib](https://codeberg.org/imbev/simplematrixbotlib)
  (the framework this bot uses) and @noobping that added the support in this bot.

* **Bot Prefix is now configurable:** The bot uses no prefix by default. To make the bot respond (only) when using a specific prefix (e.g. `!`) you can use
    ```yaml
    bot:
        prefix: "!"
    ```

## Bugfixes

*  @olivercoad discovered and fixed a case where we don't safe the config correctly after disallowing a person/pattern