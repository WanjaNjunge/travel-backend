# Final Project; TravelTrove BackEnd

Travel Trove Backend serves as the backend infrastructure for an online travel platform. With Ruby on Rails, it delivers RESTful APIs for creating, updating, and retrieving travel packages, destinations, and user profiles. PostgreSQL ensures efficient data storage and retrieval.
## Table of Contents

- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [API Documentation](#api-documentation)
- [Contributing](#contributing)
- [License](#license)


## Getting Started

These instructions will help you set up and run the Travel Trove backend on your local machine.

### Prerequisites

- Ruby [3.0.5]
- Ruby on Rails [7.0.6]
- PostgreSQL [12.15]

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/travel-trove-backend.git
   cd travel-trove-backend

1. Installing dependencies

   ```bash
   bundle install
2. Creating and migrating the database

   ```bash
   rails db:create rails db:migrate
3. Run server

   ```bash
   rails s
## Usage

To interact with the Travel Trove Backend API, you can use various HTTP request methods to perform actions related to users, destinations, travel experiences, travel packages, bookings, and reviews. Below are the available endpoint categories and their corresponding actions:

### Users

- **Create User**
  - Method: POST

- **Get Users by ID**
  - Method: GET

- **Get All Users**
  - Method: GET

- **Update User Details By ID**
  - Method: PUT

- **Delete User By ID**
  - Method: DELETE

### Destinations

- **Get All Destinations**
  - Method: GET

- **Get Destination By ID**
  - Method: GET

- **Create Destination**
  - Method: POST

- **Update Destinations By ID**
  - Method: PUT

- **Delete Destination By ID**
  - Method: DELETE

[Repeat the pattern for Travel Experiences, Travel Packages, Bookings, and Reviews.]

## API Documentation

For detailed information about each endpoint, request parameters, response format, and example requests, please refer to the [Travel Trove Backend API Documentation](https://docs.google.com/document/d/16sjOXXw2lHSPh60nSSR6NuSrXfrLRezHhuHx_G2byKk/edit). The documentation provides comprehensive details to help you effectively interact with the API.

## Contributing

Our heartfelt gratitude goes out to the members of Group 1 who have contributed their talents and efforts to the Travel Trove Backend project:

- **Najma Thande**
- **Ann Wangui**
- **Denis Kipkemoi**
- **Wangari Samantha** - Scrum Master
- **Stephanie Wanja**

Their dedicated involvement has been pivotal in bringing the Travel Trove Backend to life.

## License

This project is licensed under the [MIT License](LICENSE).
