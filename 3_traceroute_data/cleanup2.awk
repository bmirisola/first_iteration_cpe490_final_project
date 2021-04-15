BEGIN{
	count == 0
}

{
	if($1 == "*"){

	}
	
	else if($1 == "ms"){
	
	}

	else if(length($1) >=8){

	}

	else{
		print $1 
	}
}

END {
}

