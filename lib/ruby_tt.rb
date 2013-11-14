module RubyTT

  module SameClassDeclaration

    module Utils
      def hi
        "Hello World!"
      end
    end

    ##
    ## Extending (extend) the class means add functionalities to its eigenclass.
    ##

    # method 1
    class MyClass1
      class << self # access to its eigenclass.
        include Utils
      end
    end

    # method 2
    class MyClass2
      extend Utils
    end

    # method 3
    class MyClass3
    end
    MyClass3.extend Utils

    
    # Method A
    class MyClassA
      include Utils
    end

    # method B
    class MyClassB
      def hi
        "Hello World!"
      end
    end

  end #</SameClassDeclaration>

end #</RubyTT>