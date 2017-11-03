# frozen_string_literal: true

class Match < ApplicationRecord
  belongs_to :team
  belongs_to :opponent, class_name: 'Team'

  after_commit { team.aggregate_points }
end
