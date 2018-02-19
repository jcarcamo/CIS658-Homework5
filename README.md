# Bug Overflow

## Part 1: Modeling Bugs

In this first part of the assignment you will create a simple web application using the Rails framework.  In particular, we will be working on a sequence of homework assignments that will iteratively build a bug tracking application we will call Bug Overflow.   Use a recent version of Rails (5.x) and Ruby (2.3+).

### Iteration #1

In this first iteration, use what you have learned in class to create a single model called “bug” that models the bugs in our application.  Later we will add additional models to the app.  Bugs are represented with this information:

* title: a short descriptive title summarizing the problem.
* description: a longer piece of text which describes the details of the problem.
* issue_type: has three possible values: issue, enhancement, feature.  
* priority: priority of the issue with three possible levels: low, medium, high.
* status: the current status of the bug with three possible settings: open, closed, monitor.

Use rails scaffolding to generate the basic screens for managing bugs (list of all bugs, show bug, edit bug, and delete bug).

### Validations

Using the TDD approach outlined in lecture, write the automated tests and then implement the following model requirements:

* Title and description cannot be blank whenever a bug is created or edited.
* Issue_type, priority and status must have valid values (you should represent these values as enumerated types.)
* The default value of issue_type should be feature.
* The default value of priority should be medium.
* The default value of status should be open.

Do NOT pay any attention to styling at all in this point (e.g. you need not modify the generated CSS/SCCS files.)   Your final product should look like the screenshots inserted below.
