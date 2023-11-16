# Guardar el nombre del repositorio remoto como una variable
remote=$(git remote)

# Guardar el nombre de la rama actual como una variable
branch=$(git branch --show-current)

# Restablecer el estado del repositorio al último commit
git reset --hard HEAD

# Eliminar los archivos que no están bajo el control de versiones
git clean -f -d

# Obtener los cambios más recientes del repositorio remoto
git pull $remote $branch
