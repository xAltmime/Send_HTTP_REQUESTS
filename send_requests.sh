#!/bin/bash
# @xAltmime

#This is a list of Hypertext Transfer Protocol (HTTP) response status codes. Status codes are issued by a server in response to a client's request made to the server. It includes codes #from IETF Request for Comments (RFCs), other specifications, and some additional codes used in some common applications of the HTTP. The first digit of the status code specifies one of #five standard classes of responses. The message phrases shown are typical, but any human-readable alternative may be provided. Unless otherwise stated, the status code is part of the HTTP/ 1.1 standard (RFC 7231).[1]
# The Internet Assigned Numbers Authority (IANA) maintains the official registry of HTTP status codes.[2]
# All HTTP response status codes are separated into five classes or categories. The first digit of the status code defines the class of response, while the last two digits do not have any # classifying or categorization role. There are five classes defined by the standard:
#    1xx informational response – the request was received, continuing process
#    2xx successful – the request was successfully received, understood, and accepted
#    3xx redirection – further action needs to be taken in order to complete the request
#    4xx client error – the request contains bad syntax or cannot be fulfilled
#    5xx server error – the server failed to fulfil an apparently valid request

for i in {1..51}
do 
     curl --silent -I $1 | grep HTTP | cut -d " " -f 2 | awk '{print $1;}'
done
