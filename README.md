# HTTPong for Rails

This library is meant to use with [HTTPong for Javascript][js]

You can put a `scheme.json` in the `/config` folder, and
that will be used as the default scheme.

```ruby
gem 'httpong-rails'
```

```bash
$ rails generate httpong
```

```ruby
class ApplicationController < ActionController::Base
  helper HTTPong::Rails::Helper
  # this provides methods like httpong_scheme and httpong_collection
end
```

```html
<head>
  <%= httpong_scheme 'animal-farm' %>
  <%= httpong_collection 'pigs', path: '/api/v1/pigs/index', locals: {pigs: @pigs} %>
  <%= httpong_element 'user', path: '/api/v1/users/me', attributes: {'current-user': true} %>
</head>
```

[js]: https://github.com/hansottowirtz/httpong-js
