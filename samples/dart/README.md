# Dart

## Installation

Installed using regular `apt` package provided you add the repo for it.

Note that it wants you to modify the `PATH`, I circumvented this by linking the binaries into `/usr/local/bin`, but I had to use an absolute path in the link as the shell script for `pub` is kinda stupid.

## Usage

Package management is done using `pub`, as follows:

`pub get`

Using the `pubspec.yaml` file in the project directory. It might resemble the following:

```yaml
name: "sqrt"
dependencies:
    sprintf: "^4.0.0"
```
