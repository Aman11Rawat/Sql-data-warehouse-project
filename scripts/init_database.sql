USE master;

Go

If exists(Select 1 from sys.database WHERE name ='DataWarehouse')
begin
	Alter Database DataWarehouse set SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP database DataWarehouse;
End;

GO

--Creating Database--

Create database DataWarehouse;

--USE DataWarehouse--

use DataWarehouse;

--Create schema--

Create schema bronze;
GO
Create schema silver;
GO
Create schema gold;
GO
