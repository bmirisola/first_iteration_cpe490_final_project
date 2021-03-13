#clean up data
echo "cleaning up data!" 
awk -f cleanup.awk data > delay_and_seq

#calculate ewma
awk -f ewma.awk delay_and_seq > alldata

#plot data
echo "plotting data"
gnuplot gplot

echo "Taking over operating system"
