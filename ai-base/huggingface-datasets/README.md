

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


