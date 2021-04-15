BEGIN {

}

{

	if  ($1 ~ /^[0-9]+$/) {
		print $4
		 if($6 != ""){
			print $6
		 }
		 if($8 != ""){
                        print $8
                 }
		
	}

	else{
                print $3
                if($5 != ""){
                        print $5
                 }
                 if($7 != ""){
                        print $7
                 }

        }



}

END{
}
