=begin
#ShipEngine

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ShipEngine::Weight
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Weight' do
  before do
    # run before each test
    @instance = ShipEngine::Weight.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Weight' do
    it 'should create an instance of Weight' do
      expect(@instance).to be_instance_of(ShipEngine::Weight)
    end
  end
  describe 'test attribute "value"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "unit"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["pound", "ounce", "gram", "kilogram"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.unit = value }.not_to raise_error
       #end
    end
  end

end
