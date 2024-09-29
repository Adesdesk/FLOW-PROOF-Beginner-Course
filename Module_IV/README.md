# Project Title

Access Control in Cadence

## Description
A close look at a piece of code to provide a walk-through looking at a contract and a script which has 4 variables (a, b, c, d) and 3 functions (publicFunc, contractFunc, privateFunc) defined. The objective is to do the following In each AREA (1, 2, 3, and 4), during the code walk through:
* For each variable (a, b, c, and d), determine in which areas they can be read (read scope) and which areas they can be modified (write scope)
* For each function, (publicFunc, contractFunc, and privateFunc), share where they can be called.
* A PDF document named 'Access_areas_Module_IV' summarises my judgement of areas where the variables and functions can be accessed and is available within this folder

## Getting Started

### Installing

* Clone a copy of this project to your local computer using the following command

```
git clone https://github.com/Adesdesk/FLOW-PROOF-Beginner-Course.git
```

### Executing program

* Navigate (cd) into the Module_IV folder and access the contract in question by opening the following file.

```
Module_IV/cadence/contracts/SomeContract.cdc
```

* If you have the Flow CLI setup on your computer, you may be able to try out various interactions with the functions and variables of the contract in order to ascertain which areas they can be read or modified.
* The easier option is to access the ready-to-use Flow playground [here](https://play.flow.com) for use with no further installations required.
* Copy the 'SomeContract' coontract and paste in a new contract file within the playground and you can carry interact with the contract details as needed.

## Help

* You may wish to study further about access control in cadence [here](https://cadence-lang.org/docs/language/access-control)

## Authors

Contributors names and contact info

Name: Adeola David Adelakun 

Email: aadelakun28@gmail.com


## License

This project is licensed under the GNU License - see the LICENSE.md file for details

