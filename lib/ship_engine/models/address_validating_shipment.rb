=begin
#ShipEngine

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'date'

module ShipEngine

  class AddressValidatingShipment
    attr_accessor :validate_address

    attr_accessor :shipment_id

    attr_accessor :carrier_id

    attr_accessor :service_code

    attr_accessor :external_shipment_id

    attr_accessor :ship_date

    attr_accessor :created_at

    attr_accessor :modified_at

    attr_accessor :shipment_status

    attr_accessor :ship_to

    attr_accessor :ship_from

    attr_accessor :warehouse_id

    attr_accessor :return_to

    attr_accessor :confirmation

    attr_accessor :customs

    attr_accessor :advanced_options

    attr_accessor :insurance_provider

    attr_accessor :tags

    attr_accessor :total_weight

    attr_accessor :packages

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
        :'validate_address' => :'validate_address',
        :'shipment_id' => :'shipment_id',
        :'carrier_id' => :'carrier_id',
        :'service_code' => :'service_code',
        :'external_shipment_id' => :'external_shipment_id',
        :'ship_date' => :'ship_date',
        :'created_at' => :'created_at',
        :'modified_at' => :'modified_at',
        :'shipment_status' => :'shipment_status',
        :'ship_to' => :'ship_to',
        :'ship_from' => :'ship_from',
        :'warehouse_id' => :'warehouse_id',
        :'return_to' => :'return_to',
        :'confirmation' => :'confirmation',
        :'customs' => :'customs',
        :'advanced_options' => :'advanced_options',
        :'insurance_provider' => :'insurance_provider',
        :'tags' => :'tags',
        :'total_weight' => :'total_weight',
        :'packages' => :'packages'
      }
    end

    # Attribute type mapping.
    def self.ship_engine_types
      {
        :'validate_address' => :'String',
        :'shipment_id' => :'String',
        :'carrier_id' => :'String',
        :'service_code' => :'String',
        :'external_shipment_id' => :'String',
        :'ship_date' => :'DateTime',
        :'created_at' => :'DateTime',
        :'modified_at' => :'DateTime',
        :'shipment_status' => :'String',
        :'ship_to' => :'AddressDTO',
        :'ship_from' => :'AddressDTO',
        :'warehouse_id' => :'String',
        :'return_to' => :'AddressDTO',
        :'confirmation' => :'String',
        :'customs' => :'InternationalOptions',
        :'advanced_options' => :'Hash<String, Object>',
        :'insurance_provider' => :'String',
        :'tags' => :'Array<TagResponse>',
        :'total_weight' => :'Weight',
        :'packages' => :'Array<ShipmentPackage>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'validate_address')
        self.validate_address = attributes[:'validate_address']
      end

      if attributes.has_key?(:'shipment_id')
        self.shipment_id = attributes[:'shipment_id']
      end

      if attributes.has_key?(:'carrier_id')
        self.carrier_id = attributes[:'carrier_id']
      end

      if attributes.has_key?(:'service_code')
        self.service_code = attributes[:'service_code']
      end

      if attributes.has_key?(:'external_shipment_id')
        self.external_shipment_id = attributes[:'external_shipment_id']
      end

      if attributes.has_key?(:'ship_date')
        self.ship_date = attributes[:'ship_date']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'modified_at')
        self.modified_at = attributes[:'modified_at']
      end

      if attributes.has_key?(:'shipment_status')
        self.shipment_status = attributes[:'shipment_status']
      end

      if attributes.has_key?(:'ship_to')
        self.ship_to = attributes[:'ship_to']
      end

      if attributes.has_key?(:'ship_from')
        self.ship_from = attributes[:'ship_from']
      end

      if attributes.has_key?(:'warehouse_id')
        self.warehouse_id = attributes[:'warehouse_id']
      end

      if attributes.has_key?(:'return_to')
        self.return_to = attributes[:'return_to']
      end

      if attributes.has_key?(:'confirmation')
        self.confirmation = attributes[:'confirmation']
      end

      if attributes.has_key?(:'customs')
        self.customs = attributes[:'customs']
      end

      if attributes.has_key?(:'advanced_options')
        if (value = attributes[:'advanced_options']).is_a?(Array)
          self.advanced_options = value
        end
      end

      if attributes.has_key?(:'insurance_provider')
        self.insurance_provider = attributes[:'insurance_provider']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'total_weight')
        self.total_weight = attributes[:'total_weight']
      end

      if attributes.has_key?(:'packages')
        if (value = attributes[:'packages']).is_a?(Array)
          self.packages = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      validate_address_validator = EnumAttributeValidator.new('String', ["noValidation", "validateOnly", "validateAndClean"])
      return false unless validate_address_validator.valid?(@validate_address)
      shipment_status_validator = EnumAttributeValidator.new('String', ["pending", "processing", "label_purchased", "cancelled"])
      return false unless shipment_status_validator.valid?(@shipment_status)
      confirmation_validator = EnumAttributeValidator.new('String', ["none", "delivery", "signature", "adult_signature", "direct_signature"])
      return false unless confirmation_validator.valid?(@confirmation)
      insurance_provider_validator = EnumAttributeValidator.new('String', ["none", "shipsurance", "carrier"])
      return false unless insurance_provider_validator.valid?(@insurance_provider)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] validate_address Object to be assigned
    def validate_address=(validate_address)
      validator = EnumAttributeValidator.new('String', ["noValidation", "validateOnly", "validateAndClean"])
      unless validator.valid?(validate_address)
        fail ArgumentError, "invalid value for 'validate_address', must be one of #{validator.allowable_values}."
      end
      @validate_address = validate_address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipment_status Object to be assigned
    def shipment_status=(shipment_status)
      validator = EnumAttributeValidator.new('String', ["pending", "processing", "label_purchased", "cancelled"])
      unless validator.valid?(shipment_status)
        fail ArgumentError, "invalid value for 'shipment_status', must be one of #{validator.allowable_values}."
      end
      @shipment_status = shipment_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] confirmation Object to be assigned
    def confirmation=(confirmation)
      validator = EnumAttributeValidator.new('String', ["none", "delivery", "signature", "adult_signature", "direct_signature"])
      unless validator.valid?(confirmation)
        fail ArgumentError, "invalid value for 'confirmation', must be one of #{validator.allowable_values}."
      end
      @confirmation = confirmation
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] insurance_provider Object to be assigned
    def insurance_provider=(insurance_provider)
      validator = EnumAttributeValidator.new('String', ["none", "shipsurance", "carrier"])
      unless validator.valid?(insurance_provider)
        fail ArgumentError, "invalid value for 'insurance_provider', must be one of #{validator.allowable_values}."
      end
      @insurance_provider = insurance_provider
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          validate_address == o.validate_address &&
          shipment_id == o.shipment_id &&
          carrier_id == o.carrier_id &&
          service_code == o.service_code &&
          external_shipment_id == o.external_shipment_id &&
          ship_date == o.ship_date &&
          created_at == o.created_at &&
          modified_at == o.modified_at &&
          shipment_status == o.shipment_status &&
          ship_to == o.ship_to &&
          ship_from == o.ship_from &&
          warehouse_id == o.warehouse_id &&
          return_to == o.return_to &&
          confirmation == o.confirmation &&
          customs == o.customs &&
          advanced_options == o.advanced_options &&
          insurance_provider == o.insurance_provider &&
          tags == o.tags &&
          total_weight == o.total_weight &&
          packages == o.packages
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [validate_address, shipment_id, carrier_id, service_code, external_shipment_id, ship_date, created_at, modified_at, shipment_status, ship_to, ship_from, warehouse_id, return_to, confirmation, customs, advanced_options, insurance_provider, tags, total_weight, packages].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.ship_engine_types.each_pair do |key, type|
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
        temp_model = ShipEngine.const_get(type).new
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
