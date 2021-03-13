BEGIN {
	delay[2]
	seq[2]
	count = 0
}

{

	if($1 == 64){
		split($7, delay, "=")
		split($5, seq, "=")

		if(count % 1 == 0){
		 print delay[2], seq[2]
		}
	}


}

END{
}
