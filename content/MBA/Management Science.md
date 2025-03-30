---
title: Management Science
date:
  - 2024-12-24
tags:
  - MBA02
  - MBA
---
## Linear Programming Problems:

- Linear programming is done to find an optimal solution by maximizing or minimizing the objective function (generally profit or cost).
- The linear programming problem will have the objective function based on subjective constraints.
- Though simple 2 variables may be solved on graph, higher number of variables will require the usage of Simples method.
- [maths](https://www.geeksforgeeks.org/simplex-algorithm-tabular-method/)
### Solving using excel:


![[Pasted image 20250127150953.png]]

- The first step is to write the given problem to Mathematical formulation.
- Try to write in same fashion.
- Post that write the coefficients of the objective function and Constraints as displayed.(Indicated in orange and Dark Blue.
- The RHS of the constraints must also be written.(Dark Yellow).
- The `=SUMPRODUCT()`  Sum Products will be obtained by multiplying qty with coefficients(indicated by light green)
- We will now know Quantity and the sum products, till now.(will now be zero if sum product is done)

- Use solver(data-solver), you might have to install the plugin.
- set the objective to SUMPRODUCT of coefficients of objective function and qty.
- choose to max or min
- add constraints, sumproducts, <=, RHS of constraints.
- set method to `SIMPLEXLP`
- Solve.
- attach Answer, Sensitivity and limit reports if necessary.

### Analysis of Reports (sensitivity, Answer and Limit):





---

## Transportation Problems:

In business, logistics play an important role to satiate demands and supplies across different plants and demand center.

Considering Cost to be a factor to minimize, transportation problems try to match demands and supplies by Production centers and Demand centers.

If total Demand is equal to Total Supply, it will become a balanced problem, else Unbalanced problem.

[Math-behind the technique](https://byjus.com/maths/balanced-and-unbalanced-transportation-problems/)

The aim of the whole problem is to find the qty of materials to be transported from Mine to Plant, such that all the demand and supply constraints are met and the cost of logistics is minimized.

The entire process:
- set the entire quantity(yellow in the lower part to be equal to zero (below matrix)),
- make constraints as shown in green, and match it with <= / >= as per constraints.
- use solver and solve, simplex LP.
- the quantity will be given by the solver.

![[Pasted image 20250203142434.png]]

A Problem may be unbalanced as well:
(Demand < Supply)
apply the above method to solve...
![[Pasted image 20250203145129.png]]


However, when  (supply< demand, a dummy plant needs to be created to solve the problem):

set all the cost for transportation for the dummy plant to be set to zero.

![[Pasted image 20250203145513.png]]

---

## Assignment Problem:

Assignment problem is a problem or LLP, where we are concerned about assigning personnel or resources to a unit or activity, so as to minimize cost or maximize  profit.

Lets say we have problem to assign 8 trucks to 5 places:

$\Sigma\Sigma C_{ij}X_{ij}$ is set as the objective function, $C_{ij}$ is the cost of assigning $i^{th}$ truck to $j^{th}$ Place and $X_{ij}$ is set to 0 or 1 based on whether we take choice(1) or no (0).

such that:

$\Sigma X_{ij}$ =1 where i kept constant and j varied. (row wise summation is 1)
$\Sigma X_{ij}$ =1 where j kept constant and i varied. (Col summation is 1)



---





