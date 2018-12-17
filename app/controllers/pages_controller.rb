class PagesController < ApplicationController

    def home
        render :layout => "home.html.erb"
    end

    def aboutus
    end

    def contact
    end

    def impressum
    end

    def landing
        render :layout => "landing.html.erb"
    end
end
