desc "schedule all meetings for the week"
task :schedule_meetings => :environment do
  if Time.now.friday?
    puts "Scheduling meetings..."
    Meeting.schedule_all
    puts "Done Scheduling meetings."
  end
end

desc "mail all followup emails for the past week's meetings"
task :trigger_followup_email => :environment do
  if Time.now.saturday?
    puts "Sending weekly followup email..."
    Meeting.trigger_followup_email
    puts "Done sending weekly followup email..."
  end
end

desc "mail all meetings for the week to meeting members"
task :trigger_weekly_email => :environment do
  if Time.now.sunday?
    puts "Sending weekly email..."
    Meeting.trigger_weekly_email
    puts "Done sending weekly email..."
  end
end
