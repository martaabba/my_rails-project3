if Rails.env.production?
    Rails.configuration.stripe = {
        :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
        :secret_key => ENV['STRIPE_SECRET_KEY']
    }
else
    Rails.configuration.stripe = {
        :publishable_key => 'pk_test_QIi605PhJ4ssLpxaPgkhcr5M',
        :secret_key => 'sk_test_j6AnHijPg1fLVP1A3QVicW1Y '
    }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]