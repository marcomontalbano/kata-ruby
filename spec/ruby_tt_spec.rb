require "rspec"
require "./lib/ruby_tt"

module RubyTT
  
  describe "Class" do

    context "regarding the declaration" do
      it "could be declared in different modes" do
        expect(SameClassDeclaration::MyClass1.hi).to be == "Hello World!"
        expect(SameClassDeclaration::MyClass2.hi).to be == "Hello World!"
        expect(SameClassDeclaration::MyClass3.hi).to be == "Hello World!"
        
        expect{SameClassDeclaration::MyClassA.hi}.to raise_error ::NoMethodError
        expect(SameClassDeclaration::MyClassA.new.hi).to be == "Hello World!"
        expect{SameClassDeclaration::MyClassB.hi}.to raise_error ::NoMethodError
        expect(SameClassDeclaration::MyClassB.new.hi).to be == "Hello World!"
      end
    end

  end
  
end
