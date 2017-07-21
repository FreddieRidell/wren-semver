class SemVer {
	matcher { _matcher }

	qualifier { _qualifier }

	major { _major }
	minor { _minor }
	patch { _patch }
	tag { _tag }
	meta { _meta }

	toString { 
		var acc = ""

		acc = acc + _qualifier || ""

		acc = acc + _major || "X" 
		acc = acc + "."
		acc = acc + _minor || "Y" 
		acc = acc + "."
		acc = acc + _patch|| "Z" 

		acc = acc + _tag ? "-" + _tag : ""

		acc = acc + _meta ? "+" + _meta : ""

		return acc
	}

	major=(x){ _major = x }
	minor=(x){ _minor = x }
	patch=(x){ _patch = x }
	tag=(x){ _tag = x }
	meta=(x){ _meta = x }

	construct version(fullString) {

	}

	construct version(major, minor, patch) {

	}
	
	construct version(major, minor, patch, tag) {

	}

	construct version(major, minor, patch, tag, meta){

	}

	construct matcher(fullString) {

	}

	construct matcher(major, minor, patch) {

	}

	valid(fullString){

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

	==(other){ false }

	!=(other){ ! ( this == other ) }

	<(other) { false }

	<=(other) { ! ( other < this ) }
	>(other) { other < this }
	>=(other) { other <= this }
}
