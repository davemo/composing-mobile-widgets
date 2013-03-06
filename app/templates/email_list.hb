{{#each folders}}

  <div id="{{name}}" class="row email-list">
    <div class="collapsable">
      <div class="header btn btn-large btn-block collapsed">
        <i class="icon icon-plus-sign"></i>
        <em class="title">
          {{name}} <span class="subscript">( {{count}} )</span>
        </em>
      </div>
      <ul class="body nav nav-tabs nav-stacked">
        {{#each emails}}
        <li>
          <a href="#" data-model-id="{{ id }}">
            <p class="from">
              <span class="subscript">from:</span> {{ from }}
            </p>
            <p class="subject">
              <span class="subscript">subject:</span> {{ subject }}
            </p>
          </a>
        </li>
        {{/each}}
      </ul>
    </div>
  </div>

{{/each}}
