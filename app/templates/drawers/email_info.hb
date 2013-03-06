<div class="header">
  <span class="icon close-drawer">
    <i class="icon-align-justify"></i>
  </span>
  <strong>{{ subject }}</strong>
</div>

<div class="body">
  <p class="from">
    <span class="subscript">from: </span>{{ from }}
  </p>
  <p class="to">
    <span class="subscript">to: </span>{{ to }}
  </p>
  <p class="contents">
    <span class="subscript">body: </span>{{ body }}
  </p>
</div>

<div class="footer">
  {{> form_controls }}
</div>
