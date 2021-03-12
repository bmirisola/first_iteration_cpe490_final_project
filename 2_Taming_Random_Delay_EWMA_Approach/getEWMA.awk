BEGIN{
	RTT_new = 0
	RTT_old = 0
	count = 0
	aplha = 0.25
}

{
	if(count == 0){
	RTT_old = $1
	count = 1
	}

	RTT_new = alpha*$1 + (1-aplha)*RTT_old
	print $1, RTT_new 
	RTT_old = RTT_new
}


END{

}
