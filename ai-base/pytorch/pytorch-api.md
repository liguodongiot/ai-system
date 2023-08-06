



## torch.nn.Module

```
model.cpu()：将模型复制到CPU上；
model.cuda()：将模型复制到GPU上；
model.double()：将模型数据类型转换为double；
model.eval()：将模型设置成test模式，仅仅当模型中有Dropout和BatchNorm是才会有影响；
model.float()：将模型数据类型转换为float；
model.half()：将模型数据类型转换为half；
model.load_state_dict(state_dict)：用来加载模型参数，将state_dict中的parameters和buffers复制到此module和它的后代中，state_dict中的key必须和model.state_dict()返回的key一致；
model.state_dict()：返回一个字典，保存着module的所有状态；
model.train()：将模型设置为训练模式；
model.zero_grad()：将模型中的所有模型参数的梯度设置为0；
```



