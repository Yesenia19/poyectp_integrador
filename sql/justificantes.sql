DROP TABLE IF EXISTS TBLALUMNO;
CREATE TABLE TBLALUMNO( 
PKMATRICULA_A CHAR(10) NOT NULL,
NOMBRE_A VARCHAR(30) NOT NULL,
APELLIDOP_A VARCHAR(30) NOT NULL,
APELLIDOM_A VARCHAR(30) NOT NULL,
GENERO_A VARCHAR(10) NOT NULL,
EMAIL_A VARCHAR(100) NOT NULL,
TELEFONO_A VARCHAR(10) NOT NULL,
KCARRERA CHAR(10) NOT NULL,
KCOORDINADOR  CHAR(10) NOT NULL,
CONTRASENA BLOB  NOT NULL,
USUARIO CHAR(20) NOT NULL,
KGRUPO CHAR(10)  NOT NULL,
PRIMARY KEY(PKMATRICULA_A));
-- 2
DROP TABLE IF EXISTS TBLPROFESOR;
CREATE TABLE TBLPROFESOR(
	CLAVEPROFESOR CHAR(10)NOT NULL,
	NOMBRE_P VARCHAR(30) NULL,
	APELLIDOP_P VARCHAR(30) NULL,
	APELLIDOM_P VARCHAR(30) NULL,
	KGENERO_P VARCHAR(10) NULL,
	EMAIL_P VARCHAR(100) NULL,
	TELEFONO_P VARCHAR(10) NULL,
	CONTRASENA BLOB  NOT NULL,
	USUARIO  VARCHAR(20)  NOT NULL,
	FKCOORDINADOR CHAR(10)  NOT NULL,
    PRIMARY KEY(CLAVEPROFESOR));
-- 3
DROP TABLE IF EXISTS TBLCOORDINADOR;    
CREATE TABLE TBLCOORDINADOR(
	PKCOORDINADOR CHAR(10)  NOT NULL,
	NOMBRE_C VARCHAR(30) NULL,
	APELLIDOP_C VARCHAR(30)NULL,
	APELLIDOM_C VARCHAR(30) NULL,
	GENERO_C VARCHAR(10)NULL,
	EMAIL_C VARCHAR(100)NULL,
	TEFEFONO_C VARCHAR(10)NULL,
	KCARRERA_C CHAR(10) NOT NULL,
	CONTRASENA BLOB  NOT NULL,
	USUARIO VARCHAR(20) NOT NULL,
	PRIMARY KEY (PKCOORDINADOR)
);
-- 4    
DROP TABLE IF EXISTS TBLGRUPO;    
CREATE TABLE TBLGRUPO(
PKGRUPO CHAR(10) NOT NULL,
GRUPO VARCHAR(50)NULL,
PRIMARY KEY (PKGRUPO));
-- 5
DROP TABLE IF EXISTS TBLCARRERA;        
CREATE TABLE TBLCARRERA(
	PKCARRERA CHAR(10)NOT NULL,
	CARRERA VARCHAR(255)NULL,
	PRIMARY KEY (PKCARRERA));
-- 6    
DROP TABLE IF EXISTS TBLDIA;        
CREATE TABLE TBLDIA(
	PKDIA CHAR(10) NOT NULL,
	DIA VARCHAR(50)NULL,
    PRIMARY KEY (PKDIA));
-- 7    
DROP TABLE IF EXISTS TBLHORA;        
CREATE TABLE TBLHORA(
	PKHORA CHAR(10) NOT NULL,
	HORA VARCHAR(50)NULL,
    PRIMARY KEY (PKHORA));
-- 8
DROP TABLE IF EXISTS TBLMATERIA;        
CREATE TABLE TBLMATERIA(
	PKMATERIA CHAR(10) NOT NULL,
	MATERIA VARCHAR(255)NULL,
    PRIMARY KEY (PKMATERIA));
-- 9
DROP TABLE IF EXISTS TBLMOTIVOJUS;
CREATE TABLE TBLMOTIVOJUS(
	CODMOTIVO CHAR(10 )NOT NULL,
	MOTIVO VARCHAR(255) NULL,
    PRIMARY KEY (CODMOTIVO));	
-- 10
DROP TABLE IF EXISTS TBLRESPUESTAJUS;        
CREATE TABLE TBLRESPUESTAJUS(
	COD_JUSTIFRES CHAR(10)NOT NULL,
	RESPUESTA VARCHAR(10)NOT NULL,
    PRIMARY KEY(COD_JUSTIFRES));
-- 11
DROP TABLE IF EXISTS TBLJUSTIFICANTE;
CREATE TABLE TBLJUSTIFICANTE(
	COD_JUSTIFICANTE INTEGER PRIMARY KEY AUTOINCREMENT, 
	KSOLICITANTE CHAR(10) NOT NULL,
	KCOODINADOR CHAR(10) NOT NULL,
    FECHASOLICITUD VARCHAR(50) NOT NULL,
	KMOTIVO CHAR(10) NOT NULL,
	FECHARESPUESTA DATETIME NULL,
	INICIOJ DATETIME NOT NULL,
	FINALJ DATETIME NULL,
	DESCRIPCION VARCHAR(225) NULL,
    IMAGEN VARCHAR(1000) NULL,
	OBSERVACIONES VARCHAR(1000) NULL,
    KCOD_JUSTIFRES char(10)
    );

-- 12
DROP TABLE IF EXISTS TBLHORARIO;
CREATE TABLE TBLHORARIO(
    COD_HORARIO INTEGER PRIMARY KEY AUTOINCREMENT,
	KGRUPO CHAR(10) NOT NULL,
	KDIA CHAR(10) NOT NULL,
    KHORA CHAR(10) NOT NULL,
    KMATERIA CHAR(10) NOT NULL,
    KCARRERA CHAR(10) NOT NULL,
    KPROFESOR CHAR(10) NOT NULL);        
-- 13
DROP TABLE IF EXISTS TBLJUSTIFICANTEP;        
CREATE TABLE TBLJUSTIFICANTEP(
	KJUSTIFICANTEP  CHAR(10) NOT NULL,
    KDIA CHAR(10) NOT NULL,
    KHORA CHAR(10) NOT NULL,
    KMATERIA CHAR(10) NOT NULL,
    KCARRERA CHAR(10) NOT NULL,
    KPROFESOR CHAR(10) NOT NULL,
    KALUMNO CHAR(10) NOT NULL);
   
    
-- INSERT 
-- TBLGRUPO
INSERT INTO TBLGRUPO (PKGRUPO, GRUPO) VALUES ('TIC31','TECNOLOGIAS DE LA INFORMACION 31');

-- TBLCARRERA 
INSERT INTO TBLCARRERA (PKCARRERA, CARRERA) VALUES ('TICS','TECNOLOGIAS DE LA INFORMACION');
-- INSERT INTO TBLCARRERA (PKCARRERA, CARRERA) VALUES ('INGIND','INGENIERIA INDUSTRIAL');

-- TBLCOORDINADOR
INSERT INTO TBLCOORDINADOR (PKCOORDINADOR, NOMBRE_C, APELLIDOP_C, APELLIDOM_C, GENERO_C, EMAIL_C, TEFEFONO_C, KCARRERA_C, CONTRASENA, USUARIO) 
VALUES ('COORTIC', 'OSCAR', 'RODRIGUEZ', 'FRANCO', 'MASCULINO', 'OSCAR_RO.DRII_GUEZ@HOTMAIL.COM','775-17-50-943', 'TICS', '12345', 'COORDINADOR');

-- TBLPROFESOR
INSERT INTO TBLPROFESOR(CLAVEPROFESOR, NOMBRE_P, APELLIDOP_P, APELLIDOM_P, KGENERO_P, EMAIL_P, TELEFONO_P, CONTRASENA, USUARIO, FKCOORDINADOR) 
VALUES ('331218', 'JORGE ALBERTO', 'HERNANDEZ', 'TAPIA', 'MASCULINO', 'JORGE.HERNANDEZ@UTECTULANCINGO.EDU.MX', '7512577','12345', 'PROFESOR', 'COORTIC');
INSERT INTO TBLPROFESOR(CLAVEPROFESOR, NOMBRE_P, APELLIDOP_P, APELLIDOM_P, KGENERO_P, EMAIL_P, TELEFONO_P, CONTRASENA, USUARIO, FKCOORDINADOR) 
VALUES ('331219', 'NETZER GABRIEL', 'DIAZ', 'JAIME', 'MASCULINO', 'NETZER.DIAZ@UTECTULANCINGO.EDU.MX', '7512578', '12345', 'PROFESOR', 'COORTIC');
INSERT INTO TBLPROFESOR(CLAVEPROFESOR, NOMBRE_P, APELLIDOP_P, APELLIDOM_P, KGENERO_P, EMAIL_P, TELEFONO_P, CONTRASENA, USUARIO, FKCOORDINADOR) 
VALUES ('331220', 'GUADALUPE', 'MARQUEZ', 'ILLESCAS', 'FEMENINO', 'GUADALUPE.MARQUEZ@UTECTULANCINGO.EDU.MX', '7512579', '12345', 'PROFESOR', 'COORTIC');   
INSERT INTO TBLPROFESOR(CLAVEPROFESOR, NOMBRE_P, APELLIDOP_P, APELLIDOM_P, KGENERO_P, EMAIL_P, TELEFONO_P, CONTRASENA, USUARIO, FKCOORDINADOR) 
VALUES ('331221', 'OSCAR', 'LIRA', 'URIBE', 'MASCULINO', 'OSCAR.LIRA@UTECTULANCINGO.EDU.MX', '7513579', '12345', 'PROFESOR', 'COORTIC');     
  INSERT INTO TBLPROFESOR(CLAVEPROFESOR, NOMBRE_P, APELLIDOP_P, APELLIDOM_P, KGENERO_P, EMAIL_P, TELEFONO_P, CONTRASENA, USUARIO, FKCOORDINADOR) 
VALUES ('331222', 'YAZMIN', 'GUTIERREZ', 'VILLEGAS', 'FEMENINO', 'YAZMIN.GUTIERREZ@UTECTULANCINGO.EDU.MX', '7512579', '12345', 'PROFESOR', 'COORTIC');   
INSERT INTO TBLPROFESOR(CLAVEPROFESOR, NOMBRE_P, APELLIDOP_P, APELLIDOM_P, KGENERO_P, EMAIL_P, TELEFONO_P, CONTRASENA, USUARIO, FKCOORDINADOR) 
VALUES ('331223', 'SALVADOR', 'HERNANDEZ', 'MENDOZA', 'MASCULINO', 'SALVADOR.HERNANDEZ@UTECTULANCINGO.EDU.MX', '7512519', '12345', 'PROFESOR', 'COORTIC');     
INSERT INTO TBLPROFESOR(CLAVEPROFESOR, NOMBRE_P, APELLIDOP_P, APELLIDOM_P, KGENERO_P, EMAIL_P, TELEFONO_P, CONTRASENA, USUARIO, FKCOORDINADOR) 
VALUES ('331224', 'VICTOR MANUEL', 'RAMIREZ', 'SOTO', 'MASCULINO', 'VICTOR.RAMIREZ@UTECTULANCINGO.EDU.MX', '7512519','12345', 'PROFESOR', 'COORTIC');     
        
 
    
  
-- TBLALUMNO
INSERT INTO TBLALUMNO (PKMATRICULA_A, NOMBRE_A, APELLIDOP_A , APELLIDOM_A , GENERO_A, EMAIL_A, TELEFONO_A, KCARRERA,  KCOORDINADOR, CONTRASENA, USUARIO, KGRUPO) 
VALUES ('1719110304', 'OSCAR DAVID', 'RODRIGUEZ', 'MARIN', 'MASCULINO','1719110304@UTECTULANCINGO.EDU.MX', '7757512345', 'TICS', 'COORTIC', '12345', 'ALUMNO', 'TIC31');
INSERT INTO TBLALUMNO (PKMATRICULA_A, NOMBRE_A, APELLIDOP_A , APELLIDOM_A , GENERO_A, EMAIL_A, TELEFONO_A, KCARRERA,  KCOORDINADOR, CONTRASENA, USUARIO, KGRUPO) 
VALUES ('1719110305', 'YESENIA', 'OLVERA', 'ANGELES', 'FEMENINO','1719110305@UTECTULANCINGO.EDU.MX', '7757512345', 'TICS', 'COORTIC', '12345', 'ALUMNO', 'TIC31');
INSERT INTO TBLALUMNO (PKMATRICULA_A, NOMBRE_A, APELLIDOP_A , APELLIDOM_A , GENERO_A, EMAIL_A, TELEFONO_A, KCARRERA,  KCOORDINADOR, CONTRASENA, USUARIO, KGRUPO) 
VALUES ('1719110306', 'GUSTAVO', 'PERALTA', 'GUSTAVO', 'MASCULINO','1719110306@UTECTULANCINGO.EDU.MX', '7757512345', 'TICS', 'COORTIC', '12345', 'ALUMNO', 'TIC31');
INSERT INTO TBLALUMNO (PKMATRICULA_A, NOMBRE_A, APELLIDOP_A , APELLIDOM_A , GENERO_A, EMAIL_A, TELEFONO_A, KCARRERA,  KCOORDINADOR, CONTRASENA, USUARIO, KGRUPO) 
VALUES ('1719110307', 'BRANDON', 'BALDERAS', 'LUCAS', 'MASCULINO','1719110307@UTECTULANCINGO.EDU.MX', '7757512345', 'TICS', 'COORTIC', '12345', 'ALUMNO', 'TIC31');

-- TBLDIA
INSERT INTO TBLDIA (PKDIA,DIA) VALUES ('1','LUNES');
INSERT INTO TBLDIA (PKDIA,DIA) VALUES ('2','MARTES');
INSERT INTO TBLDIA (PKDIA,DIA) VALUES ('3','MIERCOLES');
INSERT INTO TBLDIA (PKDIA,DIA) VALUES ('4','JUEVES');
INSERT INTO TBLDIA (PKDIA,DIA) VALUES ('5','VIERNES');
INSERT INTO TBLDIA (PKDIA,DIA) VALUES ('6','SABADO');

-- TBLHORA
INSERT INTO TBLHORA (PKHORA, HORA) VALUES ('1',	'7:00');
INSERT INTO TBLHORA (PKHORA, HORA) VALUES ('2', '8:00');
INSERT INTO TBLHORA (PKHORA, HORA) VALUES ('3', '9:00');
INSERT INTO TBLHORA (PKHORA, HORA) VALUES ('4', '10:00');
INSERT INTO TBLHORA (PKHORA, HORA) VALUES ('5', '11:00');
INSERT INTO TBLHORA (PKHORA, HORA) VALUES ('6', '12:00');
INSERT INTO TBLHORA (PKHORA, HORA) VALUES ('7', '13:00');
INSERT INTO TBLHORA (PKHORA, HORA) VALUES ('8', '14:00');
INSERT INTO TBLHORA (PKHORA, HORA) VALUES ('9', '15:00');
INSERT INTO TBLHORA (PKHORA, HORA) VALUES ('10', '16:00');
INSERT INTO TBLHORA (PKHORA, HORA) VALUES ('11', '17:00');
INSERT INTO TBLHORA (PKHORA, HORA) VALUES ('12', '18:00');
INSERT INTO TBLHORA (PKHORA, HORA) VALUES ('13', '19:00');
INSERT INTO TBLHORA (PKHORA, HORA) VALUES ('14', '20:00');

-- TBLMATERIA

INSERT INTO TBLMATERIA (PKMATERIA, MATERIA) VALUES ('CALDIF','CALCULO DIFERENCIAL');
INSERT INTO TBLMATERIA (PKMATERIA, MATERIA) VALUES ('RPOEST', 'PROBABILIDAD Y ESTADISTICA');
INSERT INTO TBLMATERIA (PKMATERIA, MATERIA) VALUES ('SISOPE','SISTEMAS OPERATIVOS');
INSERT INTO TBLMATERIA (PKMATERIA, MATERIA) VALUES ('INTEGR', 'INTEGRADORA I');
INSERT INTO TBLMATERIA (PKMATERIA, MATERIA) VALUES ('APLWEB', 'APLICACIONES WEB');
INSERT INTO TBLMATERIA (PKMATERIA, MATERIA) VALUES ('BDPWEB', 'BASE DE DATOS PARA WEB');
INSERT INTO TBLMATERIA (PKMATERIA, MATERIA) VALUES ('ING111', 'INGLES III');
INSERT INTO TBLMATERIA (PKMATERIA, MATERIA) VALUES ('FORCUL','FORMACION SOCIO CULTURAL III');
INSERT INTO TBLMATERIA (PKMATERIA, MATERIA) VALUES ('TUTORI', 'TUTORIA');

-- TBLMOTIVOJUS
INSERT INTO TBLMOTIVOJUS (CODMOTIVO, MOTIVO) VALUES ('1', 'SALUD');
INSERT INTO TBLMOTIVOJUS (CODMOTIVO, MOTIVO) VALUES ('2', 'PERDIDA DE LA LIBERTAD');
INSERT INTO TBLMOTIVOJUS (CODMOTIVO, MOTIVO) VALUES ('3', 'COMISION DE TRABAJO');
INSERT INTO TBLMOTIVOJUS (CODMOTIVO, MOTIVO) VALUES ('4', 'COMISION INSTITUCIONAL');
INSERT INTO TBLMOTIVOJUS (CODMOTIVO, MOTIVO) VALUES ('5', 'FALLECIMIENTO DE UN FAMILIAR');
INSERT INTO TBLMOTIVOJUS (CODMOTIVO, MOTIVO) VALUES ('6', 'ACCIDENTE');
INSERT INTO TBLMOTIVOJUS (CODMOTIVO, MOTIVO) VALUES ('7', 'TRAMITES OFICIAL EXTERNO');
INSERT INTO TBLMOTIVOJUS (CODMOTIVO, MOTIVO) VALUES ('8', 'OTRO');

-- TBLRESPUESTAJUS
INSERT INTO TBLRESPUESTAJUS (COD_JUSTIFRES, RESPUESTA) VALUES ('A', 'ACEPTADO');
INSERT INTO TBLRESPUESTAJUS (COD_JUSTIFRES, RESPUESTA) VALUES ('C', 'CANCELADO');
INSERT INTO TBLRESPUESTAJUS (COD_JUSTIFRES, RESPUESTA) VALUES ('E', 'EN ESPERA');
INSERT INTO TBLRESPUESTAJUS (COD_JUSTIFRES, RESPUESTA) VALUES ('R', 'RECHAZADO');


-- LOGIN ALUMNO
-- SELECT * FROM TBLALUMNO WHERE EMAIL_A= '' AND CONTRASENA='';
-- LOGIN COORDINADO
-- SELECT * FROM TBLCOORIDNADOR WHERE EMAIL_C='' AND CONTRAASENA='';
-- LOGIN PROFESOR
-- SELECT * FROM TBLPROFESOR WHERE EMAIL_P='' AND CONTRASENA='';
-- SELECT * FROM TBLHORARIO;

-- LUNES
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '1', '1', 'PROEST', 'TICS', '331219');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '1', '2', 'PROEST', 'TICS', '331219');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '1', '3', 'ING111', 'TICS', '331222');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '1', '4', 'ING111', 'TICS', '331222');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '1', '5', 'BDPWEB', 'TICS', '331224');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '1', '6', 'BDPWEB', 'TICS', '331224');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '1', '7', 'INTEGR', 'TICS', '331219');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '1', '8', 'INTEGR', 'TICS', '331219');
-- MARTES
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '2', '1', 'APLWEB', 'TICS', '331223');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '2', '2', 'APLWEB', 'TICS', '331223');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '2', '3', 'SISOPE', 'TICS', '331221');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '2', '4', 'SISOPE', 'TICS', '331221');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '2', '5', 'ING111', 'TICS', '331222');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '2', '6', 'ING111', 'TICS', '331222');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '2', '7', 'FORCUL', 'TICS', '331220');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '2', '8', 'FORCUL', 'TICS', '331220');

INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '3', '1', 'APLWEB', 'TICS', '331223');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '3', '2', 'APLWEB', 'TICS', '331223');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '3', '3', 'ING111', 'TICS', '331222');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '3', '4', 'ING111', 'TICS', '331222');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '3', '5', 'CALDIF', 'TICS', '331228');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '3', '6', 'CALDIF', 'TICS', '331228');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '3', '7', 'BDPWEB', 'TICS', '331224');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '3', '8', 'BDPWEB', 'TICS', '331224');

INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '4', '1', 'PROEST', 'TICS', '331219');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '4', '2', 'PROEST', 'TICS', '331219');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '4', '3', 'PROEST', 'TICS', '331219');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '4', '4', 'SISOPE', 'TICS', '331221');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '4', '5', 'SISOPE', 'TICS', '331221');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '4', '6', 'CALDIF', 'TICS', '331218');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '4', '7', 'CALDIF', 'TICS', '331218');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '4', '8', 'TUTORI', 'TICS', '331223');

INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '5', '1', 'APLWEB', 'TICS', '331223');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '5', '2', 'APLWEB', 'TICS', '331223');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '5', '3', 'ING111', 'TICS', '331222');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '5', '4', 'SISOPE', 'TICS', '331221');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '5', '5', 'BDPWEB', 'TICS', '331224');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '5', '6', 'BDPWEB', 'TICS', '331224');
INSERT INTO TBLHORARIO (KGRUPO,KDIA,KHORA,KMATERIA,KCARRERA,KPROFESOR) VALUES ('TIC31', '5', '7', 'BDPWEB', 'TICS', '331224');
-- SELECT GRUPO, DIA FROM TBLHORARIO AS T1 INNER JOIN TBLGRUPO AS T2 ON T2.PKGRUPO=T1.KGRUPO INNER JOIN TBLDIA AS T3 ON T3.PKDIA=T1.KDIA