def add_checked_attribute(klass, attribute)
  eval <<-EOS
    class #{klass}
      def #{attribute}=(value)
        raise 'Invalid attribute' unless value
        @#{attribute} = value
      end

      def #{attribute}
        @#{attribute}
      end
    end
  EOS
end