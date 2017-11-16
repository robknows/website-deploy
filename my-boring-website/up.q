// Logging
\d .log
logfile:hsym `$.z.x[1];
loghandle:hopen hdel logfile;
i:{[msg]loghandle "[",string[.z.Z],"][info ]",msg,"\n";}
e:{[msg]loghandle "[",string[.z.Z],"][error]",msg,"\n";}
d:{[msg]loghandle "[",string[.z.Z],"][debug]",msg,"\n";}
i["=== logger ok ==="]

// HTTP
\d .http
ok:{"HTTP/1.1 200 OK\nContent-Type: text/html\nConnection: close\nContent-Length: ",string[count html],"\r\n\r\n",html:raze read0 x}

\d .

// Routing
// Maps ReqTxt!Page-to-serve
pages:("";"favicon.ico";"index.html";"posts/qng.html")!(`:index.html`:index.html`:index.html`:posts/qng.html)

.z.ph:{.http.ok `:fourOfour.html ^ pages x 0}

// Open port
system "p ",.z.x[0]
