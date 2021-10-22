class Pattern < ApplicationRecord
    CONTENT_JSON_SCHEMA = Pathname.new(Rails.root.join('app', 'models', 'schemas', 'pattern_content.json'))

    validates :name, presence: true, length: { maximum: 50 }
    validates :description, length: { maximum: 400 }
    validates :content, presence: true, json: { schema: CONTENT_JSON_SCHEMA }
end
