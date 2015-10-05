1. Clone the application to your work space
2. The application needs Ruby - 2.2.3 and Rails - 4.2.4
3. cd into the application
4. run 'bundle install'
4. Change config/database.yml as per your development configuration
5. run 'rake db:create && rake db:migrate'
6. then run 'bundle exec rails s'

Now the application will be accessible from web browser using http://localhost:3000  
