

CREATE PROCEDURE SP_Insert_Inmueble
(
@TipoInmueble VARCHAR (20)
)
as
begin
INSERT INTO Inmueble(TipoInmueble)
values (@TipoInmueble)
end


CREATE PROCEDURE SP_Insert_Ubicacion
(
@Provincia VARCHAR (20),
@Canton VARCHAR (20),
@Distrito VARCHAR (50)
)
as
begin
INSERT INTO Ubicacion(Provincia, Canton, Distrito)
values (@Provincia, @Canton, @Distrito)
end

CREATE PROCEDURE SP_Insert_CategoriaAnuncio
(
@NombreAnuncio VARCHAR (10),
@Precio INT,
@DescripcionAnuncio VARCHAR (100)
)
as
begin
INSERT INTO CategoriaAnuncio(NombreAnuncio, Precio,DescripcionAnuncio)
values (@NombreAnuncio, @Precio,@DescripcionAnuncio)
end

CREATE PROCEDURE SP_Insert_PublicoMeta
(
@Genero VARCHAR (20),
@RangoEdad VARCHAR (10),
@Ubicacion VARCHAR (40),
@Ingresos INT
)
as
begin
INSERT INTO PublicoMeta(Genero, RangoEdad, Ubicacion, Ingresos)
values (@Genero, @RangoEdad, @Ubicacion, @Ingresos)
end

CREATE PROCEDURE SP_Insert_Anuncio
(
@Propiedad INT,
@TipoAnuncio INT,
@PublicoMeta INT,
@FechaInicio VARCHAR (20),
@FechaFin VARCHAR (20),
@TarjetaCredito INT
)
as
begin
INSERT INTO Anuncio (Propiedad, TipoAnuncio, PublicoMeta, FechaInicio, FechaFin, TarjetaCredito)
values (@Propiedad, @TipoAnuncio, @PublicoMeta, @FechaInicio, @FechaFin, @TarjetaCredito)
end

CREATE PROCEDURE SP_Insert_Ocupaciones
(
@Ocupacion VARCHAR (15)
)
as
begin
INSERT INTO Ocupaciones(Ocupacion)
values (@Ocupacion)
end

CREATE PROCEDURE SP_Insert_TipoFactura
(
@Tipo VARCHAR (20)
)
as
begin
INSERT INTO TipoFactura(Tipo)
values (@Tipo)
end

CREATE PROCEDURE SP_Insert_Comision
(
@Monto INT
)
as
begin
INSERT INTO Comision(Monto)
values (@Monto)
end

CREATE PROCEDURE SP_Insert_Factura
(
@Cliente INT,
@IDAnuncio INT,
@ClaseFactura INT
)
as
begin
INSERT INTO Factura(Cliente, IDAnuncio, ClaseFactura)
values (@Cliente, @IDAnuncio, @ClaseFactura)
end

CREATE PROCEDURE SP_Insert_Usuario
(
@Nombre VARCHAR (20) ,
@Apellido1 VARCHAR (20) ,
@Apellido2 VARCHAR(20) ,
@FecNaci VARCHAR (10) ,
@Nacionalidad VARCHAR (20) ,
@UbicacionUsuario INT ,
@Ingresos INT,
@Ocupacion INT,
@Correo VARCHAR (20),
@Perfil INT
)
as
begin
INSERT INTO Usuario(Nombre, Apellido1, Apellido2, FecNaci, Nacionalidad, UbicacionUsuario, Ingresos,Ocupacion, Correo,Perfil)
values (@Nombre, @Apellido1, @Apellido2, @FecNaci, @Nacionalidad, @UbicacionUsuario, @Ingresos, @Ocupacion, @Correo, @Perfil)
end

CREATE PROCEDURE SP_Insert_Cuenta
(
@Usuario  VARCHAR (20) ,
@Contrasena VARCHAR (20)
)
as
begin
INSERT INTO Cuenta (Usuario, Contrasena)
values (@Usuario, @Contrasena)
end

CREATE PROCEDURE SP_Insert_Propiedad
(
@Titulo VARCHAR (200),
@Descripcion VARCHAR (300),
@TipoInmueble INT ,
@UbicacionPropiedad VARCHAR (100) ,
@AreaTerreno INT,
@AreaConstruccion INT,
@Habitaciones INT,
@Baños INT,
@TipoPiso INT,
@Parqueos INT,
@Gimnasio VARCHAR (4),
@Piscina VARCHAR(4),
@ParqueoVisitas VARCHAR (4),
@Precio INT ,
@Dueño INT,
@Foto1 IMAGE,
@Foto2 IMAGE,
@Foto3 IMAGE,
@Foto4 IMAGE,
@Foto5 IMAGE
)
as
begin
INSERT INTO Propiedad (Titulo, Descripcion, TipoInmueble, UbicacionPropiedad, AreaTerreno, AreaConstruccion, Habitaciones, Baños, TipoPiso, Parqueos, Gimnasio, Piscina, ParqueoVisitas, Precio, Dueño, Foto1,Foto2, Foto3,  Foto4, Foto5 )
values (@Titulo, @Descripcion, @TipoInmueble, @UbicacionPropiedad, @AreaTerreno, @AreaConstruccion, @Habitaciones, @Baños,@TipoPiso, @Parqueos, @Gimnasio,@Piscina, @ParqueoVisitas, @Precio, @Dueño, @Foto1, @Foto2, @Foto3,  @Foto4, @Foto5)
end

CREATE PROCEDURE SP_Insert_Mensaje
(
@AnuncioLigado INT,
@Remitente INT,
@Destinatario INT,
@Mensaje VARCHAR (400)
)
as
begin
INSERT INTO Mensaje (AnuncioLigado, Remitente, Destinatario, Mensaje)
values (@AnuncioLigado, @Remitente, @Destinatario, @Mensaje)
end

CREATE PROCEDURE SP_Insert_Administradores
(
@IDUsuario INT ,
@FechaIngreso VARCHAR (20)
)
as
begin
INSERT INTO Administradores(IDUsuario, FechaIngreso)
values (@IDUsuario, @FechaIngreso)
end

CREATE PROCEDURE SP_Insert_Perfiles
(
@Perfil VARCHAR (10)
)
as
begin
INSERT INTO Perfiles (Perfil)
values (@Perfil)
end