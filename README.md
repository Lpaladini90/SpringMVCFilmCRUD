#### Spring MVC Film CRUD



### Description Overview
This application allows a user to add, search, edit, and delete films from a SQL database. The home page offers various options for the user to select from, these options are: "Search film by id", "Search film by keyword", and "Add a film". The search film by keyword looks for films that contain the keyword entered in either the title or the description of the film. The keyword search returns a list of films that match the keyword entered, from witch you can select each film to view its full details. If no films were found for the search the user is informed.

The Id search returns all the details of a film that match the user search. If no film was found under that Id, the user is informed. When viewing a single films full details there are options to delete the film or edit the film. If edit is chosen, a new form is displayed from witch all the films information can be edited. When delete is chosen the user is displayed with if the delete was successful or failed.

### Tech Used
1. Java
  - Basic logic

2. Spring
  - XML file
  - JSP files
  - Servlet page

3. MYSQL Database
  - Film database for accessing and storing information

4. CSS and HTML
  - Style sheets and codes

5. CRUD
  - Cßreate
  - Read/Retrieve
  - Update
  - Delete
6. DAO
  - Database Accessor objects
  - Connections and prepared statements
  - Query search and updates


### What I learned

- Lucas Paladini

        - I will start by saying I wish I had more time on this project.
          There was a lot to do even with three people on a team. With more time I feel
          as though this project styling wise could have really come together.
          This really wasn't that difficult when it came the Java code side of things.
          However this project opened my eyes to the front end and how to connect that back end to it.
          I was having a lot of difficulty remember all that could be done in a HTML file regarding forms, if/else logic etc.
          This greatly helped but I will need to continue learning that to get a full grasp of the concepts.
          I was extremely happy( as frustrating as it was at the time ) to be able to get a better understanding of errors,
          how to read them and what was needed to fix them. From git errors to connection errors to simple spelling errors,
          everything added up. But it seemed if we took them time, as a group, we could track them down and correct them.
          I have had a lot of trouble when it comes to trying to read and fix exceptions and errors,
          I feel much more confident in that department now. This project also helped me get a better understanding for
           the paths that are taken, from a user being on the internet, to get and pushing information and more.
           The controllers make more sense after a group project like this, which I am really happy about.
           Spring has been fun to use, seems to me like it is just an upgraded form of eclipse which I liked very much.
           A group project like this really has no limits it seems, and the more I work with the code the more
           I can see the potential of what an application like this could turn in. I hope I will become better at styling the front end.
           It seems like a great idea to make all the hard work that was  used on the back end to shine on the front in an appealing way.
           I look forward to more group projects in the future!


- Austin Breckenfelder

          - This project really clarified controllers for me. Before this project I was quite lost on how to even set up a controller but now the setup and use it much clearer. Controllers allow you to pull information from forms by request mapping to form actions, and allow injection of information into your JSP adding objects to the model and view and referring to those objects in the JSP. We ran into some issues with getting the controllers to properly pull the information that we needed, but this was cleared up once we realized the relationship with input names and parameter values in the request mapping. This was also a first time with working on a team all working off the same git repo. This really shined a light on using git to collaborate with others and the workflow of having multiple people working on various parts of an application. We ran into a couple issues of editing the same code at first, but once we had a couple of hiccups we all had really good communication on what we planned to work on and avoided any overwrites.

- Zachary Breitnauer

          - Things I learned on this project was communication. Talking to the team and deciding what part of the project we should work on to avoid overwriting each others code. Using git pull/push can lead to accidental merge conflict mistakes. Linking controllers, DAO, and jsps was a challenge in making the app work. Using the web dev tools and doing sysout to debug and learning to read error messages was useful in completing this project. Overall really enjoyed working with a team.
