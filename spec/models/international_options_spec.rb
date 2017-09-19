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

# Unit tests for ShipEngine::InternationalOptions
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InternationalOptions' do
  before do
    # run before each test
    @instance = ShipEngine::InternationalOptions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InternationalOptions' do
    it 'should create an instance of InternationalOptions' do
      expect(@instance).to be_instance_of(ShipEngine::InternationalOptions)
    end
  end
  describe 'test attribute "contents"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["merchandise", "documents", "gift", "returned_goods", "sample"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.contents = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "customs_items"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "non_delivery"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["return_to_sender", "treat_as_abandoned"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.non_delivery = value }.not_to raise_error
       #end
    end
  end

end

