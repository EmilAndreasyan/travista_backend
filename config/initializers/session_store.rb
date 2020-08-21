if Rails.env == "production"
Rails.application.config.session_store :cookie_store, key: "_app_name",
domain: "app-name.herokuapp.com"
else
    Rails.application.config.session_store :cookie_store, key: "_app_name"
end