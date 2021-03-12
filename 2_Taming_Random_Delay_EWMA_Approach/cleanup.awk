BEGIN {
	delay[2]
}

{
	if($1 == 64){
		split($7, delay, "=")
		print delay[2]
	}
}

END{
}
