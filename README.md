# HTTPong for Rails

This library is meant to use with [HTTPong for Javascript][js]

You can put a `scheme.json` or `scheme.cson` in the `/config` folder, and
that will be used as the default scheme.

```bash
$ rails generate httpong:install
```

```ruby
class ApplicationController < ActionController::Base
  helper HTTPong::Rails::Helper
  # this provides methods like httpong_scheme and httpong_collection
end
```

```html
<head>
  <!-- other stuff -->
  <%= httpong_scheme('animal-farm') %>
  <%= httpong_collection('pigs') %>
</head>
```

[js]: https://github.com/hansottowirtz/httpong-js
