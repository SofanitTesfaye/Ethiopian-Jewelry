# Ethiopian-Jewelry


## Overview

Ethiopian Jewelry is an app that allows the user to buy Ethiopian coptic cross necklaces.


<br>

## MVP

- Have a RESTful JSON API
- Ruby On Rails Server
- Build a database with at least 3 tables
- Utilize Rails to define models for interacting with the database.
- Implement working generic controller actions for Full CRUD for back-end(index, show, create, update, delete) between your non-User tables
- Build a React App for front-end
- Have at least 8 separate, rendered components in an organized and understandable React file structure.
- Use only React for DOM Manipulation.
- Consume data from my Ruby on Rails API, and render that data in components.
- Utilize React Router, for client-side routing.
- Demonstrate full CRUD actions for front-end
- Be styled with CSS using Flexbox or Grid.
- Implement 2 media queries for responsive design on 3 screen sizes (including desktop).
- Deploy the fully functional front-end via Surge or Netlify.
- Deploy the back-end via Heroku.

<br>

### Goals

- Have wireframes, component hierarchy, ERD ready for project approval by Monday October 4, 2021
- Have inital CRUD and authentication done for back-end by end of day Monday October 4, 2021
- Have full CRUD for front-end done by Tuesday October 5, 2021
- Have initial css styling done by Wednesday October 6, 2021
- Have media queries and advanced CSS styling done by Thursday October 7, 2021
- Have front-end and back-end deployed, and work on initial PMVP features done by Friday October 8, 2021
- Work on any debugging over the weekend
- Ready for Presentations on Monday October 11, 2021
<br>

### Libraries and Dependencies

> Use this section to list all supporting libraries and dependencies, and their role in the project. Below is an example - this needs to be replaced!

|     Library      | Description                                |
| :--------------: | :----------------------------------------- |
|      React       | Build user interface|
|   React Router   | Create componentsto navigate through the site|
| Ruby on Rails    |Back End server |
|     Express      | Process handle requests|
|  Express Router  |Class that helps create router handlers|
|    Netlify	     |fully functional front-end deployment|
|    Heroku        |used to deploy back-end |
<br>

### Client (Front End)

#### Wireframes

> Use the Wireframes section to display desktop, tablet and mobile views. No hand-drawn wireframes. Use a tool like wireframe.cc, Whimsical or AdobeXD

![Home Page](https://www.figma.com/file/CUAOQ3IBsftRIDGFdq3c6p/Ethiopian-Jewelry-team-library?node-id=312%3A2)

- Desktop Landing

![Dummy Link](https://www.figma.com/file/CUAOQ3IBsftRIDGFdq3c6p/Ethiopian-Jewelry-team-library?node-id=314%3A2)

- Desktop Hero

![Dummy Link](https://www.figma.com/file/CUAOQ3IBsftRIDGFdq3c6p/Ethiopian-Jewelry-team-library?node-id=313%3A12)

- Resource Index

![Dummy Link](https://www.figma.com/file/CUAOQ3IBsftRIDGFdq3c6p/Ethiopian-Jewelry-team-library?node-id=314%3A52)

- Resource Show

![Dummy Link](https://www.figma.com/file/CUAOQ3IBsftRIDGFdq3c6p/Ethiopian-Jewelry-team-library?node-id=314%3A81)

- Tablet Resource Index

![Dummy Link](https://www.figma.com/file/CUAOQ3IBsftRIDGFdq3c6p/Ethiopian-Jewelry-team-library?node-id=0%3A1)

- Mobile Resource Index

![Dummy Link](https://www.figma.com/file/CUAOQ3IBsftRIDGFdq3c6p/Ethiopian-Jewelry-team-library?node-id=0%3A1)

#### Component Tree

> Use this section to display the structure of how your React components are being rendered. This should show the parent to child relation between you components. In other words, show which components are rendering the other components. Include a link to your component tree

![Component Tree Sample](https://whimsical.com/4vm4zfQrtyHSHayBTyw4hr)

#### Component Architecture


``` 

src

|__ components/
      |__ Header.jsx
|__ containers/
      |__ MainContainer.jsx
|__ layouts/
      |__ Layout.jsx
|__ screens/
      |__ Necklaces.jsx
      |__ NecklaceCreate.jsx
      |__ NecklaceEdit.jsx
      |__ Necklace.jsx
      |__ Login.jsx
      |__ Register.jsx
|__ services/
      |__ auth.js
      |__ config.js
      |__ Necklaces.js
      |__ Rating.js
|__ App.js

      

```

#### Time Estimates


| Task                | Priority | Estimated Time | Time Invested | Actual Time |
| ------------------- | :------: | :------------: | :-----------: | :---------: |
| Add Contact Form    |    L     |     3 hrs      |     2 hrs     |    3 hrs    |
| Create CRUD Actions |    H     |     3 hrs      |     1 hrs     |     TBD     |
| TOTAL               |          |     6 hrs      |     3 hrs     |     TBD     |



<br>

### Server (Back End)

#### ERD Model



[ERD Sample](https://app.diagrams.net/)
<br>

***

## Post-MVP



***

## Code Showcase

> Use this section to include a brief code snippet of functionality that you are proud of and a brief description.

## Code Issues & Resolutions

> Use this section to list of all major issues encountered and their resolution.
