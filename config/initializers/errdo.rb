# Errdo.setup do |config|
#   # Add words to be scrubbed from the params here. By default, this is
#   # %w(password passwd password_confirmation secret confirm_password secret_token)
#   # So make sure you add on, not replace!
#   # config.dirty_words += ["custom_param"]

#   # By default, 404 errors are ignored. To un-ignore them, set this to true
#   config.log404 = true

#   # By default, errors are ignored (for notification only) if they happen
#   # within 5 minutes of the last identical error.
#   # This can be changed by setting
#   # config.ignore_time = 5.minutes

#   ## == Authorization and Devise integration =========
#   # If you have the ability to track who's logged in, setting the current_user_method
#   # will allow the logged-in user to be recorded with the error
#   config.current_user_method = :current_user
#   # Some form of authentication here is basically necessary for authorization
#   config.authenticate_with do
#     warden.authenticate! scope: :user
#   end

#   ## == Authorization ================================
#   # Setup authorization to be run as a before filter
#   # This is run inside the controller instance so you can setup any authorization you need to.
#   # By default, there is no authorization.
#   #
#   # config.authorize_with do
#   #   redirect_to root_path unless warden.user.try(:is_admin?)
#   # end
#   #
#   # To use an authorization adapter, pass the name of the adapter. For example,
#   # to use with CanCanCan[https://github.com/CanCanCommunity/cancancan], pass it like this.
#   # Currently, only cancan/cancancan is supported
#   # config.authorize_with :cancan

#   # This determines how the user is displayed on the table of errors
#   # Can be any method that a user responds to, I.E. Any method that returns a string
#   # when called on user (Default is :email)
#   config.user_string_method = :email

#   # Setting this will allow the user string to be linked to the show path
#   # Default is the errdo root path
#   # config.user_show_path = :user_path

#   ## == Notification Integration ====================
#   # See the github page at https://github.com/erichaydel/errdo for more info on how to set up slack
#   # If you want to set up slack, this is the only required parameter.
#   # The rest are totally optional, and default to the values here
#   #
#     config.notify_with slack: {  webhook: "WEBHOOK-URL",
#                                 channel: nil,
#                                 icon: ":boom:",
#                                 name: "Errdo-bot" }
#   # For now, slack is the only integration. More coming soon!

#   ## == Non Web Requests ============================
#   # Error logging for rake tasks is on by default. To turn it off, set
#   # config.log_task_exceptions = false

#   # This is the name of the class inside your application that the exceptions are stored as.
#   # Exceptions are a reserved class name.
#   #
#   # If you want to rename it, make sure you also change the migration that comes with the gem.
#   # Setting this to nil means that errors won't be tracked in the database
#   # Note: The model name "{name}_instance" should also be free
#   #
#   config.error_name = :errors

# end
