module HTTPong
  module Rails
    module Helper
      def httpong_scheme(name_or_scheme = nil)
        if name_or_scheme.class == HTTPong::Scheme
          scheme = name_or_scheme
        elsif name_or_scheme
          scheme = HTTPong.get_scheme(name_or_scheme)
        else
          scheme = HTTPong.default_scheme
        end
        content_tag(:meta, nil, name: 'httpong-scheme', content: scheme.to_json, scheme: scheme.name)
        # "<meta name='httpong-scheme' content='#{scheme.to_json}' scheme='#{scheme.name}'/>"
      end

      def httpong_collection(name, path, options = {})
        if options[:scheme].class == HTTPong::Scheme
          scheme = options[:scheme]
        elsif options[:scheme]
          scheme = HTTPong.get_scheme(options[:scheme])
        else
          scheme = HTTPong.default_scheme
        end
        content_tag(:meta, nil, name: 'httpong-collection', content: raw(render(template: path)), scheme: scheme.name, collection: name)
      end
    end
  end
end
