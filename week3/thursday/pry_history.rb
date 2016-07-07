SetupMigration
ls SetupMigration
SetupMigration.migrate(:up)
exit
Student
ls Student
eric = Student.new
eric.name = "Erik Douglas"
erik = eric 
erik
erik.github_username = "eadouglas10"
erik.save
erik
exit
erik
erik = Student.find(1)
erik
austen = Student.new(name: "Austen Lockwood", github_username: "austenlockwood")
austen = Student.create(name: "Austen Lockwood", github_username: "austenlockwood")
austen.persisted?
chris = Student.create(name: "Chris", github_username: "clai88")
chris.update(name: "Chris Lai")
chris
exit
Group
Group.first
Group.attributes_names
Group.attribute_names
Group.new(name: "DC June", start_on: Date(2016, 6, 20))
Group.new(name: "DC June", start_on: Date.new(2016, 6, 20))
dc_june = _ 
dc_june.save
Student.all
Student.coutn
Student.count
Student.all
Student.where(group_id: nil)
Student.where(group_id: nil).count
Student.where(group_id: nil).to_sql
Student.where(group_id: nil)
Student.where(group_id: nil).count
Student.where(group_id: nil).count.to_sql
Student.where(group_id: nil).count
Student.order(name: :desc)
Student.order(name: :asc)
Student.order(name: :asc).to_sql
dc = Group.first
erik = Student.first
erik.group_id = 2
erik.save
Student.update_all(group_id: 2)
exit
dc = Group.first
ls dc
dc.students
dc.students.to_sql
dc.students
eri
erik = Student.first
erik.group
erik.group_id
exit
erik = Student.first
erik.group
erik.group.nmae
erik.group.name
erik = Student.first
erik.group.name
dc = erik.group
dc = erik.group.name
exit
erik = Student.first
erik.github_url
`open #{erik.github_url}`
`open #{Student.second.github_url}`
exit
simpsons = Group.create(name: "Simpsons")
homer = Student.create(name: "Homer Simpson")
simpsons.students << homer
homer.group_id = 3
exit
