module HTTPong
  module Rails
    module Helper
      def httpong_scheme(name_or_scheme = nil)
        scheme = get_scheme_from_name_or_scheme(name_or_scheme)
        content_tag(:meta, nil, name: 'httpong-scheme', content: scheme.to_json, scheme: scheme.name)
      end

      def httpong_collection(name, options = {})
        scheme = get_scheme_from_name_or_scheme(options[:scheme])
        # options[:locals] ||=
        throw new StandardError('No path') if !options[:path]
        attributes = {
          name: 'httpong-collection',
          content: h( render(template: options[:path], locals: options[:locals] || {}) ),
          scheme: scheme.name,
          collection: name
        }
        content_tag(:meta, nil, attributes)
      end

      def httpong_element(singular_name, options = {})
        scheme = get_scheme_from_name_or_scheme(options[:scheme])
        throw new StandardError('No path') if !options[:path]
        attributes = {
          name: 'httpong-element',
          content: h( render(template: options[:path], locals: options[:locals] || {}) ),
          scheme: scheme.name,
          collection: singular_name.pluralize
        }
        options[:attributes].each do |name, value|
          attributes[name] = value
        end
        content_tag(:meta, nil, attributes)
      end

      private
      def get_scheme_from_name_or_scheme(name_or_scheme)
        if name_or_scheme.class == HTTPong::Scheme
          name_or_scheme
        elsif name_or_scheme
          HTTPong.get_scheme(name_or_scheme)
        else
          HTTPong.default_scheme
        end
      end
    end
  end
end
