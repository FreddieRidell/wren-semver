import "./semver" for SemVer

var alphaVersion = SemVer.version("0.0.5")
var betaVersion = SemVer.version("0.3.2")
var releaseVersion = SemVer.version("1.6.23")
var secondVersion = SemVer.version("2.44.19")

var alphaMatcher = SemVer.matcher("0.0.5")
var betaMatcher = SemVer.matcher("0.3.X")
var releaseMatcher = SemVer.matcher("1.X.Y")
var anyMatcher = SemVer.matcher("X.Y.Z")

System.print(alphaVersion)
System.print(betaVersion)
System.print(releaseVersion)
System.print(secondVersion)

System.print()

System.print(alphaMatcher)
System.print(betaMatcher)
System.print(releaseMatcher)
System.print(anyMatcher)

System.print()

System.print("Matcher lower than version, should go: false, false, false, true, true" )
System.print( SemVer.version("2.3.4") <  SemVer.matcher("1.x.x"))
System.print( SemVer.version("2.3.4") <= SemVer.matcher("1.x.x"))
System.print( SemVer.version("2.3.4") == SemVer.matcher("1.x.x"))
System.print( SemVer.version("2.3.4") >= SemVer.matcher("1.x.x"))
System.print( SemVer.version("2.3.4") >  SemVer.matcher("1.x.x"))
System.print()
System.print( SemVer.version("2.3.4") <  SemVer.matcher("2.2.x"))
System.print( SemVer.version("2.3.4") <= SemVer.matcher("2.2.x"))
System.print( SemVer.version("2.3.4") == SemVer.matcher("2.2.x"))
System.print( SemVer.version("2.3.4") >= SemVer.matcher("2.2.x"))
System.print( SemVer.version("2.3.4") >  SemVer.matcher("2.2.x"))
System.print()
System.print( SemVer.version("2.3.4") <  SemVer.matcher("2.3.3"))
System.print( SemVer.version("2.3.4") <= SemVer.matcher("2.3.3"))
System.print( SemVer.version("2.3.4") == SemVer.matcher("2.3.3"))
System.print( SemVer.version("2.3.4") >= SemVer.matcher("2.3.3"))
System.print( SemVer.version("2.3.4") >  SemVer.matcher("2.3.3"))

System.print()
System.print("Matcher same as version, should go: false, true, true, true, false" )
System.print( SemVer.version("2.3.4") <  SemVer.matcher("2.x.x"))
System.print( SemVer.version("2.3.4") <= SemVer.matcher("2.x.x"))
System.print( SemVer.version("2.3.4") == SemVer.matcher("2.x.x"))
System.print( SemVer.version("2.3.4") >= SemVer.matcher("2.x.x"))
System.print( SemVer.version("2.3.4") >  SemVer.matcher("2.x.x"))
System.print()
System.print( SemVer.version("2.3.4") <  SemVer.matcher("2.3.x"))
System.print( SemVer.version("2.3.4") <= SemVer.matcher("2.3.x"))
System.print( SemVer.version("2.3.4") == SemVer.matcher("2.3.x"))
System.print( SemVer.version("2.3.4") >= SemVer.matcher("2.3.x"))
System.print( SemVer.version("2.3.4") >  SemVer.matcher("2.3.x"))
System.print()
System.print( SemVer.version("2.3.4") <  SemVer.matcher("2.3.4"))
System.print( SemVer.version("2.3.4") <= SemVer.matcher("2.3.4"))
System.print( SemVer.version("2.3.4") == SemVer.matcher("2.3.4"))
System.print( SemVer.version("2.3.4") >= SemVer.matcher("2.3.4"))
System.print( SemVer.version("2.3.4") >  SemVer.matcher("2.3.4"))

System.print()
System.print("Matcher higher than version, should go: true, true, false, false, false" )
System.print( SemVer.version("2.3.4") <  SemVer.matcher("3.x.x"))
System.print( SemVer.version("2.3.4") <= SemVer.matcher("3.x.x"))
System.print( SemVer.version("2.3.4") == SemVer.matcher("3.x.x"))
System.print( SemVer.version("2.3.4") >= SemVer.matcher("3.x.x"))
System.print( SemVer.version("2.3.4") >  SemVer.matcher("3.x.x"))
System.print()
System.print( SemVer.version("2.3.4") <  SemVer.matcher("2.4.x"))
System.print( SemVer.version("2.3.4") <= SemVer.matcher("2.4.x"))
System.print( SemVer.version("2.3.4") == SemVer.matcher("2.4.x"))
System.print( SemVer.version("2.3.4") >= SemVer.matcher("2.4.x"))
System.print( SemVer.version("2.3.4") >  SemVer.matcher("2.4.x"))
System.print()
System.print( SemVer.version("2.3.4") <  SemVer.matcher("2.3.5"))
System.print( SemVer.version("2.3.4") <= SemVer.matcher("2.3.5"))
System.print( SemVer.version("2.3.4") == SemVer.matcher("2.3.5"))
System.print( SemVer.version("2.3.4") >= SemVer.matcher("2.3.5"))
System.print( SemVer.version("2.3.4") >  SemVer.matcher("2.3.5"))