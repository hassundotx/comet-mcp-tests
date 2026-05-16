/+  default-agent, server
=,  mimes:html
|%
+$  card  card:agent:gall
++  html-response
  |=  [eyre-id=@ta html=@t]
  ^-  (list card)
  %+  give-simple-payload:app:server
    eyre-id
  ^-  simple-payload:http
  :-  :-  200
      ~[['content-type' 'text/html; charset=utf-8']]
    %-  some
    %-  as-octt
    (trip html)
--
^-  agent:gall
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %|) bowl)
::
++  on-init
  ^-  (quip card:agent:gall _this)
  :_  this
  :~  :*  %pass  /eyre/connect
          %arvo  %e  %connect
          [`/comet-mcp-tests dap.bowl]
      ==
  ==
::
++  on-agent  on-agent:def
++  on-arvo
  |=  [=wire =sign-arvo]
  ^-  (quip card:agent:gall _this)
  ?+  wire
    (on-arvo:def wire sign-arvo)
  ::
      [%eyre %connect ~]
    ?>  ?=([%eyre %bound *] sign-arvo)
    ?:  accepted.sign-arvo
      `this
    %-  (slog leaf+"comet-mcp-tests: failed to bind Eyre endpoint" ~)
    `this
  ==
++  on-fail   on-fail:def
++  on-leave  on-leave:def
++  on-load   on-load:def
++  on-peek   on-peek:def
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card:agent:gall _this)
  ?+    mark
      (on-poke:def mark vase)
      %handle-http-request
    =/  [eyre-id=@ta req=inbound-request:eyre]
      !<([@ta inbound-request:eyre] vase)
    :_  this
    %+  html-response
      eyre-id
    '''
    <!doctype html>
    <html lang="en">
      <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Comet MCP Tests</title>
      </head>
      <body>
        <main>
          <h1>Comet MCP Tests</h1>
          <p>The %comet-mcp-tests Gall agent is running and serving this GUI entry point through Eyre.</p>
        </main>
      </body>
    </html>
    '''
  ==
++  on-save   on-save:def
++  on-watch
  |=  =path
  ^-  (quip card:agent:gall _this)
  ?+  path
    (on-watch:def path)
  ::
      [%http-response eyre-id=@ta ~]
    `this
  ==
--
