=begin
#ShipEngine API

#ShipEngine™ is the world's best multi-carrier shipping API, with more than 20 supported shipping carriers.  You can easily get and compare shipping rates, print labels, track your shipments, and validate addresses anywhere in the world.  ### Worldwide Major Carrier Support Access the top global carriers in minutes—instead of weeks. Simply [connect your existing carrier accounts](https://docs.shipengine.com/docs/setup-a-carrier) in the API dashboard, and then [begin creating labels](https://docs.shipengine.com/docs/use-a-specific-service).  ### Real-Time Tracking [Track packages](https://docs.shipengine.com/docs/track-a-package) across any of our 20+ supported carrier accounts and create tracking events to keep your customers up-to-date. Easily integrate real-time tracking information for shipments into your app, email, or SMS.  ### Get Rates Across Carriers Make sure you ship as cost-effectively as possible by [quickly comparing rates](https://docs.shipengine.com/docs/get-shipping-rates) using the ShipEngine Rates API. As long as you have the carrier connected to your account, you'll be able to see and compare different rates and services.  ### Global Address Validation No matter your shipping volume, failed deliveries and address change surcharges cut into your bottom line and damage perception with customers. Our address validation services ensure your packages make it to the right place the first time. [Learn how to leverage our address validation services here.](https://docs.shipengine.com/docs/address-validation)  ShipEngine supports address validation for over 180 countries, including the United States, Canada, Great Britain, Australia, Germany, France, Norway, Spain, Sweden, Israel, Italy, and more. 

OpenAPI spec version: 1.0.0
Contact: sales@shipengine.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for ShipEngineApi::MarketplaceAccountsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MarketplaceAccountsApi' do
  before do
    # run before each test
    @instance = ShipEngineApi::MarketplaceAccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MarketplaceAccountsApi' do
    it 'should create an instance of MarketplaceAccountsApi' do
      expect(@instance).to be_instance_of(ShipEngineApi::MarketplaceAccountsApi)
    end
  end

  # unit tests for v_beta_connections_marketplaces_amazon_deactivate_by_store_id_put
  # amazon_account.deactivate
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_amazon_deactivate_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_amazon_post
  # amazon_account.connect
  # 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [ConnectMarketplaceResponseBody]
  describe 'v_beta_connections_marketplaces_amazon_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_amazon_reactivate_by_store_id_put
  # amazon_account.reactivate
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_amazon_reactivate_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_amazon_settings_by_store_id_put
  # amazon_account.update_settings
  # 
  # @param store_id 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_amazon_settings_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_amazon_test_by_store_id_get
  # amazon_account.test
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_amazon_test_by_store_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_channeladvisor_deactivate_by_store_id_put
  # channel_advisor_account.deactivate
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_channeladvisor_deactivate_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_channeladvisor_post
  # channel_advisor_account.connect
  # 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [ConnectMarketplaceResponseBody]
  describe 'v_beta_connections_marketplaces_channeladvisor_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_channeladvisor_reactivate_by_store_id_put
  # channel_advisor_account.reactivate
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_channeladvisor_reactivate_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_channeladvisor_settings_by_store_id_put
  # channel_advisor_account.update_settings
  # 
  # @param store_id 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_channeladvisor_settings_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_channeladvisor_test_by_store_id_get
  # channel_advisor_account.test
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_channeladvisor_test_by_store_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_ebay_access_token_post
  # ebay_account.connect_access_token
  # 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [ConnectMarketplaceResponseBody]
  describe 'v_beta_connections_marketplaces_ebay_access_token_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_ebay_deactivate_by_store_id_put
  # ebay_account.deactivate
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_ebay_deactivate_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_ebay_reactivate_by_store_id_put
  # ebay_account.reactivate
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_ebay_reactivate_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_ebay_settings_by_store_id_put
  # ebay_account.update_settings
  # 
  # @param store_id 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_ebay_settings_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_ebay_test_by_store_id_get
  # ebay_account.test
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_ebay_test_by_store_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_etsy_access_token_post
  # etsy_account.connect
  # 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [ConnectMarketplaceResponseBody]
  describe 'v_beta_connections_marketplaces_etsy_access_token_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_etsy_deactivate_by_store_id_put
  # etsy_account.deactivate
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_etsy_deactivate_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_etsy_reactivate_by_store_id_put
  # etsy_account.reactivate
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_etsy_reactivate_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_etsy_settings_by_store_id_put
  # etsy_account.update_settings
  # 
  # @param store_id 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_etsy_settings_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_etsy_test_by_store_id_get
  # etsy_account.test
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_etsy_test_by_store_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_magento_deactivate_by_store_id_put
  # magento_account.deactivate
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_magento_deactivate_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_magento_post
  # magento_account.connect
  # 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [ConnectMarketplaceResponseBody]
  describe 'v_beta_connections_marketplaces_magento_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_magento_reactivate_by_store_id_put
  # magento_account.reactivate
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_magento_reactivate_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_magento_settings_by_store_id_put
  # magento_account.update_settings
  # 
  # @param store_id 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_magento_settings_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_magento_test_by_store_id_get
  # magento_account.test
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_magento_test_by_store_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_shopify_access_token_post
  # shopify_account.connect_access_token
  # 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [ConnectMarketplaceResponseBody]
  describe 'v_beta_connections_marketplaces_shopify_access_token_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_shopify_deactivate_by_store_id_put
  # shopify_account.deactivate
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_shopify_deactivate_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_shopify_reactivate_by_store_id_put
  # shopify_account.reactivate
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_shopify_reactivate_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_shopify_settings_by_store_id_put
  # shopify_account.update_settings
  # 
  # @param store_id 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_shopify_settings_by_store_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v_beta_connections_marketplaces_shopify_test_by_store_id_get
  # shopify_account.test
  # 
  # @param store_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'v_beta_connections_marketplaces_shopify_test_by_store_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
