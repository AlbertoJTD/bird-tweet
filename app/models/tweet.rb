# == Schema Information
#
# Table name: tweets
#
#  id         :bigint           not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tweet_id   :integer
#  user_id    :bigint           not null
#
# Indexes
#
#  index_tweets_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :tweet, optional: true
  has_many :comments

  validates :body, length: { maximum: 240 }, allow_blank: false, unless: :tweet_id

  def tweet_type
    if tweet_id? && body?
      'quote-tweet'
    elsif tweet_id?
      'retweet'
    else
      'tweet'
    end
  end

end
