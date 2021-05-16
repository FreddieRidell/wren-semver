class SemVer {
	matcher { _matcher }

	major { _major }
	minor { _minor }
	patch { _patch }

	toString { 
		var acc = ""

		acc = acc + "%( _major || "X" )"
		acc = acc + "."
		acc = acc + "%( _minor || "Y" )"
		acc = acc + "."
		acc = acc + "%( _patch|| "Z" )"

		if(this.matcher) acc = "<" + acc + ">"

		return acc
	}

	major=(x){ _major = x }
	minor=(x){ _minor = x }
	patch=(x){ _patch = x }

	construct version(fullString) {
		_matcher = false
		var levels = fullString.split(".")

		//sanity check:
		for( level in levels ){
			if( ! ( Num.fromString(level) is Num ) ){
				Fiber.abort("%(level) is not a number")
			}
		}

		_major = Num.fromString(levels[0])
		_minor = Num.fromString(levels[1])
		_patch = Num.fromString(levels[2])
	}

	construct matcher(fullString) {
		_matcher = true
		var levels = fullString.split(".")

		_major = Num.fromString(levels[0])
		_minor = Num.fromString(levels[1])
		_patch = Num.fromString(levels[2])
	}

	increment(level){
		if( level == "major" ){
			_major = _major + 1
		} 
		if ( level == "minor" ){
			_minor = _minor + 1
		} 
		if ( level == "patch" ){
			_patch = _patch + 1
		}
	}

	==(other){ 
		if( !this.matcher && !other.matcher) {
			return ( this.major == other.major ) && ( this.minor == other.minor ) && ( this.patch == other.patch )
		}

		if( !this.matcher && other.matcher ){
			return other == this
		}

		if( this.matcher && !other.matcher ){
			if(this.major && this.major != other.major){
				return false
			}

			if(this.minor && this.minor != other.minor){
				return false
			}

			if(this.patch && this.patch != other.patch){
				return false
			}

			return true
		}

		if( this.matcher && other.matcher ){
			if(this.major && other.major && this.major != other.major){
				return false
			}

			if(this.minor && other.minor && this.minor != other.minor){
				return false
			}

			if(this.patch && other.patch && this.patch != other.patch){
				return false
			}

			return true
		}
	}

	!=(other){ ! ( this == other ) }

	<(other) {
		if(this == other){
			return false
		}

		if(this.major && other.major){
			if(this.major > other.major){
				return false
			}
		}

		if(this.minor && other.minor){
			if(this.minor > other.minor){
				return false
			}
		}

		if(this.patch && other.patch){
			if(this.patch >= other.patch){
				return false
			}
		}

		return true
	}

	<=(other) { ! ( other < this ) }
	>(other) { other < this }
	>=(other) { other <= this }
}
