module Core
  module Entity
    class Todo
      attr_accessor :content
      
      def initialize(content)
        @content = content
      end
    end
  end
end
