# MotoAssist Backend

Front End Repo - https://github.com/Kineara/MotoAssist_frontend

## Use
  Install dependencies
  ```bundle install```
  
  Complete migrations
  ```bundle exec rake db:migrate```

  Seed the database
  ```bundle exec rake db:seed```

  Start the server
  ```bundle exec rake server```

  Reset the database to the original seed data
  ```bundle exec rake db:reset```

## Endpoints
  Add, edit, or delete user profiles
  ```/users```

  Add, edit, or delete vehicle profiles
  ```/vehicles```

  Get all maintenance tasks related to a specific vehicle ID
  ```/vehicles/:id/tasks```

  Add, edit, or delete maintenance tasks
  ```/tasks```
