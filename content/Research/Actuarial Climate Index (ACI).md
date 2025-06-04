---
title: Actuarial Climate Index
date:
  - 2025-05-01
tags:
  - Actuarial
  - Research
draft: "false"
image: /Images/Research.jpg
---
## Introduction:

- used a monitoring tool as an indicator of the frequency of extreme weather and the extent of sea level change.
- Components of ACI: high temperatures, Heavy rainfall, low temperatures, Drought, High wind, Sea Level.

Definitions:
- High temperatures: the frequency of temperatures that cross the 90th percentile on a daily basis.
- Low Temperatures: the frequency of temperatures that fall below the 10th percentile on a daily basis.
- Heavy Rain: Maximum 5-day rainfall in a month or season
- Drought: maximum no. of days where rainfall is less than 1mm daily.
- High Wind: frequency of daily wind speeds above the 90th percentile, This is measured in (1/2)* $\rho W^3$ , w is the daily mean wind speed.
- Sea Level: computed as a combined effect on costal shorelines of land movements and sea level changes.

[More data on definitions](https://actuariesclimateindex.org/wp-content/uploads/2019/05/ACI.DevDes.2.20.pdf)

## How are each of the factors standardized:

| Component           | Formula                                                           | Interpretation                                                     |
| ------------------- | ----------------------------------------------------------------- | ------------------------------------------------------------------ |
| Higher temperatures | ΔTX90/ σref(TX90)                                                 | the frequency of crossing the threshold by the standard deviation. |
| Lower Temperatues   | same                                                              | same                                                               |
| Precipitation       | ΔP = [(Rx5day – Rx5dayref)/Rx5dayref]                             |                                                                    |
| Drought             | Maximum number of days where precipitation is less than 1mm daily |                                                                    |
| Wind speed          | ΔW = (ΔWP90/WP90ref                                               |                                                                    |
| Sea Level           | Sstd = ΔS/ σref(S)                                                |                                                                    |
## ACI index foumula:
- $ACI = mean (T90std - T10std + Pstd + Dstd + Wstd + Sstd)$
