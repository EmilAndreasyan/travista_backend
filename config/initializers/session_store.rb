if Rails.env == "production"
Rails.application.config.session_store :cookie_store, key: "_travista",
domain: "travista.herokuapp.com"
else
    Rails.application.config.session_store :cookie_store, key: "_travista"
end