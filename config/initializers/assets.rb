# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.scss, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( css/themify-icons-demo.css )
Rails.application.config.assets.precompile += %w( css/themify-icons.css )
Rails.application.config.assets.precompile += %w( insurance.css )
Rails.application.config.assets.precompile += %w( style.scss )
Rails.application.config.assets.precompile += %w( materialize.scss )
Rails.application.config.assets.precompile += %w( onboarding.scss )

Rails.application.config.assets.precompile += %w( js/jquery-2.2.4.min.js)
Rails.application.config.assets.precompile += %w( init.js)
Rails.application.config.assets.precompile += %w( materialize.js)
Rails.application.config.assets.precompile += %w( jquery.sticky.js)
Rails.application.config.assets.precompile += %w( jquery.ajaxchimp.min.js )
Rails.application.config.assets.precompile += %w( mixitup.min.js )

#Wizard Multi Step
Rails.application.config.assets.precompile += %w( rails-ujs.js )
Rails.application.config.assets.precompile += %w( activestorage.js )
Rails.application.config.assets.precompile += %w( turbolinks.js )
Rails.application.config.assets.precompile += %w( js/jquery.validate.min)

Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/