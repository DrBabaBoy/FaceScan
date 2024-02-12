import subprocess

user = "root"
password = "genesisxv"
bd = "facescan"

rrp = "C:/MySQLBackup/respaldo_0.sql"

# Borrar la base de datos existente
comando_borrar = f'\"C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysql.exe\" -u {user} -p{password} -e "DROP DATABASE IF EXISTS {bd}"'
subprocess.run(comando_borrar, shell=True)

# Crear una nueva base de datos
comando_crear = f'\"C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysql.exe\" -u {user} -p{password} -e "CREATE DATABASE {bd}"'
subprocess.run(comando_crear, shell=True)

# Importar el respaldo a la nueva base de datos
comando_importar = f'\"C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysql.exe\" -u {user} -p{password} {bd} < {rrp}'
subprocess.run(comando_importar, shell=True)

print(f"Base de datos {bd} recreada e importado el respaldo desde {rrp}")
