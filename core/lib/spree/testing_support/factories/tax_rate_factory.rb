require 'spree/testing_support/factories/calculator_factory'
require 'spree/testing_support/factories/tax_category_factory'
require 'spree/testing_support/factories/zone_factory'

FactoryGirl.define do
  factory :tax_rate, class: Spree::TaxRate do
    zone
    amount 0.1
    tax_category
    association(:calculator, factory: :default_tax_calculator)
  end
end
