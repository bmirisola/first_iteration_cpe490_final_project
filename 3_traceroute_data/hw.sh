echo "cleaning up data!" 
awk -f cleanup.awk raw_data > delay

#echo "adding numbers"
#awk -f numbered_delay.awk delay > alldata

echo "clean up part 2"
awk -f cleanup2.awk delay > cleaned

#sort data
echo "sorting data"
sort -n cleaned > sorted

echo "converting to cdf"
awk -f cdf_data_gen.awk sorted > cdf

#plot data
echo "plotting data"
gnuplot gplot

echo "Taking over operating system"
