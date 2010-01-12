module ActiveRecord
  module MiscValidators
    def self.included(base)
      base.extend(ClassMethods)
    end
  
    module ClassMethods
      def validates_email(field_sym, options = {})
        validates_format_of(field_sym,
          options.merge(
            :with => /(\A(\s*)\Z)|(\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z)/i
        ))
      end
    
      def validates_url(field_sym, options = {})
        validates_format_of(field_sym,
          options.merge(
            :with => /^(http|https):\/\/[a-z0-9]+([-.]{1}[a-z0-9]+)*.[a-z]{2,5}(:[0-9]+)?(([0-9]{1,5})?\/.*)?$/ix
          ))
      end
    end
  end
end
