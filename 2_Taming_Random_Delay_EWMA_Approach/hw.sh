#clean up data
echo "cleaning up data!" 
awk -f cleanup.awk data > delay

#
#


#plot data
echo "plotting data"
gnuplot gplot

echo "Taking over operating system"
