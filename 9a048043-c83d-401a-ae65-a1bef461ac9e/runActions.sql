
use facescan;

-- Número total de administradores.
SELECT TotalAdmins() AS TotalAdministradores;
-- Últimos 10 administradores
CALL GetLatestAdmins();
-- Nombre de usuario del administrador más reciente
SELECT GetLatestAdminUsername() AS UltimoAdministrador;



-- Número total de registros en Kardex
SELECT TotalKardex() AS TotalRegistros;
-- Últimos 10 registros agregados a Kardex
CALL GetLatestKardex();
-- Nombre del estudiante con la matrícula más reciente
SELECT GetLatestStudentName() AS UltimoEstudiante;



-- Número total de usuarios
SELECT TotalUsers() AS TotalUsuarios;
-- Últimos 10 usuarios agregados
CALL GetLatestUsers();
-- Nombre del usuario más reciente
SELECT GetLatestUserName() AS UltimoUsuario;



-- Número total de acciones registradas
SELECT TotalActions() AS TotalAcciones;
-- Últimas 10 acciones registradas
CALL GetLatestActions();
-- Acción más comúnmente registrada
SELECT MostCommonAction() AS AccionMasComun;


