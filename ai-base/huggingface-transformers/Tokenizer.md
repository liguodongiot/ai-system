

Tokenizer 是 NLP 流水线的核心组件之一。

它有一个目的：将文本转换为模型可以处理的数据。模型只能处理数字，因此，Tokenizer需要将我们的文本输入转换为数字数据。



- 输入词id(input_ids) 
- 注意力遮罩(attention_mask) ，这样模型就会在attention的时候，不去attention被mask掉的部分。
- 类型标记ID(token_type_ids)：告诉模型输入的哪一部分是第一句，哪一部分是第二句。

## 基于词的(Word-based) Tokenizer




[huggingface Tokenizer](https://huggingface.co/learn/nlp-course/zh-CN/chapter2/4)
