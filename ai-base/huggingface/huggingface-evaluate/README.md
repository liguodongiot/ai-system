


## rouge

```
pip install rouge_score evaluate -i https://pypi.tuna.tsinghua.edu.cn/simple  --trusted-host pypi.tuna.tsinghua.edu.cn
pip install pytorch-ignite==0.4.12 -i https://pypi.tuna.tsinghua.edu.cn/simple  --trusted-host pypi.tuna.tsinghua.edu.cn
```

```
import evaluate
metric_ft = evaluate.load("rouge")
```



