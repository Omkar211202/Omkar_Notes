---
title: GPT Decoded
date:
  - 16-05-2025
tags:
  - Techie
image: /Images/tech.jpg
draft: "false"
---
## How LLMS Works??

### What are LLM's??


- GPT (Generative Pre-Trained Transformers) 
- Generation means it can actually create information on it's own unlike search as done traditionally be google. (see how generation is done recursively happens appendix 2)
- Pre-Trained: The Transformer was trained and is out on a release in the form of a transformer.
- Transformer: Takes an input and gives an output. (See appendix Diagram 1).

Key Research Paper of Architecture was kick started by Google: [Attention This is all you need]().

###  Encoding Phase:
- Tokenize phase: Splitting the input into numbers or tokens for enabling further process for the computer.
- Tiktokenizer: Website to see how tokenization will happen across different LLM models.

```python
! pip install --upgrade transformers # Hugging Phase

form transformers import Autotokenizer

tokenizeer = AutoTokenizer.frome_pretrained("google/gemma-3-1b-it")
tokenizer("Hey there")


```

- Voc Size: the larger the vocab size means lesser number of of tokens used tokenize a given input.

- Vector Embeddings:
Now that we have tokens (numerical representation), the next phase starts from looking at how we can build contextuality between tokens, this is done by mapping distances between vectors.

Look, Lets say Cats: Milk, we have to find what Dogs will be mapped to. We look at the direction between cats and dogs. At the same distance and direction, we will able to find what dogs are mapped to, from MILK. (see appendix 3 for more insights)

```python

## create Embedding with openai


length of embeddings
```

- Dimension of Embedding Matrix:

## Positional Encoding:
You may have scenario where you 2 sentences:

- The Dog chased the cat.
- The Cat chased the dog.

Its logical to understand that the first sentence is true and the second is false. But, both have the same vector embeddings given that same words are used.

Thus, positional encoding helps us to ensure that the consistency in meaning after vector embeddings are given to us.

This is done by a magical matrix operation to the Embedding vector matrix to maintain consistency in the meaning.

## Self Attention Model Vs Multi Attention Model:

Traditionally, RNN used normal way to tokenizing. It broke each phrase into some tokens. The main drawback of this was the relevance of the preceding and succeeding phrases were left out.

Thus, A single head attention model emerged to taken into consideration phrases in the near vicinity and change the embeddings if needed.







## Training & Inference:

In the Training phase, the loss ratio is looked out better fit the models. The output is fed back to intial phase and again the whole process begins. In the Inference Phase, however, the output is fed to before decoding / de-tokenization for further generation.



## Appendix:

[[How_does_gpt_work.excalidraw]]
