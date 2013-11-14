require "rspec"
require "./lib/ruby_tt"

module RubyTT
  
  describe "Class" do

    context "regarding the declaration" do
      it "could be declared in different modes" do
        SameClassDeclaration::MyClass1.hi.should == "Hello World!"
        SameClassDeclaration::MyClass2.hi.should == "Hello World!"
        SameClassDeclaration::MyClass3.hi.should == "Hello World!"
        
        expect{SameClassDeclaration::MyClassA.hi}.to raise_error ::NoMethodError
        SameClassDeclaration::MyClassA.new.hi.should == "Hello World!"
        expect{SameClassDeclaration::MyClassB.hi}.to raise_error ::NoMethodError
        SameClassDeclaration::MyClassB.new.hi.should == "Hello World!"
      end
    end

  end
  
end