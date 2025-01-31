USE [RetailStoreManagement]
GO
/****** Object:  Table [dbo].[AgentRetailStore]    Script Date: 12/26/2023 9:23:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentRetailStore](
	[storeID] [varchar](5) NOT NULL,
	[storeName] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[phone] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[storeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyAdmin]    Script Date: 12/26/2023 9:23:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyAdmin](
	[coAdminID] [varchar](5) NOT NULL,
	[adminName] [varchar](255) NULL,
	[adminPassword] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[role] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[coAdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 12/26/2023 9:23:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customerID] [varchar](5) NOT NULL,
	[staffID] [int] NULL,
	[customerName] [varchar](255) NULL,
	[customerPhone] [varchar](10) NULL,
	[customerAddress] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryNote]    Script Date: 12/26/2023 9:23:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryNote](
	[deliveryNoteID] [varchar](5) NOT NULL,
	[coAdminID] [varchar](5) NULL,
	[date] [datetime] NULL,
	[status] [varchar](255) NULL,
	[deliveryAddress] [varchar](255) NULL,
	[storeID] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[deliveryNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodReceive]    Script Date: 12/26/2023 9:23:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodReceive](
	[receivedID] [varchar](5) NOT NULL,
	[coAdminID] [varchar](5) NULL,
	[date] [datetime] NULL,
	[totalPrice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[receivedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 12/26/2023 9:23:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[productID] [varchar](5) NOT NULL,
	[storeID] [varchar](5) NOT NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC,
	[storeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Note]    Script Date: 12/26/2023 9:23:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Note](
	[deliveryNoteID] [varchar](5) NOT NULL,
	[productID] [varchar](5) NOT NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[deliveryNoteID] ASC,
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/26/2023 9:23:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[productID] [varchar](5) NOT NULL,
	[transactionID] [varchar](5) NOT NULL,
	[quantity] [int] NULL,
	[price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC,
	[transactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/26/2023 9:23:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [varchar](5) NOT NULL,
	[coAdminID] [varchar](5) NULL,
	[barcode] [varchar](10) NULL,
	[productName] [varchar](255) NULL,
	[importPrice] [int] NULL,
	[retailPrice] [int] NULL,
	[creationDate] [datetime] NULL,
	[quantity] [int] NULL,
	[category] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 12/26/2023 9:23:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[receivedID] [varchar](5) NOT NULL,
	[productID] [varchar](5) NOT NULL,
	[quantity] [int] NULL,
	[price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[receivedID] ASC,
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesStaff]    Script Date: 12/26/2023 9:23:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesStaff](
	[staffID] [int] IDENTITY(1,1) NOT NULL,
	[storeID] [varchar](5) NULL,
	[stAdminID] [varchar](5) NULL,
	[staffName] [varchar](255) NULL,
	[staffPassword] [varchar](255) NULL,
	[phone] [varchar](10) NULL,
	[email] [varchar](255) NULL,
	[role] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[staffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StoreAdmin]    Script Date: 12/26/2023 9:23:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreAdmin](
	[stAdminID] [varchar](5) NOT NULL,
	[storeID] [varchar](5) NULL,
	[coAdminID] [varchar](5) NULL,
	[adminName] [varchar](255) NULL,
	[adminPassword] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[role] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[stAdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 12/26/2023 9:23:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[transactionID] [varchar](5) NOT NULL,
	[customerID] [varchar](5) NULL,
	[date] [datetime] NULL,
	[totalPrice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[transactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AgentRetailStore] ([storeID], [storeName], [address], [phone]) VALUES (N'ST001', N'SIGMA STORE 1', N'HCM City', N'0234567891')
INSERT [dbo].[AgentRetailStore] ([storeID], [storeName], [address], [phone]) VALUES (N'ST002', N'SIGMA STORE 2', N'HCM City', N'0234567892')
GO
INSERT [dbo].[CompanyAdmin] ([coAdminID], [adminName], [adminPassword], [email], [role]) VALUES (N'CA001', N'Quan Trinh', N'123456', N'quantrinh@gmail.com', N'CompanyAdmin')
GO
INSERT [dbo].[DeliveryNote] ([deliveryNoteID], [coAdminID], [date], [status], [deliveryAddress], [storeID]) VALUES (N'DN001', N'CA001', CAST(N'2023-12-12T00:00:00.000' AS DateTime), N'Pending', N'Phu Yen', N'ST001')
INSERT [dbo].[DeliveryNote] ([deliveryNoteID], [coAdminID], [date], [status], [deliveryAddress], [storeID]) VALUES (N'DN002', N'CA001', CAST(N'2023-12-22T17:16:01.000' AS DateTime), N'Pending', N'TPHCM', N'ST001')
INSERT [dbo].[DeliveryNote] ([deliveryNoteID], [coAdminID], [date], [status], [deliveryAddress], [storeID]) VALUES (N'DN003', N'CA001', CAST(N'2023-12-26T23:36:56.000' AS DateTime), N'Pending', N'HCM City', N'ST001')
GO
INSERT [dbo].[GoodReceive] ([receivedID], [coAdminID], [date], [totalPrice]) VALUES (N'R0001', N'CA001', CAST(N'2023-12-12T00:00:00.000' AS DateTime), 1895076)
INSERT [dbo].[GoodReceive] ([receivedID], [coAdminID], [date], [totalPrice]) VALUES (N'R0002', N'CA001', CAST(N'2024-01-03T23:34:17.000' AS DateTime), 0)
INSERT [dbo].[GoodReceive] ([receivedID], [coAdminID], [date], [totalPrice]) VALUES (N'R0003', N'CA001', CAST(N'2023-12-18T10:37:56.477' AS DateTime), 4868)
GO
INSERT [dbo].[Inventory] ([productID], [storeID], [quantity]) VALUES (N'P0001', N'ST001', 24)
INSERT [dbo].[Inventory] ([productID], [storeID], [quantity]) VALUES (N'P0002', N'ST001', 10)
INSERT [dbo].[Inventory] ([productID], [storeID], [quantity]) VALUES (N'P0003', N'ST001', 5)
GO
INSERT [dbo].[Note] ([deliveryNoteID], [productID], [quantity]) VALUES (N'DN001', N'P0001', 12)
INSERT [dbo].[Note] ([deliveryNoteID], [productID], [quantity]) VALUES (N'DN001', N'P0002', 10)
INSERT [dbo].[Note] ([deliveryNoteID], [productID], [quantity]) VALUES (N'DN001', N'P0003', 5)
INSERT [dbo].[Note] ([deliveryNoteID], [productID], [quantity]) VALUES (N'DN002', N'P0001', 12)
GO
INSERT [dbo].[Product] ([productID], [coAdminID], [barcode], [productName], [importPrice], [retailPrice], [creationDate], [quantity], [category]) VALUES (N'P0001', N'CA001', N'1234567890', N'Iphone 15', 1200, 1500, CAST(N'2023-10-12T00:00:00.000' AS DateTime), 27, N'Smart Phone')
INSERT [dbo].[Product] ([productID], [coAdminID], [barcode], [productName], [importPrice], [retailPrice], [creationDate], [quantity], [category]) VALUES (N'P0002', N'CA001', N'1234567990', N'Iphone 15 Pro', 1300, 1600, CAST(N'2023-12-10T22:17:14.837' AS DateTime), 10, N'Smart Phone')
INSERT [dbo].[Product] ([productID], [coAdminID], [barcode], [productName], [importPrice], [retailPrice], [creationDate], [quantity], [category]) VALUES (N'P0003', N'CA001', N'1234567894', N'Iphone Pro', 1234, 1235, CAST(N'2023-12-11T20:30:18.940' AS DateTime), 5, N'Smart Phone')
INSERT [dbo].[Product] ([productID], [coAdminID], [barcode], [productName], [importPrice], [retailPrice], [creationDate], [quantity], [category]) VALUES (N'P0004', N'CA001', N'1234567898', N'Iphone Vip1', 1500, 1700, CAST(N'2023-12-11T14:23:40.513' AS DateTime), 1234, N'Smart Phone')
INSERT [dbo].[Product] ([productID], [coAdminID], [barcode], [productName], [importPrice], [retailPrice], [creationDate], [quantity], [category]) VALUES (N'P0005', N'CA001', N'1234567896', N'Iphone 123', 1234, 4564, CAST(N'2023-12-11T20:31:04.087' AS DateTime), 14, N'Smart Phone')
INSERT [dbo].[Product] ([productID], [coAdminID], [barcode], [productName], [importPrice], [retailPrice], [creationDate], [quantity], [category]) VALUES (N'P0006', N'CA001', N'1234567893', N'Iphone 16', 1300, 1500, CAST(N'2023-12-11T22:07:37.120' AS DateTime), 12, N'Smart Phone')
INSERT [dbo].[Product] ([productID], [coAdminID], [barcode], [productName], [importPrice], [retailPrice], [creationDate], [quantity], [category]) VALUES (N'P0007', N'CA001', N'1234567892', N'Iphone 16 Pro', 1800, 20000, CAST(N'2023-12-11T22:39:04.650' AS DateTime), 0, N'Smart Phone')
GO
INSERT [dbo].[Receipt] ([receivedID], [productID], [quantity], [price]) VALUES (N'R0001', N'P0001', 5, 6000)
INSERT [dbo].[Receipt] ([receivedID], [productID], [quantity], [price]) VALUES (N'R0001', N'P0002', 4, 5200)
INSERT [dbo].[Receipt] ([receivedID], [productID], [quantity], [price]) VALUES (N'R0001', N'P0003', 2, 2468)
INSERT [dbo].[Receipt] ([receivedID], [productID], [quantity], [price]) VALUES (N'R0001', N'P0004', 1234, 1851000)
INSERT [dbo].[Receipt] ([receivedID], [productID], [quantity], [price]) VALUES (N'R0001', N'P0005', 12, 14808)
INSERT [dbo].[Receipt] ([receivedID], [productID], [quantity], [price]) VALUES (N'R0001', N'P0006', 12, 15600)
INSERT [dbo].[Receipt] ([receivedID], [productID], [quantity], [price]) VALUES (N'R0003', N'P0001', 2, 2400)
INSERT [dbo].[Receipt] ([receivedID], [productID], [quantity], [price]) VALUES (N'R0003', N'P0005', 2, 2468)
GO
SET IDENTITY_INSERT [dbo].[SalesStaff] ON 

INSERT [dbo].[SalesStaff] ([staffID], [storeID], [stAdminID], [staffName], [staffPassword], [phone], [email], [role]) VALUES (1, N'ST001', N'SA001', N'Hung Quan', N'123456', N'0707446029', N'hungquan@gmail.com', N'SalesStaff')
INSERT [dbo].[SalesStaff] ([staffID], [storeID], [stAdminID], [staffName], [staffPassword], [phone], [email], [role]) VALUES (1003, N'ST001', N'SA001', N'Nhi Bao1', N'1234567', N'123456789', N'nhi@gmail.com', N'SalesStaff')
INSERT [dbo].[SalesStaff] ([staffID], [storeID], [stAdminID], [staffName], [staffPassword], [phone], [email], [role]) VALUES (1004, N'ST001', N'SA001', N'Quan Hung', N'123456', N'1234567890', N'quanhung@gmail.com', N'SalesStaff')
INSERT [dbo].[SalesStaff] ([staffID], [storeID], [stAdminID], [staffName], [staffPassword], [phone], [email], [role]) VALUES (1011, N'ST002', N'SA002', N'Hung Quan123', N'123456', N'0707446029', N'hungquan123@gmail.com', N'SalesStaff')
INSERT [dbo].[SalesStaff] ([staffID], [storeID], [stAdminID], [staffName], [staffPassword], [phone], [email], [role]) VALUES (1015, N'ST001', N'SA001', N'Quan Trinh1', N'123456', N'0707446029', N'quantrinh@gmail.com', N'SalesStaff')
INSERT [dbo].[SalesStaff] ([staffID], [storeID], [stAdminID], [staffName], [staffPassword], [phone], [email], [role]) VALUES (2005, N'ST001', N'SA001', N'Quan Trinh', N'123456', N'0707446029', N'quan@gmail.com', N'SalesStaff')
SET IDENTITY_INSERT [dbo].[SalesStaff] OFF
GO
INSERT [dbo].[StoreAdmin] ([stAdminID], [storeID], [coAdminID], [adminName], [adminPassword], [email], [role]) VALUES (N'SA001', N'ST001', N'CA001', N'Bao Nhi', N'123456', N'baonhi@gmail.com', N'StoreAdmin')
INSERT [dbo].[StoreAdmin] ([stAdminID], [storeID], [coAdminID], [adminName], [adminPassword], [email], [role]) VALUES (N'SA002', N'ST002', N'CA001', N'Bao Nhi Vip', N'123456', N'baonhi@gmail.com', N'StoreAdmin')
GO
ALTER TABLE [dbo].[GoodReceive] ADD  CONSTRAINT [df_TotalPrice]  DEFAULT ((0)) FOR [totalPrice]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_creationDate]  DEFAULT (getdate()) FOR [creationDate]
GO
ALTER TABLE [dbo].[SalesStaff] ADD  CONSTRAINT [DF_Role1]  DEFAULT ('SalesStaff') FOR [role]
GO
ALTER TABLE [dbo].[StoreAdmin] ADD  CONSTRAINT [DF_Role]  DEFAULT ('StoreAdmin') FOR [role]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([staffID])
REFERENCES [dbo].[SalesStaff] ([staffID])
GO
ALTER TABLE [dbo].[DeliveryNote]  WITH CHECK ADD FOREIGN KEY([coAdminID])
REFERENCES [dbo].[CompanyAdmin] ([coAdminID])
GO
ALTER TABLE [dbo].[GoodReceive]  WITH CHECK ADD FOREIGN KEY([coAdminID])
REFERENCES [dbo].[CompanyAdmin] ([coAdminID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([storeID])
REFERENCES [dbo].[AgentRetailStore] ([storeID])
GO
ALTER TABLE [dbo].[Note]  WITH CHECK ADD FOREIGN KEY([deliveryNoteID])
REFERENCES [dbo].[DeliveryNote] ([deliveryNoteID])
GO
ALTER TABLE [dbo].[Note]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([transactionID])
REFERENCES [dbo].[Transactions] ([transactionID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([coAdminID])
REFERENCES [dbo].[CompanyAdmin] ([coAdminID])
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD FOREIGN KEY([receivedID])
REFERENCES [dbo].[GoodReceive] ([receivedID])
GO
ALTER TABLE [dbo].[SalesStaff]  WITH CHECK ADD FOREIGN KEY([stAdminID])
REFERENCES [dbo].[StoreAdmin] ([stAdminID])
GO
ALTER TABLE [dbo].[SalesStaff]  WITH CHECK ADD FOREIGN KEY([storeID])
REFERENCES [dbo].[AgentRetailStore] ([storeID])
GO
ALTER TABLE [dbo].[StoreAdmin]  WITH CHECK ADD FOREIGN KEY([coAdminID])
REFERENCES [dbo].[CompanyAdmin] ([coAdminID])
GO
ALTER TABLE [dbo].[StoreAdmin]  WITH CHECK ADD FOREIGN KEY([storeID])
REFERENCES [dbo].[AgentRetailStore] ([storeID])
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD FOREIGN KEY([customerID])
REFERENCES [dbo].[Customer] ([customerID])
GO
/****** Object:  Trigger [dbo].[trgAfterInsertDeliveryNote]    Script Date: 12/26/2023 9:23:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trgAfterInsertDeliveryNote]
ON [dbo].[Note]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @productID varchar(5), @quantity INT, @storeID varchar(5);

    -- Get the productID and quantity from the inserted rows in the Note table
    SELECT @productID = i.productID, @quantity = i.quantity, @storeID = dn.storeID
    FROM inserted i
    INNER JOIN DeliveryNote dn ON i.deliveryNoteID = dn.deliveryNoteID;

    -- Check if the inventory entry already exists for the given product and store
    IF EXISTS (SELECT 1 FROM Inventory WHERE productID = @productID AND storeID = @storeID)
    BEGIN
        -- Update the existing inventory entry
        UPDATE Inventory
        SET quantity = quantity + @quantity
        WHERE productID = @productID AND storeID = @storeID;
    END
    ELSE
    BEGIN
        -- Insert a new inventory entry
        INSERT INTO Inventory (productID, storeID, quantity)
        VALUES (@productID, @storeID, @quantity);
    END
END;
GO
ALTER TABLE [dbo].[Note] ENABLE TRIGGER [trgAfterInsertDeliveryNote]
GO
/****** Object:  Trigger [dbo].[trgAfterInsertDeliveryNote1]    Script Date: 12/26/2023 9:23:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trgAfterInsertDeliveryNote1]
ON [dbo].[Note]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @productID varchar(5), @quantity INT;

    -- Get the productID and quantity from the inserted rows in the Note table
    SELECT @productID = i.productID, @quantity = i.quantity
    FROM inserted i;

    -- Update the quantity in the Product table by subtracting the quantity
    UPDATE Product
    SET quantity = quantity - @quantity
    WHERE productID = @productID;
END;
GO
ALTER TABLE [dbo].[Note] ENABLE TRIGGER [trgAfterInsertDeliveryNote1]
GO
/****** Object:  Trigger [dbo].[calculate_receipt_price]    Script Date: 12/26/2023 9:23:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[calculate_receipt_price]
ON [dbo].[Receipt]
AFTER INSERT
AS
BEGIN
  SET NOCOUNT ON;

  UPDATE r
  SET price = p.importPrice * r.quantity
  FROM Receipt r
  JOIN inserted i ON r.receivedID = i.receivedID
  JOIN Product p ON r.productID = p.productID;
END;
GO
ALTER TABLE [dbo].[Receipt] ENABLE TRIGGER [calculate_receipt_price]
GO
/****** Object:  Trigger [dbo].[trg_CalculateTotalPrice]    Script Date: 12/26/2023 9:23:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_CalculateTotalPrice]
ON [dbo].[Receipt]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    IF (EXISTS (SELECT 1 FROM inserted) OR EXISTS (SELECT 1 FROM deleted))
    BEGIN
        UPDATE gr
        SET totalPrice = 
            (SELECT SUM(r.price) 
             FROM Receipt r
             WHERE r.receivedID = gr.receivedID)
        FROM GoodReceive gr
        WHERE gr.receivedID IN (SELECT DISTINCT receivedID FROM inserted);
    END
END;
GO
ALTER TABLE [dbo].[Receipt] ENABLE TRIGGER [trg_CalculateTotalPrice]
GO
/****** Object:  Trigger [dbo].[trg_UpdateProductQuantity]    Script Date: 12/26/2023 9:23:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_UpdateProductQuantity]
ON [dbo].[Receipt]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE p
    SET p.quantity = p.quantity + i.quantity
    FROM Product p
    INNER JOIN inserted i ON p.productID = i.productID;
END;
GO
ALTER TABLE [dbo].[Receipt] ENABLE TRIGGER [trg_UpdateProductQuantity]
GO
