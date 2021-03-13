BEGIN {
	RTT_new = 0
	RTT_old = 0
	count = 0
	alpha = 0.25
	hitLimit = 0
	countP = 0
}

{

	if(count == 0){
	   RTT_old = $1
	   count = 1
	}
	if($2 == 65535){
		hitLimit = 1
	}

	if(hitLimit == 1){
		$2 = $2 + 65536
	}
	RTT_new = (alpha*$1) + (1-alpha)*RTT_old
	RTT_old = RTT_new
	if(countP % 400 == 0){
		print $1, $2, RTT_new
	}
	countP++
	

}

END{

}
