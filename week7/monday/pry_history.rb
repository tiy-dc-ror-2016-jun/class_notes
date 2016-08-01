Pet
Pet.all
Pet.create(name: "Moose")
exit
Pet.create(name: "Yuki")
exit
params
params["id"]
Pet.find("1")
Pet.find(params["id"])
exit
params
params["pet"]
params.class
params.require("pet")
params.require("pet").permit(:name)
params.require("cbobo")
exit
@pet
@pet.destroy
@pet.delete?
@pet.deleted?
@pet.destroyed?
@pet.reload
xit
exit
pet = Pet.find(8)
pet.visits
pet.vists.create(visited_on: Date.today, weight: 3.62874, notes: "none") 
pet.visits.create(visited_on: Date.today, weight: 3.62874, notes: "none") 
pet.visits.create(visited_on: Date.today, weight_in_kg: 3.62874, notes: "none") 
exit
@visit
exit
params
params["visit"]
exit!
assigns
assigns()
exit
Client.create(name: "The Osbornes")
exit
assigns
assigns["clients"]
exit
assigns("client")
assigns("clients")
exit!
client
client.pets
client.pets.first
client.pets.first.visits
exit
session
ls session
session[:user_id] = 1 
exit
session
session[:user_id]
exit
Client
@client = Client.last
@client.class
@client["name"]
@client["name"] = "Other guys"
@client
{}["book"]
{"book" => 1}["book"]
a = {"book" => 1}
a["book"]
exit
User.all
exit
params
exit
params
current_page?
current_page?("welcome#index")
current_page?("/")
current_page?("/pets")
if params["controller"] == "welcome"&& params["action
if params["controller"] == "welcome"&& params["action"] == "index"
params["controller"] == "welcome"&& params["action"] == "index"
exit
params["controller"] == "welcome"&& params["action"] == "index"
exit
ls
exit
assigns
assert_select("h3")
assert_select("h3", 2)
exit
assert_select("#visits-today")
assert_select("#visits-today").size
assert_select("#visits-today","")
assert_select("#visits-today","Visits Today")
assert_equal(1,1)
assert_select("#visits-today","ad")
exit
Date.today
Date.today.class
DateTime.now
exit
Date.today - 1.day
Date.today - 1
class String 
  def speak_reverse
    `say #{self.reverse}` 
  end
end
"Russell".speak_reverse
"Chris".speak_reverse
"Alex".speak_reverse
"Lisa".speak_reverse
"Austen".speak_reverse
"Erik".speak_reverse
"Tony".speak_reverse
"Ava".speak_reverse
"Martin".speak_reverse
"tony".speak_reverse
"crhis".speak_reverse
"chris".speak_reverse
students = ["martin", "chris", "austen", "lisa", "ava", "erik", "alex", "tony"]
students.each {|name| name.speak_reverse }
students.join(", ")
students.join(", ").speak_reverse
students.join(". ").speak_reverse
students.join(" . ").speak_reverse
students.join(" . ")
students.join(". ")
exit
Visit.find(1)
Visit.where(visited_on: Date.today)
exit
Visit.where(visited_on: Date.today)
assigns("visits_today")
assigns(:visits_today)
assigns
exit!
