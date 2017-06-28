Datawarehouse
=============
This repo contains useful functions to build a Datawarehouse.

All functions work with Microsoft SQL Server. Other SQL dialects like MySQL, Oracle SQL etc. has not been tested.

Functions
---------
### Generic Functions
* `[dbo].[DateList]` - generate a date list
* `[dbo].[IntList]` - generate a integer list
* `[dbo].[SplitString]` - split a string with a split char

### Job Schedling
* `[dbo].[sp_async_execute]` - a procedure to create a async execution via the SQL Agent

### Development
* `[dbo].[get_crossdatabase_dependencies]` - a proceudure to get all cross database dependencies

### Security
* a script to get all permissions

Additional othere Moduls unter other licenses
---------------------------------------------
* [SQL#](http://www.sqlsharp.com/features/) - over 320 functions and procedures

Contribute
----------
Feel free to send a pull request with functions you wanna see here.

License
-------
I deliver this repository under the [MIT license](LICENSE). Nevertheless, some SQL scripts and functions have been copied from external sources which have been shared publicly on several websites. These scripts are remarked at the top of the files. These might be covered under another license - please request the author of this scripts for future information.
