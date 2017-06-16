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

Contribute
----------
Feel free to send a pull request with functions you wanna see here.
