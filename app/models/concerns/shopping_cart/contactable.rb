module ShoppingCart
  module Contactable
    extend ActiveSupport::Concern

    included do
      belongs_to :billing_address, class_name: 'ShoppingCart::Address', dependent: :destroy
      belongs_to :shipping_address, class_name: 'ShoppingCart::Address', dependent: :destroy
      belongs_to :credit_card,class_name: 'ShoppingCart::CreditCard', dependent: :destroy

      accepts_nested_attributes_for :billing_address, reject_if: :address_blank?
      accepts_nested_attributes_for :shipping_address, reject_if: :address_blank?
      accepts_nested_attributes_for :credit_card, reject_if: :all_blank
    end

    def billing_address
      super || build_billing_address
    end

    def shipping_address
      super || build_shipping_address
    end

    def credit_card
      super || build_credit_card
    end

    def copy_field(field, from = :user)
      try(from).try(field).try(:dup)
    end
    private

    def address_blank?(attributes)
      attributes.except(:country_id).values.all?(&:empty?)
    end

  end
end