# Wren SemVer

_A package for constructing, comparing and matching Semantic Versions_

`SemVer` exposes two constructors:

+ `version`: creates a single semver version, like `2.3.4`
+ `matcher`: creates a semver matcher, that can be used to test if a version is inside a range, like `2.x.x`

Matchers and Versions can be compared using `==`, `!=`, `<` `<=`, `>=`, & `>=`; and hopefully return what you'd expect from those comparisons

## ToDo:

+ [ ] node style `~` & `^` matcher specifiers
+ [ ] trailing `-foo.bar` release tags
+ [ ] trailing `+baz.quz` build metadata
