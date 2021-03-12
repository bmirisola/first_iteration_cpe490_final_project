#clean up data
echo "cleaning up data!" 
awk -f cleanup.awk data > delay

#sort data
echo "sorting data"
sort -n delay > sorted

#convert to probabilities
echo "calculating" 
awk -f cdf_data_gen.awk sorted > cdf

#plot data
echo "plotting data"
gnuplot gplot

echo "Taking over operating system"
