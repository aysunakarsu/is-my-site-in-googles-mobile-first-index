# is-my-site-in-googles-mobile-first-index

Below is the format of the logs which is used for the shell scripts for analyzing web server logs

66.249.76.115 - - [18/Dec/2017:02:58:22 -0500] "GET / HTTP/1.1" 200 6105 "-" "Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)"

The commands which are used to parse and extract data from the web server log files and the graph obtained by using that input at command line at the end are as follows:

1) Preparing the input file for the graph, at command line which will create file; googlebotcrawl 
source  is_my_site_in_googles_mobile_first_index.sh

2) Below command will create an image file; UrlsCrawledByGGbotPerStatusCode.png 
gnuplot is_my_site_in_googles_mobile_first_index.h

3) Now you can visualize your image at command line 
xdg-open GooglebotUserAgent.png

You can check this blog post for more information
https://www.searchdatalogy.com/blog/is-my-site-in-googles-mobile-first-index/

