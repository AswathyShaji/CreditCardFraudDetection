USE [db_cdfd]
GO
/****** Object:  Table [dbo].[tbl_withdraw]    Script Date: 03/13/2017 11:47:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_withdraw](
	[withdraw_id] [int] IDENTITY(1,1) NOT NULL,
	[witdraw_date] [date] NOT NULL,
	[withdraw_amount] [nvarchar](50) NOT NULL,
	[a_cardnumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_withdraw] PRIMARY KEY CLUSTERED 
(
	[withdraw_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_validamount]    Script Date: 03/13/2017 11:47:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_validamount](
	[valid_id] [int] IDENTITY(1,1) NOT NULL,
	[a_cardnumber] [nvarchar](50) NOT NULL,
	[valid_amount] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_validamount] PRIMARY KEY CLUSTERED 
(
	[valid_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_userregistration]    Script Date: 03/13/2017 11:47:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_userregistration](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[ufname] [nvarchar](50) NOT NULL,
	[ulname] [nvarchar](50) NOT NULL,
	[uaddress] [nvarchar](50) NOT NULL,
	[ugender] [nvarchar](50) NOT NULL,
	[uemail] [nvarchar](50) NOT NULL,
	[ucontact] [nvarchar](50) NOT NULL,
	[uusername] [nvarchar](50) NOT NULL,
	[upassword] [nvarchar](50) NOT NULL,
	[uquestion] [nvarchar](50) NOT NULL,
	[uanswer] [nvarchar](50) NOT NULL,
	[uimage] [nvarchar](max) NOT NULL,
	[place_id] [int] NOT NULL,
	[a_cardnumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_userregistration] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_subcategory]    Script Date: 03/13/2017 11:47:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_subcategory](
	[subcategory_id] [int] IDENTITY(1,1) NOT NULL,
	[subcategory_name] [nvarchar](50) NOT NULL,
	[category_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_subcategory] PRIMARY KEY CLUSTERED 
(
	[subcategory_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_state]    Script Date: 03/13/2017 11:47:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_state](
	[state_id] [int] IDENTITY(1,1) NOT NULL,
	[state_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_state] PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_purchase_head]    Script Date: 03/13/2017 11:47:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_purchase_head](
	[ph_id] [int] IDENTITY(1,1) NOT NULL,
	[ph_date] [date] NOT NULL,
	[ph_grandtotal] [int] NOT NULL,
	[uid] [int] NOT NULL,
	[ph_billno] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_purchasehead] PRIMARY KEY CLUSTERED 
(
	[ph_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_purchase_details]    Script Date: 03/13/2017 11:47:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_purchase_details](
	[pd_id] [int] IDENTITY(1,1) NOT NULL,
	[ph_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[pd_quantity] [nvarchar](50) NOT NULL,
	[pd_total] [nvarchar](50) NOT NULL,
	[pd_status] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_purchase_details] PRIMARY KEY CLUSTERED 
(
	[pd_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_product]    Script Date: 03/13/2017 11:47:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](50) NOT NULL,
	[brand_id] [int] NOT NULL,
	[subcategory_id] [int] NOT NULL,
	[product_quantity] [nvarchar](50) NOT NULL,
	[product_price] [nvarchar](50) NOT NULL,
	[product_image] [nvarchar](50) NOT NULL,
	[product_descripion] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tbl_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_place]    Script Date: 03/13/2017 11:47:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_place](
	[place_id] [int] IDENTITY(1,1) NOT NULL,
	[place_name] [nvarchar](50) NOT NULL,
	[district_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_place] PRIMARY KEY CLUSTERED 
(
	[place_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_newpassword]    Script Date: 03/13/2017 11:47:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_newpassword](
	[pswd_id] [int] IDENTITY(1,1) NOT NULL,
	[pswd_new] [nvarchar](50) NOT NULL,
	[a_cardnumber] [nchar](10) NULL,
 CONSTRAINT [PK_tbl_newpassword] PRIMARY KEY CLUSTERED 
(
	[pswd_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_district]    Script Date: 03/13/2017 11:47:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_district](
	[district_id] [int] IDENTITY(1,1) NOT NULL,
	[district_name] [nvarchar](50) NOT NULL,
	[state_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_district] PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_deposite]    Script Date: 03/13/2017 11:47:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_deposite](
	[deposite_id] [int] IDENTITY(1,1) NOT NULL,
	[a_cardnumber] [nvarchar](50) NOT NULL,
	[deposite_date] [date] NOT NULL,
	[deposite_amount] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_deposite] PRIMARY KEY CLUSTERED 
(
	[deposite_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_category]    Script Date: 03/13/2017 11:47:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_brand]    Script Date: 03/13/2017 11:47:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_brand](
	[brand_id] [int] IDENTITY(1,1) NOT NULL,
	[brand_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_brand] PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_admin]    Script Date: 03/13/2017 11:47:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[ad_uname] [nvarchar](50) NOT NULL,
	[ad_pswd] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_admin] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_account_details]    Script Date: 03/13/2017 11:47:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_account_details](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[a_fname] [nvarchar](50) NOT NULL,
	[a_amount] [nvarchar](50) NOT NULL,
	[a_cardnumber] [nvarchar](50) NOT NULL,
	[a_lname] [nvarchar](50) NOT NULL,
	[a_address] [nvarchar](50) NOT NULL,
	[a_gender] [nvarchar](50) NOT NULL,
	[a_email] [nvarchar](50) NOT NULL,
	[a_contact] [nvarchar](50) NOT NULL,
	[a_username] [nvarchar](50) NOT NULL,
	[a_password] [nvarchar](50) NOT NULL,
	[a_question] [nvarchar](50) NOT NULL,
	[a_answer] [nvarchar](50) NOT NULL,
	[a_image] [nvarchar](50) NOT NULL,
	[place_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_account_details] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
