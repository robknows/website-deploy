\l rob.q // lsRec

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
.z.ph:{
  reqTxt: x 0;
  reqSym: hsym `$"./",reqTxt,".html";
  files: lsRec `:.;
  page: `:fourOfour.html;
  if[reqSym in files;page:reqSym];
  if[reqSym=`:./.html;page:`:index.html];
  if[reqTxt~"favicon.ico";page:`:favicon.ico;.log.i["Favicon requested"]];
  .http.ok page}

// Open port
system "p ",.z.x[0]
