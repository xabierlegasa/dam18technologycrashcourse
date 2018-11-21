# Assignment 2. Statistical test 


Task: 

* José María is not very familiar with statistics however he knows the concept of statistical
significance. He writes to you another e-mail:
> "Hi, Thanks for the numbers. Just one doubt: is the difference
between France and Italy meaningful? Let me know. Best. JM."


You should answer the question by writing a brief summary.
Hint: “Meaningful” can be interpreted as “statistically significant”.


## Result

Ticket average under these constraints comparing FR vs IT is not statistically significant.
* Ticket is calculated excluding VAT.
* Transaction type is "payment"
* Transaction status is "1" 

See steps section for more info.


## Steps

1. First lets remember when is a difference "stastitically significant".

>En estadística, un resultado es estadísticamente significativo, cuando es improbable que haya sido al azar.
Una diferencia estadísticamente significativa, solamente significa que hay evidencias estadísticas de que hay una diferencia.
No significa que la diferencia sea grande, importante, o radicalmente diferente.

Prueba de hipótesis para la media
https://www.youtube.com/watch?v=AJcy4eZMwWM

Teoría + 1 ejemplo.
https://www.youtube.com/watch?v=tCLeJCuBSZM

2. Is the difference between France Average Ticket difference with Italy "statistically significant"?

![image](img_1.png)



Sum of transaction_amount-s where;
  - transaction_type = payment
  - transaction_status = 1
    
    
| Country      | Revenue Amount | Revenue Total | Ticket Amount | Ticket Total | Population |
|-------------:|-------------:|-------------:|-------------:|-------------:|-------------:|
| FR    |  66,891.49 € | 84020.53 € | 22.62 €  | 28.41 € |2957 |  
| IT    |  77,377.19 € | 96588.68 € | 21.56 €  | 26.91 €  | 3589 |


3. Calculate Variances:
```
=IF(AND(H2 = 1, I2="payment"),"1","")
=VAR(FILTER(M2:M13770, P2:P13770 = "1", K2:K13770 = "FR")) 
```
![image](img_2.png)


4. Taking as true FR data, lets see if retults in Italia are the same:

H0: X =  μ 
H1: X != μ


μ =  media poblacional = 22,62
X = media muestral = 21.56
n = Tamaño de la muestra = 3589
α = Nivel de significancia = 5% = 0.005
θ = Varianza = 215.07

Como n>= 30 se usará Tc

Quedaría así:
```
=(21.58-22.62)/(215.07/SQRT(3589))
```

Esto da -0.29.
Este número está en la zona de aceptación de H0.
Si H0 se acepta, podríamos decir que la diferencia no es estadísticamente relevante.


```
select count(transaction_id)
from payment_transactions
where transaction_country = 'FR'
and DATE_PART(y, transaction_timestamp) = 2017
and transaction_type = 'payment'
and transaction_status = 1; 

select count(transaction_id)
from payment_transactions
where transaction_country = 'IT'
and DATE_PART(y, transaction_timestamp) = 2017
and transaction_type = 'payment'
and transaction_status = 1; 
```

