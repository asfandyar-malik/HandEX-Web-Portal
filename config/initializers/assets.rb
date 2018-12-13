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
Rails.application.config.assets.precompile += %w( pages.css )
Rails.application.config.assets.precompile += %w( dashboard.css )
Rails.application.config.assets.precompile += %w( css/themify-icons-demo.css )
Rails.application.config.assets.precompile += %w( css/themify-icons.css )
Rails.application.config.assets.precompile += %w( css/paper-bootstrap-wizard.css )
Rails.application.config.assets.precompile += %w( css/demo.css )
Rails.application.config.assets.precompile += %w( css/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( listing.css )


Rails.application.config.assets.precompile += %w( vendor/jquery-2.2.4.min.js)

Rails.application.config.assets.precompile += %w( jquery.sticky.js)
Rails.application.config.assets.precompile += %w( owl.carousel.min.js )
Rails.application.config.assets.precompile += %w( jquery.ajaxchimp.min.js )
Rails.application.config.assets.precompile += %w( mixitup.min.js )
Rails.application.config.assets.precompile += %w( main.js )
Rails.application.config.assets.precompile += %w( dripcapital.css )

#Wizard Multi Step

Rails.application.config.assets.precompile += %w( rails-ujs.js )
Rails.application.config.assets.precompile += %w( activestorage.js )
Rails.application.config.assets.precompile += %w( turbolinks.js )
Rails.application.config.assets.precompile += %w( js/jquery-2.2.4.min)
Rails.application.config.assets.precompile += %w( js/bootstrap.min)
Rails.application.config.assets.precompile += %w( js/jquery.bootstrap.wizard)
Rails.application.config.assets.precompile += %w( js/demo   )
Rails.application.config.assets.precompile += %w( js/paper-bootstrap-wizard)
Rails.application.config.assets.precompile += %w( js/jquery.validate.min)

Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/