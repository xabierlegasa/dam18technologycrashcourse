# Data Analyst Masterclass Barcelona 2018-2019

Material: https://github.com/barcelonadatainstitute/dam18


## Prework

[Prework](unit0/readme.md)

## Unit1

##### 2018-11-01 Session

  - AWS S3
  - AWS CLI
  - Json
  - Excel. Tablas dinámicas
  - Git, github
  - Json

[Slides](unit1/2018-11-10/Technology_Crash_Course.pdf)

[Assignment 1: Get familiar with S3](unit1/2018-11-10/assignments/assignment_1_s3_pricing/readme.md)

[Assignment Decision making](unit1/2018-11-10/assignments/assignment_decision_making/readme.md)


##### 2018-11-16 Assignments Review Session

    > Analizar la calidad de los datos antes del análisis
    > Poner los datos en contexto.
    > ¿Como saber si un cambio es significativo? ==> Mirar "test de proporcion" and "test de promedio", "test de hipótesis"



##### 2018-11-17

- AWS Redshift vs others (Google BigQuery,...)
- Statistically significant concept





Assignment 1: 

 Research about aws redshift alternatives.
 Write a report with advantages vs disadvantages
 
 > Explanatory analysis !!
 
 Assignment 2: Statistical test
 is statistically significant?
 test de media, test de proporciones
 
 test de proporciones: 
 * https://www.youtube.com/watch?v=tCLeJCuBSZM
 * https://www.youtube.com/watch?v=b4vv_fWcOHk
 
 
 OJO Metricas interesante!
 
 1. CR (Conversion Rate)
 La Conversión es una métrica cohortada!
 LA CR se expresa en unidades.
 La Fecha de adquisición es importante
 EL CR se ve alterado si los pagos se puede posponer.
 CR 1D (de los usuario que se registraron un día concreto, cuantos pagaron el mismo día o menos) 
 CR 3D (de los usuario que se registraron un día concreto, cuantos pagaron en trés días o menos) 
 CR 7D
 15D
 CR 30D 
 ...
 Mirar el cohorte en estadística
 > cohort por país, por ciudad, 
 
 2. ARPU (Average Revenue Per User)
   ARPU se suele expresar en dinero
    Día, semana, mes
 
 
 
 Assignment
 Fecha transacción, 
 User adquisistion time
 
 DATEDIFF calcula la diferencia entre dos fechas.
 
Assignment 1. part 1
El D3 es acumulativo (los que conviertieron en 3 días o menos)

Assignment 1. part 2.
EStimar los usuario que hemos adquirido en 2017, cuanto dinero nos van a traer en el Q1
Extrapolación lineal is enough

MIRAR EL ARPU Y MIRAR UNA CURVA SEASSONAL. ASÍ, DEPENDIENDO DE Los nuevos users que pensamos que vamos a adquirir, podemos hacer una estimación a futuro de los users que captemos en  2018


Cuanto dinero nos van a traer users BtoB durante Q1. y Q2?

Hay que hacer joins entre dos tablas en algún momento
