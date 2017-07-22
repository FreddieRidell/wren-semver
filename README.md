# Wren SemVer

_A package for constructing, comparing and matching Semantic Versions_

This library uses [Recto](https://github.com/BrianOtto/Recto), a string manipulation library, which is included as a git submodule. Ironically, the whole point of this `SemVer` package is to aid creation of a Wren package manager, which will be used to include `Recto`, woah: confusing!

`SemVer` exposes two constructors:

+ `version`: creates a single semver version, like `2.3.4`
+ `matcher`: creates a semver matcher, that can be used to test if a version is inside a range, like `2.x.x`

Matchers and Versions can be compared using `==`, `!=`, `<` `<=`, `>=`, & `>=`; and hopefully return what you'd expect from those comparisons

## ToDo:

+ [ ] node style `~` & `^` matcher specifiers
+ [ ] trailing `-foo.bar` release tags
+ [ ] trailing `+baz.quz` build metadata
