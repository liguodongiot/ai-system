
## ybelkada/football-dataset
```
from datasets import load_dataset


dataset = load_dataset("ybelkada/football-dataset", split="train")

dataset2 = load_dataset("/Users/liguodong/.cache/huggingface/datasets/ybelkada___football-dataset/default-80f5618dafa96df9/0.0.0/0111277fb19b16f696664cde7f0cb90f833dec72db2cc73cfdf87e697f78fe02", split="train")

```


## glue/mrpc

```
import evaluate
from datasets import load_dataset

datasets = load_dataset("/home/guodong/code/foundation_model_survey/tests/glue.py", "mrpc")
metric = evaluate.load("/home/guodong/.cache/huggingface/modules/evaluate_modules/metrics/evaluate-metric--glue/05234ba7acc44554edcca0978db5fa3bc600eeee66229abe79ff9887eacaf3ed/glue.py", "mrpc")
```



## c4

- https://huggingface.co/datasets/c4
- https://huggingface.co/datasets/allenai/c4/tree/main/en


在线加载：
```


import datasets
from datasets import load_dataset

# en = load_dataset("allenai/c4", "en")
# data = datasets.load_dataset("c4", "en", split="train", streaming=True)
data = datasets.load_dataset("/Users/liguodong/.cache/huggingface/modules/datasets_modules/datasets/c4/584d57ebe81c209b6c7f31727066d2c4b4bba37cb7092cdd83083d5ec11207db/c4.py", "en", split="train", streaming=False)

seed_for_shuffle = 42   
print(f"Shuffling data with seed {seed_for_shuffle}")

data_set: datasets.Dataset = data.shuffle(seed=seed_for_shuffle)

print(data_set)

iter_data = iter(data_set)

for example in iter_data:
    print(example["text"])

# val_data = datasets.load_dataset("c4", "en", split="validation", streaming=True) #DGX
val_data = datasets.load_dataset("/Users/liguodong/.cache/huggingface/modules/datasets_modules/datasets/c4/584d57ebe81c209b6c7f31727066d2c4b4bba37cb7092cdd83083d5ec11207db/c4.py", "en", split="validation", streaming=False) #DGX


print("----------")

```

本地加载：
```

import datasets
from datasets import load_dataset

data = load_dataset("json", data_files="/Users/liguodong/data/c4/c4-train.00000-of-01024.json")

print(data)
train_data = data["train"]


seed_for_shuffle = 42   
print(f"Shuffling data with seed {seed_for_shuffle}")

data_set: datasets.Dataset = train_data.shuffle(seed=seed_for_shuffle)

print(data_set)

iter_data = iter(data_set)

for example in iter_data:
    print(example)
    print("-------------")
    print(example["text"])
    break

print("----------")

```


## lambada

- datasets=2.14.6
```
from datasets import load_dataset


# dataset = load_dataset("lambada",
#                         split="validation",
#                         cache_dir="/Users/liguodong/work/data/hf/lambada")


dataset = load_dataset(
                       path="/Users/liguodong/work/data/hf/lambada",
                        split="validation",
                       )
```





## wikitext/wikitext-2-raw-v1

```
dataset = load_dataset("wikitext", "wikitext-2-raw-v1", cache_dir= "./data")
train_dataset = dataset["train"]
train_dataset_100 = train_dataset.select(range(100))
dataset = dataset["train"].train_test_split(test_size=0.1)
```

```
from datasets import load_dataset


# raw_datasets = load_dataset("wikitext", "wikitext-2-raw-v1")
dataset = load_dataset("wikitext", "wikitext-2-raw-v1", cache_dir="./")


if "validation" not in dataset.keys():
    dataset["validation"] = load_dataset(
        "/Users/liguodong/.cache/huggingface/modules/datasets_modules/datasets/wikitext/a241db52902eaf2c6aa732210bead40c090019a499ceb13bcbfa3f8ab646a126/wikitext.py",
        "wikitext-2-raw-v1",
        split=f"train[:5%]",
        cache_dir="./",

    )
    dataset["train"] = load_dataset(
        "/Users/liguodong/.cache/huggingface/modules/datasets_modules/datasets/wikitext/a241db52902eaf2c6aa732210bead40c090019a499ceb13bcbfa3f8ab646a126/wikitext.py",
        "wikitext-2-raw-v1",
        split=f"train[5%:]",
        cache_dir="./",
    )
```




## ccdv/cnn_dailymail

```
pip install datasets==2.10.1 -i https://pypi.tuna.tsinghua.edu.cn/simple  --trusted-host pypi.tuna.tsinghua.edu.cn
```

```
# 在线下载
# dataset_cnn = load_dataset("ccdv/cnn_dailymail", '3.0.0', cache_dir="/workspace/data/ccdv/")

# 本地加载
dataset_cnn = load_dataset("./cnn_dailymail.py", '3.0.0', cache_dir="/workspace/data/ccdv-data/ccdv")
```


```
# 当前执行Python脚本的目录
> ls
cnn_dailymail.py
cnn_stories.tgz
dailymail_stories.tgz

# 缓存目录
> ls /workspace/data/ccdv-data/ccdv
ccdv___cnn_dailymail
cnn_dailymail
downloads
```

## tatsu-lab/alpaca（arrow文件）


```
from datasets import load_dataset,Dataset,load_from_disk

# 在线下载
# data = load_dataset("tatsu-lab/alpaca")

# Load Dataset from arrow file
# data = Dataset.from_file("/Users/liguodong/.cache/huggingface/datasets/tatsu-lab___parquet/tatsu-lab--alpaca-2b32f0433506ef5f/0.0.0/2a3b91fbd88a2c90d1dbbb32b460cf621d31bd5b05b934492fdef7d8d6f236ec/parquet-train.arrow")
# data.save_to_disk('./alpaca')

# 本地加载
data_local = load_from_disk('./alpaca')
```


## yahma/alpaca-cleaned（json文件）

```
from datasets import load_dataset


# data_path = "yahma/alpaca-cleaned"
data_path = "/Users/liguodong/data/alpaca_data_cleaned.json"

if data_path.endswith(".json") or data_path.endswith(".jsonl"):
    # 本地加载
    data = load_dataset("json", data_files=data_path)
else:
    # 在线下载
    data = load_dataset(data_path)

print("over")
```

---



## ought/raft（arrow文件）

```
git lfs clone https://huggingface.co/datasets/ought/raft
```

```
from datasets import load_dataset

dataset_name = "twitter_complaints"
text_column = "Tweet text"
label_column = "text_label"

# dataset = load_dataset("ought/raft", dataset_name, cache_dir= "./data")
dataset = load_dataset("/Users/liguodong/work/data/raft/raft.py", dataset_name, cache_dir= "./data")
# /Users/liguodong/.cache/huggingface/datasets/ought___raft/twitter_complaints/1.1.0
```


## financial_phrasebank（arrow文件）
```
git lfs clone https://huggingface.co/datasets/financial_phrasebank
```

```
from datasets import load_dataset


text_column = "sentence"
label_column = "text_label"

# dataset = load_dataset("financial_phrasebank", "sentences_allagree", cache_dir= "./data")
dataset = load_dataset("/Users/liguodong/work/data/financial_phrasebank/financial_phrasebank.py", "sentences_allagree", cache_dir= "./data")

dataset = dataset["train"].train_test_split(test_size=0.1)
print("----------")
```


## bookcorpus


- https://huggingface.co/datasets/bookcorpus















