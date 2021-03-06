=begin
#ShipEngine API

#ShipEngine™ is the world's best multi-carrier shipping API, with more than 20 supported shipping carriers.  You can easily get and compare shipping rates, print labels, track your shipments, and validate addresses anywhere in the world.  ### Worldwide Major Carrier Support Access the top global carriers in minutes—instead of weeks. Simply [connect your existing carrier accounts](https://docs.shipengine.com/docs/setup-a-carrier) in the API dashboard, and then [begin creating labels](https://docs.shipengine.com/docs/use-a-specific-service).  ### Real-Time Tracking [Track packages](https://docs.shipengine.com/docs/track-a-package) across any of our 20+ supported carrier accounts and create tracking events to keep your customers up-to-date. Easily integrate real-time tracking information for shipments into your app, email, or SMS.  ### Get Rates Across Carriers Make sure you ship as cost-effectively as possible by [quickly comparing rates](https://docs.shipengine.com/docs/get-shipping-rates) using the ShipEngine Rates API. As long as you have the carrier connected to your account, you'll be able to see and compare different rates and services.  ### Global Address Validation No matter your shipping volume, failed deliveries and address change surcharges cut into your bottom line and damage perception with customers. Our address validation services ensure your packages make it to the right place the first time. [Learn how to leverage our address validation services here.](https://docs.shipengine.com/docs/address-validation)  ShipEngine supports address validation for over 180 countries, including the United States, Canada, Great Britain, Australia, Germany, France, Norway, Spain, Sweden, Israel, Italy, and more. 

OpenAPI spec version: 1.0.0
Contact: sales@shipengine.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module ShipEngineApi
  class UpsAccountInformationRequestBody
    attr_accessor :nickname

    attr_accessor :account_number

    attr_accessor :account_country_code

    attr_accessor :account_postal_code

    attr_accessor :title

    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :company

    attr_accessor :address1

    attr_accessor :address2

    attr_accessor :city

    attr_accessor :state

    attr_accessor :postal_code

    attr_accessor :country_code

    # The email address
    attr_accessor :email

    attr_accessor :phone

    attr_accessor :invoice

    attr_accessor :agree_to_technology_agreement

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'nickname' => :'nickname',
        :'account_number' => :'account_number',
        :'account_country_code' => :'account_country_code',
        :'account_postal_code' => :'account_postal_code',
        :'title' => :'title',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'company' => :'company',
        :'address1' => :'address1',
        :'address2' => :'address2',
        :'city' => :'city',
        :'state' => :'state',
        :'postal_code' => :'postal_code',
        :'country_code' => :'country_code',
        :'email' => :'email',
        :'phone' => :'phone',
        :'invoice' => :'invoice',
        :'agree_to_technology_agreement' => :'agree_to_technology_agreement'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'nickname' => :'String',
        :'account_number' => :'String',
        :'account_country_code' => :'String',
        :'account_postal_code' => :'String',
        :'title' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'company' => :'String',
        :'address1' => :'String',
        :'address2' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'postal_code' => :'String',
        :'country_code' => :'String',
        :'email' => :'String',
        :'phone' => :'String',
        :'invoice' => :'UpsInvoice',
        :'agree_to_technology_agreement' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'nickname')
        self.nickname = attributes[:'nickname']
      end

      if attributes.has_key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.has_key?(:'account_country_code')
        self.account_country_code = attributes[:'account_country_code']
      end

      if attributes.has_key?(:'account_postal_code')
        self.account_postal_code = attributes[:'account_postal_code']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.has_key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'address1')
        self.address1 = attributes[:'address1']
      end

      if attributes.has_key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.has_key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.has_key?(:'invoice')
        self.invoice = attributes[:'invoice']
      end

      if attributes.has_key?(:'agree_to_technology_agreement')
        self.agree_to_technology_agreement = attributes[:'agree_to_technology_agreement']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@email.nil? && @email.to_s.length < 1
        invalid_properties.push('invalid value for "email", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@email.nil? && @email.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && email.to_s.length < 1
        fail ArgumentError, 'invalid value for "email", the character length must be great than or equal to 1.'
      end

      @email = email
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          nickname == o.nickname &&
          account_number == o.account_number &&
          account_country_code == o.account_country_code &&
          account_postal_code == o.account_postal_code &&
          title == o.title &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          company == o.company &&
          address1 == o.address1 &&
          address2 == o.address2 &&
          city == o.city &&
          state == o.state &&
          postal_code == o.postal_code &&
          country_code == o.country_code &&
          email == o.email &&
          phone == o.phone &&
          invoice == o.invoice &&
          agree_to_technology_agreement == o.agree_to_technology_agreement
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [nickname, account_number, account_country_code, account_postal_code, title, first_name, last_name, company, address1, address2, city, state, postal_code, country_code, email, phone, invoice, agree_to_technology_agreement].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = ShipEngineApi.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
