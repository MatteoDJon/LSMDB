﻿# LSMDB
Ciao questa è la wiki del progetto di LSMDB



## Obbiettivi del branch Guido1
 - [x] Creazione della classe Connect e ristrutturazione di DepositoDati per la realizzazione di Middle-Layer e Back-end con un database Mysql per il progetto MyFundrasing Project (Task1).
 - [ ] Implementazione e utilizzo di JPA (Task2).

# Task1
## Software Architecture
La realizzazione della classe Connect e il seguente restauro della classe DepositoDati è avvenuto per dividere logicamente Middle-Layer e Back-end come in figura.

![archetture diagram](https://github.com/guidogagl/LSMDB/blob/master/arch_diagram.png)

## Class Modeling 
### Class Diagram 

## Obbiettivi del branch amaryllis 
- It was implemented the registration mechanism, by modyfing the structure of Fundracing class as to include an inner class, RegistrationForm, existing only in the scope of the application instance and used for allowing the user to insert its data in a new frame. Both Fundracing and RegistrationForm are front-end classes which interact with the database through DepositoDati and Connect.
Why is RegistrationFrom an inner class? Because its scope is within the cicle of life of Fundracing and because, as of Java documentation, the use of inner or nested class is recomended for enabling encapsulation and improving code readibility. A *Singleton* implementation of the registration mechanism is currently _under consideration_.

*Fundracing*
The following methods were added to Fundracing:
- 



