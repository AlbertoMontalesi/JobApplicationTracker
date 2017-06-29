d1 = DateTime.new(2018, 2, 15)
d2 =  DateTime.new(2018, 3, 18)
d3 = DateTime.new(2018, 6, 1)
d4 = DateTime.new(2018, 8, 12)
d5 = DateTime.new(2018, 5, 20)
d6 =  DateTime.new(2018, 6, 7)

User.create(
  username: 'albertom',
  email: 'alberto@example.com',
  password: '123456',
  password_confirmation: '123456'
)

Job.create!(
  company: 'Microsoft',
  role: 'Senior front-end engineer',
  salary: 'N/A',
  link: 'https://www.microsoft.com/en-us/',
  application_date: d1,
  application_closing_date: d2,
  contact_name: 'Bill Gates',
  contact_email: 'Bill@example.com',
  contact_phone: '0123 4444',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis nisl ante, facilisis quis molestie sit amet, blandit facilisis quam. In metus libero, iaculis ac placerat non, consequat sed metus. Sed iaculis, ante in pretium tristique, tortor justo condimentum sem, viverra aliquet velit odio non ante. Duis quis odio ut mi hendrerit interdum convallis quis mi. Quisque vitae nisi et purus pharetra mattis. Suspendisse congue mi ut justo maximus, vel vestibulum nibh consectetur. In pulvinar mauris purus, non commodo ex hendrerit a. Nulla eget neque fringilla eros fringilla bibendum et eu lectus. Nunc et pretium lacus. Praesent cursus nibh a nunc dictum, et ornare nisl venenatis. Donec bibendum tincidunt sapien, et viverra mauris efficitur a. Aliquam placerat quam et dui laoreet, in egestas nisl facilisis. Sed molestie quam in quam blandit, nec laoreet turpis laoreet. Integer non mollis mi.
  ',
  user_id: 1
)

Job.create!(
  company: 'Apple',
  role: 'Designer',
  salary: '1000000',
  link: 'https://www.apple.com',
  application_date: d3,
  application_closing_date: d4,
  contact_name: 'Tim Cook',
  contact_email: 'Tim@example.com',
  contact_phone: '0123 4444',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis nisl ante, facilisis quis molestie sit amet, blandit facilisis quam. In metus libero, iaculis ac placerat non, consequat sed metus. Sed iaculis, ante in pretium tristique, tortor justo condimentum sem, viverra aliquet velit odio non ante. Duis quis odio ut mi hendrerit interdum convallis quis mi. Quisque vitae nisi et purus pharetra mattis. Suspendisse congue mi ut justo maximus, vel vestibulum nibh consectetur. In pulvinar mauris purus, non commodo ex hendrerit a. Nulla eget neque fringilla eros fringilla bibendum et eu lectus. Nunc et pretium lacus. Praesent cursus nibh a nunc dictum, et ornare nisl venenatis. Donec bibendum tincidunt sapien, et viverra mauris efficitur a. Aliquam placerat quam et dui laoreet, in egestas nisl facilisis. Sed molestie quam in quam blandit, nec laoreet turpis laoreet. Integer non mollis mi.
  ',
  user_id: 1
)

Job.create!(
  company: 'Google',
  role: 'Junior back-end engineer',
  salary: '150000',
  link: 'https://www.google.com',
  application_date: d5,
  application_closing_date:d6,
  contact_name: 'Sergey Brin',
  contact_email: 'Sergey@example.com',
  contact_phone: '0123 4444',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis nisl ante, facilisis quis molestie sit amet, blandit facilisis quam. In metus libero, iaculis ac placerat non, consequat sed metus. Sed iaculis, ante in pretium tristique, tortor justo condimentum sem, viverra aliquet velit odio non ante. Duis quis odio ut mi hendrerit interdum convallis quis mi. Quisque vitae nisi et purus pharetra mattis. Suspendisse congue mi ut justo maximus, vel vestibulum nibh consectetur. In pulvinar mauris purus, non commodo ex hendrerit a. Nulla eget neque fringilla eros fringilla bibendum et eu lectus. Nunc et pretium lacus. Praesent cursus nibh a nunc dictum, et ornare nisl venenatis. Donec bibendum tincidunt sapien, et viverra mauris efficitur a. Aliquam placerat quam et dui laoreet, in egestas nisl facilisis. Sed molestie quam in quam blandit, nec laoreet turpis laoreet. Integer non mollis mi.
  ',
  user_id: 1
)

puts 'finished seeding'
