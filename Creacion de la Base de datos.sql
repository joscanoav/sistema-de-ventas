create database bd_sistema_ventas;
use bd_sistema_ventas;
-- crear tabla usuarios
create table tb_usuario(
idUsuario int(11) auto_increment primary key,
nombre varchar(30) not null,
apellido varchar(30) not null,
usuario varchar(15) not null,
password varchar(15) not null,
telefono varchar(15) not null,
estado varchar(1) not null
);


-- crear tabla cliente
create table tb_cliente(
idCliente int(11) auto_increment primary key,
nombre varchar(30) not null,
apellido varchar(30) not null,
dni varchar(15) not null,
telefono varchar(15) not null,
direccion varchar(100) not null,
estado varchar(1) not null
);

-- crear tabla categoria
create table tb_categoria(
idCategoria int(11) auto_increment primary key,
descripcion varchar(200) not null,
estado varchar(1) not null
);

-- crear tabla producto
create table tb_producto(
idProducto int(11) auto_increment primary key,
nombre varchar(100) not null,
cantidad int(11) not null,
precio double(10,2) not null,
descripcion varchar(200) not null,
porcentajeIva int(2) not null,
idCategoria int (11) not null,
estado varchar(1) not null
);

-- crear tabla cabecera de venta
create table tb_cabecera_venta(
idCabeceraVenta int(11) auto_increment primary key,
idCliente int(11) not null,
valorPagar double(10,2) not null,
fechaVenta date not null,
estado varchar(1) not null
);

-- crear tabla detalle de venta
create table tb_detalle_venta(
idDetalleVenta int(11) auto_increment primary key,
idCabeceraVenta int(11) not null,
idProducto int(11) not null,
cantidad int(11) not null,
precioUnitario double(10,2) not null,
subtotal double(10,2) not null,
descuento double(10,2) not null,
iva double(10,2) not null,
TotalPagar double(10,2) not null,
estado varchar(1) not null
);

select * from tb_usuario;

show tables;
