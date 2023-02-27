USE [master]
GO

DROP DATABASE IF EXISTS [BOOKSHOPx]

CREATE DATABASE [BOOKSHOPx]
GO
USE [BOOKSHOPx]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[CustomerID] [int] NULL,
	[EmployeeID] [int] NULL,
	[Role] [int] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] bit NOT NULL,
	[ContactTitle] [nvarchar](50) NULL,
	[DateOfBirth] [datetime] NULL,
	[Address] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](11) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](50) NULL,
	[DepartmentType] [nvarchar](50) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[Gender] bit NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[TitleOfCourtesy] [nvarchar](50) NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[Address] [nvarchar](100) NULL,
	[Status] bit NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[DiscountID] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[MinOrderValue] [money] NOT NULL,
	[Percentage] [real] NOT NULL,
	[Type] [int] NOT NULL, --1 giam gia , 2 mien phi van chuyen
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[DiscountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order Details](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[WarehouseID] [int] NULL,
	[SalePrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[DiscountID] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--ALTER TABLE [Order Details]
--ALTER COLUMN [WarehouseID] int NULL;


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[EmployeeID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
	[Freight] [money] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipAddress] [nvarchar](100) NULL,
	[ShipCity] [nvarchar](50) NULL,
	[ShipRegion] [nvarchar](50) NULL,
	[ShipPostalCode] [nvarchar](50) NULL,
	[ShipCountry] [nvarchar](50) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[Image]  [nvarchar](100) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](11) NULL,
	[Address] [nvarchar](100) NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[GenreID] [int] IDENTITY(1,1) NOT NULL,
	[GenreName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](11) NULL,
	[Address] [nvarchar](100) NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[GenreID] [int] NULL,
	--[UnitsInStock] [int] NULL,
	[CoverPrice] [money] NOT NULL,
	[SalePrice] [money] NOT NULL,
	[AuthorID] [int] NULL,
	[Translator] [nvarchar](50) NULL,
	[PublisherID] [int] NULL,
	[SupplierID] [int] NULL,
	[Language] [nvarchar](50) NULL,
	[Size] [nvarchar](50) NULL,
	[Weight] [float] NULL,
	[NumberOfPage] [int] NULL,
	[Format] [nvarchar](50) NULL,
	[Image]  [nvarchar](100) NULL,
	--[UnitsOnOrder] [int] NULL,
	--[ReorderLevel] [smallint] NULL,
	[PublishDate] [datetime] NULL,
	[PublishingLicense] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[Discontinued] [bit] NOT NULL,
	
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int]  NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[CustomerID] int NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[Comment] [nvarchar](100) NULL,
	[Image]  [nvarchar](100) NULL,
	[ReviewDate] [date] NOT NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC,
	[OrderID] ASC,
	[ProductID] ASC

)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventories](
	[WarehouseID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitsInStock] [int]  NOT NULL,
 CONSTRAINT [PK_Inventories] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[WarehouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouses](
	[WarehouseID] [int] IDENTITY(1,1) NOT NULL,
	[Location] [nvarchar](100) NOT NULL,
	[PhoneNumber] [nvarchar](11)  NOT NULL,
 CONSTRAINT [PK_Warehouses] PRIMARY KEY CLUSTERED 
(
	[WarehouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [CustomerID], [EmployeeID], [Role]) VALUES (1, N'cust1@gmail.com', N'123', 1, NULL, 2)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [CustomerID], [EmployeeID], [Role]) VALUES (2, N'cust2@gmail.com', N'123', 2, NULL, 2)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [CustomerID], [EmployeeID], [Role]) VALUES (3, N'emp1@fpt.edu.vn', N'123', NULL, 5, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [CustomerID], [EmployeeID], [Role]) VALUES (4, N'emp2@fpt.edu.vn', N'123', NULL, 2, 1)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [CustomerID], [EmployeeID], [Role]) VALUES (5, N'vuvu15202@gmail.com', N'123', 3, NULL, 2)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [CustomerID], [EmployeeID], [Role]) VALUES (6, N'vuvu@gmail.com', N'123',4, NULL, 1)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO



INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Gender], [ContactTitle], [Address]) VALUES (1, N'Vu', N'Truong Vu',1, N'Sales Manager', N'Kirchgasse 6')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Gender], [ContactTitle], [Address]) VALUES (2, N'Nghiên', N'Kim Ngọc',0, N'Marketing Assistant', N'Rua Orós, 92')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Gender], [ContactTitle], [Address]) VALUES (3, N'Huy', N'Nguyễn Quang',1, N'Accounting Manager', N'C/ Moralzarzal, 86')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Gender], [ContactTitle], [Address]) VALUES (4, N'Folies gourmandes', N'Martine Rancé',0, N'Assistant Sales Agent', N'184, chaussée de Tournai')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Gender], [ContactTitle], [Address]) VALUES (5, N'Thanh', N'Dao Cong',1, N'Owner', N'Åkergatan 24')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Gender], [ContactTitle], [Address]) VALUES (6, N'Frankenversand', N'Peter Franken',0, N'Marketing Manager', N'Berliner Platz 43')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Gender], [ContactTitle], [Address]) VALUES (7, N'Dinh', N'Toan Thang',1, N'Marketing Manager', N'54, rue Royale')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Gender], [ContactTitle], [Address]) VALUES (8, N'Franchi S.p.A.', N'Paolo Accorti',0, N'Sales Representative', N'Via Monte Bianco 34')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Gender], [ContactTitle], [Address]) VALUES (9, N'Sơn', N'Đặng Hải',1, N'Sales Manager', N'Jardim das rosas n. 32')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Gender], [ContactTitle], [Address]) VALUES (10, N'Galería del gastrónomo', N'Eduardo Saavedra',0, N'Marketing Manager', N'Rambla de Cataluña, 23')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Gender], [ContactTitle], [Address]) VALUES (11, N'Nghĩa', N'Lý Minh',1, N'Sales Manager', N'C/ Romero, 33')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Gender], [ContactTitle], [Address]) VALUES (12, N'Gourmet Lanchonetes', N'André Fonseca',0, N'Sales Associate', N'Av. Brasil, 442')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Gender], [ContactTitle], [Address]) VALUES (13, N'Thương', N'Nguyễn cảnh',1, N'Marketing Manager', N'2732 Baker Blvd.')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Gender], [ContactTitle], [Address]) VALUES (14, N'GROSELLA-Restaurante', N'Manuel Pereira',0, N'Owner', N'5ª Ave. Los Palos Grandes')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Gender], [ContactTitle], [Address]) VALUES (15, N'Anh', N'Đỗ Quang',1, N'Accounting Manager', N'Rua do Paço, 67')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Gender], [ContactTitle], [Address]) VALUES (16, N'', N'Carlos Hernández',0, N'Sales Representative', N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Gender], [ContactTitle], [Address]) VALUES (17, N'Tuấn', N'Nguyễn Tuấn Anh',1, N'President', N'Lang Son')
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [DepartmentType]) VALUES (1, N'Administrator', N'Bussiness')
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [DepartmentType]) VALUES (2, N'Saler', N'Bussiness')
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [DepartmentType]) VALUES (3, N'Addministration Deparment', N'Back Office')
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [DepartmentType]) VALUES (4, N'R&D Department', N'Back Office')
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [DepartmentType]) VALUES (5, N'Operating Department', N'Back Office')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Gender], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [Status]) VALUES (1, N'Davolio', N'Nancy',1, 1, N'Sales Representative', N'Ms.', CAST(N'1998-12-08T00:00:00.000' AS DateTime), CAST(N'2018-05-01T00:00:00.000' AS DateTime), N'507 - 20th Ave. E.Apt. 2A', 1)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Gender], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [Status]) VALUES (2, N'Fuller', N'Andrew',0, 2, N'Vice President, Sales', N'Dr.', CAST(N'1999-02-19T00:00:00.000' AS DateTime), CAST(N'2019-08-14T00:00:00.000' AS DateTime), N'908 W. Capital Way', 1)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Gender], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [Status]) VALUES (3, N'Leverling', N'Janet',1, 2, N'Sales Representative', N'Ms.', CAST(N'2000-08-30T00:00:00.000' AS DateTime), CAST(N'2020-04-01T00:00:00.000' AS DateTime), N'722 Moss Bay Blvd.', 1)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Gender], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [Status]) VALUES (4, N'Peacock', N'Margaret',0, 2, N'Sales Representative', N'Mrs.', CAST(N'1995-09-19T00:00:00.000' AS DateTime), CAST(N'2015-05-03T00:00:00.000' AS DateTime), N'4110 Old Redmond Rd.', 1)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Gender], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [Status]) VALUES (5, N'Buchanan', N'Steven',1, 2, N'Sales Manager', N'Mr.', CAST(N'1995-03-04T00:00:00.000' AS DateTime), CAST(N'2015-10-17T00:00:00.000' AS DateTime), N'14 Garrett Hill', 1)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Gender], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [Status]) VALUES (6, N'Suyama', N'Michael',0, 2, N'Sales Representative', N'Mr.', CAST(N'1990-07-02T00:00:00.000' AS DateTime), CAST(N'2010-10-17T00:00:00.000' AS DateTime), N'Coventry HouseMiner Rd.', 1)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Gender], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [Status]) VALUES (7, N'King', N'Robert',1, 2, N'Sales Representative', N'Mr.', CAST(N'1997-05-29T00:00:00.000' AS DateTime), CAST(N'2017-01-02T00:00:00.000' AS DateTime), N'Edgeham HollowWinchester Way', 1)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Gender], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [Status]) VALUES (8, N'Callahan', N'Laura',0, 2, N'Inside Sales Coordinator', N'Ms.', CAST(N'1997-01-09T00:00:00.000' AS DateTime), CAST(N'2017-03-05T00:00:00.000' AS DateTime), N'4726 - 11th Ave. N.E.', 1)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Gender], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [Status]) VALUES (9, N'Dodsworth', N'Anne',1, 2, N'Sales Representative', N'Ms.', CAST(N'1995-01-27T00:00:00.000' AS DateTime), CAST(N'2015-11-15T00:00:00.000' AS DateTime), N'7 Houndstooth Rd.', 1)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO

insert into [Discount](DiscountID,Title,Description,StartDate,EndDate,MinOrderValue, [Percentage], [type]) values('SALELON10%','Gia gia 10%','',getdate(),  DATEADD(day, 7,GETDATE()), 1000, 0.1,1)
insert into [Discount](DiscountID,Title,Description,StartDate,EndDate,MinOrderValue, [Percentage], [type]) values('GIAMGIA20%','Gia gia 20%','',getdate(),  DATEADD(day, 7,GETDATE()), 1000, 0.2,1)
insert into [Discount](DiscountID,Title,Description,StartDate,EndDate,MinOrderValue, [Percentage], [type]) values('GIASOC30%','Gia gia 30%','',getdate(),  DATEADD(day, 7,GETDATE()), 1000, 0.3,1)
insert into [Discount](DiscountID,Title,Description,StartDate,EndDate,MinOrderValue, [Percentage], [type]) values('SIEUSAPSAN40%','Gia gia 40%','',getdate(),  DATEADD(day, 7,GETDATE()), 1000, 0.4,1)


GO
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10303, 2, 1, 14.7000, 40, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10303, 1, 1, 16.8000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10303, 6, 1, 10.0000, 15, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10327, 2, 1, 15.2000, 25, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10327, 9, 1, 16.8000, 50, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10327, 3, 1, 20.7000, 35, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10327, 34, 1, 10.6000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10337, 11, 1, 7.2000, 40, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10337, 14, 1, 24.9000, 24, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10337, 4, 1, 15.2000, 20, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10337, 17, 2, 20.8000, 28, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10337, 12, 2, 27.8000, 25, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10342, 6, 2, 15.2000, 24, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10342, 1, 2, 10.0000, 56, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10342, 4, 2, 15.2000, 40, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10342, 25, 2, 19.2000, 40, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10347, 34, 2, 11.2000, 10, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10347, 24, 2, 14.4000, 50, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10347, 14, 2, 14.7000, 4, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10347, 23, 2, 6.2000, 6, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10352, 18, 2, 3.6000, 10, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10352, 35, 2, 5.9000, 20, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10366, 15, 3, 16.8000, 5, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10366, 17, 3, 10.4000, 5, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10368, 1, 3, 8.0000, 5, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10368, 14, 3, 36.4000, 13, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10368, 27, 3, 15.6000, 25, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10368, 44, 3, 26.6000, 35, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10378, 25, 3, 17.2000, 6, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10382, 5, 3, 17.0000, 32, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10382, 18, 3, 50.0000, 9, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10382, 9, 3, 99.0000, 14, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10382, 7, 3, 2.0000, 60, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10382, 8, 3, 8.0000, 50, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10386, 2, 3, 3.6000, 15, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10386, 23, 3, 11.2000, 10, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10390, 18, 3, 10.0000, 60, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10390, 33, 3, 14.4000, 40, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10390, 27, 3, 9.6000, 45, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10390, 28, 3, 27.8000, 24, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10394, 23, 1, 4.8000, 10, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10394, 34, 1, 39.4000, 10, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10395, 12, 1, 9.6000, 28, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10395, 18, 1, 26.2000, 70, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10395, 25, 1, 28.8000, 8, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10396, 21, 1, 7.2000, 40, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10396, 31, 1, 17.2000, 60, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10396, 12, 1, 27.8000, 21, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10402, 23, 1, 7.2000, 60, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10402, 19, 1, 35.1000, 65, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10403, 16, 1, 13.9000, 21, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10403, 8, 1, 10.2000, 70, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10408, 4, 1, 20.8000, 10, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10408, 6, 1, 5.9000, 6, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10408, 2, 1, 39.4000, 35, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10414, 18, 1, 7.3000, 18, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10414, 3, 1, 2.0000, 50, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10415, 27, 1, 31.2000, 2, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10415, 3, 1, 2.0000, 20, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10422, 6, 1, 24.9000, 2, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10423, 3, 1, 10.0000, 14, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10423, 9, 1, 44.0000, 20, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10426, 24, 1, 30.4000, 5, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10426, 34, 1, 26.6000, 7, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10430, 17, 1, 31.2000, 45, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10430, 21, 1, 8.0000, 50, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10430, 6, 1, 30.4000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10430, 9, 1, 44.0000, 70, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10434, 21, 1, 16.8000, 6, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10434, 76, 1, 14.4000, 18, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10442, 11, 1, 16.8000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10442, 14, 1, 5.9000, 80, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10442, 26, 1, 13.6000, 60, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10460, 8, 1, 10.0000, 21, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10460, 5, 1, 6.2000, 4, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10464, 4, 1, 17.6000, 16, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10464, 3, 2, 36.8000, 3, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10464, 6, 2, 30.4000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10464, 26, 2, 27.2000, 20, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10476, 5, 2, 19.2000, 2, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10476, 7, 2, 12.0000, 12, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10480, 17, 2, 7.6000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10480, 529, 2, 44.0000, 12, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10486, 11, 2, 16.8000, 5, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10486, 1, 2, 42.4000, 25, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10486, 4, 2, 8.0000, 16, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10488, 5, 2, 44.0000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10488, 7, 2, 12.0000, 20, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10490, 9, 2, 44.0000, 60, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10490, 8, 2, 10.0000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10490, 5, 2, 6.2000, 36, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10491, 4, 2, 15.5000, 15, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10491, 7, 2, 10.4000, 7, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10498, 4, 2, 4.5000, 14, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10498, 43, 2, 18.4000, 5, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10498, 2, 2, 14.0000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10512, 24, 3, 4.5000, 10, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10512, 6, 3, 12.0000, 9, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10512, 4, 3, 9.5000, 6, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10520, 1, 3, 34.0000, 12, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10521, 3, 3, 34.0000, 12, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10522, 2, 3, 34.0000, 12, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10523, 4, 3, 34.0000, 12, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (10524, 6, 3, 34.0000, 12, NULL)
GO

INSERT INTO [dbo].[Reviews]([CustomerID],[OrderID],[ProductID],[Rating],[Comment],[Image],[ReviewDate]) VALUES(2,10512,24,5,N'Good',NULL,GETDATE())
INSERT INTO [dbo].[Reviews]([CustomerID],[OrderID],[ProductID],[Rating],[Comment],[Image],[ReviewDate]) VALUES(2,10512,6,2,N'Bull shit',NULL,GETDATE())
INSERT INTO [dbo].[Reviews]([CustomerID],[OrderID],[ProductID],[Rating],[Comment],[Image],[ReviewDate]) VALUES(2,10512,4,5,N'Nice',NULL,GETDATE())
INSERT INTO [dbo].[Reviews]([CustomerID],[OrderID],[ProductID],[Rating],[Comment],[Image],[ReviewDate]) VALUES(2,10512,1,1,N'Terrible',NULL,GETDATE())
INSERT INTO [dbo].[Reviews]([CustomerID],[OrderID],[ProductID],[Rating],[Comment],[Image],[ReviewDate]) VALUES(9,10491,4,5,N'Good',NULL,CAST(N'2022-01-27T00:00:00.000' AS DateTime))
INSERT INTO [dbo].[Reviews]([CustomerID],[OrderID],[ProductID],[Rating],[Comment],[Image],[ReviewDate]) VALUES(9,10491,6,3,N'Good',NULL,CAST(N'2022-01-27T00:00:00.000' AS DateTime))
INSERT INTO [dbo].[Reviews]([CustomerID],[OrderID],[ProductID],[Rating],[Comment],[Image],[ReviewDate]) VALUES(9,10491,9,4,N'Bad',NULL,CAST(N'2022-01-27T00:00:00.000' AS DateTime))
INSERT INTO [dbo].[Reviews]([CustomerID],[OrderID],[ProductID],[Rating],[Comment],[Image],[ReviewDate]) VALUES(16,10498,4,3,N'Good',NULL,CAST(N'2022-03-27T00:00:00.000' AS DateTime))
INSERT INTO [dbo].[Reviews]([CustomerID],[OrderID],[ProductID],[Rating],[Comment],[Image],[ReviewDate]) VALUES(16,10498,43,1,N'Bad',NULL,CAST(N'2022-03-27T00:00:00.000' AS DateTime))
INSERT INTO [dbo].[Reviews]([CustomerID],[OrderID],[ProductID],[Rating],[Comment],[Image],[ReviewDate]) VALUES(16,10498,2,3,N'Good',NULL,CAST(N'2022-03-27T00:00:00.000' AS DateTime))
INSERT INTO [dbo].[Reviews]([CustomerID],[OrderID],[ProductID],[Rating],[Comment],[Image],[ReviewDate]) VALUES(16,10490,5,2,N'Good',NULL,CAST(N'2022-03-27T00:00:00.000' AS DateTime))


SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10303, 11, 7, CAST(N'2022-09-11T00:00:00.000' AS DateTime), CAST(N'2022-10-09T00:00:00.000' AS DateTime), CAST(N'2022-09-18T00:00:00.000' AS DateTime), 107.8300, N'Godos Cocina Típica', N'C/ Romero, 33', N'Sevilla', NULL, N'41101', N'Spain')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10327, 5, 2, CAST(N'2022-10-11T00:00:00.000' AS DateTime), CAST(N'2022-11-08T00:00:00.000' AS DateTime), CAST(N'2022-10-14T00:00:00.000' AS DateTime), 63.3600, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', NULL, N'S-844 67', N'Sweden')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10337, 6, 4, CAST(N'2022-10-24T00:00:00.000' AS DateTime), CAST(N'2022-11-21T00:00:00.000' AS DateTime), CAST(N'2022-10-29T00:00:00.000' AS DateTime), 108.2600, N'Frankenversand', N'Berliner Platz 43', N'München', NULL, N'80805', N'Germany')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10342, 6, 4, CAST(N'2022-10-30T00:00:00.000' AS DateTime), CAST(N'2022-11-13T00:00:00.000' AS DateTime), CAST(N'2022-11-04T00:00:00.000' AS DateTime), 54.8300, N'Frankenversand', N'Berliner Platz 43', N'München', NULL, N'80805', N'Germany')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10347, 2, 4, CAST(N'2022-11-06T00:00:00.000' AS DateTime), CAST(N'2022-12-04T00:00:00.000' AS DateTime), CAST(N'2022-11-08T00:00:00.000' AS DateTime), 3.1000, N'Familia Arquibaldo', N'Rua Orós, 92', N'Sao Paulo', N'SP', N'05442-030', N'Brazil')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10352, 9, 3, CAST(N'2022-11-12T00:00:00.000' AS DateTime), CAST(N'2022-11-26T00:00:00.000' AS DateTime), CAST(N'2022-11-18T00:00:00.000' AS DateTime), 1.3000, N'Furia Bacalhau e Frutos do Mar', N'Jardim das rosas n. 32', N'Lisboa', NULL, N'1675', N'Portugal')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10366, 10, 8, CAST(N'2022-11-28T00:00:00.000' AS DateTime), CAST(N'2022-01-09T00:00:00.000' AS DateTime), CAST(N'2022-12-30T00:00:00.000' AS DateTime), 10.1400, N'Galería del gastronómo', N'Rambla de Cataluña, 23', N'Barcelona', NULL, N'8022', N'Spain')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10368, 1, 2, CAST(N'2022-11-29T00:00:00.000' AS DateTime), CAST(N'2022-12-27T00:00:00.000' AS DateTime), CAST(N'2022-12-02T00:00:00.000' AS DateTime), 101.9500, N'Ernst Handel', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10378, 5, 5, CAST(N'2022-12-10T00:00:00.000' AS DateTime), CAST(N'2023-01-07T00:00:00.000' AS DateTime), CAST(N'2022-12-19T00:00:00.000' AS DateTime), 5.4400, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', NULL, N'S-844 67', N'Sweden')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10382, 1, 4, CAST(N'2022-12-13T00:00:00.000' AS DateTime), CAST(N'2023-01-10T00:00:00.000' AS DateTime), CAST(N'2022-12-16T00:00:00.000' AS DateTime), 94.7700, N'Ernst Handel', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10386, 2, 9, CAST(N'2022-12-18T00:00:00.000' AS DateTime), CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2022-12-25T00:00:00.000' AS DateTime), 13.9900, N'Familia Arquibaldo', N'Rua Orós, 92', N'Sao Paulo', N'SP', N'05442-030', N'Brazil')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10390, 1, 6, CAST(N'2022-12-23T00:00:00.000' AS DateTime), CAST(N'2023-01-20T00:00:00.000' AS DateTime), CAST(N'2022-12-26T00:00:00.000' AS DateTime), 126.3800, N'Ernst Handel', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10394, 17, 1, CAST(N'2022-12-25T00:00:00.000' AS DateTime), CAST(N'2023-01-22T00:00:00.000' AS DateTime), CAST(N'2023-01-03T00:00:00.000' AS DateTime), 30.3400, N'Hungry Coyote Import Store', N'City Center Plaza 516 Main St.', N'Elgin', N'OR', N'97827', N'USA')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10395, 16, 6, CAST(N'2022-12-26T00:00:00.000' AS DateTime), CAST(N'2023-01-23T00:00:00.000' AS DateTime), CAST(N'2023-01-03T00:00:00.000' AS DateTime), 184.4100, N'HILARION-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'5022', N'Venezuela')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10396, 6, 1, CAST(N'2022-12-27T00:00:00.000' AS DateTime), CAST(N'2023-01-10T00:00:00.000' AS DateTime), CAST(N'2023-01-06T00:00:00.000' AS DateTime), 135.3500, N'Frankenversand', N'Berliner Platz 43', N'München', NULL, N'80805', N'Germany')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10402, 1, 8, CAST(N'2022-01-02T00:00:00.000' AS DateTime), CAST(N'2022-02-13T00:00:00.000' AS DateTime), CAST(N'2022-01-10T00:00:00.000' AS DateTime), 67.8800, N'Ernst Handel', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10403, 1, 4, CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), CAST(N'2022-01-09T00:00:00.000' AS DateTime), 73.7900, N'Ernst Handel', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10408, 4, 8, CAST(N'2022-01-08T00:00:00.000' AS DateTime), CAST(N'2022-02-05T00:00:00.000' AS DateTime), CAST(N'2022-01-14T00:00:00.000' AS DateTime), 11.2600, N'Folies gourmandes', N'184, chaussée de Tournai', N'Lille', NULL, N'59000', N'France')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10414, 2, 2, CAST(N'2022-01-14T00:00:00.000' AS DateTime), CAST(N'2022-02-11T00:00:00.000' AS DateTime), CAST(N'2022-01-17T00:00:00.000' AS DateTime), 21.4800, N'Familia Arquibaldo', N'Rua Orós, 92', N'Sao Paulo', N'SP', N'05442-030', N'Brazil')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10415, 17, 3, CAST(N'2022-01-15T00:00:00.000' AS DateTime), CAST(N'2022-02-12T00:00:00.000' AS DateTime), CAST(N'2022-01-24T00:00:00.000' AS DateTime), 0.2000, N'Hungry Coyote Import Store', N'City Center Plaza 516 Main St.', N'Elgin', N'OR', N'97827', N'USA')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10422, 8, 2, CAST(N'2022-01-22T00:00:00.000' AS DateTime), CAST(N'2022-02-19T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 3.0200, N'Franchi S.p.A.', N'Via Monte Bianco 34', N'Torino', NULL, N'10100', N'Italy')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10423, 12, 6, CAST(N'2022-01-23T00:00:00.000' AS DateTime), CAST(N'2022-02-06T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 24.5000, N'Gourmet Lanchonetes', N'Av. Brasil, 442', N'Campinas', N'SP', N'04876-786', N'Brazil')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10426, 10, 4, CAST(N'2022-01-27T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-02-06T00:00:00.000' AS DateTime), 18.6900, N'Galería del gastronómo', N'Rambla de Cataluña, 23', N'Barcelona', NULL, N'8022', N'Spain')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10430, 1, 4, CAST(N'2022-01-30T00:00:00.000' AS DateTime), CAST(N'2022-02-13T00:00:00.000' AS DateTime), CAST(N'2022-02-03T00:00:00.000' AS DateTime), 458.7800, N'Ernst Handel', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10434, 5, 3, CAST(N'2022-02-03T00:00:00.000' AS DateTime), CAST(N'2022-03-03T00:00:00.000' AS DateTime), CAST(N'2022-02-13T00:00:00.000' AS DateTime), 17.9200, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', NULL, N'S-844 67', N'Sweden')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10442, 1, 3, CAST(N'2022-02-11T00:00:00.000' AS DateTime), CAST(N'2022-03-11T00:00:00.000' AS DateTime), CAST(N'2022-02-18T00:00:00.000' AS DateTime), 47.9400, N'Ernst Handel', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10460, 5, 8, CAST(N'2022-02-28T00:00:00.000' AS DateTime), CAST(N'2022-03-28T00:00:00.000' AS DateTime), CAST(N'2022-03-03T00:00:00.000' AS DateTime), 16.2700, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', NULL, N'S-844 67', N'Sweden')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10464, 9, 4, CAST(N'2022-03-04T00:00:00.000' AS DateTime), CAST(N'2022-04-01T00:00:00.000' AS DateTime), CAST(N'2022-03-14T00:00:00.000' AS DateTime), 89.0000, N'Furia Bacalhau e Frutos do Mar', N'Jardim das rosas n. 32', N'Lisboa', NULL, N'1675', N'Portugal')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10476, 16, 8, CAST(N'2022-03-17T00:00:00.000' AS DateTime), CAST(N'2022-04-14T00:00:00.000' AS DateTime), CAST(N'2022-03-24T00:00:00.000' AS DateTime), 4.4100, N'HILARION-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'5022', N'Venezuela')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10480, 4, 6, CAST(N'2022-03-20T00:00:00.000' AS DateTime), CAST(N'2022-04-17T00:00:00.000' AS DateTime), CAST(N'2022-03-24T00:00:00.000' AS DateTime), 1.3500, N'Folies gourmandes', N'184, chaussée de Tournai', N'Lille', NULL, N'59000', N'France')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10486, 16, 1, CAST(N'2022-03-26T00:00:00.000' AS DateTime), CAST(N'2022-04-23T00:00:00.000' AS DateTime), CAST(N'2022-04-02T00:00:00.000' AS DateTime), 30.5300, N'HILARION-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'5022', N'Venezuela')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10488, 6, 8, CAST(N'2022-03-27T00:00:00.000' AS DateTime), CAST(N'2022-04-24T00:00:00.000' AS DateTime), CAST(N'2022-04-02T00:00:00.000' AS DateTime), 4.9300, N'Frankenversand', N'Berliner Platz 43', N'München', NULL, N'80805', N'Germany')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10490, 16, 7, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(N'2022-04-28T00:00:00.000' AS DateTime), CAST(N'2022-04-03T00:00:00.000' AS DateTime), 210.1900, N'HILARION-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'5022', N'Venezuela')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10491, 9, 8, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(N'2022-04-28T00:00:00.000' AS DateTime), CAST(N'2022-04-08T00:00:00.000' AS DateTime), 16.9600, N'Furia Bacalhau e Frutos do Mar', N'Jardim das rosas n. 32', N'Lisboa', NULL, N'1675', N'Portugal')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10498, 16, 8, CAST(N'2022-04-07T00:00:00.000' AS DateTime), CAST(N'2022-05-05T00:00:00.000' AS DateTime), CAST(N'2022-04-11T00:00:00.000' AS DateTime), 29.7500, N'HILARION-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'5022', N'Venezuela')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10512, 2, 7, CAST(N'2022-04-21T00:00:00.000' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-04-24T00:00:00.000' AS DateTime), 3.5300, N'Familia Arquibaldo', N'Rua Orós, 92', N'Sao Paulo', N'SP', N'05442-030', N'Brazil')


INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10520, 1, 8, CAST(N'2022-03-27T00:00:00.000' AS DateTime), CAST(N'2022-04-24T00:00:00.000' AS DateTime), CAST(N'2022-04-02T00:00:00.000' AS DateTime), 4.9300, N'Frankenversand', N'Berliner Platz 43', N'München', NULL, N'80805', N'Germany')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10521, 1, 7, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(N'2022-04-28T00:00:00.000' AS DateTime), CAST(N'2022-04-03T00:00:00.000' AS DateTime), 210.1900, N'HILARION-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'5022', N'Venezuela')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10522, 1, 8, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(N'2022-04-28T00:00:00.000' AS DateTime), CAST(N'2022-04-08T00:00:00.000' AS DateTime), 16.9600, N'Furia Bacalhau e Frutos do Mar', N'Jardim das rosas n. 32', N'Lisboa', NULL, N'1675', N'Portugal')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10523, 1, 8, CAST(N'2022-04-07T00:00:00.000' AS DateTime), CAST(N'2022-05-05T00:00:00.000' AS DateTime), CAST(N'2022-04-11T00:00:00.000' AS DateTime), 29.7500, N'HILARION-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'5022', N'Venezuela')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10524, 1, 7, CAST(N'2022-04-21T00:00:00.000' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-04-24T00:00:00.000' AS DateTime), 3.5300, N'Familia Arquibaldo', N'Rua Orós, 92', N'Sao Paulo', N'SP', N'05442-030', N'Brazil')

SET IDENTITY_INSERT [dbo].[Orders] OFF
GO


INSERT INTO Authors(AuthorName) VALUES(N'Nathaniel Popper')
INSERT INTO Authors(AuthorName) VALUES(N'Alex Tapscott , Don Tapscott')
INSERT INTO Authors(AuthorName) VALUES(N'Andreas M. Antonopoulos')
INSERT INTO Authors(AuthorName) VALUES(N'Jeb Blount')
INSERT INTO Authors(AuthorName) VALUES(N'Mark W Schaefer')
INSERT INTO Authors(AuthorName) VALUES(N'David Meerman Scott , Nguyễn Minh Thiên Kim')
INSERT INTO Authors(AuthorName) VALUES(N'Paul Falcone')
INSERT INTO Authors(AuthorName) VALUES(N'Alpha Books biên soạn')
INSERT INTO Authors(AuthorName) VALUES(N'Brian Tracy')
INSERT INTO Authors(AuthorName) VALUES(N'Gene Siciliano , Hương Giang')
INSERT INTO Authors(AuthorName) VALUES(N'Huỳnh Ngọc Phiên')
INSERT INTO Authors(AuthorName) VALUES(N'Huỳnh Mai Liên')
INSERT INTO Authors(AuthorName) VALUES(N'Nhiều tác giả')
INSERT INTO Authors(AuthorName) VALUES(N'----Hiên----')
INSERT INTO Authors(AuthorName) VALUES(N'Nguyễn Nhật Ánh')
INSERT INTO Authors(AuthorName) VALUES(N'Hồ Anh Thái')
INSERT INTO Authors(AuthorName) VALUES(N'Louisa May Alcott')
INSERT INTO Authors(AuthorName) VALUES(N'Nguyễn Thị Hoàng')
INSERT INTO Authors(AuthorName) VALUES(N'Nguyễn Văn Khỏa')
INSERT INTO Authors(AuthorName) VALUES(N'Edgar parin D aulaire , Ingri')
INSERT INTO Authors(AuthorName) VALUES(N'Kousuke Sawamura')
INSERT INTO Authors(AuthorName) VALUES(N'Nhóm 4.0')
INSERT INTO Authors(AuthorName) VALUES(N'Rupi Kaur')
INSERT INTO Authors(AuthorName) VALUES(N'Antonio Guerrero Rodriguez')
INSERT INTO Authors(AuthorName) VALUES(N'Rabindranath Tagore')
INSERT INTO Authors(AuthorName) VALUES(N'Huỳnh Mai Liên , X Lan')
INSERT INTO Authors(AuthorName) VALUES(N'Elizabeth Rose Stanton')
INSERT INTO Authors(AuthorName) VALUES(N'DK , Clive Gifford')
INSERT INTO Authors(AuthorName) VALUES(N'Nhiều tác giả')
INSERT INTO Authors(AuthorName) VALUES(N'Kawa')
INSERT INTO Authors(AuthorName) VALUES(N'Ximena Vengoechea')
INSERT INTO Authors(AuthorName) VALUES(N'Joseph Murphy')
INSERT INTO Authors(AuthorName) VALUES(N'Ryunosuke Koike')
INSERT INTO Authors(AuthorName) VALUES(N'Joshua Becker')
INSERT INTO Authors(AuthorName) VALUES(N'Lý Thượng Long')
INSERT INTO Authors(AuthorName) VALUES(N'Wayne W Dyer')
INSERT INTO Authors(AuthorName) VALUES(N'Ota Hajime')
INSERT INTO Authors(AuthorName) VALUES(N'Đào Thản')
INSERT INTO Authors(AuthorName) VALUES(N'Jean-Claude Pomonti')
INSERT INTO Authors(AuthorName) VALUES(N'Johanna Spyri')
INSERT INTO Authors(AuthorName) VALUES(N'Carlo Collodi')

INSERT INTO Supplier(SupplierName) VALUES(N'NXB Thanh Niên')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB ĐH Kinh tế Quốc dân')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB Công Thương')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB Tài Chính')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB Trẻ')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB Lao động - Xã hội')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB Dân Trí')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB Khoa học và kỹ thuật')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB Thế giới')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB Hội Nhà Văn')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB Hà Nội')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB văn học')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB Kim Đồng')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB Phụ Nữ')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB Đại Học Sư Phạm')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB Tổng hợp TP.HCM')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB Lao động')
INSERT INTO Supplier(SupplierName) VALUES(N'Wordsworth Editions Ltd.')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB Văn hóa - Văn nghệ')
INSERT INTO Supplier(SupplierName) VALUES(N'Tri Thức Trẻ')
INSERT INTO Supplier(SupplierName) VALUES(N'Alpha books')
INSERT INTO Supplier(SupplierName) VALUES(N'BachvietBooks')
INSERT INTO Supplier(SupplierName) VALUES(N'Trí Việt')
INSERT INTO Supplier(SupplierName) VALUES(N'Saigon Books')
INSERT INTO Supplier(SupplierName) VALUES(N'Nhã Nam')
INSERT INTO Supplier(SupplierName) VALUES(N'Skybooks')
INSERT INTO Supplier(SupplierName) VALUES(N'Đinh Tị')
INSERT INTO Supplier(SupplierName) VALUES(N'Bestbooks')
INSERT INTO Supplier(SupplierName) VALUES(N'AZ books')
INSERT INTO Supplier(SupplierName) VALUES(N'Công Ty Cổ Phần Waka')
INSERT INTO Supplier(SupplierName) VALUES(N'Phương Nam')
INSERT INTO Supplier(SupplierName) VALUES(N'NXB Kim Đồng')
INSERT INTO Supplier(SupplierName) VALUES(N'Crabit Kidbooks')
INSERT INTO Supplier(SupplierName) VALUES(N'Muki')
INSERT INTO Supplier(SupplierName) VALUES(N'Huy Hoàng')
INSERT INTO Supplier(SupplierName) VALUES(N'Thái Hà')
INSERT INTO Supplier(SupplierName) VALUES(N'Minh Long')
INSERT INTO Supplier(SupplierName) VALUES(N'1980Books')
INSERT INTO Supplier(SupplierName) VALUES(N'Tân Việt')
INSERT INTO Supplier(SupplierName) VALUES(N'Phúc Minh')
INSERT INTO Supplier(SupplierName) VALUES(N'Marvy')


SET IDENTITY_INSERT [dbo].[Categories] ON 
INSERT INTO [dbo].[Categories]([CategoryID],[CategoryName]) VALUES(1,N'Sách Blockchain')
INSERT INTO [dbo].[Categories]([CategoryID],[CategoryName]) VALUES(2,N'Sách Kinh Tế')
INSERT INTO [dbo].[Categories]([CategoryID],[CategoryName]) VALUES(3,N'Sách Văn học trong nước')
INSERT INTO [dbo].[Categories]([CategoryID],[CategoryName]) VALUES(4,N'Sách Văn học Nước Ngoài')
INSERT INTO [dbo].[Categories]([CategoryID],[CategoryName]) VALUES(5,N'Sách Thiếu Nhi ')
INSERT INTO [dbo].[Categories]([CategoryID],[CategoryName]) VALUES(6,N'Sách Phát Triển Bản Thân')
INSERT INTO [dbo].[Categories]([CategoryID],[CategoryName]) VALUES(7,N'Sách Ngoại Văn')
INSERT INTO [dbo].[Categories]([CategoryID],[CategoryName]) VALUES(8,N'Tạp chí - Văn phòng phẩm')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO

INSERT INTO [dbo].[Genre]([GenreName]) VALUES(N'Marketing – Bán hàng')
INSERT INTO [dbo].[Genre]([GenreName]) VALUES(N'Nhân sự & việc làm')
INSERT INTO [dbo].[Genre]([GenreName]) VALUES(N'Tài chính & tiền tệ')
INSERT INTO [dbo].[Genre]([GenreName]) VALUES(N'Thơ ca')
INSERT INTO [dbo].[Genre]([GenreName]) VALUES(N'Tiểu thuyết')
INSERT INTO [dbo].[Genre]([GenreName]) VALUES(N'Truyện dài')
INSERT INTO [dbo].[Genre]([GenreName]) VALUES(N'Cổ tích & thần thoại')
INSERT INTO [dbo].[Genre]([GenreName]) VALUES(N'Viễn tưởng & kinh dị')
INSERT INTO [dbo].[Genre]([GenreName]) VALUES(N'Truyện tranh')
INSERT INTO [dbo].[Genre]([GenreName]) VALUES(N'Khoa học tự nhiên')
INSERT INTO [dbo].[Genre]([GenreName]) VALUES(N'Mỹ thuật, âm nhạc')
INSERT INTO [dbo].[Genre]([GenreName]) VALUES(N'Khoa học xã hội')
INSERT INTO [dbo].[Genre]([GenreName]) VALUES(N'Sách học làm người')
INSERT INTO [dbo].[Genre]([GenreName]) VALUES(N'Tâm Lý - Kỹ Năng Sống')
INSERT INTO [dbo].[Genre]([GenreName]) VALUES(N'Danh nhân')
INSERT INTO [dbo].[Genre]([GenreName]) VALUES(N'Children s Books')


SET IDENTITY_INSERT [dbo].[Products] ON 
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(1,N'Cuộc Cách Mạng Blockchain',2,1,NULL,2,21,299000,255000,N'Tiếng Việt',N'Nguyệt Minh',N' Bìa mềm',N'16 x 24',N'01/05/2018',508,792.00,NULL,'https://i.ibb.co/qksjgsf/1.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(2,N'Rủ Nhau Lên Mạng Đào Vàng',1,1,NULL,2,21,299000,255000,N'Tiếng Việt',N'Minh Thu , Thu Giang',N'Bìa mềm',N'16 x 24','01/07/2018',392,616.00,NULL,'https://i.ibb.co/CM314gX/2.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(3,N'Cuộc Cách Mạng Blockchain',2,1,NULL,2,21,299000,255000,N'Tiếng Việt',N'Nguyệt Minh',N' Bìa mềm',N'16 x 24',N'01/05/2018',508,792.00,NULL,'https://i.ibb.co/qksjgsf/1.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(4,N'Bitcoin Thực Hành',3,1,NULL,2,21,299000,255000,N'Tiếng Việt',N'LeVN , Thu Hương',N'Bìa mềm',N'16 x 24',N'01/03/2018',540,704.00,NULL,'https://i.ibb.co/NsZZLbP/4.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(5,N'Kỹ Năng Bán Hàng Trực Tuyến',4,2,1,3,21,219000,186000,N'Tiếng Việt',NULL,N'Bìa mềm',N'24 x 16 x 1',N'01/03/2018',372, 550.00,NULL,'https://i.ibb.co/TB515t2/5.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(6,N'Marketing Đáng Kinh Ngạc',5,2,1,4,22,143000,122000,N'Tiếng Việt',NULL,N'Bìa mềm',N' 20 x 13.5 ',N'01/01/2021',476,700.00,N'-QĐ/BV','https://i.ibb.co/ygmVJYH/mktdangkinhngac.webp',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(7,N'Những Quy Luật Mới Của Bán Hàng Và Dịch Vụ',6,2,1,5,5,180000,153000,N'Tiếng Việt',NULL,N'Bìa mềm',N'23 x 16 x 1.5',N'01/01/2022',392,650.00,NULL,'https://i.ibb.co/7yVvVVp/nhungquyluatmoicuabanhangvadichvu.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(8,N'101 Tình Huống Nhân Sự Nan Giải',7,2,2,6,21,149000,127000,N'Tiếng Việt',N' Nguyễn Đình Viễn , Nhóm dịch VNHR',N'Bìa mềm',N'16 x 24',N'2020-09-15',348,385.00,NULL,'https://i.ibb.co/bQNHPz1/101.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(9,N'Nghệ Thuật Thôi Miên Nhà Tuyển Dụng',8,2,2,6,21,109000,93000,N'Tiếng Việt',NULL,N'Bìa mềm',N'13 x 20.5',N'01/10/2019',280,308.00,NULL,'https://i.ibb.co/2Sf2jM1/nghe-thuat-thoi-mien-nha-tuyen-dung.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(10,N'Bí Quyết Tuyển Dụng & Đãi Ngộ Người Tài (Tái Bản)',9,2,2,7,23,68000,58000,N'Tiếng Việt',N'Trương Hồng Dũng',N'Bìa mềm',N'20.5 x 14.5 x 1 ',N'01/01/2021',136, 400.00,NULL,'https://i.ibb.co/tYBc4xN/biquyettuyendungvadaingo.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(11,N'Tài Chính Dành Cho Nhà Quản Lý',10,2,3,8,21,149000,127000,N'Tiếng Việt',NULL,N'Bìa mềm',N' 20.5 x 13 x 0.6',N'01/01/2022',344,550.00,NULL,'https://i.ibb.co/0fSMZwv/taichinhdanhchonhaquanly.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(12,N'Tiền Tệ Và Chuyện Làm Giàu An Toàn',11,2,3,9,24,150000,120000,N'Tiếng Việt',NULL,N'Bìa mềm',N'20.5 x 13 x 0.6',N'01/10/2020',220,242.00,NULL,'https://i.ibb.co/f2gH37D/tientevachuyenlamgiau.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(13,N'Biển Là Trẻ Con',12,3,4,10,25,70000,56000,N'Tiếng Việt',NULL,N'Bìa mềm',N' 20 x 18 ',N'2020-08-19',104,148,NULL,'https://i.ibb.co/YPv84Ww/bien-la-tre-con-bia-01.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(14,N'Tuyển Tập Văn Tế Đại Thi Hào Nguyễn Du',13,3,4,5,5,145000,123000,N'Tiếng Việt',NULL,N'Bìa mềm',N'16 x 24',N'02/10/2020',196,330.00,NULL,'https://i.ibb.co/4MB0Lqc/tuyentapvante.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(15,N'Thần Thoại Bắc Âu',NULL,4,7,1,27,168000,150000,N'Tiếng Việt',N'Lệ Chi',N'Bìa cứng',N' 14.5 x 19.2',N'01/08/2018',280,616.00,NULL,'https://i.ibb.co/XbCWmMS/thanthoaibacau.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(16,N'Truyện Thạch Yêu',20,4,7,11,25,116000,93000,N'Tiếng Việt',N'Đoàn Mai',N'Bìa mềm',N'20.5 x 28.5',N'2020-08-28',70,140.00,NULL,'https://i.ibb.co/68mH4Yg/truyenthachyeu.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(17,N'Tiệm Cắt Tóc Lúc Nửa Đêm',21,4,8,1,29,116000,104000,N'Tiếng Việt',N'Annie',N'Bìa mềm',N'20.5 x 14.5 ',N'01/01/2022',250,550.00 ,N'-QĐ/ThN','https://i.ibb.co/ZY7bzcV/tiemcattoclucnuadem.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(18,N'Sữa Và Mật',23,4,4,10,25,108000,92000,N'Tiếng Việt',N'Anh Thư',N'Bìa mềm',N' 14 x 20.5 ',N'12/10/2019',212,220.00,NULL,'https://i.ibb.co/W2S8VtD/suavamat.webp',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(19,N'Mùa Hái Quả',25,4,4,13,13,20000,20000,N'Tiếng Việt',N'Bùi Xuân',N'Bìa mềm',N'13 x 19',N'01/09/2017',88,110.00,NULL,'https://i.ibb.co/tMX3whN/muahaiqua.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(20,N'BKTT Về Các Loại Phương Tiện Giao Thông',28,5,10,1,27,280000,238000,N'Tiếng Việt',N' Thu Trang',N'Bìa mềm',N' 26.7 x 21',N'01/11/2020',256,450.00,NULL,'https://i.ibb.co/GC1KV6V/bkttvecacloaiphuongtiengiaothong.jpg',NULL,0)
GO
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(21,N'Xin Chào Tình Yêu',14,3,4,11,26,75000,64000,N'Tiếng Việt',NULL,N'Bìa mềm',N' 17 x 10',N'01/07/2020',176,200.00 ,NULL,'https://i.ibb.co/0qMqrg5/xinchaotinhyeu.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(22,N'Ngôi Trường Mọi Khi (Tái Bản 2022)',NULL,3,5,5,5,43000,37000,N'Tiếng Việt',NULL,N'Bìa mềm',N'14.5 x 10 x 0.5',N'01/01/2022',244,450.00  ,NULL,'https://i.ibb.co/7vNSJh2/ngoitruongmoikhi.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(23,N'Thằng Quỷ Nhỏ (2022)',15,3,5,5,5,110000,94000,N'Tiếng Việt',NULL,N'Bìa mềm',N' 20 x 13',N'01/01/2022',228,500.00 ,NULL,'https://i.ibb.co/ZgtxdGj/thangquynho.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(24,N'Đức Phật, Nữ Chúa Và Điệp Viên',16,3,5,5,5,95000,81000,N'Tiếng Việt',NULL,N'Bìa mềm',N'20 x 13 x 1 ',N'01/01/2022',232,450.00 ,NULL,'https://i.ibb.co/9hjvvFw/ducphat-nuchuavadiepvien.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(25,N'Bông Hồng Trên Ngọn Đồi Xanh (Eight Cousins)',17,3,6,1,27,99000,84000,N'Tiếng Việt',NULL,N'Bìa mềm',N'20.5 x 14.5',N'01/11/2020',364,385.00 ,NULL,'https://i.ibb.co/cckPJZN/bonghong.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(26,N'Một Ngày Rồi Thôi (Bìa Cứng)',18,3,6,10,25,140000,119000,N'Tiếng Việt',NULL,N'Bìa cứng',N' 14 x 20.5 ',N'01/01/2021',342,450.00 ,NULL,'https://i.ibb.co/5RFqk41/motngayroithoi.jpg ',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(27,N'Làm Bạn Với Bầu Trời (Bìa Cứng)',15,3,6,5,5,220000,209000,N'Tiếng Việt',NULL,N'Bìa cứng',N'13 x 20',N'11/09/2019',252,506.00 ,NULL,'https://i.ibb.co/sjLzzpR/lambanvoibautroi.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(28,N'Thần Thoại Hy Lạp',19,4,7,12,28,260000,208000,N'Tiếng Việt',NULL,N'Bìa cứng',N' 16 x 24',N'01/01/2021',900,2000.00 ,NULL,'https://i.ibb.co/0QCsDDz/thanthoaihilap.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(29,N'Sự Thật Đặt Tên Tôi',24,4,4,10,31,75000,67000,N'Tiếng Việt',NULL,N' Bìa mềm',N' 14.5 x 20.5',N'01/05/2018',160,198.00,NULL,'https://i.ibb.co/cTS3pF7/suthatdattentoi.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(30,N'Việt Ma Tân Lục - Quyển 1',22,4,8,7,30,145000,138000,N'Tiếng Việt',NULL,N'Bìa mềm',N'20.5 x 14.5 ',N'01/01/2022',464,700.00,NULL,'https://i.ibb.co/SRr5FMT/vietmatanluc.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(31,N'Mẹ Yêu Ai Nhất',12,5,9,10,25,60000,51000,N'Tiếng Việt',NULL,N' Bìa mềm',N'23 x 23 x 0.3',N'01/01/2022',40,300.00,N'-QĐ/HNV','https://i.ibb.co/LJd1wpZ/meyeuainhat.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(32,N'Henny',27,5,9,11,32,89000,89000,N'Tiếng Việt',NULL,N'Bìa mềm',N'21 x 20.5',N'01/01/2022',40,300.00,NULL,'https://i.ibb.co/qn7KMhV/Henny.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(33,N'Bách Khoa Tri Thức Cho Trẻ Em',13,5,10,1,27,280000,238000,N'Tiếng Việt',NULL,N'Bìa mềm',N'21.0 x 24 x 0.7',N'01/01/2022',224, 550.00,NULL,'https://i.ibb.co/WvC66sB/bachkhoatrithucchotreem.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(34,N'Mê Cung Phát Triển Kỹ Năng - An Toàn',29,5,11,14,33,29000,23000,N'Tiếng Việt',NULL,N'Bìa mềm',N' 18 x 18',N'2020-09-22',28,110.00,NULL,'https://i.ibb.co/gJBYq9w/mecung.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(35,N'Xưởng Sáng Tạo Rộn Ràng',13,5,11,7,25,169000,135000,N'Tiếng Việt',N'Hoàng Linh , Bảo Bình',N'Bìa mềm',N' 18 x 23',N'07/08/2020',368,525.00,NULL,'https://i.ibb.co/QXXpRgp/xuongsangtaoronrang.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(36,N'Câu Lạc Bộ Rừng Xanh',NULL,5,12,15,34,135000,115000,N'Tiếng Việt',NULL,N'Bìa mềm',N'29.5 x 20.5',N'01/11/2020',NULL,110.00 ,NULL,'https://i.ibb.co/V2kb1d9/clbrungxanh.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(37,N'Muốn Học Giỏi Lịch Sử Không? ',30,5,12,9,35,145000,123000,N'Tiếng Việt',NULL,N'Bìa mềm',N' 20 x 14.5 x 1 ',N'01/01/2022',202,350.00,NULL,'https://i.ibb.co/L6FFp8x/muonhocgioilichsukhong.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(38,N'Sức Mạnh Tiềm Thức (Bìa Cứng)',31,6,13,16,23,158000,134000,N'Tiếng Việt',N'Mai Sơn , Bùi Thanh Châu',N'Bìa cứng',N' 16 x 24',N'01/12/2021',272, 528.00,NULL,'https://i.ibb.co/8zBBgN5/sucmanhtiemthuc.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(39,N'Để Tâm Không Bận',32,6,13,11,35,65000,52000,N'Tiếng Việt',N'Hương Linh',N'Bìa mềm',N' 13 x 19',N'02/12/2020',156,252.00,NULL,'https://i.ibb.co/Ns4tPbG/363909-p92847mdetamkhongbanbia1.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(40,N'Đại Học Không Lạc Hướng',34,6,14,14,36,105000,89000,N'Tiếng Việt',NULL,N'Bìa mềm',N'20.5 x 15 x 0.7',N'01/01/2022',288,480.00 ,NULL,'https://i.ibb.co/N6yVsfB/daihockhonglachuong.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(41,N'Sống Tối Giản',33,6,13,16,23,158000,126000,N'Tiếng Việt',N'Thục Quyên',N'Bìa mềm',N'20.5 x 13',N'01/09/2020',312,352.00,NULL,'https://i.ibb.co/JjFczdd/songtoigian.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(42,N'Hạnh Phúc Là Hành Trình Không Phải Là Đích Đến',35,6,14,1,37,139000,120000,N'Tiếng Việt',NULL,N'Bìa mềm',N' 19 x 13 x 0.5' ,N'01/01/2022',284,450.00 ,NULL,'https://i.ibb.co/GsyDjSW/hanhphuclahanhtrih.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(43,N'Nghệ Thuật Kiến Tạo Động Lực Cho Nhân Viên',36,6,14,17,38,95000,81000,N'Tiếng Việt',NULL,N'Bìa mềm',N' 20.5 x 14.5 ',N'01/03/2020',277,480.00, N'_QĐ/TV','https://i.ibb.co/f0F2Tnd/nghethuatkientaodonglucchonha.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(44,N'Lời Non Nước',37,6,15,5,5,70000,56000,N'Tiếng Việt',NULL,N'Bìa mềm',N' 13 x 20.5',N'01/03/2020',156,198.00,NULL,'https://i.ibb.co/kGJH1Nr/loinonnuoc.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(45,N'Một Người Việt Trầm Lặng (Tái Bản 2020)',38,6,15,NULL,23,92000,74000,N'Tiếng Việt',N' Nguyễn Văn Sự',N'Bìa mềm',N'13 x 20.5',N'2020-08-25',208,242.00 ,NULL,'https://i.ibb.co/zVbkVpJ/m-tnguoiviettramlang.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(46,N'Christmas Gift',NULL,7,16,14,39,88000,70000,N'Tiếng Anh',NULL,N' Bìa cứng',N'21 x 21',N'2019-08-31',46,418.00,NULL,'https://i.ibb.co/xz3tT8K/Chismowts.webp',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(47,N'Heidi - Tái bản 04/1998',39,7,16,18,18,75000,75000,N'Tiếng Anh',NULL,N'Bìa mềm',N'13 x 19.9 x 1.6',NULL,240,159.00,NULL,'https://i.ibb.co/6ydW2Vd/heidi.jpg',NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumberOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(48,N'Pinocchio',40,7,16,18,18,75000,75000,N'Tiếng Anh',NULL,N'Bìa mềm',N'11.2 x 17.8 x 1.3',NULL,192,120.00 ,NULL,'https://i.ibb.co/gJ5LGqy/pinocchio.jpg',NULL,0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO



INSERT INTO [dbo].[Cart]([AccountID],[ProductID],[Quantity]) VALUES(1,1,2)
INSERT INTO [dbo].[Cart]([AccountID],[ProductID],[Quantity]) VALUES(2,4,5)
INSERT INTO [dbo].[Cart]([AccountID],[ProductID],[Quantity]) VALUES(3,6,3)
INSERT INTO [dbo].[Cart]([AccountID],[ProductID],[Quantity]) VALUES(4,9,4)
INSERT INTO [dbo].[Cart]([AccountID],[ProductID],[Quantity]) VALUES(5,15,3)
INSERT INTO [dbo].[Cart]([AccountID],[ProductID],[Quantity]) VALUES(6,43,1)

GO


SET IDENTITY_INSERT [dbo].[Warehouses] ON 
INSERT INTO [dbo].[Warehouses]([WarehouseID],[Location],[PhoneNumber]) VALUES(1,N'Ha Dong, Ha Noi',N'1900 9999')
INSERT INTO [dbo].[Warehouses]([WarehouseID],[Location],[PhoneNumber]) VALUES(2,N'Quan 1 , tp. Ho Chi Minh',N'1900 9999')
INSERT INTO [dbo].[Warehouses]([WarehouseID],[Location],[PhoneNumber]) VALUES(3,N'Can Tho',N'1900 9999')
INSERT INTO [dbo].[Warehouses]([WarehouseID],[Location],[PhoneNumber]) VALUES(4,N'Da nang',N'1900 9999')
SET IDENTITY_INSERT [dbo].[Warehouses] OFF
GO


INSERT INTO [dbo].[Inventories]([WarehouseID],[ProductID],[UnitsInStock]) VALUES(1,1,100)
INSERT INTO [dbo].[Inventories]([WarehouseID],[ProductID],[UnitsInStock]) VALUES(2,3,100)
INSERT INTO [dbo].[Inventories]([WarehouseID],[ProductID],[UnitsInStock]) VALUES(3,4,100)
INSERT INTO [dbo].[Inventories]([WarehouseID],[ProductID],[UnitsInStock]) VALUES(4,6,100)
INSERT INTO [dbo].[Inventories]([WarehouseID],[ProductID],[UnitsInStock]) VALUES(1,3,100)
INSERT INTO [dbo].[Inventories]([WarehouseID],[ProductID],[UnitsInStock]) VALUES(2,6,100)
INSERT INTO [dbo].[Inventories]([WarehouseID],[ProductID],[UnitsInStock]) VALUES(3,8,100)
INSERT INTO [dbo].[Inventories]([WarehouseID],[ProductID],[UnitsInStock]) VALUES(4,7,100)
INSERT INTO [dbo].[Inventories]([WarehouseID],[ProductID],[UnitsInStock]) VALUES(1,9,100)

GO




ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [UQ_Email] UNIQUE NONCLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, /**SORT_IN_TEMPDB = OFF,**/ IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

CREATE NONCLUSTERED INDEX [CategoryName] ON [dbo].[Categories]
(
	[CategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

CREATE NONCLUSTERED INDEX [FirstName] ON [dbo].[Customers]
(
	[FirstName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

CREATE NONCLUSTERED INDEX [LastName] ON [dbo].[Employees]
(
	[LastName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [OrderID] ON [dbo].[Order Details]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [OrdersOrder_Details] ON [dbo].[Order Details]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [ProductID] ON [dbo].[Order Details]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [ProductsOrder_Details] ON [dbo].[Order Details]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

CREATE NONCLUSTERED INDEX [CustomerID] ON [dbo].[Orders]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

CREATE NONCLUSTERED INDEX [CustomersOrders] ON [dbo].[Orders]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [EmployeeID] ON [dbo].[Orders]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [EmployeesOrders] ON [dbo].[Orders]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [OrderDate] ON [dbo].[Orders]
(
	[OrderDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [ShippedDate] ON [dbo].[Orders]
(
	[ShippedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

CREATE NONCLUSTERED INDEX [ShipPostalCode] ON [dbo].[Orders]
(
	[ShipPostalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [CategoriesProducts] ON [dbo].[Products]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [CategoryID] ON [dbo].[Products]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

CREATE NONCLUSTERED INDEX [ProductName] ON [dbo].[Products]
(
	[ProductName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]



GO
ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order_Details_SalePrice]  DEFAULT ((0)) FOR [SalePrice]
GO
ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
--ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order_Details_Discount]  DEFAULT ((0)) FOR [Discount]
--GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Freight]  DEFAULT ((0)) FOR [Freight]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_SalePrice]  DEFAULT ((0)) FOR [SalePrice]
GO
--ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitsInStock]  DEFAULT ((0)) FOR [UnitsInStock]
--GO
--ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitsOnOrder]  DEFAULT ((0)) FOR [UnitsOnOrder]
--GO
--ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ReorderLevel]  DEFAULT ((0)) FOR [ReorderLevel]
--GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Discontinued]  DEFAULT ((0)) FOR [Discontinued]
GO


ALTER TABLE [dbo].[Accounts]  WITH NOCHECK ADD  CONSTRAINT [FK_Accounts_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Customers]
GO
ALTER TABLE [dbo].[Accounts]  WITH NOCHECK ADD  CONSTRAINT [FK_Accounts_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Employees]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([DepartmentID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments]
GO
ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Details_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order_Details_Orders]
GO
ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Details_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order_Details_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employees]
GO


ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO


ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Details_Warehouses] FOREIGN KEY([WarehouseID])
REFERENCES [dbo].[Warehouses] ([WarehouseID])
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order_Details_Warehouses]
GO

ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Details_Discount] FOREIGN KEY([DiscountID])
REFERENCES [dbo].[Discount] ([DiscountID])
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order_Details_Discount]
GO

ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Authors] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Authors] ([AuthorID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Authors]
GO


ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Publisher] FOREIGN KEY([PublisherID])
REFERENCES [dbo].[Supplier] ([SupplierID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Publisher]
GO


ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([SupplierID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Supplier]
GO

ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Genre] FOREIGN KEY([GenreID])
REFERENCES [dbo].[Genre] ([GenreID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Genre]
GO

ALTER TABLE [dbo].[Reviews]  WITH NOCHECK ADD  CONSTRAINT [FK_Reviews_Order_Details] FOREIGN KEY([OrderID],[ProductID])
REFERENCES [dbo].[Order Details] ([OrderID],[ProductID])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Order_Details]
GO

ALTER TABLE [dbo].[Reviews]  WITH NOCHECK ADD  CONSTRAINT [FK_Reviews_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Customers]
GO

ALTER TABLE [dbo].[Cart]  WITH NOCHECK ADD  CONSTRAINT [FK_Cart_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Accounts]
GO

ALTER TABLE [dbo].[Cart]  WITH NOCHECK ADD  CONSTRAINT [FK_Cart_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Products]
GO

ALTER TABLE [dbo].[Inventories]  WITH NOCHECK ADD  CONSTRAINT [FK_Inventories_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Inventories] CHECK CONSTRAINT [FK_Inventories_Products]
GO

ALTER TABLE [dbo].[Inventories]  WITH NOCHECK ADD  CONSTRAINT [FK_Inventories_Warehouses] FOREIGN KEY([WarehouseID])
REFERENCES [dbo].[Warehouses] ([WarehouseID])
GO
ALTER TABLE [dbo].[Inventories] CHECK CONSTRAINT [FK_Inventories_Warehouses]
GO


--Constrant

ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [CK_Birthdate] CHECK  (([BirthDate]<getdate()))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [CK_Birthdate]
GO
--ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [CK_Discount] CHECK  (([Discount]>=(0) AND [Discount]<=(1)))
--GO
--ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [CK_Discount]
--GO
ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [CK_Quantity] CHECK  (([Quantity]>(0)))
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [CK_Quantity]
GO
ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [CK_SalePrice] CHECK  (([SalePrice]>=(0)))
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [CK_SalePrice]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_Products_SalePrice] CHECK  (([SalePrice]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_Products_SalePrice]
GO
--ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_ReorderLevel] CHECK  (([ReorderLevel]>=(0)))
--GO
--ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_ReorderLevel]
--GO
--ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitsInStock] CHECK  (([UnitsInStock]>=(0)))
--GO
--ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_UnitsInStock]
--GO
--ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitsOnOrder] CHECK  (([UnitsOnOrder]>=(0)))
--GO
--ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_UnitsOnOrder]
--GO
ALTER TABLE [dbo].[Reviews]  WITH NOCHECK ADD  CONSTRAINT [CK_Reviews_Rating] CHECK  (([Rating]>=(1)) AND ([Rating]<=(5)))
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [CK_Reviews_Rating]
GO




------------------------Procedure -------------------

CREATE PROCEDURE createAccount(@CustomerID int, @FirstName nvarchar(50), @LastName nvarchar(50), @ContactTitle nvarchar(50), @DateOfBirth date, @Address nvarchar(100),  @PhoneNumber nvarchar(11),@AccountID int ,@Email nvarchar(50),@Password nvarchar(50))
AS
BEGIN
    insert into Customers(CustomerID, FirstName , LastName,ContactTitle,[Gender],DateOfBirth,[Address],PhoneNumber,CreateDate) values(@CustomerID,@FirstName,@LastName,@ContactTitle,1,@DateOfBirth,@Address,@PhoneNumber,getDate())
	SET IDENTITY_INSERT [dbo].[Accounts] ON 
	insert into Accounts(AccountID ,Email, [Password],CustomerID,[Role]) values(@AccountID,@Email,@Password,@CustomerID,2)
	SET IDENTITY_INSERT [dbo].[Accounts] OFF
END;
GO

--exec createAccount 339,'vu','vu','vu','2022-01-01','vu','vu',115,'email','vu' go

CREATE PROCEDURE updateAccount(@CustomerID int, @FirstName nvarchar(50), @LastName nvarchar(50), @ContactTitle nvarchar(50), @DateOfBirth date, @Address nvarchar(50),  @PhoneNumber nvarchar(11),@Email nvarchar(50),@Password nvarchar(50))
AS
BEGIN
    UPDATE Customers SET FirstName = @FirstName, LastName = @LastName, ContactTitle=@ContactTitle, DateOfBirth= @DateOfBirth, [Address]=@Address, PhoneNumber= @PhoneNumber  WHERE CustomerID=@CustomerID
	UPDATE Accounts SET [Password] = @Password WHERE Email=@Email
END;
GO

CREATE PROCEDURE ConfirmCompletionOrder(@OrderID int, @ProductID int, @WarehouseID int, @Quantity int)
AS
BEGIN
    UPDATE Orders SET ShippedDate = Getdate() where OrderID = @OrderID
	UPDATE Inventories SET UnitsInStock = UnitsInStock - @Quantity where ProductID = @ProductID AND WarehouseID = @WarehouseID
END;
GO


create proc [dbo].[OrderAction] (@AccountID int, @OrderID int, @CustomerID int, @ShipAddress nvarchar(100), @ShipCity nvarchar(100), @ShipPostalCode nvarchar(100),  @DiscountID nvarchar(50))
as
begin
	IF EXISTS(SELECT * FROM Accounts WHERE AccountID = @AccountID)
	begin 
		if EXISTS(select * from Cart where AccountID = @AccountID)
		begin

			SET IDENTITY_INSERT [dbo].[Orders] ON 
			INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShipAddress], [ShipCity], [ShipPostalCode]) 
			VALUES(@OrderID,@CustomerID, getdate(), DATEADD(day, 7,GETDATE()), @ShipAddress, @ShipCity, @ShipPostalCode )
			SET IDENTITY_INSERT [dbo].[Orders] OFF
			
			declare @discount float;
			select @discount = Percentage from Discount where DiscountID = @DiscountID
			
			INSERT INTO [Order Details](OrderID, ProductID, SalePrice, Quantity,DiscountID,WarehouseID) 
			SELECT
				@OrderID,
				c.ProductID,
				p.SalePrice -(p.SalePrice * @discount),
				c.Quantity,
				@DiscountID
				, null
			FROM
				Cart c, Products p
			Where c.AccountID=@AccountID AND c.ProductID=p.ProductID

			delete Cart where AccountID=@AccountID
		end
	end
end;

--exec OrderAction 5,1111,3,'FPTU, HN, VN','HN', '2345', 'SALE3/3/2023'


--INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (40303, 11, 7, CAST(N'1996-09-11T00:00:00.000' AS DateTime), CAST(N'1996-10-09T00:00:00.000' AS DateTime),NULL, 107.8300, N'Godos Cocina Típica', N'C/ Romero, 33', N'Sevilla', NULL, N'41101', N'Spain')

--INSERT [dbo].[Order Details] ([OrderID], [ProductID], [WarehouseID], [SalePrice], [Quantity], [DiscountID]) VALUES (40303, 2, 1, 14.7000, 40, NULL)
--exec ConfirmCompletionOrder 40303 , 2 , 1, 40

--CREATE PROCEDURE OrderAction(
--@OrderID int,
--@CustomerID int,
--@EmployeeID int,
--@OrderDate date,
--@RequiredDate date,
--@ShippedDate date,
--@Freight float,
--@ShipName nvarchar(50),
--@ShipAddress nvarchar(100),
--@ShipCity nvarchar(50), 
--@ShipRegion nvarchar(50),
--@ShipPostalCode nvarchar(50),
--@ShipCountry nvarchar(50),
--@ProductID int,
--@SalePrice float,
--@Quantity int,
--@DiscountID int)AS
--BEGIN
--	insert into Orders values(@OrderID,@CustomerID,@EmployeeID,@OrderDate,@RequiredDate,@ShippedDate,@Freight,@ShipName,@ShipAddress,@ShipCity,@ShipRegion,@ShipPostalCode,@ShipCountry)
--    insert into [Order Details] values(@OrderID,@ProductID,@SalePrice,@Quantity,@DiscountID)
--END;
--GO
