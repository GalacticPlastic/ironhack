MVC: Model, View, Controller Programming
=============================================================
MVC is a design pattern used in all types of application development (desktop, web, AND mobile).


GET/todos --->	Controller	--->	Views	(HTML, JSON, XML)
					|
				  Model

(Data) Model: (Ruby, Python, PHP)
- The part of your code that represents something from the real world specific to your application.
   (Related to the Object classes.)
- Should have most of the "business logic" of your application (i.e. Payroll class, Employee class. Hourly, Salaried, and Multipayment Employee child classes.)
- Authenticating a User

Views:
- Least logic (beautiful idiots). (HTML, CSS?)

Controllers:
- Delegates to model or view.
- Not as dumb as views, not as smart as models. (Javascript?)
- app.rb? or server.rb?



MVVM, MVP