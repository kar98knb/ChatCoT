# COMP7404 Group 8 Demo

## Discliamer
This repo is forked from [ChatCoT: Tool-Augmented Chain-of-Thought Reasoning on Chat-based Large Language Models](https://github.com/RUCAIBox/ChatCoT). We only used and modified this code for testing the results with LLaMA3-8B (details shown later) on MATH dataset. For hotpot dataset, we don't have enough computational resources and time to finish the whole test, but the code is runnable.

## Environment

### Code
Prepare a Linux environment (for Windows, Ubuntu for WSL can work).

We test this code on Python 3.9 (At first we tried Python 3.12 but it didn't work).
```sh
conda create -n [your environment name] python=3.9
conda activete [your environment name]
pip install -r requirement.txt
```

### Ollama
We don't want to modify the code too much so we use Ollama. Please visit [Ollama website](https://ollama.com/) to download and install Ollama for you.

Once you have installed Ollama, for Windows user:

```sh
ollama serve
ollama pull llama3
ollama run llama3
```

Note that if you are using WSL and have deployed ollama on your Windows, You need to modify the ollama listening ip from localhost to 0.0.0.0 .

### Get back to code

Now we only need to change a little bit for LLaMA.

For MATH dataset:

Go to ./math/solve_turbo_chatcot.py line 653 and change this to your ollama's ip and port.
```python
openai.api_base = "http://172.23.112.1:11434/v1"
```
To test results on a certain subset of MATH:
```sh
cd math
bash ./scripts/run_turbo_chatcot.sh
```
Now to find out which subset is being tested, go to ./scripts/run_turbo_chatcot.sh and change these two lines
```sh
DATA_SPLIT=intermediate_algebra # See "knowledge_point" in ./dataset/math/test_retrieval-all.json for all subsets.
RESULT_FOLDER=result/math_ia # change this too
```

## Result
![](./picture/result.png)