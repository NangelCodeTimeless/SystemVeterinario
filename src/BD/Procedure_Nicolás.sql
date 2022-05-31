----====AGREGAR COLUMNA ESTADO A SERVICIO====----

alter table servicio ALTER column precio type float

----====PROCEDIMIENTO PARA LISTAR SERVICIOS====----

CREATE OR REPLACE FUNCTION ListarServicios() returns setof servicio
as
$$
BEGIN
   return QUERY	select * from servicio where estado = true;
 END;
$$ language plpgsql;

----====PROCEDIMIENTO PARA AGREGAR SERVICIOS====----

create OR REPLACE FUNCTION Agregar_Servicio(
	Snombre_servicio text,
	Sdescripcion text,
	Sprecio float,
	Sestado boolean
)  returns void AS $$
begin
	insert into servicio(nombre_servicio, descripcion, precio, estado)
	values (Snombre_servicio, Sdescripcion, Sprecio, Sestado);
end;
$$ LANGUAGE plpgsql VOLATILE   COST 100; 

----====PROCEDIMIENTO PARA ACTUALIZAR SERVICIOS====----

create OR REPLACE FUNCTION Actualizar_Servicio(
	Sid_servicio integer,
	Snombre_servicio text,
	Sdescripcion text,
	Sprecio float
)  returns void AS $$
begin
	update servicio set
	nombre_servicio = Snombre_servicio, 
	descripcion = Sdescripcion,
	precio = Sprecio
	where id_servicio = Sid_servicio;
end;
$$ LANGUAGE plpgsql VOLATILE   COST 100; 

----====PROCEDIMIENTO PARA ELIMINAR SERVICIOS====----

create OR REPLACE FUNCTION Eliminar_Servicio(
	Sid_servicio integer
)  returns void AS $$
begin
	UPDATE servicio  set estado = false
	where id_servicio = Sid_servicio;
end;
$$ LANGUAGE plpgsql VOLATILE   COST 100; 

----====PRUEBAS====----

select ListarServicios()
select Actualizar_Servicio(3, 'BAÑOS', 'SE BAÑA A LOS ANIMALITOS', 30)
select Eliminar_Servicio(2)

----====PROCEDIMIENTO PARA LISTAR TRATAMIENTOS====----

CREATE OR REPLACE FUNCTION Listar_Tratamiento()
returns Table(id_tratamiento INTEGER, dni_p CHARACTER, nombre text, apellido text, tratamiento Text, dianostico Text, proceso_realizar text, tiempo character)
AS $$
BEGIN
	FOR id_tratamiento, dni_p, nombre, apellido, tratamiento, dianostico, proceso_realizar, tiempo IN
		select 
			T.id_tratamiento,
			P.dni_p,
			P.nombre,
			P.apellido,
			T.tratamiento,
			T.dianostico,
			T.proceso_realizar,
			T.tiempo
		from tratamiento as T
		inner join personal as P on P.dni_p = T.dni_p
		WHERE T.estado = true
		LIMIT 10
	    LOOP
		RETURN NEXT;
	    END LOOP;
	 RETURN;
 END;
$$ language plpgsql;

SELECT * FROM tratamiento
SELECT Listar_Tratamiento()

----====PROCEDIMIENTO PARA AGREGAR TRATAMIENTOS====----

CREATE OR REPLACE FUNCTION Agregar_Tratamiento(
	Tdni_p character(8),
	Ttratamiento text,
	Tdianostico text,
	Tproceso_realizar text,	
	Ttiempo character 
)  returns void AS $$
begin
	insert into tratamiento(dni_p, tratamiento, dianostico, proceso_realizar, tiempo)
	values (Tdni_p, Ttratamiento, Tdianostico, Tproceso_realizar, Ttiempo);
end;
$$ LANGUAGE plpgsql VOLATILE   COST 100; 

----====PROCEDIMIENTO PARA MODIFICAR TRATAMIENTOS====----

CREATE OR REPLACE FUNCTION Modificar_Tratamiento(
	Tid_tratamiento integer,
	Ttratamiento text,
	Tdianostico text,
	Tproceso_realizar text,	
	Ttiempo character 
)  returns void AS $$
begin
	update tratamiento set
		tratamiento = Ttratamiento,
		dianostico = Tdianostico,
		proceso_realizar = Tproceso_realizar,
		tiempo = Ttiempo 
	where id_tratamiento = Tid_tratamiento;
end;
$$ LANGUAGE plpgsql VOLATILE   COST 100; 

----====PROCEDIMIENTO PARA ELIMINAR TRATAMIENTOS====----

CREATE OR REPLACE FUNCTION Eliminar_Tratamiento(
	Tid_tratamiento integer
)  returns void AS $$
begin
	update tratamiento set
		estado = false
	where id_tratamiento = Tid_tratamiento;
end;
$$ LANGUAGE plpgsql VOLATILE   COST 100; 

SELECT * FROM tratamiento
SELECT Listar_Tratamiento()
SELECT Agregar_Tratamiento('12345678', 'TRATAMIENTO  DISTEMPER', 'DITEMPER CRONICA', 'COLOCAR VACUNAS', '2 MESES')
SELECT Eliminar_Tratamiento(2)