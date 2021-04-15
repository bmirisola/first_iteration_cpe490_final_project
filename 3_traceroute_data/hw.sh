echo "cleaning up data!" 
awk -f cleanup.awk raw_data > delay

#echo "adding numbers"
#awk -f numbered_delay.awk delay > alldata

#sort data
echo "sorting data"
sort -n delay > sorted

echo "converting to cdf"
awk -f cdf_data_gen.awk sorted > cdf

#plot data
echo "plotting data"
gnuplot gplot

echo "Taking over operating system"
