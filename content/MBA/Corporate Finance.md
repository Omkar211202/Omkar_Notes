---
title: Corporate Finance
date:
  - 2024-12-09
tags:
  - MBA02
  - MBA
---
This notes developed from Class Discussions and additional inputs from Prasanna Chandra
## Introduction:

No matter what business, an individual want to start:
- he has to make decisions regarding investments, finance and returns.

Types of Business: Sole Proprietorship, Partnership, LLP, Co-operative society, Company.

Theories in Corporate Finance:
- Efficient market theory: prices change in markets over time.
- Portfolio: Formation of an optimal portfolio of securities.
- CAPT: determination of the prices of assets under uncertainty.
- Options pricing theory: prices of contingent  claims such as call options.
- Agency Theory: analysis of incentive conflicts in contractual relations.

Risk Return Tradeoff:

- Higher Risk, Higher the return.

[[Valuation_1.excalidraw]]

Agency Problem:

- Its not possible for all the owners of a company to make decisions in the company, but they will hire professional, who have no or little  stake in the company to do all activities.
- Its not possible for large number of owners to take decisions.
- change in ownership with no change in operations.

Agency Costs:

Professionals are hired in company to maximize the value of shareholder wealth in theory. Thus, they enjoy substantial autonomy and pursue their own goals.

The cost difference between current market cap and the cap if both management and shareholder interests are perfectly aligned.

Business Ethics and Social Responsibility;
- Companies who have large value are known for their ethical behavior.
- Ethics will include how they deal with employees, suppliers, creditors.
- As Kumara Mangalam Birla, Chairman of the Aditya Birla group, put it: “Doing business with a strong sense of values is a win-win game for all. Customers, employees, suppliers and investors trust organizations that live by a clear set of values. Most important, good corporate behavior tends to attract the best talent to work for an organization. So being good is not only good for itself, but also very good for business growth and sustainability.”
- Social Responsibility: Created Share Value.
- Shared Value = Social Value +Economic Value

Finance Dept.

[[Finance_Struc_org.excalidraw]]

### Why is Wealth Maximization over Profit?

- Profit is very short term and myopic, it does not give insights about the future earnings of the firm.
- leaves considerations of future earnings uncertain.
- uncertainty is expressed in terms of probability function.


> [!QUESTION] 
> Should Managers try to maximize the current value of share or long term intrinsic value ?

Structure of Corporate Finance:

- The whole concept lies on: inflows(finance) and outflows(investments).
- The whole concept should ensure minimal cash.(survival and growth).
- dividends when no avenues to  grow or pay back loans faster.
- Corporate finance has 3 decisions: Investment, Financing, dividend.
### Investment decision:
1. Long term: Budget(capital budget: projection for future)
- Long term assets that will help to grow business, more than one year: capital assets.
- yields are for more than one year.
- budget that will record expenditures for more than one year.

2. Short term:
- yields are for less than one year.
- employee salaries, inventory, freights, electricity, bills receivables, working capital.
- working cap: short money requirements that are required for daily requirements.


Finance decision:
1. Sources:
- Cost of capital.

 2. Composition of Capital;
 - debt 
 - Equity

### Dividend Decision:
- How much to retain
- Form of repayment. (Buyback or dividends)

[[CF_BASE .excalidraw]]

Difference between equity and Debt:
- fixed nature.
- payment of principal.


Well there are lot of things to look at while taking decisions, should the finance decisions look at the factors,(sometimes conflict of int can arise), or single pointed agenda?

Single point agenda: Maximize shareholder wealth. 

Things a manager will have to look out for thinking about while maximizing shareholder wealth.

[[agency.excalidraw]]


---

## Time value of Money:

- Time value of money depends on interest and time period.
Reasons:
- People are happy consuming something today, rather than the same thing tomorrow at same value.
- Capital employed today will generate positive returns.
- inflation

Key concepts:
Present value $PV$, Future value $FV$, amounts paid $Amt$, interest rate or discount rate $r$, growth rate $g$, number of periods over which cash flows occur $n$ .
Formulas:

- $FV=PV*(1+i)^n$ , based on compound interest formula.
- $FV=PV*(1+ni)$ , based on simple interest formula.

An annuity is financial model that pays or gives cashflows in frequent timely intervals for a fixed period of time. If all the payments are same, it is called Level Annuity, else called non-level annuity.

- For Annuity Formulas and other, refer [[Annuities]] in Financial Mathematics.
- Excel provides a good amount of formulas for all TVM computations.

```excel
=PV(rate,nper,pmt,[fv],[type])  //present value
=FV(rate,nper,pmt,[pv],[type])  //Future value
=NPER(rate,pmt,pv,[fv],[type])  //no of periods
=PMT(rate,nper,pv,[fv],[type])  // Payment amount
=RATE(nper,pmt,pv,[fv],[type])  // Rate of return
```

A Loan Amortization schedule is built on the concept of TVM.

A Perpetuity is an annuity where the time period is infinite or timeless.

---
## Risk & Returns:

- Riskiness of an asset is measured in terms of its cashflows, for a financial asset.
- Two types of Risks: ==Diversifiable== and ==Market== Risks.
- Diversifiable risk is a company specific risk, its intrinsic to the operations of business for that company alone.
- This risk is based on general market movements alone. This cannot be diversified.

Returns:
As managers we use historical data to compute risk and returns:
- Return could be two types: Cash received in a period (Dividends) + Capital Appreciation.
- $R=\dfrac{C+P_E-P_B}{P_B}$
- Total Return = Current return + capital return.

- While doing computations on stock returns, use geometric average and not simple average.[^1]
- Thus, total return rate: $[(1+R1)(1+R2)....(1+R_n)]^n-1$

Variance of Returns / Risk:
- finding the variance will give us variation of returns, thus this will be measure for riskiness in investments.
- Thus, the standard deviation is measure of riskiness of investments.

In probability scenario's returns should be take based on Arithmetic mean and not geometric mean.

In Probabilistic scenario's: 
$E(Return)=\Sigma R_i*P_i$
$Var(Return)=\Sigma P_i(R_i-E(R))^2$

Risk & Return of a Portfolio:
- $E(R_p)=W_1.E(R_1)+(1-W_1).E(R_2)$
- $E(R_P)=\Sigma W_i.E(R_i)$

Diversification of portfolio:
- Refer to the Excel: 
- While diversifying the portfolio, we must ensure we get the maximum returns by taking minimum risk.
- We can see as we increase the number of stocks into our portfolio, the risk will become lesser and lesser, but it will begin to plateau at a point.
- This is because market risk cannot be eliminated in the process of diversification, but company specific risk can be eliminated.
- Total risk = Market Risk + Unique Risk.

Measurement of Market Risk:
- Beta is used to measure market risk that effecting a security.
- It is the slope of stock returns to market returns.
- if it's greater than 1, means the stock very volatile to market movements.
- Beta is determined by: Cyclical Revenues, operating leverage, Financial Leverage.

Security Market Line:
- $E(R_j)=R_f+\beta . [E(R_m)-R_f]$
- $R_f$ : Risk free premium, $\beta$ : market risk of the security, $[E(R_m)-R_f]$ : is the additional return given by market as compared to risk free returns.
- Thus, the more the $\beta$, the more return the investor will expect.

- The security market line is the line of the CAPM model, with beta in the x-axis and Rate of return in the Y-axis.
- thus, $R_f$ is the return when $\beta$ is zero.
- $[E(R_m)-R_f]$ becomes the slope of the equation.
- Thus, the SML will tell us how much returns the investor will expect based on Beta of the stock.

Security Market Equilibrium:
- This is achieved when the returns given by both the equations match.
1.  $E(R_j)=R_f+\beta . [E(R_m)-R_f]$ (CAPM)
2. Expected Return = Dividend yield (calculated on market price) + growth rate.

- if CAPM > equation 2, sell it until both become same.
- if Equation 2 > CAPM, buy until both become same.

Portfolio Theory:
- $E(aX+bY)=a.E(X)+b.E(Y)$
- Covariance: indicated the relationship in the movements, whether both go hand in hand or no.
- Covariance=$\Sigma p.(x-E(x)*(y-E(y)$
- Correlation: Covariance / Std deviations of both the stocks.
- Thus the variance of 2-stock case is as follows:

$Var(aX+bY)=a^2.Var(X)+b^2.Var(Y)+2.a.b Cov(X,Y)$

Another perspective;

![[Pasted image 20250420225644.png]]

here, $\rho$ is the correlation coefficient.

The same can be extended to an n-stock scenario:

![[Pasted image 20250420225816.png]]

---
## Capital Budgeting:

Taking decisions regarding investments. The following is the capital budget process:
- Identification of potential investment opportunities.
- assembling of investment proposals: Replacement investments, Expansion investments, new product investments, obligatory and welfare investments.
- Decision Making.
- Preparation of capital budget and appropriations
- Implementations
- Performance Review

Investment Criteria: 
- Discounting Criterion: NPV, benefit cost ratio, IRR
- Non-Discounting Criterion: Payback period, Accounting Rate of Return.
- For NPV, discount the values of future cashflows, and get it to a present value.
- Benefit-Cost Ratio: BCR = $\dfrac {PVB}{I}$, positive cashflow per unit on outlay
- Net benefit-cost ratio: $BCR-1$
- IRR:
- MIRR:
- ARR:

Project Decisions:
- Time horizon for analysis.
- Physical Life o the Plant.
- Technological Life of the plant.
- Product Market life of the plant.
- Investment Planning Horizon.

Principles of Cash Flow Estimation:
- Separation Principle, Incremental Principle, ignore sunk costs, include opportunity costs.
- allocation of overhead costs, estimate working capital properly.
- post-tax principle
- Tax rate
- Treatment of losses
- effect of noncash charges.
- consistency principle
- investor group.
- Inflation

Three parts of the problem:

| Initial Investment   |
| -------------------- |
| Operating cash flows |
| Terminal Cash flows  |


---

## Cost of Capital:






---

## Capital Structure and Dividend Decisions:


---

[^1]: Why Should you use Geometric Average against a simple average?
