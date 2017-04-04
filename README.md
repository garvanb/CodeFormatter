# CodeFormatter
A WPF application that allows you define formatting rules for text files.

It is a code formatter, not a code editor. Initially I wrote this just to format inline SQL but decided to genericise the rules as a coding exercise. The functionality is very basic but the principle is sound.

In order to use the app you will need an instance of SQL or SQL Express on your PC as they do not come as part of the install.

INSTALLATION

1) Download the files.
2) Create a database called CodeFormatter on the relevant SQL server you wish to use.
3) Create a user on the Server called CodeFormatterUser.
4) Run the scripts from the script folder in the numbered order against this new database.
5) Alter the app.config file to connect to your local server.

Optionally you can give the database and user a different name but you will then need to make further amendments to the app.config and the setup scripts.
