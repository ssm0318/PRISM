class Ahoy::Store < Ahoy::DatabaseStore
end

# set to true for JavaScript tracking
Ahoy.api = true

# better user agent parsing
Ahoy.user_agent_parser = :device_detector

# better bot detection
Ahoy.bot_detection_version = 2

Ahoy.visit_duration = 15.minutes
