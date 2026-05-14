# homebrew-build-tools

A [Homebrew tap](https://docs.brew.sh/Taps) for Automattic build tools.

## Usage

Add the tap, then install any formula from it:

```sh
brew tap automattic/build-tools https://github.com/Automattic/homebrew-build-tools
brew install <formula>
```

For example:

```sh
brew install event-horizon
```

Once tapped, the formulae behave like any other Homebrew package — `brew upgrade`, `brew uninstall`, and friends all work as expected.

## Available formulae

| Formula | Description |
| --- | --- |
| `configure` | A lightweight native tool for working with configuration files |
| `drawText` | A tiny tool for drawing raster text from HTML |
| `event-horizon` | A multi-language code generation tool for type-safe event tracking |
| `secrets2env` | A tiny tool that converts AWS Secrets Manager API responses into environment variables |
