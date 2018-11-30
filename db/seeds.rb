User.create!([
  {email: "shreyasingh@gmail.com", password: "shreya", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, admin: true},
  {email: "nimishagarg@gmail.com", password: "nimisha", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, admin: false},
  {email: "akshi025@gmail.com", password: "akshi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, admin: false},
  {email: "muditabaid@gmail.com", password: "mudita", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, admin: false}
])
Course.create!([
  {courseid: "CS 101", name: "Data Structure and algorithms"},
  {courseid: "CS 303", name: "Software Engineering"},
  {courseid: "CS 202", name: "Design and Analysis of algorithms"},
  {courseid: "CS 201", name: "Discrete Mathematics"}
])
Doubt.create!([
  {title: "B+ trees", body: "Can someone post the c++ implementation of B+ trees.", course_id: 1, user_id: 1},
  {title: "UML diagram", body: "Can someone share the slides of uml diagram?", course_id: 2, user_id: 1},
  {title: "Time Complexity of Quick Sort", body: "Does anyone know how to prove that the time complexity for quick sort on an array with n elements is nlogn", course_id: 1, user_id: 3}
])
Answer.create!([
  {ansno: nil, body: "Sir already mailed.", doubt_id: 2, user_id: 2},
  {ansno: nil, body: "I think that does not include the examples. We will inform sir to send that also tomorrow.", doubt_id: 2, user_id: 3},
  {ansno: nil, body: "He has uploaded them in lms.", doubt_id: 2, user_id: 4},
  {ansno: nil, body: "A very good implementation is available on geeks for geeks", doubt_id: 1, user_id: 4}
])
