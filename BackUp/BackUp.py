import subprocess
import os

user = "root"
password = "genesisxv"
bd = "facescan"

dir_respaldo = "C:/MySQLBackup"

num_respaldo = len([nombre for nombre in os.listdir(dir_respaldo) if os.path.isfile(os.path.join(dir_respaldo, nombre))])

rrp = os.path.join(dir_respaldo, f"respaldo_{num_respaldo}.sql")

comando = f'\"C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin\\mysqldump.exe\" -u {user} -p{password} {bd} > {rrp}'
subprocess.run(comando, shell=True)

print(f"Respaldo creado en {rrp}")
