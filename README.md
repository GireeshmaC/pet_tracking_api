# pet_tracker_api

A Ruby on Rails API-only application for managing pet and owner data.

## Tech Stack

- Ruby
- Rails API
- Active Record
- SQLite3
- Postman

## Features

- Create and manage owners
- Create and manage pets
- Associate pets with owners

## How I made the setup:

### Step 1: Created a new Rails API
In the terminal '''rails new pet_tracker_api --api'''
## Models

### Owner
- has_many :pets

### Pet
- belongs_to :owner

## How you can Clone the setup:

1. Clone the repository
2. Move into the project folder:
   ```bash
   cd pet_tracking_api
   ```
3. Install gems:
   ```bash
   bundle install
   ```
4. Create and set up the database:
   ```bash
   rails db:drop
   rails db:create
   rails db:migrate
   ```
5. Start the server:
   ```bash
   bin/rails server
   ```

## Database

This project currently uses SQLite3 for local development.

Database files:
- `storage/development.sqlite3`
- `storage/test.sqlite3`

## Running the App

Start the Rails server:

```bash
bin/rails server
```

Then open:
`http://localhost:3000`

## Example Associations

```ruby
class Owner < ApplicationRecord
  has_many :pets
end

class Pet < ApplicationRecord
  belongs_to :owner
end
```

## Future Improvements

- Add JSON API endpoints for owners and pets
- Add validations
- Add serializers
- Add request specs

## Author

Gireeshma Kodali
