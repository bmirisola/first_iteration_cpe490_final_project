BEGIN {

}

{

	if($2 == "88.204.157.165"){
		print $4
		 if($6 != ""){
			print $6
		 }
		 if($8 != ""){
                        print $8
                 }
		
	}

	if($1 == "88.204.157.165"){
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
