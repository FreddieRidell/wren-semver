import "./semver" for SemVer

var alphaVersion = SemVer.version("0.0.5")
var betaVersion = SemVer.version("0.3.2")
var releaseVersion = SemVer.version("1.6.23")
var secondVersion = SemVer.version("2.44.19")

var alphaMatcher = SemVer.matcher("0.0.5")
var betaMatcher = SemVer.matcher("0.3.X")
var releaseMatcher = SemVer.matcher("1.X.Y")
var anyMatcher = SemVer.matcher("X.Y.Z")

var alphaFailer = SemVer.matcher("0.0.4")
var betaFailer = SemVer.matcher("0.2.X")
var releaseFailer = SemVer.matcher("0.X.Y")
var anyFailer = SemVer.matcher("X.Y.Z")

System.print(alphaVersion)
System.print(betaVersion)
System.print(releaseVersion)
System.print(secondVersion)

System.print(alphaMatcher)
System.print(betaMatcher)
System.print(releaseMatcher)
System.print(anyMatcher)

System.print( alphaVersion == alphaVersion )

System.print( alphaMatcher == alphaVersion )
System.print( alphaVersion == alphaMatcher )
System.print( alphaMatcher == alphaMatcher )

System.print( alphaFailer == alphaVersion )
System.print( alphaVersion == alphaFailer )
System.print( alphaFailer == alphaFailer )
