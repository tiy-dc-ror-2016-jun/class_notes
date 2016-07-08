nil.to_f
exit
EmployeeReviewsMigration.migrate(:up)
Employee.new
russell = Employee.new
russell.save
russell.valid?
russell.errors
russell.name = "Russell"
russell.save
martin = Employee.new 
martin.name = "Marint"
martin.save
martin.errors
martin.email = "marting@martinggg.com"
martin.save
marting.destroy 
martin.destroy 
Employee.create()
a = Employee.create
a.errors
a = Employee.create!
exit
