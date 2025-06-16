---
title: Probability Models
tags:
  - Actuarial
  - MAS-1
date:
  - 2025-06-09
image: /Resources/actuarial.jpg
draft: "false"
---
## Claim Severity Distributions:

Please look at the CAS EXAM table MAS1 for the formulas for the following distributions.

Pareto Distribution: 
- $f(x)= \dfrac{\alpha \theta ^ \alpha}{(x+\theta)^{\alpha+1}}$,to figure out it will look, $\dfrac{c}{(x+\theta)^{\alpha+1}}$
- The pareto will not have moment generating function, but the mean can be found out using moments formula.
- look for mean, variance in the formula sheet.
- try to derive them as well.
- memory less property of Pareto: if X ~ Pareto($\alpha,\theta$), then, Y=X-d | X>d will follow pareto ($\alpha,\theta+d$)

Inverse Pareto distribution:
- if X ~ Pareto($\alpha,\theta$), X=$Y^{-1}$ will follow a inverse pareto distribution with parameter ($\rho = \alpha, \theta=\theta^{-1}$)
 - look for mean, variance in the formula sheet.
- try to derive them as well.

Single Parameter Pareto:
- $f(x)= \dfrac{\alpha \theta ^ \alpha}{(x)^{\alpha+1}}$, x>$\theta$.
- it pareto distribution, but shifted by $\theta$.

Beta:
- look out for pdf, mean and variance in the table.
- generally of the form: $c. x^{a-1}(1-x)^{b-1}$.

Uniform:
- $X ~ Uniform(a,b)$
- f(x) = $1/(b-a)$
- E(x) =$\dfrac{a+b}{2}$
- variance =$(a-b)^2 /12$

Normal:
- very basic, know the pdf, mean and variance.
- sum of normal is normal with mean and variance equal to individual sums.

Lognormal.
- if X ~ Normal, $e^{x}$ follows a lognormal  with the same parameters.
- has the same pdf, except that (x - $\mu$) is transformed into (ln x - $\mu$).
- the mean and variance can be found out from the table.
- product of lognormal is lognormal with $\mu$ as the sum of individual $\mu$'s and $\sigma^2$ , the sum of individual $\sigma ^2$'s.

Gamma:
- look at the tables for the formulas.
- look for mean, variance in the formula sheet.
- try to derive them as well.
- sum of gamma given all have same theta's will be a gamma variable with alpha being the sum of individual alphas.

Weibull:
- n^th root of exponential distribution.

Exponential:
- constant hazard rate.
- memory less property.
- joint probabilities
- Minimum of expo var is also exponential with mean being equal to sum of individual means.

Greedy Algorithms A and B:
- Expected cost= $\theta.\Sigma \dfrac{1}{i}$, but costs at each layer varies while filtering. [^1]

Transformations:
- Scaling: the mean is generally scaled in this system, pareto, lognormal can be scaled on multiplication.
- CDF method and PDF method. [^2]
- MGF method.

Mixtures:
- Discrete
- Continuous
Special cases: 
- Poisson-Gamma mixture will lead to Negative binomial (r = $\alpha$, $\beta$ = $\theta$), both parameters come from gamma distribution.
- exponential-Inverse Gamma will follow the pareto with the same parameters.

---

## Policy Limits:

- Upper Limits/ Policy limit:
- E[X^u] = $\int S(x)$ dx
- E[(X^u)^k] = $\int k x^{k-1}S(x)$ dx, kth moment

- Lower limit/ Deductibles are of two types:
- Ordinary Deductible: E[X-d] = $\int_{d}S(x)$
- E[(X-d)^k] = $\int_{d} k x^{k-1}S(x)$ , kth moment

- Loss Elimination Ratio: $\dfrac{E(x\&k)}{E(X)}$
- Payment per loss $Y^L$ VS Payment per payment $Y^P$. E($Y^P$) = $\dfrac{E(Y^L)}{S(d)}$
- Franchise Deductibles: Incase loss exceed the deductible, the entire loss amount is paid.
- Co-Insurance: $\alpha$ is the amount that will be paid by the insured, while the remaining is paid by the policy holder.
- All in one formula: $\alpha(E(X\&m)-E(X\&d))$, m= u/$\alpha$ + d.
- With inflation also taken into consideration, the all in one formula will change.

---

## Conditional Tail Expectation:

- Calculate percentiles
- CTE: $\pi_q+E(x-\pi_q|X>\pi_q)$
- Tail Weight:
1. lesser the positive raw moments, greater the tail weight.
2. faster the the ratio of survival functions converge to zero, lesser the tail weights.
3. Hazard function reduce with x, means greater the tail weights.
4. Large CTE, Larger the tail weight.

---
## Poisson Process:

1. $N(t)$ is the number of events that happen until time t.
2. $N(t+h)-N(t) \& N(t)$ are independent in nature, the increment is independent of the previous events.
3. $T_k$ is the time taken for the kth event to take place, and $V_k$ is the time interval between k-1 and kth event.
4. 




---

## Reliability Theory:





---

## Markov Chains:






---

## Life Contingencies:




---

## Simulation:








---
## Footnotes:
[^1]: Revisit for Greedy Algorithm B, to check why sums are like that.
[^2]: Check how to do this CDF and PDF methods, very confusing while looking at theory.

