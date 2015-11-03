Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => ENV['SECRET_KEY']
<<<<<<< HEAD


=======
>>>>>>> 6bfb2782a208c692a90e7382def12ed896dc254c
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
