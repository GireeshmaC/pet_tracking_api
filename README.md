# pet_tracker_api

Pet Tracking API is a Ruby on Rails API-only application for managing pet and owner records. It is designed to let users create owners, create pets, and associate each pet with an owner.

## Overview

This API helps track pets and their owners through a simple relational data model.

Current resources/models:
- Owners
- Pets

Relationships:
- An owner has many pets
- A pet belongs to an owner

## Tech Stack

- Ruby
- Ruby on Rails (API-only)
- SQLite3
- Active Record

## Getting Started

### Prerequisites

Make sure you have installed:

- Ruby
- Rails
- Bundler
- SQLite3

### Installation

1. Clone the repository:
   ```bash
   git clone <your-repo-url>
   ```

2. Move into the project folder:
   ```bash
   cd pet_tracking_api
   ```

3. Install dependencies:
   ```bash
   bundle install
   ```

4. Set up the database:
   ```bash
   rails db:drop
   rails db:create
   rails db:migrate
   ```

5. Start the Rails server:
   ```bash
   bin/rails server
   ```

6. Open the API locally:
   ```text
   http://localhost:3000
   ```

## Database

This project currently uses SQLite3 for local development.

Database file:
- `storage/development.sqlite3`

## Data Model

### Owner

An owner can have many pets.

```ruby
class Owner < ApplicationRecord
  has_many :pets
end
```

### Pet

A pet belongs to one owner.

```ruby
class Pet < ApplicationRecord
  belongs_to :owner
end
```

## Example Workflow

Example of creating data in Rails console:

```bash
rails console
```

```ruby
owner = Owner.create(name: "Sam")
pet = owner.pets.create(name: "Bruno", breed: "Labrador")
```

## API Goals

This API is being built to support:

- Owner management
- Pet management
- Owner-pet relationships
- Future JSON endpoints for CRUD operations

## Planned Endpoints

These endpoints are planned or in progress:

### Owners
- `GET /owners`
- `GET /owners/:id`
- `POST /owners`

### Pets
- `GET /pets`
- `GET /pets/:id`
- `POST /pets`

## Example JSON Response

Example owner response:

```json
{
  "id": 1,
  "name": "Sam"
}
```

Example pet response:

```json
{
  "id": 1,
  "name": "Bruno",
  "breed": "Labrador",
  "owner_id": 1
}
```

## Future Improvements

- Add controllers and routes for owners and pets
- Return JSON responses for all resources
- Add validations
- Add error handling
- Add serializers
- Add automated tests
- Add API documentation in Postman

## Author

Gireeshma Kodali
