use prueba_3;
create table docentes(
	DNI_usuario int not null ,
	nombre_usuario varchar(60) not null,
    telefono_usuario varchar(13) not null,
	direccion_usuario varchar(60) not null,
    correo_usuario varchar(60) not null,
    primary key (DNI_usuario)
    );
    
    create table materia(
    id_cod_materia int not null primary key,
    nombre_materia varchar(40) not null unique,
    horario_materia varchar(10) not null,
    salon_asignado_materia varchar(6) not null
    );

	#tabla con incremento
    
    create table horario(
		id_horario int(12) not null auto_increment,
        jornada_materia character(1) not null,
        primary key(id_horario)
    );
    
      create table notas(
		id_notas int(2) not null auto_increment,
        puntuacion_nota character(3) not null,	
        primary key(id_notas)
    )AUTO_INCREMENT=10;horariojornada_materiasjornada_materias
    
    ALTER TABLE horario CHANGE jornada_materia jornada_materias character(1);
    alter table horario change jornada_materias materia character(1);
    alter table docentes rename profesor;
    
    #adicionar columnas a la tabla
    ALTER TABLE materia ADD horario varchar(7), ADD fecha_Finaliacion varchar(7);
    