
create database QuanLyBanDia
go

use QuanLyBanDia
go



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO 

CREATE TABLE [dbo].[tNoiSanXuat](
	[MaNSX] [nvarchar](10) NOT NULL,
	[TenNSX] [nvarchar](100) NULL,
 CONSTRAINT [PK_tNoiSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[tTheLoai](
	[MaTL] [nvarchar](10) NOT NULL,
	[TenTL] [nvarchar](100) NULL,
 CONSTRAINT [PK_tTheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[tNhanVien](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenNV] [nvarchar](100) NULL,
	[GioiTinh] [nvarchar](100) NULL,
	[NgaySinh] date NULL,
	[DienThoai] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[MaCV] [nvarchar](100) NULL,
 CONSTRAINT [PK_tNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
ALTER TABLE tNhanVien
ALTER COLUMN MaCV [nvarchar](10) NULL


CREATE TABLE [dbo].[tCongViec](
	[MaCV] [nvarchar](10) NOT NULL,
	[TenCV] [nvarchar](100) NULL,
 CONSTRAINT [PK_tCongViec] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[tNhaCungCap](
	[MaNCC] [nvarchar](10) NOT NULL,
	[TenNCC] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tNhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[tKhoDia](
	[MaDia] [nvarchar](10) NOT NULL,
	[TenDia] [nvarchar](100) NULL,
	[SoLuong] int NULL,
	[DonGiaBan] float Null,
	[DonGiaNhap] float NULL,
	[MaNSX] [nvarchar](10) NULL,
	[MaTL] [nvarchar](10) NULL,
	[Anh] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](500) NULL,
 CONSTRAINT [PK_tKhoDia] PRIMARY KEY CLUSTERED 
(
	[MaDia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[tChiTietHDB](
	[SoHDB] [nvarchar](10) NOT NULL,
	[MaDia] [nvarchar](10) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[SoHDB] ASC,
	[MaDia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[tChiTietHDN](
	[SoHDN] [nvarchar](10) NOT NULL,
	[MaDia] [nvarchar](10) NOT NULL,
	[SoLuong] int NULL,
	[GiamGia] Float NUll,
	[ThanhTien] float NULL,
 CONSTRAINT [PK_tChiTietHDN] PRIMARY KEY CLUSTERED 
(
	[SoHDN] ASC,
	[MaDia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[tMatHongDia](
	[SoLanMat] [nvarchar](10) NOT NULL,
	[MaDia] [nvarchar](10) NOT NULL,
	[SoLuongMat] [nvarchar](100) NULL,
	[NgayMat] datetime NULL,
 CONSTRAINT [PK_tMatHongDia] PRIMARY KEY CLUSTERED 
(
	[SoLanMat] ASC,
	[MaDia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[tHoaDonBan](
	[SoHDB] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[NgayBan] datetime NULL,
	[MaKH] [nvarchar](10) NULL,
	[TongTien] float NULL,
 CONSTRAINT [PK_tHoaDonBan] PRIMARY KEY CLUSTERED 
(
	[SoHDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
ALTER TABLE tHoaDonBan
ALTER COLUMN [MaNV] [nvarchar](10) NULL

CREATE TABLE [dbo].[tHoaDonNhap](
	[SoHDN] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[NgayNhap] datetime NULL,
	[MaNCC] [nvarchar](10) NULL,
	[TongTien] float NULL,
 CONSTRAINT [PK_tHoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[SoHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE tHoaDonNhap
ALTER COLUMN [MaNV] [nvarchar](10) NULL


CREATE TABLE [dbo].[tKhachHang](
	[MaKH] [nvarchar](10) NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


ALTER TABLE [dbo].[tKhoDia]  WITH CHECK ADD  CONSTRAINT [FK_KhoDia_tNoiSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[tNoiSanXuat] ([MaNSX])
GO

ALTER TABLE [dbo].[tKhoDia]  WITH CHECK ADD  CONSTRAINT [FK_KhoDia_tTheLoai] FOREIGN KEY([MaTL])
REFERENCES [dbo].[tTheLoai] ([MaTL])
GO

ALTER TABLE [dbo].[tNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tNhanVien_tCongViec] FOREIGN KEY([MaCV])
REFERENCES [dbo].[tCongViec] ([MaCV])
GO


ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tKhoDia] FOREIGN KEY([MaDia])
REFERENCES [dbo].[tKhoDia] ([MaDia])
GO

ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tHoaDonBan] FOREIGN KEY([SoHDB])
REFERENCES [dbo].[tHoaDonBan] ([SoHDB])
GO


ALTER TABLE [dbo].[tChiTietHDN]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDN_tKhoDia] FOREIGN KEY([MaDia])
REFERENCES [dbo].[tKhoDia] ([MaDia])
GO

ALTER TABLE [dbo].[tChiTietHDN]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDN_tHoaDonNhap] FOREIGN KEY([SoHDN])
REFERENCES [dbo].[tHoaDonNhap] ([SoHDN])
GO

ALTER TABLE [dbo].[tMatHongDia]  WITH CHECK ADD  CONSTRAINT [FK_tMatHongDia_tKhoDia] FOREIGN KEY([MaDia])
REFERENCES [dbo].[tKhoDia] ([MaDia])
GO

ALTER TABLE [dbo].[tHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tNhanVien] ([MaNV])
GO

ALTER TABLE [dbo].[tHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonBan_tKhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tKhachHang] ([MaKH])
GO

ALTER TABLE [dbo].[tHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonNhap_tNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tNhanVien] ([MaNV])
GO

ALTER TABLE [dbo].[tHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonNhap_tNhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[tNhaCungCap] ([MaNCC])
GO






	--trigger

		--1
		alter trigger UpdateKhoDia
		on tChiTietHDN
		after insert
		as begin
			declare @mahdn nvarchar(10), @madia nvarchar(10),@slkho int, @slnhap int, @dg float
			select @mahdn = SoHDN from inserted
			select @madia = MaDia from inserted
			select @slnhap = SoLuong from inserted
			select @dg = DonGia from inserted

			select @slkho = SoLuong from tKhoDia where MaDia = @madia
		
			update tKhoDia set SoLuong = @slkho + @slnhap where MaDia = @madia
			update tKhoDia set DonGiaNhap = @dg where MaDia = @madia
			update tKhoDia set DonGiaBan = @dg*1.1 where MaDia = @madia
			update tChiTietHDN set ThanhTien = @dg*@slnhap where SoHDN = @mahdn
		end


	-- procedure
	exec USP_GetAlbumList