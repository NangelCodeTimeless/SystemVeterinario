--------------------LOGEO------------------------------------------------------------------------------------------------------------
create OR REPLACE FUNCTION logeo(in _usuario character(30),in _contrasenia character(50))
returns setof usuario AS $$
BEGIN
      return QUERY select * from usuario where usuario=_usuario and contrasenia=MD5(_contrasenia) and estado=true;
end;$$
 LANGUAGE plpgsql VOLATILE
  COST 100;



-------------------LISTADO PERSONAL----------------------------------------------------------------------------------------------------
create OR REPLACE FUNCTION listado_personal()
returns setof personal AS $$
BEGIN
      return QUERY select * from personal where  estado=true;
end;$$
 LANGUAGE plpgsql VOLATILE
  COST 100;


-------------------BUSCAR PERSONAL--------------------------------------------------------------------------------------------------

create OR REPLACE FUNCTION buscar_personal(in _buscar text)
returns setof personal AS $$
BEGIN
      return QUERY select * from personal where nombre ilike concat('%',_buscar,'%') or apellido ilike concat('%',_buscar,'%') and estado=true;
end;$$
 LANGUAGE plpgsql VOLATILE
  COST 100;


-------------------ELIMINAR PERSONAL------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION eliminar_personal(_DNI CHARACTER) 
RETURNS VOID AS $$
BEGIN 
	UPDATE PERSONAL SET estado= false WHERE dni_p= _DNI;
END;$$ 
 LANGUAGE plpgsql VOLATILE
  COST 100;

------------------------AGREGAR PERSONAL -----------------------------------------------------------------------------------------------

create OR REPLACE FUNCTION agregar_personal(
	in _Tdni_p CHARACTER(8),
	in _Tnombre text,
	in _Tapellido text, 
	in _Tfecha date,
	in _Ttelefono CHARACTER(9), 
	in _Tdireccion text, 
	in _Tsexo CHARACTER(1)
) returns void AS $$
BEGIN

	INSERT INTO personal(dni_p, nombre, apellido, fecha_nacimiento, telefono, direccion,sexo, estado)
	VALUES (_Tdni_p, _Tnombre, _Tapellido, _Tfecha, _Ttelefono, _Tdireccion, _Tsexo, true);
END;
$$ LANGUAGE plpgsql 
VOLATILE
  COST 100; 

  SELECT agregar_personal('05323623', 'NICOLAS', 'FLORES TELLO', '20-08-2010', '959545646', 'LAS MORAS #786', 'M')

  select * from personal
 

------------------------ACTUALIZAR PERSONAL -----------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION actualizar_personal(
	in _Tdni_p CHARACTER(9),
	in _Tnombre text,
	in _Tapellido text, 
	in _Tfecha date,
	in _Ttelefono CHARACTER(9), 
	in _Tdireccion text, 
	in _Tsexo CHARACTER(1)
) RETURNS void AS $$
BEGIN
	UPDATE PERSONAL SET 
		nombre= _Tnombre, 
		apellido= _Tapellido, 
		fecha_nacimiento= _Tfecha,
		telefono= _Ttelefono,
		direccion= _Tdireccion, 
		sexo= _Tsexo 
	WHERE dni_p= _Tdni_p;
END;
$$ LANGUAGE plpgsql VOLATILE
  COST 100; 


  ------------------LISTADO CLIENTE----------------------------------------------------------------------------------------------------
create OR REPLACE FUNCTION listado_cliente()
returns setof cliente AS $$
BEGIN
      return QUERY select * from cliente where  estado=true order by apellidos;
end;$$
 LANGUAGE plpgsql VOLATILE
  COST 100;

select * from listado_cliente();


-------------------BUSCAR CLIENTE--------------------------------------------------------------------------------------------------

create OR REPLACE FUNCTION buscar_cliente(in buscar text)
returns setof cliente AS $$
BEGIN
      return QUERY select * from cliente where estado=true and ((nombre ilike concat('%',buscar,'%')) or (apellidos ilike concat('%',buscar,'%')) or (dni ilike concat('%',buscar,'%')));
end;$$
 LANGUAGE plpgsql VOLATILE
  COST 100;

  

-------------------ELIMINAR CLIENTE------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION eliminar_cliente(_DNI CHARACTER) 
RETURNS VOID AS $$
BEGIN 
 UPDATE cliente SET estado= false WHERE dni= DNI;
END;$$ 
 LANGUAGE plpgsql VOLATILE
  COST 100;



------------------------AGREGAR CLIENTE -----------------------------------------------------------------------------------------------

create OR REPLACE FUNCTION agregar_cliente(
 in Tdni CHARACTER(8),
 in Tnombre text,
 in Tapellidos text,
 in Tdireccion text, 
 in Ttelefono CHARACTER(9), 
 in Tsexo CHARACTER(1),
 in Tfecha date,
 in T_Correo text
) returns void AS $$
BEGIN

 INSERT INTO cliente(dni, nombre, apellidos, direccion, telefono,sexo, fecha_nacimiento, correo, estado)
 VALUES (_Tdni, Tnombre, Tapellidos, Tdireccion, Ttelefono, Tsexo, Tfecha,T_Correo,true);
END;
$$ LANGUAGE plpgsql 
VOLATILE
  COST 100; 

  

select * from usuario;
 

------------------------ACTUALIZAR CLIENTE -----------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION actualizar_cliente(
 in Tdni CHARACTER(8),
 in Tnombre text,
 in Tapellidos text,
 in Tdireccion text, 
 in Ttelefono CHARACTER(9), 
 in Tsexo CHARACTER(1),
 in Tfecha date,
 in T_Correo text
) RETURNS void AS $$
BEGIN
 UPDATE Cliente SET 
  nombre = Tnombre,
  apellidos = Tapellidos,
  direccion = Tdireccion, 
  telefono = Ttelefono, 
  sexo = Tsexo,
  fecha_nacimiento = Tfecha,
  correo = T_Correo
 WHERE dni= Tdni;
END;
$$ LANGUAGE plpgsql VOLATILE
  COST 100; 






