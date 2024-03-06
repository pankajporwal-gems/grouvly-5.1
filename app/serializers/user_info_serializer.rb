class UserInfoSerializer < ActiveModel::Serializer
  def self.root
    'user_info'
  end
 

  attributes :current_employer, :current_work, :education_history, :ethnicity, :gender, :gender_to_match,
    :height, :id, :large_profile_picture, :likes, :location, :neighborhoods, :normal_profile_picture, :photos, :religion, :small_profile_picture,
    :studied_at, :work_history, :meet_new_people_ages, :typical_weekends
end
