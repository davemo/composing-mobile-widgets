<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <title>Hello World | Composing Mobile Widgets</title>
    <link rel="stylesheet" type="text/css" href="{{css}}" media="all" />
    <script type="text/javascript" src="{{js}}"></script>
  </head>
  <body>
    <div id="header-container" class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <h4 id="header-text"><strong>Emails</strong></h4>
        </div>
      </div>
    </div>
    <div id="content" class="container">
      <div class="row">
        <div id="messages" class="span12"></div>
        <div id="view" class="span12"></div>
      </div>
    </div>
    <div id="email-info-drawer" class="drawer">
      <div class="inner"></div>
    </div>
    <div id="ui-blocking-layer"></div>
  </body>
</html>
