class Bug < ApplicationRecord
    enum issue_type: [:feature, :issue, :enhancement]
    enum priority: [:medium, :low, :high]
    enum status: [:open, :closed, :monitor]
end
