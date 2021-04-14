BEGIN{
	count == 0
}

{
	if($1 == "*"){

	}
	
	else if($1 == "ms"){
	
	}

	else{
		print $1 
	}
}

END {
}

