=begin
#ShipEngine

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1-SNAPSHOT

=end

require 'date'

module ShipEngineApi

  class UPSAccountSettingsDTO
    attr_accessor :nickname

    attr_accessor :is_primary_account

    attr_accessor :pickup_type

    attr_accessor :use_carbon_neutral_shipping_program

    attr_accessor :use_ground_freight_pricing

    attr_accessor :use_consolidation_services

    attr_accessor :use_order_number_on_mail_innovations_labels

    attr_accessor :mail_innovations_endorsement

    attr_accessor :mail_innovations_cost_center

    attr_accessor :use_negotiated_rates

    attr_accessor :account_postal_code

    attr_accessor :invoice

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'nickname' => :'nickname',
        :'is_primary_account' => :'is_primary_account',
        :'pickup_type' => :'pickup_type',
        :'use_carbon_neutral_shipping_program' => :'use_carbon_neutral_shipping_program',
        :'use_ground_freight_pricing' => :'use_ground_freight_pricing',
        :'use_consolidation_services' => :'use_consolidation_services',
        :'use_order_number_on_mail_innovations_labels' => :'use_order_number_on_mail_innovations_labels',
        :'mail_innovations_endorsement' => :'mail_innovations_endorsement',
        :'mail_innovations_cost_center' => :'mail_innovations_cost_center',
        :'use_negotiated_rates' => :'use_negotiated_rates',
        :'account_postal_code' => :'account_postal_code',
        :'invoice' => :'invoice'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'nickname' => :'String',
        :'is_primary_account' => :'BOOLEAN',
        :'pickup_type' => :'String',
        :'use_carbon_neutral_shipping_program' => :'BOOLEAN',
        :'use_ground_freight_pricing' => :'BOOLEAN',
        :'use_consolidation_services' => :'BOOLEAN',
        :'use_order_number_on_mail_innovations_labels' => :'BOOLEAN',
        :'mail_innovations_endorsement' => :'String',
        :'mail_innovations_cost_center' => :'String',
        :'use_negotiated_rates' => :'BOOLEAN',
        :'account_postal_code' => :'String',
        :'invoice' => :'UPSInvoiceDTO'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'nickname')
        self.nickname = attributes[:'nickname']
      end

      if attributes.has_key?(:'is_primary_account')
        self.is_primary_account = attributes[:'is_primary_account']
      end

      if attributes.has_key?(:'pickup_type')
        self.pickup_type = attributes[:'pickup_type']
      end

      if attributes.has_key?(:'use_carbon_neutral_shipping_program')
        self.use_carbon_neutral_shipping_program = attributes[:'use_carbon_neutral_shipping_program']
      end

      if attributes.has_key?(:'use_ground_freight_pricing')
        self.use_ground_freight_pricing = attributes[:'use_ground_freight_pricing']
      end

      if attributes.has_key?(:'use_consolidation_services')
        self.use_consolidation_services = attributes[:'use_consolidation_services']
      end

      if attributes.has_key?(:'use_order_number_on_mail_innovations_labels')
        self.use_order_number_on_mail_innovations_labels = attributes[:'use_order_number_on_mail_innovations_labels']
      end

      if attributes.has_key?(:'mail_innovations_endorsement')
        self.mail_innovations_endorsement = attributes[:'mail_innovations_endorsement']
      end

      if attributes.has_key?(:'mail_innovations_cost_center')
        self.mail_innovations_cost_center = attributes[:'mail_innovations_cost_center']
      end

      if attributes.has_key?(:'use_negotiated_rates')
        self.use_negotiated_rates = attributes[:'use_negotiated_rates']
      end

      if attributes.has_key?(:'account_postal_code')
        self.account_postal_code = attributes[:'account_postal_code']
      end

      if attributes.has_key?(:'invoice')
        self.invoice = attributes[:'invoice']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      pickup_type_validator = EnumAttributeValidator.new('String', ["dailyPickup", "occasionalPickup", "customerCounter"])
      return false unless pickup_type_validator.valid?(@pickup_type)
      mail_innovations_endorsement_validator = EnumAttributeValidator.new('String', ["none", "return_service_requested", "forwarding_service_requested", "address_service_requested", "change_service_requested", "leave_if_no_response"])
      return false unless mail_innovations_endorsement_validator.valid?(@mail_innovations_endorsement)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pickup_type Object to be assigned
    def pickup_type=(pickup_type)
      validator = EnumAttributeValidator.new('String', ["dailyPickup", "occasionalPickup", "customerCounter"])
      unless validator.valid?(pickup_type)
        fail ArgumentError, "invalid value for 'pickup_type', must be one of #{validator.allowable_values}."
      end
      @pickup_type = pickup_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mail_innovations_endorsement Object to be assigned
    def mail_innovations_endorsement=(mail_innovations_endorsement)
      validator = EnumAttributeValidator.new('String', ["none", "return_service_requested", "forwarding_service_requested", "address_service_requested", "change_service_requested", "leave_if_no_response"])
      unless validator.valid?(mail_innovations_endorsement)
        fail ArgumentError, "invalid value for 'mail_innovations_endorsement', must be one of #{validator.allowable_values}."
      end
      @mail_innovations_endorsement = mail_innovations_endorsement
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          nickname == o.nickname &&
          is_primary_account == o.is_primary_account &&
          pickup_type == o.pickup_type &&
          use_carbon_neutral_shipping_program == o.use_carbon_neutral_shipping_program &&
          use_ground_freight_pricing == o.use_ground_freight_pricing &&
          use_consolidation_services == o.use_consolidation_services &&
          use_order_number_on_mail_innovations_labels == o.use_order_number_on_mail_innovations_labels &&
          mail_innovations_endorsement == o.mail_innovations_endorsement &&
          mail_innovations_cost_center == o.mail_innovations_cost_center &&
          use_negotiated_rates == o.use_negotiated_rates &&
          account_postal_code == o.account_postal_code &&
          invoice == o.invoice
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [nickname, is_primary_account, pickup_type, use_carbon_neutral_shipping_program, use_ground_freight_pricing, use_consolidation_services, use_order_number_on_mail_innovations_labels, mail_innovations_endorsement, mail_innovations_cost_center, use_negotiated_rates, account_postal_code, invoice].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        value.compact.map{ |v| _to_hash(v) }
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