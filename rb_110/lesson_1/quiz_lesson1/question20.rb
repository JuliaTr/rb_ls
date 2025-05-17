mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
]

# Old code:
counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  full_name = mailing_campaign_leads[counter][:name]
  names = full_name.split

  # p names

  names_counter = 0
  loop do
    break if names_counter == names.size
    name = names[names_counter]
    names[names_counter] = name.capitalize

    # p names

    names_counter += 1
  end

  capitalized_full_name = names.join(' ')
  # p capitalized_full_name

  mailing_campaign_leads[counter][:name] = capitalized_full_name
  # p mailing_campaign_leads

  counter += 1
end

usable_leads = []
counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  last_login = mailing_campaign_leads[counter][:days_since_login]
  # p last_login

  subscribed_to_list = mailing_campaign_leads[counter][:mailing_list]
  # p subscribed_to_list

  if last_login < 60 && subscribed_to_list
    usable_leads << mailing_campaign_leads[counter]
  end

  counter += 1
end

p mailing_campaign_leads
# [{:name=>"Emma Lopez", :email=>"emma.lopez@some_mail.com", :days_since_login=>423, :mailing_list=>true}, 
# {:name=>"Mike Richards", :email=>"michael.richards@some_mail.com", :days_since_login=>23, :mailing_list=>false}, 
# {:name=>"Jane Williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, 
# {:name=>"Ash Patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]

p usable_leads
# [{:name=>"Jane Williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, 
# {:name=>"Ash Patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]



# Refactored:
mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  names.map! { |name| name.capitalize }
  lead[:name] = names.join(' ')
end

usable_lead = mailing_campaign_leads.select do |lead|
  lead[:days_since_login] < 60 && lead[:mailing_list]
end

p mailing_campaign_leads
# [{:name=>"Emma Lopez", :email=>"emma.lopez@some_mail.com", :days_since_login=>423, :mailing_list=>true}, 
# {:name=>"Mike Richards", :email=>"michael.richards@some_mail.com", :days_since_login=>23, :mailing_list=>false}, 
# {:name=>"Jane Williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, 
# {:name=>"Ash Patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]

p usable_lead
# [{:name=>"Jane Williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, 
# {:name=>"Ash Patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]



# Don't refactor the old code:
result = mailing_campaign_leads.map do |lead|
          lead[:name].capitalize!
        end

p result # (to output return value of `map`)
# ["Emma lopez", "Mike richards", "Jane williams", "Ash patel"]

p mailing_campaign_leads
# [{:name=>"Emma Lopez", :email=>"emma.lopez@some_mail.com", :days_since_login=>423, :mailing_list=>true}, 
# {:name=>"Mike Richards", :email=>"michael.richards@some_mail.com", :days_since_login=>23, :mailing_list=>false}, 
# {:name=>"Jane Williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, 
# {:name=>"Ash Patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]

mailing_campaign_leads.select! do |lead|
  lead[:days_since_login] < 60 && lead[:mailing_list]
end

p mailing_campaign_leads
# [{:name=>"Jane Williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, 
# {:name=>"Ash Patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]

# Mutates the original object.


mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  names.map! { |name| name.capitalize }
  lead[:name] = names.join(' ')
end

usable_leads = mailing_campaign_leads.keep_if do |lead|
  lead[:days_since_login] <= 60 && lead[:mailing_list]
end

p mailing_campaign_leads
# [{:name=>"Jane Williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, 
# {:name=>"Ash Patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]

p usable_leads
# [{:name=>"Jane Williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, 
# {:name=>"Ash Patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]

# Mutates the original object.


mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  lead[:name] = names.map { |name| name.capitalize }.join(' ')
end

usable_leads = mailing_campaign_leads.reject do |lead|
  last_login = lead[:days_since_login]
  subscribed_to_list = lead[:mailing_list]
  last_login > 59 && !subscribed_to_list
end

p mailing_campaign_leads
# [{:name=>"Emma Lopez", :email=>"emma.lopez@some_mail.com", :days_since_login=>423, :mailing_list=>true}, 
# {:name=>"Mike Richards", :email=>"michael.richards@some_mail.com", :days_since_login=>23, :mailing_list=>false}, 
# {:name=>"Jane Williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, 
# {:name=>"Ash Patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]

p usable_leads
# [{:name=>"Emma Lopez", :email=>"emma.lopez@some_mail.com", :days_since_login=>423, :mailing_list=>true}, 
# {:name=>"Mike Richards", :email=>"michael.richards@some_mail.com", :days_since_login=>23, :mailing_list=>false}, 
# {:name=>"Jane Williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, 
# {:name=>"Ash Patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]


# Debugged:
mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  lead[:name] = names.map { |name| name.capitalize }.join(' ')
end

usable_leads = mailing_campaign_leads.reject do |lead|
  last_login = lead[:days_since_login]
  subscribed_to_list = lead[:mailing_list]
  last_login > 59 || !subscribed_to_list
end

p mailing_campaign_leads
# [{:name=>"Emma Lopez", :email=>"emma.lopez@some_mail.com", :days_since_login=>423, :mailing_list=>true}, 
# {:name=>"Mike Richards", :email=>"michael.richards@some_mail.com", :days_since_login=>23, :mailing_list=>false}, 
# {:name=>"Jane Williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, 
# {:name=>"Ash Patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]

p usable_leads
# [{:name=>"Jane Williams", :email=>"jane_w95@my_mail.com", :days_since_login=>16, :mailing_list=>true}, 
# {:name=>"Ash Patel", :email=>"ash_patel@my_mail.com", :days_since_login=>22, :mailing_list=>true}]
