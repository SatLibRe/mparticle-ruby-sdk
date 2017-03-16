require 'date'

module MParticle

  class Product
    attr_accessor :id

    attr_accessor :name

    attr_accessor :brand

    attr_accessor :category

    attr_accessor :variant

    attr_accessor :position

    attr_accessor :price

    attr_accessor :quantity

    attr_accessor :coupon_code

    attr_accessor :added_to_cart_time_ms

    attr_accessor :total_product_amount

    attr_accessor :custom_attributes


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'brand' => :'brand',
        :'category' => :'category',
        :'variant' => :'variant',
        :'position' => :'position',
        :'price' => :'price',
        :'quantity' => :'quantity',
        :'coupon_code' => :'coupon_code',
        :'added_to_cart_time_ms' => :'added_to_cart_time_ms',
        :'total_product_amount' => :'total_product_amount',
        :'custom_attributes' => :'custom_attributes'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'brand' => :'String',
        :'category' => :'String',
        :'variant' => :'String',
        :'position' => :'Integer',
        :'price' => :'Float',
        :'quantity' => :'Float',
        :'coupon_code' => :'String',
        :'added_to_cart_time_ms' => :'Integer',
        :'total_product_amount' => :'Float',
        :'custom_attributes' => :'Hash<String, String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'brand')
        self.brand = attributes[:'brand']
      end

      if attributes.has_key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.has_key?(:'variant')
        self.variant = attributes[:'variant']
      end

      if attributes.has_key?(:'position')
        self.position = attributes[:'position']
      end

      if attributes.has_key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'coupon_code')
        self.coupon_code = attributes[:'coupon_code']
      end

      if attributes.has_key?(:'added_to_cart_time_ms')
        self.added_to_cart_time_ms = attributes[:'added_to_cart_time_ms']
      end

      if attributes.has_key?(:'total_product_amount')
        self.total_product_amount = attributes[:'total_product_amount']
      end

      if attributes.has_key?(:'custom_attributes')
        if (value = attributes[:'custom_attributes']).is_a?(Array)
          self.custom_attributes = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @price.nil?
        invalid_properties.push("invalid value for 'price', price cannot be nil.")
      end

      if @total_product_amount.nil?
        invalid_properties.push("invalid value for 'total_product_amount', total_product_amount cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @name.nil?
      return false if @price.nil?
      return false if @total_product_amount.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          brand == o.brand &&
          category == o.category &&
          variant == o.variant &&
          position == o.position &&
          price == o.price &&
          quantity == o.quantity &&
          coupon_code == o.coupon_code &&
          added_to_cart_time_ms == o.added_to_cart_time_ms &&
          total_product_amount == o.total_product_amount &&
          custom_attributes == o.custom_attributes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, brand, category, variant, position, price, quantity, coupon_code, added_to_cart_time_ms, total_product_amount, custom_attributes].hash
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
        temp_model = MParticle.const_get(type).new
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
