User.create!([
  {email: "shreyasingh@gmail.com", encrypted_password: "$2a$11$btKWfmKhGz8d6S.Vnlx.3OtROjL/F4mwjDYPjq/8v3C0tyXip.5v2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil},
  {email: "nimishagarg@gmail.com", encrypted_password: "$2a$11$nGn6FK4dQSWF55yhHY9VU.l.0H2NbRq1Pe95qXkhTSLRchnKXZQwq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil},
  {email: "akshi025@gmail.com", encrypted_password: "$2a$11$920ttnkqAZG7x5epTHoiR.lKYC1LHrTPHSETtCbelh0s4H.AUZOQS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
])
Answer.create!([
  {ansno: nil, body: "Sir already mailed.", doubt_id: 2, user_id: 2},
  {ansno: nil, body: "I think that does not include the examples. We will inform sir to send that also tomorrow.", doubt_id: 2, user_id: 3}
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
