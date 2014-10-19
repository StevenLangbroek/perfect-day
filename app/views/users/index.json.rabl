collection @users

attributes :id, :first_name, :last_name, :full_name

node do |user|
	{
		:created_at_formatted => user.created_at.to_s,
		:updated_at_formatted => time_ago_in_words(user.updated_at),
	}
end