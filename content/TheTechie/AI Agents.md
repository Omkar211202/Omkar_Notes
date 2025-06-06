---
title: Running an LLM on Local Systems
date:
  - 2025-02-04
tags:
  - Techie
draft: "true"
image: /Resources/tech.jpg
---
## How does ChatGPT Work???

LLM's or large language models are built using natural language processing, to give an output for the input given by the user.

They can be built on the local system using `Ollama` server, in which different LLM models can be installed like:

The following is the architecture used in building LLM's:

[[AI_Process_design.excalidraw]]

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


## Data handling:
1. Create
2. Read
3. Update
4. Delete
5. Transform
6. Filter


[https://maximilian-schwarzmueller.com/articles/whats-the-mcp-model-context-protocol-hype-all-about/](https://maximilian-schwarzmueller.com/articles/whats-the-mcp-model-context-protocol-hype-all-about/)

Prompts:
- system: tool.
- user

Advantages:
- Describe the API and use the latest info.



Disadvantages:
- Time taking.
- many tools, the computation will long.
- the format will change with time.

MODEL CONTEXT PROTOCOL:
- Standardizes the way in which the server and LLM interact.
- Describe tools, prompt and assistant in a standard way.

### use case:
dev
ingest of data
user use.

### coleam00 ai agents
[https://www.youtube.com/watch?v=zaNIvRllycM&list=PLyrg3m7Ei-MpsdEA6eKN1k2gJpuhllNTi](https://www.youtube.com/watch?v=zaNIvRllycM&list=PLyrg3m7Ei-MpsdEA6eKN1k2gJpuhllNTi)

---

GPT: Generative Pre-Trained Transformer.
