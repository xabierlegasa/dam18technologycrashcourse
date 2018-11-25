# 2018-11-24

## Let Go Session

Roles:

* data engineer
  > Encargado de recopilar los datos
  > Prepara los datos para 
* data analyst
    dashboard
    decidir que guardar
* data scientist
    machine learning, data mining, ai
    
Let Go 250 developers 25 data!

Eventos >> Kafka >> S3 >> Redshift
Usando SDKs se pasan eventos de terceros(Google Analytics) a S3.

Leanplum (AB Testing. Web y App)


bdata-pro
username: student-dam18
password: ikasle

* Window Functions

function (expression) over (
partition by expr_list
ORDER BY order_list [frame_clause]

Example:
> select *,
  sum(qty) over (partition by sellerid) as user_total_qty
  from sql_masterclass.winsales
  limit 10;
  

Siempre que usemos una función de agregación con un order by, hay que meterle un fram


primero coger los usuarios que hicieron una transacción en 
datediff -> 