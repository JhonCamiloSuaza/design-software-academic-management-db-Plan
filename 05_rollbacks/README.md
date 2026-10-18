# Rollbacks manuales — `academic-management-service`
 
> Esta carpeta NO se ejecuta automáticamente. No está incluida en
> `changelog-master.yaml`. Es documentación de referencia para reversión
> manual, con autorización, en caso de necesitarse deshacer el módulo en un
> ambiente (por ejemplo, si algo salió mal en `staging` antes de llegar a
> `main`).
 
## Orden de ejecución si se necesita revertir TODO el módulo
 
1. `02_dml/0001-delete-seed-data.sql` — primero, borra los datos semilla
2. `01_ddl/0001-drop-all-tables.sql` — después, elimina las tablas vacías
3. `03_dcl/README.md` y `04_tcl/README.md` — no requieren acción, solo
   documentan por qué
**Nunca se ejecuta al revés** — si intentas borrar las tablas mientras
todavía tienen filas de otras tablas apuntándoles por FK, PostgreSQL lo
rechaza.
 
## Cuándo usar esto
 
- Un ambiente (`develop`, `qa`, `staging`) quedó en un estado inconsistente y
  se decide reconstruir el módulo desde cero
- Se necesita limpiar datos de prueba antes de promover a un ambiente
  superior
- Un `update` de Liquibase aplicó algo que se necesita deshacer y no hay
  changeset de rollback automático definido para ese changeset específico
## Cuándo NO usar esto
 
- Para corregir un solo valor mal sembrado — eso va en
  `02_dml/01_updates/` como un changeset nuevo, no aquí
- Como parte de un flujo normal de desarrollo — esto es para
  incidentes/reconstrucciones, no para el día a día
 