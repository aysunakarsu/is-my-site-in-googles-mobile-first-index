clear
reset
unset key
set terminal pngcairo  font "verdana,8" size 1200,400
# graph title
set title "URLS CRAWLED BY GOOGLEBOT USERAGENT BY DAY https://www.searchdatalogy.com"
set grid y
#y-axis label
set yrange [0:100]
set ylabel "% of total"
set key invert reverse Left outside
set output "GooglebotUserAgent.png"
set xtics rotate out
set ytics nomirror
# Select histogram data
set style data histogram
# Give the bars a plain fill pattern, and draw a solid line around them.
set boxwidth 0.75
set style fill solid 1.00 border -1
set style histogram rowstacked
xticreduce(col) = (int(column(col))%5 ==0)?stringcolumn(1):""
colorfunc(x) = x == 2 ?  "blue" : x == 3 ?  "red"  : "blue"  
titlecol(x) = x == 2 ?  "Smartphone" : x == 3 ?  "Desktop" :  "2"  
plot for [i=2:3] 'googlebotscrawl'  using   (100.*column(i)/column(4)):xtic(xticreduce(1)) title titlecol(i) lt rgb  colorfunc(i)
