# Elpong for Rails

This library is meant for use with [Elpong for Javascript][js]

You can put a `scheme.json` in the `/config` folder, and
that will be used as the default scheme.

```ruby
gem 'elpong-rails'
```

```bash
$ rails generate elpong
```

```ruby
class ApplicationController < ActionController::Base
  helper Elpong::Rails::Helper
  # this provides methods like elpong_scheme and elpong_collection
end
```

```html
<head>
  <%= elpong_scheme 'animal-farm' %>
  <%= elpong_collection 'pigs', path: '/api/v1/pigs/index', locals: {pigs: @pigs} %>
  <%= elpong_element 'user', path: '/api/v1/users/me', attributes: {'current-user': true} %>
</head>
```

[js]: https://github.com/hansottowirtz/elpong-js
