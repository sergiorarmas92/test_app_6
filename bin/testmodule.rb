require_relative  'crud'

users = [
            { username: "sergio", password: "pass1"},
            { username: "sergio1", password: "pass2"},
            { username: "sergio2", password: "pass3"},
            { username: "sergio3", password: "pass4"}
        ]


hashed_users = Crud.create_secure_users(users)
puts hashed_users

