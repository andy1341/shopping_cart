# ShoppingCart
Short description and motivation.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'shopping_cart'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install shopping_cart
```

Copy and install migrations:
```ruby
    rake shopping_cart:install:migrations 
```
```bash
    rails db:migrate
```

Instal gem:
```bash
    rails g shopping_cart:install   
```

If you want customize view:
```bash
    rg shopping_cart:views  
```

You also can fill countries, deliveries, coupon with default values
```bash
    shopping_cart:fill:countries
    shopping_cart:fill:deliveries
    shopping_cart:fill:coupons
```
Additional configuration you can find at _config/initializers/shopping_cart.rb_


## Customization steps
###Remove steps
To remove steps just remove tab from view(_shopping_cart/checkout/show.html_)
###Add custom step
Add tab in view(_shopping_cart/checkout/show.html_)
  
  1. Use ``` tab_header(name, title, enable, active)``` to add tab header
  2. Use ``` tab_content(name, active, &block)``` to add tab body
  3. You can use _checkout_form_ method to insert checkout form(It render form with button).
  
Add method {step}_params to **ShoppingCart::CheckoutForm**({step} is name off step). 
It must return permited parametr for this step.

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
