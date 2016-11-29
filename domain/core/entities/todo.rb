module Core
  module Entity
    class Todo
      attr_accessor :id, :content
      
      def initialize(id, content)
        @id = id
        @content = content
      end
    end
  end
end
