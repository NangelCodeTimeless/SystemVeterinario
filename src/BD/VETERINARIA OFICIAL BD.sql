USE master
GO

CREATE DATABASE VETERINARIA 
GO
USE VETERINARIA 
GO

IF(DB_ID('CLIENTE')IS NOT NULL)
DROP TABLE CLIENTE 
GO
CREATE TABLE CLIENTE(
DNI CHAR(8) PRIMARY KEY NOT NULL,
NOMBRE VARCHAR(MAX) NOT NULL,
APELLIDOS varchar(MAX)not null,
DIRECCION VARCHAR(MAX) NOT NULL,
TELEFONO CHAR(9) NOT NULL,
SEXO CHAR(1) NOT NULL CHECK(SEXO IN('M','F')),
FECHA_NACIMIENTO DATE NOT NULL,
CORRREO VARCHAR(MAX)NOT NULL,
ESTADO BIT NOT NULL
)
GO

IF(DB_ID('TIPO_MASCOTA')IS NOT NULL)
DROP TABLE TIPO_MASCOTA
GO
CREATE TABLE TIPO_MASCOTA(
ID_TIPOMASCOTA INT IDENTITY(1,1) PRIMARY KEY,
DESCRIPCION VARCHAR(MAX)
)
GO

IF(DB_ID('MASCOTA')IS NOT NULL)
DROP TABLE MASCOTA
GO
CREATE TABLE MASCOTA (
ID_MASCOTA INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
NOMBRE_M VARCHAR(50) NOT NULL,
DNI char(8) REFERENCES CLIENTE NOT NULL,
GENERO CHAR(10) NOT NULL ,
COLOR VARCHAR(15) NOT NULL,
RAZA VARCHAR(30) NOT NULL,
FECHA_NACIMIENTO DATE,
ESTADO BIT NOT NULL
)
GO

IF(DB_ID('PERSONAL')IS NOT NULL)
DROP TABLE PERSONAL
GO
CREATE TABLE PERSONAL(
DNI_P CHAR(8) PRIMARY KEY NOT NULL,
NOMBRE VARCHAR(MAX) NOT NULL,
APELLIDO varchar(MAX)not null,
FECHA_VENCIMIENTO DATE NOT NULL,
TELEFONO CHAR(9) NOT NULL,
DIRECCION VARCHAR(MAX) NOT NULL,
SEXO CHAR(1) NOT NULL,
ESTADO BIT NOT NULL)
GO


IF(DB_ID('TIPO_PRODUCTO')IS NOT NULL)
DROP TABLE TIPO_PRODUCTO
GO
CREATE TABLE TIPO_PRODUCTO(
	ID_TIPOPRODUCTO INT PRIMARY KEY IDENTITY (1,1) NOT NULL, 
	TIPO VARCHAR(MAX) NOT NULL, 
	DESCRIPCION VARCHAR(MAX) NOT NULL
)
GO

IF(DB_ID('PRODUCTO')IS NOT NULL)
DROP TABLE PRODUCTO
GO
CREATE TABLE PRODUCTO(
ID_PRODUCTO INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
NOMBRE VARCHAR(50) NOT NULL,
DESCRIPCION VARCHAR(50) NOT NULL,
PRECIO_VENTA DECIMAL(6,2) NOT NULL,
ID_TIPOPRODUCTO INT REFERENCES TIPO_PRODUCTO NOT NULL,
FECHA_REGISTRO DATE NOT NULL,
FECHA_VENCIMIENTO DATE NOT NULL,
ESTADO BIT
)
GO

IF(DB_ID('PRECIO')IS NOT NULL)
DROP TABLE PRECIO
GO
CREATE TABLE PRECIO(
	ID_PRECIO INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	ID_PRODUCTO INT REFERENCES PRODUCTO NOT NULL,
	FECHA DATE NOT NULL,
	MONTO DECIMAL(6,2) NOT NULL,
	TIPO_MONEDA VARCHAR(50)
)
GO


IF(DB_ID('PROVEEDOR')IS NOT NULL)
DROP TABLE PROVEEDOR
GO
CREATE TABLE PROVEEDOR(
ID_PROV INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
RAZON_SOCIAL VARCHAR(MAX) NOT NULL,
RUC CHAR(11) NOT NULL,
TELEFONO CHAR(9) NOT NULL,
DIRECCION VARCHAR(MAX) NOT NULL,
EMAIL VARCHAR(50),
ESTADO BIT,
)
GO

IF(DB_ID('KARDEX')IS NOT NULL)
DROP TABLE KARDEX
GO
CREATE TABLE KARDEX(
	ID_KARDEX INT PRIMARY KEY IDENTITY (1,1) NOT NULL, 
	SERIE VARCHAR(11) NOT NULL, 
	FECHA_REGISTRO DATE NOT NULL,
	STOCK INT,
	ESTADO BIT,
	ID_PRODUCTO INT REFERENCES PRODUCTO NOT NULL
)
GO

IF(DB_ID('ORDEN_REPOSICION')IS NOT NULL)
DROP TABLE ORDEN_REPOSICION
GO
CREATE TABLE ORDEN_REPOSICION(
ID_ORDENREPOSICION INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
DESCRIPCION VARCHAR(30) NOT NULL,
ID_KARDEX INT REFERENCES KARDEX NOT NULL,
FECHA DATE NOT NULL
)
GO

IF(DB_ID('ORDEN_COMPRA')IS NOT NULL)
DROP TABLE ORDEN_COMPRA
GO
CREATE TABLE ORDEN_COMPRA(
ID_ORDENCOMPRA INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
NUM_DOCU VARCHAR(20) NOT NULL,
FECHA_INGRESO DATE NOT NULL,
FECHA_COMPRA DATE NOT NULL,
PRECIO_UNITARIO DECIMAL,
CANTIDAD INT NOT NULL,
DESCUENTO DECIMAL,
SUBTOTAL DECIMAL NOT NULL,
IGV DECIMAL(6,2) NOT NULL,
TOTAL DECIMAL NOT NULL,
FORMA_PAGO VARCHAR(20) NOT NULL,
MONEDA VARCHAR(20) NOT NULL,
ID_PROV INT REFERENCES PROVEEDOR NOT NULL,
USUARIO VARCHAR(MAX)
)
GO

IF(DB_ID('DETALLE_COMPRA')IS NOT NULL)
DROP TABLE DETALLE_COMPRA
GO
CREATE TABLE DETALLE_COMPRA(
ID_DETALLEREPOSICION INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
ID_ORDENREPOSICION INT REFERENCES ORDEN_REPOSICION NOT NULL,
ID_ORDENCOMPRA INT REFERENCES ORDEN_COMPRA NOT NULL,
CANTIDAD INT
)
GO


IF(DB_ID('TIPO_USUARIO')IS NOT NULL)
DROP TABLE TIPO_USUARIO
GO
CREATE TABLE TIPO_USUARIO(
	ID_TIPOUSUARIO INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	DESCRIPCION VARCHAR(150)
)
GO

IF(DB_ID('USUARIO')IS NOT NULL)
DROP TABLE USUARIO
GO
create TABLE USUARIO (
ID_USUARIO INT IDENTITY(1,1) PRIMARY KEY NOT NULL, 
DNI_P CHAR(8) REFERENCES PERSONAL not null,
USUARIO VARCHAR(30)NOT NULL,
CONTRASENIA VARCHAR(50)NOT NULL,
ID_TIPOUSUARIO INT REFERENCES TIPO_USUARIO NOT NULL,
ESTADO BIT NOT NULL
)
GO

IF(DB_ID('PERMISO')IS NOT NULL)
DROP TABLE PERMISO
GO
CREATE TABLE PERMISO(
	ID_PERMISO INT PRIMARY KEY IDENTITY(1,1)NOT NULL,
	MODULO VARCHAR(50) NOT NULL,
	DESCRIPCION VARCHAR(50) NOT NULL,
	ESTADO BIT NOT NULL
)
GO

IF(DB_ID('ASIGNAR_PERMISO')IS NOT NULL)
DROP TABLE ASIGNAR_PERMISO
GO
CREATE TABLE ASIGNAR_PERMISO(
	ID_PERMISO INT REFERENCES PERMISO NOT NULL,
	ID_TIPOUSUARIO INT REFERENCES TIPO_USUARIO NOT NULL,
	ESTADO BIT NOT NULL	
)
GO

IF(DB_ID('CONTROL_VACUNAS')IS NOT NULL)
DROP TABLE CONTROL_VACUNAS
GO
CREATE TABLE CONTROL_VACUNAS(
ID_CV INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
ID_PRODUCTO INT REFERENCES PRODUCTO NOT NULL,
ID_MASCOTA INT REFERENCES MASCOTA NOT NULL,
DNI_P CHAR(8) REFERENCES PERSONAL NOT NULL,
DESCRIPCION VARCHAR(MAX) NULL,
FECHA DATE NOT NULL,
PROX_V DATE)
GO

IF(DB_ID('CONSULTA')IS NOT NULL)
DROP DATABASE CONSULTA
GO
CREATE TABLE CONSULTA(
ID_CONSULTA INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
DNI_P CHAR(8) REFERENCES PERSONAL NOT NULL,
ID_MASCOTA INT REFERENCES MASCOTA NOT NULL,
MOTIVO VARCHAR(MAX)NOT NULL,
SINTOMAS VARCHAR(MAX)NOT NULL,
HORA TIME NOT NULL,
FECHA DATE NOT NULL)
GO

IF(DB_ID('TRATAMIENTO')IS NOT NULL)
DROP TABLE TRATAMIENTO
GO
CREATE TABLE TRATAMIENTO(
ID_TRATAMIENTO INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
DNI_P CHAR(8) REFERENCES PERSONAL NOT NULL,
TRATAMIENTO VARCHAR(MAX),
DIANOSTICO VARCHAR(MAX),
PROCESO_REALISAR VARCHAR(MAX),
TIEMPO VARCHAR(50)
)
GO

IF(DB_ID('HISTORIA_CLINICA')IS NOT NULL)
DROP TABLE HISTORIA_CLINICA
GO
CREATE TABLE HISTORIA_CLINICA(
ID_HISTORIA INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
ID_MASCOTA INT REFERENCES MASCOTA NOT NULL,
ID_TRATA INT REFERENCES TRATAMIENTO NOT NULL,
OBSERVACIONES VARCHAR(MAX) NOT NULL,
TEMPERATURA CHAR(10)NOT NULL,
PESO CHAR(5) NOT NULL,
ANTECEDENTES VARCHAR(MAX)NOT NULL,
FECHA DATE NOT NULL )
GO

IF(DB_ID('SERVICIO')IS NOT NULL)
DROP TABLE  SERVICIO
GO
CREATE TABLE SERVICIO(
ID_SERVICIO INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
NOMBRE_SERVICIO VARCHAR(MAX) NOT NULL,
DESCRIPCION VARCHAR(MAX) NOT NULL
)
GO

IF(DB_ID('DETALLE_SERVICIO')IS NOT NULL)
DROP TABLE DETALLE_SERVICIO
GO
CREATE TABLE DETALLE_SERVICIO(
ID_DESER INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
ID_SERVICO INT REFERENCES SERVICIO,
ID_MASCOTA INT REFERENCES MASCOTA,
PRECIO DECIMAL(18,2),
DESCRIPCION VARCHAR(MAX) NOT NULL,
FECHA DATE NOT NULL,)
GO

IF(DB_ID('PAGO')IS NOT NULL)
DROP TABLE PAGO
GO
CREATE TABLE PAGO(
ID_PAGO INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
ID_DESER INT REFERENCES DETALLE_SERVICIO NOT NULL,
DNI CHAR(8) REFERENCES CLIENTE NOT NULL,
ID_USUARIO INT REFERENCES USUARIO,
TOTAL DECIMAL(18,2),
FECHA DATE)
GO

/*IF(DB_ID('VENTA')IS NOT NULL)
DROP TABLE VENTA
GO*/
CREATE TABLE VENTA (
ID_VENTA VARCHAR(10) PRIMARY KEY NOT NULL,-- IDENTITY(1,1) PRIMARY KEY NOT NULL,
DNI CHAR(8) REFERENCES CLIENTE NOT NULL,
ID_USUARIO INT  REFERENCES USUARIO NOT NULL,
DOCUMENTO CHAR(10) CHECK (DOCUMENTO IN('BOLETA','FACTURA')),
FECHA DATE NOT NULL,
TOTAL DECIMAL(18,2)NOT NULL)
GO

IF(DB_ID('DETALLE_VENTA')IS NOT NULL)
DROP TABLE DETALLE_VENTA
GO
CREATE TABLE DETALLE_VENTA (
ID_DETAVENTA INT IDENTITY(1,1) PRIMARY KEY, 
ID_PRODUCTO INT REFERENCES PRODUCTO NULL,
ID_VENTA VARCHAR(10) REFERENCES VENTA,
CANTIDAD INT NULL,
PRECIO DECIMAL(18,2) NULL)
GO