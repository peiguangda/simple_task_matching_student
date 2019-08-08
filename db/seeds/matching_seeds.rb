student1 = User.find_by email: "student1@gmail.com"
student2 = User.find_by email: "student2@gmail.com"
student3 = User.find_by email: "student3@gmail.com"

10.times do |n|
  MatchingTask.create! user_id: student1.id, task_id: n + 1, status: (3 + n) % 4 + 3
end

10.times do |n|
  MatchingTask.create! user_id: student2.id, task_id: n + 15, status: (3 + n) % 5 + 3
end

10.times do |n|
  MatchingTask.create! user_id: student3.id, task_id: n + 1, status: 3
end
