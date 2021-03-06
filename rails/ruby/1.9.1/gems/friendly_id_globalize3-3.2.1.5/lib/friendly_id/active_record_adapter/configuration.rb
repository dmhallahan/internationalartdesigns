module FriendlyId

  module ActiveRecordAdapter

    # Extends FriendlyId::Configuration with some implementation details and
    # features specific to ActiveRecord.
    class Configuration < FriendlyId::Configuration

      # The column used to cache the friendly_id string. If no column is specified,
      # FriendlyId will look for a column named +cached_slug+ and use it automatically
      # if it exists. If for some reason you have a column named +cached_slug+
      # but don't want FriendlyId to modify it, pass the option
      # +:cache_column => false+ to {FriendlyId::ActiveRecordAdapter#has_friendly_id has_friendly_id}.
      attr_accessor :cache_column

      # An array of classes for which the configured class serves as a
      # FriendlyId scope.
      attr_reader :child_scopes

      attr_reader :custom_cache_column

      def cache_column
        return @cache_column if defined?(@cache_column)
        @cache_column = autodiscover_cache_column
      end

      def cache_column?
        !! cache_column
      end

      def cache_column=(cache_column)
        @cache_column = cache_column
        @custom_cache_column = cache_column
      end

      def child_scopes
        @child_scopes ||= associated_friendly_classes.select do |klass|
          klass.friendly_id_config.scopes_over?(configured_class)
        end
      end

      def custom_cache_column?
        !! custom_cache_column
      end

      def scope_for(record)
        return nil unless scope?
        record.send(scope).nil? ? nil : record.send(scope).to_param
      end

      def scopes_over?(klass)
        scope? && scope == klass.to_s.underscore.to_sym
      end

      private

      def autodiscover_cache_column
        :cached_slug if configured_class.columns.any? { |column| column.name == 'cached_slug' }
      end

      def associated_friendly_classes
        configured_class.reflect_on_all_associations.compact.select { |assoc|
          !assoc.options[:polymorphic] && assoc.klass.respond_to?(:friendly_id_config)
        }.map(&:klass)
      end
    end
  end
end
