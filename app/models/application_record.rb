class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # skip_before_action :authenticate_user!, only: :home
end
