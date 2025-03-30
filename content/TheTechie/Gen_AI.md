---
title: Running an LLM on Local Systems
date:
  - 2025-02-04
tags:
  - Techie
draft: "true"
---
## How does ChatGPT Work???

LLM's or large language models are built using natural language processing, to give an output for the input given by the user.

They can be built on the local system using `Ollama` server, in which different LLM models can be installed like:

The following is the architecture used in building LLM's:

[[Drawing 2025-02-04 15.17.29.excalidraw]]

The below are few characteristics of LLM's:

- They have no memory of their own.

IMPLICATION: If you ask an LLM running in your local system, continuously the LLM will not be able to answer the leading questions, as it would have forgotten the previous question asked (it does not remember the prior question).
This makes these LLM's Scalable, it the responsibility of the client application to store questions asked priorly and the answers given by the LLM and refeed it back to the LLM when a new question is asked, thus making the entire process scalable.
Meaning: You can ask question 1 to LLM1 and the question 2 can be answered by LLM2 etc., though it may be a leading question.

- The local LLM's will have a last updated date, meaning they will not be able to answer questions post a certain date. This is because they do not have the ability to access online resources and rephrase to give an answer.

---
## Setting up the environment:

- check if you have python and also check the version `>=3.12`, else do the need.

```sh
python
python --version
```


- install poetry
```sh
pip install poetry
```

- create a folder where under the python root installed.

- initialize poetry: choose all defaults after going to the folder created.
- choose all defaults, do not install any dependencies.
```sh
poetry init
```

- this will install shell plugin
```sh
poetry self add poetry-plugin-shell
```

- setting up the venv:
```sh
poetry shell
```


### working in VS Code:
- set up the copilot in vscode
- install extensions: github copilot

```sh
poetry add openai
poetry add langchain

```

---
##  Function Calling:



















---
## Step 1:

### Deciding Topics for which model has to be made:

#### Risk Analysis and Fraud Detection in Banking:
- to look at all transactions of the bank and highlight circular movements and suspicious transactions.
✅ **Users:** Banks, fintech companies, financial regulators.  
✅ **Impact:** Reduces fraudulent transactions and enhances risk mitigation.  
✅ **Challenges:** High false positives, adapting to evolving fraud patterns.  
✅ **Potential Monetization:** SaaS model for banks, partnerships with fraud prevention services.

🔹 **Anomaly Detection:** Identifies unusual spending patterns and suspicious activities.  
🔹 **Transaction Risk Scoring:** Assigns risk levels to financial transactions.  
🔹 **Real-Time Fraud Alerts:** AI detects and flags fraudulent activities in real time.  
🔹 **User Behavior Analysis:** Learns normal spending behavior to improve fraud detection accuracy

#### Credit Specific Assessment:
- build an ai driven credit scoring system based on past data, related to financial transactions, payments and social media activities for ==companies==.



#### AI in stock market
- AI to analyze new sentiments and predict stock movements.
- AI-driven trading bots.

🔹 **Algorithmic Trading & Robo-Advisors:**
- How **AI-driven trading bots** make high-speed stock trades.
- **Portfolio management using AI** – optimizing risk & returns.

🔹 **Sentiment Analysis in Financial Markets:**
- Using **AI to analyze news sentiment** and predict stock movements.
- AI models for **crypto and forex trading**.

🔹 **Risk Management in Investment Banking:**
- **AI for stress-testing financial portfolios** under different economic scenarios.
- How **AI helps hedge funds predict market downturns**.



#### Gen AI for Loan approvals:
- Loan underwriting: borrower's financial information and credit history, CIBIL Score.
- Uses **spending patterns, utility bill payments, rent history, social media activity** instead of just credit history.
- AI predicts creditworthiness for **first-time borrowers or gig workers** who don’t have a CIBIL score.
- Assigns a **dynamic credit score** based on real-time financial behavior.  
-  **Tech Stack:** Python (Pandas, Numpy), OpenAI API for NLP, AWS/GCP for deployment.



#### Portfolio optimizer for stock market.
- to suggest a good portfolio mix on real time basis and generate portfolio scores for given inputs.

✅ Analyzes risk appetite and financial goals to suggest an optimal asset allocation.  
✅ Provides real-time updates on portfolio performance and suggests rebalancing strategies.  
✅ Recommends stocks, ETFs, mutual funds, or crypto assets based on risk profile.  
✅ Summarizes complex financial reports into simple investment insights.  
✅ Detects market anomalies and alerts users about potential risks.

**AI Model Capabilities:**  
🔹 Portfolio analysis using historical performance data.  
🔹 AI-driven financial news summarization.  
🔹 Sentiment analysis on market trends.  
🔹 Risk assessment using Monte Carlo simulations.


## **🏆 Final Rankings (Best Projects for 18 Days)**

|**Project**|**Industry Impact**|**Feasibility in 18 Days**|**Priority**|
|---|---|---|---|
|**AI Portfolio Optimizer**|⭐⭐⭐⭐⭐|⭐⭐⭐⭐⭐|✅✅✅ High|
|**Gen AI Loan Approvals**|⭐⭐⭐⭐⭐|⭐⭐⭐⭐|✅✅✅ High|
|**AI Credit Scoring System**|⭐⭐⭐⭐⭐|⭐⭐⭐⭐|✅✅ High|
|**Risk Analysis & Fraud Detection**|⭐⭐⭐⭐⭐|⭐⭐⭐|✅ Medium|
|**AI in Stock Market (Sentiment + Trading Bot)**|⭐⭐⭐⭐|⭐⭐⭐|✅ Medium|



### Data handling:
1. Create
2. Read
3. Update
4. Delete
5. Transform
6. Filter

