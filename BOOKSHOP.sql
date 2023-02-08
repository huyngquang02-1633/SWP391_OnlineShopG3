USE [master]
GO

CREATE DATABASE [BOOKSHOP]
GO
USE [BOOKSHOP]
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
	[DepartmentID] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[TitleOfCourtesy] [nvarchar](50) NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[Address] [nvarchar](100) NULL,
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
	[Description] [ntext] NULL,
	[Picture] [image] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
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
	[NumerOfPage] [int] NULL,
	[Format] [nvarchar](50) NULL,
	[Image] [int] NULL,
	--[UnitsOnOrder] [int] NULL,
	--[ReorderLevel] [smallint] NULL,
	[PublishDate] [datetime] NULL,
	[PublishingLicense] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[Discontinued] [bit] NOT NULL,
	--foreign key (AuthorID) references Authors(AuthorID),
	--foreign key (PublisherID) references Publisher(PublisherID),
	--foreign key (ReleaseCompanyID) references Publisher(PublisherID),
	--foreign key (GenreID) references Genre(GenreID),
	
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
	[CustomerID] [nchar](5) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[Comment] [nvarchar](100) NULL,
	[Image] [image] NULL,
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
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [CustomerID], [EmployeeID], [Role]) VALUES (5, N'thopn3@gmail.com', N'123', N'EGYJF', NULL, 2)
INSERT [dbo].[Accounts] ([AccountID], [Email], [Password], [CustomerID], [EmployeeID], [Role]) VALUES (6, N'vuvu@gmail.com', N'123', N'VVUVU', NULL, 1)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO



INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [ContactTitle], [Address]) VALUES (1, N'Ernst Handel', N'Roland Mendel', N'Sales Manager', N'Kirchgasse 6')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [ContactTitle], [Address]) VALUES (2, N'Familia Arquibaldo', N'Aria Cruz', N'Marketing Assistant', N'Rua Orós, 92')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [ContactTitle], [Address]) VALUES (3, N'FISSA Fabrica Inter. Salchichas S.A.', N'Diego Roel', N'Accounting Manager', N'C/ Moralzarzal, 86')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [ContactTitle], [Address]) VALUES (4, N'Folies gourmandes', N'Martine Rancé', N'Assistant Sales Agent', N'184, chaussée de Tournai')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [ContactTitle], [Address]) VALUES (5, N'Folk och fä HB', N'Maria Larsson', N'Owner', N'Åkergatan 24')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [ContactTitle], [Address]) VALUES (6, N'Frankenversand', N'Peter Franken', N'Marketing Manager', N'Berliner Platz 43')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [ContactTitle], [Address]) VALUES (7, N'France restauration', N'Carine Schmitt', N'Marketing Manager', N'54, rue Royale')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [ContactTitle], [Address]) VALUES (8, N'Franchi S.p.A.', N'Paolo Accorti', N'Sales Representative', N'Via Monte Bianco 34')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [ContactTitle], [Address]) VALUES (9, N'Furia Bacalhau e Frutos do Mar', N'Lino Rodriguez', N'Sales Manager', N'Jardim das rosas n. 32')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [ContactTitle], [Address]) VALUES (10, N'Galería del gastrónomo', N'Eduardo Saavedra', N'Marketing Manager', N'Rambla de Cataluña, 23')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [ContactTitle], [Address]) VALUES (11, N'Godos Cocina Típica', N'José Pedro Freyre', N'Sales Manager', N'C/ Romero, 33')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [ContactTitle], [Address]) VALUES (12, N'Gourmet Lanchonetes', N'André Fonseca', N'Sales Associate', N'Av. Brasil, 442')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [ContactTitle], [Address]) VALUES (13, N'Great Lakes Food Market', N'Howard Snyder', N'Marketing Manager', N'2732 Baker Blvd.')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [ContactTitle], [Address]) VALUES (14, N'GROSELLA-Restaurante', N'Manuel Pereira', N'Owner', N'5ª Ave. Los Palos Grandes')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [ContactTitle], [Address]) VALUES (15, N'Hanari Carnes', N'Mario Pontes', N'Accounting Manager', N'Rua do Paço, 67')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [ContactTitle], [Address]) VALUES (16, N'HILARION-Abastos', N'Carlos Hernández', N'Sales Representative', N'Carrera 22 con Ave. Carlos Soublette #8-35')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [ContactTitle], [Address]) VALUES (17, N'Hungry Coyote Import Store', N'Vu Truong vu', N'President', N'Lang Son')
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [DepartmentType]) VALUES (1, N'Bussiness Department 1', N'Bussiness')
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [DepartmentType]) VALUES (2, N'Bussiness Department 2', N'Bussiness')
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [DepartmentType]) VALUES (3, N'Addministration Deparment', N'Back Office')
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [DepartmentType]) VALUES (4, N'R&D Department', N'Back Office')
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [DepartmentType]) VALUES (5, N'Operating Department', N'Back Office')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address]) VALUES (1, N'Davolio', N'Nancy', 1, N'Sales Representative', N'Ms.', CAST(N'1948-12-08T00:00:00.000' AS DateTime), CAST(N'1992-05-01T00:00:00.000' AS DateTime), N'507 - 20th Ave. E.Apt. 2A')
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address]) VALUES (2, N'Fuller', N'Andrew', 5, N'Vice President, Sales', N'Dr.', CAST(N'1952-02-19T00:00:00.000' AS DateTime), CAST(N'1992-08-14T00:00:00.000' AS DateTime), N'908 W. Capital Way')
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address]) VALUES (3, N'Leverling', N'Janet', 1, N'Sales Representative', N'Ms.', CAST(N'1963-08-30T00:00:00.000' AS DateTime), CAST(N'1992-04-01T00:00:00.000' AS DateTime), N'722 Moss Bay Blvd.')
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address]) VALUES (4, N'Peacock', N'Margaret', 2, N'Sales Representative', N'Mrs.', CAST(N'1937-09-19T00:00:00.000' AS DateTime), CAST(N'1993-05-03T00:00:00.000' AS DateTime), N'4110 Old Redmond Rd.')
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address]) VALUES (5, N'Buchanan', N'Steven', 1, N'Sales Manager', N'Mr.', CAST(N'1955-03-04T00:00:00.000' AS DateTime), CAST(N'1993-10-17T00:00:00.000' AS DateTime), N'14 Garrett Hill')
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address]) VALUES (6, N'Suyama', N'Michael', 2, N'Sales Representative', N'Mr.', CAST(N'1963-07-02T00:00:00.000' AS DateTime), CAST(N'1993-10-17T00:00:00.000' AS DateTime), N'Coventry HouseMiner Rd.')
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address]) VALUES (7, N'King', N'Robert', 1, N'Sales Representative', N'Mr.', CAST(N'1960-05-29T00:00:00.000' AS DateTime), CAST(N'1994-01-02T00:00:00.000' AS DateTime), N'Edgeham HollowWinchester Way')
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address]) VALUES (8, N'Callahan', N'Laura', 1, N'Inside Sales Coordinator', N'Ms.', CAST(N'1958-01-09T00:00:00.000' AS DateTime), CAST(N'1994-03-05T00:00:00.000' AS DateTime), N'4726 - 11th Ave. N.E.')
INSERT [dbo].[Employees] ([EmployeeID], [LastName], [FirstName], [DepartmentID], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address]) VALUES (9, N'Dodsworth', N'Anne', 2, N'Sales Representative', N'Ms.', CAST(N'1966-01-27T00:00:00.000' AS DateTime), CAST(N'1994-11-15T00:00:00.000' AS DateTime), N'7 Houndstooth Rd.')
SET IDENTITY_INSERT [dbo].[Employees] OFF

GO
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10303, 2, 14.7000, 40, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10303, 1, 16.8000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10303, 6, 10.0000, 15, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10327, 2, 15.2000, 25, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10327, 9, 16.8000, 50, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10327, 3, 20.7000, 35, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10327, 34, 10.6000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10337, 11, 7.2000, 40, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10337, 14, 24.9000, 24, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10337, 4, 15.2000, 20, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10337, 17, 20.8000, 28, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10337, 12, 27.8000, 25, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10342, 6, 15.2000, 24, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10342, 1, 10.0000, 56, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10342, 4, 15.2000, 40, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10342, 25, 19.2000, 40, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10347, 34, 11.2000, 10, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10347, 24, 14.4000, 50, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10347, 14, 14.7000, 4, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10347, 23, 6.2000, 6, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10352, 18, 3.6000, 10, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10352, 35, 5.9000, 20, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10366, 15, 16.8000, 5, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10366, 17, 10.4000, 5, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10368, 1, 8.0000, 5, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10368, 14, 36.4000, 13, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10368, 27, 15.6000, 25, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10368, 44, 26.6000, 35, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10378, 25, 17.2000, 6, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10382, 5, 17.0000, 32, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10382, 18, 50.0000, 9, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10382, 9, 99.0000, 14, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10382, 7, 2.0000, 60, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10382, 8, 8.0000, 50, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10386, 2, 3.6000, 15, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10386, 23, 11.2000, 10, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10390, 18, 10.0000, 60, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10390, 33, 14.4000, 40, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10390, 27, 9.6000, 45, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10390, 28, 27.8000, 24, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10394, 23, 4.8000, 10, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10394, 34, 39.4000, 10, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10395, 12, 9.6000, 28, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10395, 18, 26.2000, 70, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10395, 25, 28.8000, 8, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10396, 21, 7.2000, 40, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10396, 31, 17.2000, 60, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10396, 12, 27.8000, 21, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10402, 23, 7.2000, 60, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10402, 19, 35.1000, 65, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10403, 16, 13.9000, 21, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10403, 8, 10.2000, 70, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10408, 4, 20.8000, 10, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10408, 6, 5.9000, 6, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10408, 2, 39.4000, 35, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10414, 18, 7.3000, 18, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10414, 3, 2.0000, 50, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10415, 27, 31.2000, 2, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10415, 3, 2.0000, 20, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10422, 6, 24.9000, 2, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10423, 3, 10.0000, 14, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10423, 9, 44.0000, 20, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10426, 24, 30.4000, 5, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10426, 34, 26.6000, 7, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10430, 17, 31.2000, 45, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10430, 21, 8.0000, 50, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10430, 6, 30.4000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10430, 9, 44.0000, 70, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10434, 21, 16.8000, 6, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10434, 76, 14.4000, 18, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10442, 11, 16.8000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10442, 14, 5.9000, 80, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10442, 26, 13.6000, 60, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10460, 8, 10.0000, 21, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10460, 5, 6.2000, 4, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10464, 4, 17.6000, 16, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10464, 3, 36.8000, 3, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10464, 6, 30.4000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10464, 26, 27.2000, 20, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10476, 5, 19.2000, 2, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10476, 7, 12.0000, 12, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10480, 17, 7.6000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10480, 529, 44.0000, 12, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10486, 11, 16.8000, 5, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10486, 1, 42.4000, 25, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10486, 4, 8.0000, 16, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10488, 5, 44.0000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10488, 7, 12.0000, 20, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10490, 9, 44.0000, 60, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10490, 8, 10.0000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10490, 5, 6.2000, 36, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10491, 4, 15.5000, 15, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10491, 7, 10.4000, 7, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10498, 4, 4.5000, 14, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10498, 43, 18.4000, 5, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10498, 2, 14.0000, 30, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10512, 24, 4.5000, 10, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10512, 6, 12.0000, 9, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10512, 4, 9.5000, 6, NULL)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [SalePrice], [Quantity], [DiscountID]) VALUES (10512, 1, 34.0000, 12, NULL)
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

INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10303, 11, 7, CAST(N'1996-09-11T00:00:00.000' AS DateTime), CAST(N'1996-10-09T00:00:00.000' AS DateTime), CAST(N'1996-09-18T00:00:00.000' AS DateTime), 107.8300, N'Godos Cocina Típica', N'C/ Romero, 33', N'Sevilla', NULL, N'41101', N'Spain')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10327, 5, 2, CAST(N'1996-10-11T00:00:00.000' AS DateTime), CAST(N'1996-11-08T00:00:00.000' AS DateTime), CAST(N'1996-10-14T00:00:00.000' AS DateTime), 63.3600, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', NULL, N'S-844 67', N'Sweden')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10337, 6, 4, CAST(N'1996-10-24T00:00:00.000' AS DateTime), CAST(N'1996-11-21T00:00:00.000' AS DateTime), CAST(N'1996-10-29T00:00:00.000' AS DateTime), 108.2600, N'Frankenversand', N'Berliner Platz 43', N'München', NULL, N'80805', N'Germany')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10342, 6, 4, CAST(N'1996-10-30T00:00:00.000' AS DateTime), CAST(N'1996-11-13T00:00:00.000' AS DateTime), CAST(N'1996-11-04T00:00:00.000' AS DateTime), 54.8300, N'Frankenversand', N'Berliner Platz 43', N'München', NULL, N'80805', N'Germany')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10347, 2, 4, CAST(N'1996-11-06T00:00:00.000' AS DateTime), CAST(N'1996-12-04T00:00:00.000' AS DateTime), CAST(N'1996-11-08T00:00:00.000' AS DateTime), 3.1000, N'Familia Arquibaldo', N'Rua Orós, 92', N'Sao Paulo', N'SP', N'05442-030', N'Brazil')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10352, 9, 3, CAST(N'1996-11-12T00:00:00.000' AS DateTime), CAST(N'1996-11-26T00:00:00.000' AS DateTime), CAST(N'1996-11-18T00:00:00.000' AS DateTime), 1.3000, N'Furia Bacalhau e Frutos do Mar', N'Jardim das rosas n. 32', N'Lisboa', NULL, N'1675', N'Portugal')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10366, 10, 8, CAST(N'1996-11-28T00:00:00.000' AS DateTime), CAST(N'1997-01-09T00:00:00.000' AS DateTime), CAST(N'1996-12-30T00:00:00.000' AS DateTime), 10.1400, N'Galería del gastronómo', N'Rambla de Cataluña, 23', N'Barcelona', NULL, N'8022', N'Spain')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10368, 1, 2, CAST(N'1996-11-29T00:00:00.000' AS DateTime), CAST(N'1996-12-27T00:00:00.000' AS DateTime), CAST(N'1996-12-02T00:00:00.000' AS DateTime), 101.9500, N'Ernst Handel', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10378, 5, 5, CAST(N'1996-12-10T00:00:00.000' AS DateTime), CAST(N'1997-01-07T00:00:00.000' AS DateTime), CAST(N'1996-12-19T00:00:00.000' AS DateTime), 5.4400, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', NULL, N'S-844 67', N'Sweden')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10382, 1, 4, CAST(N'1996-12-13T00:00:00.000' AS DateTime), CAST(N'1997-01-10T00:00:00.000' AS DateTime), CAST(N'1996-12-16T00:00:00.000' AS DateTime), 94.7700, N'Ernst Handel', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10386, 2, 9, CAST(N'1996-12-18T00:00:00.000' AS DateTime), CAST(N'1997-01-01T00:00:00.000' AS DateTime), CAST(N'1996-12-25T00:00:00.000' AS DateTime), 13.9900, N'Familia Arquibaldo', N'Rua Orós, 92', N'Sao Paulo', N'SP', N'05442-030', N'Brazil')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10390, 1, 6, CAST(N'1996-12-23T00:00:00.000' AS DateTime), CAST(N'1997-01-20T00:00:00.000' AS DateTime), CAST(N'1996-12-26T00:00:00.000' AS DateTime), 126.3800, N'Ernst Handel', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10394, 17, 1, CAST(N'1996-12-25T00:00:00.000' AS DateTime), CAST(N'1997-01-22T00:00:00.000' AS DateTime), CAST(N'1997-01-03T00:00:00.000' AS DateTime), 30.3400, N'Hungry Coyote Import Store', N'City Center Plaza 516 Main St.', N'Elgin', N'OR', N'97827', N'USA')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10395, 16, 6, CAST(N'1996-12-26T00:00:00.000' AS DateTime), CAST(N'1997-01-23T00:00:00.000' AS DateTime), CAST(N'1997-01-03T00:00:00.000' AS DateTime), 184.4100, N'HILARION-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'5022', N'Venezuela')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10396, 6, 1, CAST(N'1996-12-27T00:00:00.000' AS DateTime), CAST(N'1997-01-10T00:00:00.000' AS DateTime), CAST(N'1997-01-06T00:00:00.000' AS DateTime), 135.3500, N'Frankenversand', N'Berliner Platz 43', N'München', NULL, N'80805', N'Germany')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10402, 1, 8, CAST(N'1997-01-02T00:00:00.000' AS DateTime), CAST(N'1997-02-13T00:00:00.000' AS DateTime), CAST(N'1997-01-10T00:00:00.000' AS DateTime), 67.8800, N'Ernst Handel', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10403, 1, 4, CAST(N'1997-01-03T00:00:00.000' AS DateTime), CAST(N'1997-01-31T00:00:00.000' AS DateTime), CAST(N'1997-01-09T00:00:00.000' AS DateTime), 73.7900, N'Ernst Handel', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10408, 4, 8, CAST(N'1997-01-08T00:00:00.000' AS DateTime), CAST(N'1997-02-05T00:00:00.000' AS DateTime), CAST(N'1997-01-14T00:00:00.000' AS DateTime), 11.2600, N'Folies gourmandes', N'184, chaussée de Tournai', N'Lille', NULL, N'59000', N'France')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10414, 2, 2, CAST(N'1997-01-14T00:00:00.000' AS DateTime), CAST(N'1997-02-11T00:00:00.000' AS DateTime), CAST(N'1997-01-17T00:00:00.000' AS DateTime), 21.4800, N'Familia Arquibaldo', N'Rua Orós, 92', N'Sao Paulo', N'SP', N'05442-030', N'Brazil')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10415, 17, 3, CAST(N'1997-01-15T00:00:00.000' AS DateTime), CAST(N'1997-02-12T00:00:00.000' AS DateTime), CAST(N'1997-01-24T00:00:00.000' AS DateTime), 0.2000, N'Hungry Coyote Import Store', N'City Center Plaza 516 Main St.', N'Elgin', N'OR', N'97827', N'USA')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10422, 8, 2, CAST(N'1997-01-22T00:00:00.000' AS DateTime), CAST(N'1997-02-19T00:00:00.000' AS DateTime), CAST(N'1997-01-31T00:00:00.000' AS DateTime), 3.0200, N'Franchi S.p.A.', N'Via Monte Bianco 34', N'Torino', NULL, N'10100', N'Italy')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10423, 12, 6, CAST(N'1997-01-23T00:00:00.000' AS DateTime), CAST(N'1997-02-06T00:00:00.000' AS DateTime), CAST(N'1997-02-24T00:00:00.000' AS DateTime), 24.5000, N'Gourmet Lanchonetes', N'Av. Brasil, 442', N'Campinas', N'SP', N'04876-786', N'Brazil')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10426, 10, 4, CAST(N'1997-01-27T00:00:00.000' AS DateTime), CAST(N'1997-02-24T00:00:00.000' AS DateTime), CAST(N'1997-02-06T00:00:00.000' AS DateTime), 18.6900, N'Galería del gastronómo', N'Rambla de Cataluña, 23', N'Barcelona', NULL, N'8022', N'Spain')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10430, 1, 4, CAST(N'1997-01-30T00:00:00.000' AS DateTime), CAST(N'1997-02-13T00:00:00.000' AS DateTime), CAST(N'1997-02-03T00:00:00.000' AS DateTime), 458.7800, N'Ernst Handel', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10434, 5, 3, CAST(N'1997-02-03T00:00:00.000' AS DateTime), CAST(N'1997-03-03T00:00:00.000' AS DateTime), CAST(N'1997-02-13T00:00:00.000' AS DateTime), 17.9200, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', NULL, N'S-844 67', N'Sweden')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10442, 1, 3, CAST(N'1997-02-11T00:00:00.000' AS DateTime), CAST(N'1997-03-11T00:00:00.000' AS DateTime), CAST(N'1997-02-18T00:00:00.000' AS DateTime), 47.9400, N'Ernst Handel', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10460, 5, 8, CAST(N'1997-02-28T00:00:00.000' AS DateTime), CAST(N'1997-03-28T00:00:00.000' AS DateTime), CAST(N'1997-03-03T00:00:00.000' AS DateTime), 16.2700, N'Folk och fä HB', N'Åkergatan 24', N'Bräcke', NULL, N'S-844 67', N'Sweden')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10464, 9, 4, CAST(N'1997-03-04T00:00:00.000' AS DateTime), CAST(N'1997-04-01T00:00:00.000' AS DateTime), CAST(N'1997-03-14T00:00:00.000' AS DateTime), 89.0000, N'Furia Bacalhau e Frutos do Mar', N'Jardim das rosas n. 32', N'Lisboa', NULL, N'1675', N'Portugal')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10476, 16, 8, CAST(N'1997-03-17T00:00:00.000' AS DateTime), CAST(N'1997-04-14T00:00:00.000' AS DateTime), CAST(N'1997-03-24T00:00:00.000' AS DateTime), 4.4100, N'HILARION-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'5022', N'Venezuela')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10480, 4, 6, CAST(N'1997-03-20T00:00:00.000' AS DateTime), CAST(N'1997-04-17T00:00:00.000' AS DateTime), CAST(N'1997-03-24T00:00:00.000' AS DateTime), 1.3500, N'Folies gourmandes', N'184, chaussée de Tournai', N'Lille', NULL, N'59000', N'France')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10486, 16, 1, CAST(N'1997-03-26T00:00:00.000' AS DateTime), CAST(N'1997-04-23T00:00:00.000' AS DateTime), CAST(N'1997-04-02T00:00:00.000' AS DateTime), 30.5300, N'HILARION-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'5022', N'Venezuela')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10488, 6, 8, CAST(N'1997-03-27T00:00:00.000' AS DateTime), CAST(N'1997-04-24T00:00:00.000' AS DateTime), CAST(N'1997-04-02T00:00:00.000' AS DateTime), 4.9300, N'Frankenversand', N'Berliner Platz 43', N'München', NULL, N'80805', N'Germany')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10490, 16, 7, CAST(N'1997-03-31T00:00:00.000' AS DateTime), CAST(N'1997-04-28T00:00:00.000' AS DateTime), CAST(N'1997-04-03T00:00:00.000' AS DateTime), 210.1900, N'HILARION-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'5022', N'Venezuela')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10491, 9, 8, CAST(N'1997-03-31T00:00:00.000' AS DateTime), CAST(N'1997-04-28T00:00:00.000' AS DateTime), CAST(N'1997-04-08T00:00:00.000' AS DateTime), 16.9600, N'Furia Bacalhau e Frutos do Mar', N'Jardim das rosas n. 32', N'Lisboa', NULL, N'1675', N'Portugal')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10498, 16, 8, CAST(N'1997-04-07T00:00:00.000' AS DateTime), CAST(N'1997-05-05T00:00:00.000' AS DateTime), CAST(N'1997-04-11T00:00:00.000' AS DateTime), 29.7500, N'HILARION-Abastos', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'5022', N'Venezuela')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (10512, 2, 7, CAST(N'1997-04-21T00:00:00.000' AS DateTime), CAST(N'1997-05-19T00:00:00.000' AS DateTime), CAST(N'1997-04-24T00:00:00.000' AS DateTime), 3.5300, N'Familia Arquibaldo', N'Rua Orós, 92', N'Sao Paulo', N'SP', N'05442-030', N'Brazil')

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

INSERT INTO Publisher(PublisherName) VALUES(N'NXB Thanh Niên')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB ĐH Kinh tế Quốc dân')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB Công Thương')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB Tài Chính')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB Trẻ')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB Lao động - Xã hội')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB Dân Trí')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB Khoa học và kỹ thuật')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB Thế giới')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB Hội Nhà Văn')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB Hà Nội')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB văn học')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB Kim Đồng')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB Phụ Nữ')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB Đại Học Sư Phạm')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB Tổng hợp TP.HCM')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB Lao động')
INSERT INTO Publisher(PublisherName) VALUES(N'Wordsworth Editions Ltd.')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB Văn hóa - Văn nghệ')
INSERT INTO Publisher(PublisherName) VALUES(N'Tri Thức Trẻ')
INSERT INTO Publisher(PublisherName) VALUES(N'Alpha books')
INSERT INTO Publisher(PublisherName) VALUES(N'BachvietBooks')
INSERT INTO Publisher(PublisherName) VALUES(N'Trí Việt')
INSERT INTO Publisher(PublisherName) VALUES(N'Saigon Books')
INSERT INTO Publisher(PublisherName) VALUES(N'Nhã Nam')
INSERT INTO Publisher(PublisherName) VALUES(N'Skybooks')
INSERT INTO Publisher(PublisherName) VALUES(N'Đinh Tị')
INSERT INTO Publisher(PublisherName) VALUES(N'Bestbooks')
INSERT INTO Publisher(PublisherName) VALUES(N'AZ books')
INSERT INTO Publisher(PublisherName) VALUES(N'Công Ty Cổ Phần Waka')
INSERT INTO Publisher(PublisherName) VALUES(N'Phương Nam')
INSERT INTO Publisher(PublisherName) VALUES(N'NXB Kim Đồng')
INSERT INTO Publisher(PublisherName) VALUES(N'Crabit Kidbooks')
INSERT INTO Publisher(PublisherName) VALUES(N'Muki')
INSERT INTO Publisher(PublisherName) VALUES(N'Huy Hoàng')
INSERT INTO Publisher(PublisherName) VALUES(N'Thái Hà')
INSERT INTO Publisher(PublisherName) VALUES(N'Minh Long')
INSERT INTO Publisher(PublisherName) VALUES(N'1980Books')
INSERT INTO Publisher(PublisherName) VALUES(N'Tân Việt')
INSERT INTO Publisher(PublisherName) VALUES(N'Phúc Minh')
INSERT INTO Publisher(PublisherName) VALUES(N'Marvy')


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
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(1,N'Cuộc Cách Mạng Blockchain',2,1,NULL,2,21,299000,255000,N'Tiếng Việt',N'Nguyệt Minh',N' Bìa mềm',N'16 x 24',N'01/05/2018',508,792.00,NULL,NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(2,N'Rủ Nhau Lên Mạng Đào Vàng',1,1,NULL,2,21,299000,255000,N'Tiếng Việt',N'Minh Thu , Thu Giang',N'Bìa mềm',N'16 x 24','01/07/2018',392,616.00,NULL,NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(3,N'Cuộc Cách Mạng Blockchain',2,1,NULL,2,21,299000,255000,N'Tiếng Việt',N'Nguyệt Minh',N' Bìa mềm',N'16 x 24',N'01/05/2018',508,792.00,NULL,NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(4,N'Bitcoin Thực Hành',3,1,NULL,2,21,299000,255000,N'Tiếng Việt',N'LeVN , Thu Hương',N'Bìa mềm',N'16 x 24',N'01/03/2018',540,704.00,NULL,NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(5,N'Kỹ Năng Bán Hàng Trực Tuyến',4,2,1,3,21,219000,186000,N'Tiếng Việt',NULL,N'Bìa mềm',N'24 x 16 x 1',N'2022',372, 550.00,NULL,NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(6,N'Marketing Đáng Kinh Ngạc',5,2,1,4,22,143000,122000,N'Tiếng Việt',NULL,N'Bìa mềm',N' 20 x 13.5 ',N'01/01/2021',476,700.00,N'-QĐ/BV',NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(7,N'Những Quy Luật Mới Của Bán Hàng Và Dịch Vụ',6,2,1,5,5,180000,153000,N'Tiếng Việt',NULL,N'Bìa mềm',N'23 x 16 x 1.5',N'01/01/2022',392,650.00,NULL,NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(8,N'101 Tình Huống Nhân Sự Nan Giải',7,2,2,6,21,149000,127000,N'Tiếng Việt',N' Nguyễn Đình Viễn , Nhóm dịch VNHR',N'Bìa mềm',N'16 x 24',N'2020-09-15',348,385.00,NULL,NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(9,N'Nghệ Thuật Thôi Miên Nhà Tuyển Dụng',8,2,2,6,21,109000,93000,N'Tiếng Việt',NULL,N'Bìa mềm',N'13 x 20.5',N'01/10/2019',280,308.00,NULL,NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(10,N'Bí Quyết Tuyển Dụng & Đãi Ngộ Người Tài (Tái Bản)',9,2,2,7,23,68000,58000,N'Tiếng Việt',N'Trương Hồng Dũng',N'Bìa mềm',N'20.5 x 14.5 x 1 ',N'01/01/2021',136, 400.00,NULL,NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(11,N'Tài Chính Dành Cho Nhà Quản Lý',10,2,3,8,21,149000,127000,N'Tiếng Việt',NULL,N'Bìa mềm',N' 20.5 x 13 x 0.6',N'01/01/2022',344,550.00,NULL,NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(12,N'Tiền Tệ Và Chuyện Làm Giàu An Toàn',11,2,3,9,24,150000,120000,N'Tiếng Việt',NULL,N'Bìa mềm',N'20.5 x 13 x 0.6',N'01/10/2020',220,242.00,NULL,NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(13,N'Biển Là Trẻ Con',12,3,4,10,25,70000,56000,N'Tiếng Việt',NULL,N'Bìa mềm',N' 20 x 18 ',N'2020-08-19',104,148,NULL,NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(14,N'Tuyển Tập Văn Tế Đại Thi Hào Nguyễn Du',13,3,4,5,5,145000,123000,N'Tiếng Việt',NULL,N'Bìa mềm',N'16 x 24',N'02/10/2020',196,330.00,NULL,NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(15,N'Thần Thoại Bắc Âu',NULL,4,7,1,27,168000,150000,N'Tiếng Việt',N'Lệ Chi',N'Bìa cứng',N' 14.5 x 19.2',N'01/08/2018',280,616.00,NULL,NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(16,N'Truyện Thạch Yêu',20,4,7,11,25,116000,93000,N'Tiếng Việt',N'Đoàn Mai',N'Bìa mềm',N'20.5 x 28.5',N'2020-08-28',70,140.00,NULL,NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(17,N'Tiệm Cắt Tóc Lúc Nửa Đêm',21,4,8,1,29,116000,104000,N'Tiếng Việt',N'Annie',N'Bìa mềm',N'20.5 x 14.5 ',N'01/01/2022',250,550.00 ,N'-QĐ/ThN',NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(18,N'Sữa Và Mật',23,4,4,10,25,108000,92000,N'Tiếng Việt',N'Anh Thư',N'Bìa mềm',N' 14 x 20.5 ',N'12/10/2019',212,220.00,NULL,NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(19,N'Mùa Hái Quả',25,4,4,13,13,20000,20000,N'Tiếng Việt',N'Bùi Xuân',N'Bìa mềm',N'13 x 19',N'01/09/2017',88,110.00,NULL,NULL,NULL,0)
INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(20,N'BKTT Về Các Loại Phương Tiện Giao Thông',28,5,10,1,27,280000,238000,N'Tiếng Việt',N' Thu Trang',N'Bìa mềm',N' 26.7 x 21',N'01/11/2020',256,450.00,NULL,NULL,NULL,0)

INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [SupplierID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(21,N'',,,,,,,,N'Tiếng Việt',N'',N'Bìa mềm',N'',N'',,,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(21,N'Cuộc Cách Mạng Blockchain',2,1,NULL,2,21,299000,255000,N'Tiếng Việt',N'Nguyệt Minh',N' Bìa mềm',N'16 x 24',N'01/05/2018',508,792.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(22,N'Rủ Nhau Lên Mạng Đào Vàng',1,1,NULL,2,21,299000,255000,N'Tiếng Việt',N'Minh Thu , Thu Giang',N'Bìa mềm',N'16 x 24','01/07/2018',392,616.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(23,N'Cuộc Cách Mạng Blockchain',2,1,NULL,2,21,299000,255000,N'Tiếng Việt',N'Nguyệt Minh',N' Bìa mềm',N'16 x 24',N'01/05/2018',508,792.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(24,N'Bitcoin Thực Hành',3,1,NULL,2,21,299000,255000,N'Tiếng Việt',N'LeVN , Thu Hương',N'Bìa mềm',N'16 x 24',N'01/03/2018',540,704.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(25,N'Kỹ Năng Bán Hàng Trực Tuyến',4,2,1,3,21,219000,186000,N'Tiếng Việt',NULL,N'Bìa mềm',N'24 x 16 x 1',N'2022',372, 550.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(26,N'Marketing Đáng Kinh Ngạc',5,2,1,4,22,143000,122000,N'Tiếng Việt',NULL,N'Bìa mềm',N' 20 x 13.5 ',N'01/01/2021',476,700.00,N'-QĐ/BV',NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(27,N'Những Quy Luật Mới Của Bán Hàng Và Dịch Vụ',6,2,1,5,5,180000,153000,N'Tiếng Việt',NULL,N'Bìa mềm',N'23 x 16 x 1.5',N'01/01/2022',392,650.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(28,N'101 Tình Huống Nhân Sự Nan Giải',7,2,2,6,21,149000,127000,N'Tiếng Việt',N' Nguyễn Đình Viễn , Nhóm dịch VNHR',N'Bìa mềm',N'16 x 24',N'2020-09-15',348,385.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(29,N'Nghệ Thuật Thôi Miên Nhà Tuyển Dụng',8,2,2,6,21,109000,93000,N'Tiếng Việt',NULL,N'Bìa mềm',N'13 x 20.5',N'01/10/2019',280,308.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(30,N'Bí Quyết Tuyển Dụng & Đãi Ngộ Người Tài (Tái Bản)',9,2,2,7,23,68000,58000,N'Tiếng Việt',N'Trương Hồng Dũng',N'Bìa mềm',N'20.5 x 14.5 x 1 ',N'01/01/2021',136, 400.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(31,N'Tài Chính Dành Cho Nhà Quản Lý',10,2,3,8,21,149000,127000,N'Tiếng Việt',NULL,N'Bìa mềm',N' 20.5 x 13 x 0.6',N'01/01/2022',344,550.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(32,N'Tiền Tệ Và Chuyện Làm Giàu An Toàn',11,2,3,9,24,150000,120000,N'Tiếng Việt',NULL,N'Bìa mềm',N'20.5 x 13 x 0.6',N'01/10/2020',220,242.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(33,N'Biển Là Trẻ Con',12,3,4,10,25,70000,56000,N'Tiếng Việt',NULL,N'Bìa mềm',N' 20 x 18 ',N'2020-08-19',104,148,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(34,N'Tuyển Tập Văn Tế Đại Thi Hào Nguyễn Du',13,3,4,5,5,145000,123000,N'Tiếng Việt',NULL,N'Bìa mềm',N'16 x 24',N'02/10/2020',196,330.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(35,N'Thần Thoại Bắc Âu',NULL,4,7,1,27,168000,150000,N'Tiếng Việt',N'Lệ Chi',N'Bìa cứng',N' 14.5 x 19.2',N'01/08/2018',280,616.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(36,N'Truyện Thạch Yêu',20,4,7,11,25,116000,93000,N'Tiếng Việt',N'Đoàn Mai',N'Bìa mềm',N'20.5 x 28.5',N'2020-08-28',70,140.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(37,N'Tiệm Cắt Tóc Lúc Nửa Đêm',21,4,8,1,29,116000,104000,N'Tiếng Việt',N'Annie',N'Bìa mềm',N'20.5 x 14.5 ',N'01/01/2022',250,550.00 ,N'-QĐ/ThN',NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(38,N'Sữa Và Mật',23,4,4,10,25,108000,92000,N'Tiếng Việt',N'Anh Thư',N'Bìa mềm',N' 14 x 20.5 ',N'12/10/2019',212,220.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(39,N'Mùa Hái Quả',25,4,4,13,13,20000,20000,N'Tiếng Việt',N'Bùi Xuân',N'Bìa mềm',N'13 x 19',N'01/09/2017',88,110.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(40,N'BKTT Về Các Loại Phương Tiện Giao Thông',28,5,10,1,27,280000,238000,N'Tiếng Việt',N' Thu Trang',N'Bìa mềm',N' 26.7 x 21',N'01/11/2020',256,450.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(41,N'Cuộc Cách Mạng Blockchain',2,1,NULL,2,21,299000,255000,N'Tiếng Việt',N'Nguyệt Minh',N' Bìa mềm',N'16 x 24',N'01/05/2018',508,792.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(42,N'Rủ Nhau Lên Mạng Đào Vàng',1,1,NULL,2,21,299000,255000,N'Tiếng Việt',N'Minh Thu , Thu Giang',N'Bìa mềm',N'16 x 24','01/07/2018',392,616.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(43,N'Cuộc Cách Mạng Blockchain',2,1,NULL,2,21,299000,255000,N'Tiếng Việt',N'Nguyệt Minh',N' Bìa mềm',N'16 x 24',N'01/05/2018',508,792.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(44,N'Bitcoin Thực Hành',3,1,NULL,2,21,299000,255000,N'Tiếng Việt',N'LeVN , Thu Hương',N'Bìa mềm',N'16 x 24',N'01/03/2018',540,704.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(45,N'Kỹ Năng Bán Hàng Trực Tuyến',4,2,1,3,21,219000,186000,N'Tiếng Việt',NULL,N'Bìa mềm',N'24 x 16 x 1',N'2022',372, 550.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(46,N'Marketing Đáng Kinh Ngạc',5,2,1,4,22,143000,122000,N'Tiếng Việt',NULL,N'Bìa mềm',N' 20 x 13.5 ',N'01/01/2021',476,700.00,N'-QĐ/BV',NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(47,N'Những Quy Luật Mới Của Bán Hàng Và Dịch Vụ',6,2,1,5,5,180000,153000,N'Tiếng Việt',NULL,N'Bìa mềm',N'23 x 16 x 1.5',N'01/01/2022',392,650.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(48,N'101 Tình Huống Nhân Sự Nan Giải',7,2,2,6,21,149000,127000,N'Tiếng Việt',N' Nguyễn Đình Viễn , Nhóm dịch VNHR',N'Bìa mềm',N'16 x 24',N'2020-09-15',348,385.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(49,N'Nghệ Thuật Thôi Miên Nhà Tuyển Dụng',8,2,2,6,21,109000,93000,N'Tiếng Việt',NULL,N'Bìa mềm',N'13 x 20.5',N'01/10/2019',280,308.00,NULL,NULL,NULL,0)
--INSERT INTO [dbo].[Products]([ProductID], [ProductName], [AuthorID], [CategoryID], [GenreID], [PublisherID], [ReleaseCompanyID], [CoverPrice], [SalePrice], [Language], [Translator], [Format], [Size], [PublishDate], [NumerOfPage], [Weight], [PublishingLicense], [Image], [Description], [Discontinued])VALUES(50,N'Bí Quyết Tuyển Dụng & Đãi Ngộ Người Tài (Tái Bản)',9,2,2,7,23,68000,58000,N'Tiếng Việt',N'Trương Hồng Dũng',N'Bìa mềm',N'20.5 x 14.5 x 1 ',N'01/01/2021',136, 400.00,NULL,NULL,NULL,0)

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
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitsInStock]  DEFAULT ((0)) FOR [UnitsInStock]
GO
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
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitsInStock] CHECK  (([UnitsInStock]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_UnitsInStock]
GO
--ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitsOnOrder] CHECK  (([UnitsOnOrder]>=(0)))
--GO
--ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_UnitsOnOrder]
--GO
ALTER TABLE [dbo].[Reviews]  WITH NOCHECK ADD  CONSTRAINT [CK_Reviews_Rating] CHECK  (([Rating]>=(1)) AND ([Rating]<=(5)))
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [CK_Reviews_Rating]
GO




------------------------Procedure -------------------

CREATE PROCEDURE createAccount(@CustomerID int, @FirstName nvarchar(50), @LastName nvarchar(50), @ContactTitle nvarchar(50), @DateOfBirth date, @Address nvarchar(50),  @PhoneNumber nvarchar(11),@Email nvarchar(50),@Password nvarchar(50))
AS
BEGIN
    insert into Customers(CustomerID, FirstName , LastName,ContactTitle,DateOfBirth,[Address],PhoneNumber,CreateDate) values(@CustomerID,@FirstName,@LastName,@ContactTitle,@DateOfBirth,@Address,@PhoneNumber,getDate())
	insert into Accounts(Email, [Password],CustomerID,[Role]) values(@Email,@Password,@CustomerID,2)
END;
GO

CREATE PROCEDURE updateAccount(@CustomerID int, @FirstName nvarchar(50), @LastName nvarchar(50), @ContactTitle nvarchar(50), @DateOfBirth date, @Address nvarchar(50),  @PhoneNumber nvarchar(11),@Email nvarchar(50),@Password nvarchar(50))
AS
BEGIN
    UPDATE Customers SET FirstName = @FirstName, LastName = @LastName, ContactTitle=@ContactTitle, DateOfBirth= @DateOfBirth, [Address]=@Address, PhoneNumber= @PhoneNumber  WHERE CustomerID=@CustomerID
	UPDATE Accounts SET [Password] = @Password WHERE Email=@Email
END;
GO

CREATE PROCEDURE OrderAction(
@OrderID int,
@CustomerID int,
@EmployeeID int,
@OrderDate date,
@RequiredDate date,
@ShippedDate date,
@Freight float,
@ShipName nvarchar(50),
@ShipAddress nvarchar(100),
@ShipCity nvarchar(50), 
@ShipRegion nvarchar(50),
@ShipPostalCode nvarchar(50),
@ShipCountry nvarchar(50),
@ProductID int,
@SalePrice float,
@Quantity int,
@DiscountID int)AS
BEGIN
	insert into Orders values(@OrderID,@CustomerID,@EmployeeID,@OrderDate,@RequiredDate,@ShippedDate,@Freight,@ShipName,@ShipAddress,@ShipCity,@ShipRegion,@ShipPostalCode,@ShipCountry)
    insert into [Order Details] values(@OrderID,@ProductID,@SalePrice,@Quantity,@DiscountID)
END;
GO




