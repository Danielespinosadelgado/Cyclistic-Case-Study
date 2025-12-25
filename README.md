# Análisis de Caso: Cyclistic Bike-Share 🚴

**Autor:** Daniel Espinosa
**Herramientas:** SQL (BigQuery), Power BI.

## 1. Introducción
Proyecto Capstone del Certificado de Google Data Analytics. El objetivo es analizar cómo difiere el uso de bicicletas entre los miembros anuales y los ciclistas casuales para diseñar una nueva estrategia de marketing.

## 2. El Dashboard Final
!Dashboard.(Dashboard_Preview.png)
*(Arriba se muestra una vista estática. Descarga el archivo .pbix para interactuar)*

## 3. Metodología
* **Limpieza de Datos:** Se procesaron 12 meses de datos históricos (+5 millones de filas). Se eliminaron viajes negativos y nulos usando SQL.
* **Análisis:** Se descubrió que los usuarios casuales usan el servicio un 83% más de tiempo por viaje que los miembros.

## 4. Archivos en este repositorio
* **Cyclistic_Cleaned.sql:** Código utilizado para limpiar el dataset en BigQuery.
* **Dia de la Semana.sql:** Código utilizado para analizar que grupo utiliza más la bicicleta en la semana en BigQuery.
* **Hora de Viaje.sql:** Código utilizado para analizar que hora son picos en la utilización de la bicicleta en BigQuery.
* **Promedio de viaje.sql:** Código utilizado para analizar cuanto usan en promedio la bicicleta los dos grupos en BigQuery.
* **Dashboard_Cyclistic.pbix:** Archivo fuente de Power BI.
