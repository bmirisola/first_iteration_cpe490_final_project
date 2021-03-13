BEGIN {
	RTT_new = 0
	RTT_old = 0
	count = 0
	alpha = 0.25
}

{

	if(count == 0){
	   RTT_old = $1
	   count = 1
	}

	RTT_new = (alpha*$1) + (1-alpha)*RTT_old
	RTT_old = RTT_new
	print $1, $2, RTT_new

}

END{

}
