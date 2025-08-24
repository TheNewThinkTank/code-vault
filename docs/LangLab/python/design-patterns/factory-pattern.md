# Factory Pattern

`people.csv`

``` csv
Alice Smith,60,Harvard University,History
Michael Smith,27,Princeton University,Mechanical Engineering
Bob Davis,43,Yale University,Biology
```

``` python
class Person:
	def __init__(self, name, age, university, degree):
		self.name = name.title()
		self.age = age
		self.university = university.title()
		self.degree = degree.capitalize()

	@classmethod
	def from_csv_line(cls, line: str) -> "Person":
		return cls(*line.strip().split(","))


with open("people.csv", "r") as rf:
	lines = rf.readlines()

people = map(Person.from_csv_line, lines)

for person in people:
	print(
		f"{person.name} is {person.age},"
		f"studying {person.degree} at {person.university}."
	)
```
