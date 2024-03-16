# AI System



## 目录

- 🔥 [MLOps 技术栈架构](#mlops技术栈架构)
- 🐫 [MLOps](#mlops)
  - 🐼 [MLOps杂谈](#mlops杂谈)
  - 🐰 [无代码与以数据为中心的AI平台](#无代码与以数据为中心的ai平台)
- 🐫 [数据管理](#数据管理)
  - 🐘 [数据版本管理](#数据版本管理)
  - 🌋 [DVC](#dvc)
  - 📡 [特征存储](#特征存储)
- 🐎 [机器学习建模](#机器学习建模)
	- 🐎 [AutoML](#automl)
	- 🐰 [模型实验跟踪](#模型实验跟踪)
	- 🐎 [MLflow](#mlflow)
- 🚀 [模型运营](#模型运营)
	- 🐎 [模型推理](#模型推理)
	- 🐰 [模型服务](#模型服务)
	- 🐎 [模型推理引擎](#模型推理引擎)
	- 🐰 [模型监控](#模型监控)
- 🐎 [可解释机器学习](#可解释机器学习)
- 🐰 [模型可视化](#模型可视化)
- 🐎 [机器学习流水线](#机器学习流水线)
- 🐰 [人工智能系统](#人工智能系统)
- 🐎 [大模型](#大模型)
- 🐰[AI系统技术分享](#ai系统技术分享)
- 💬 [技术交流群](#技术交流群)
- 👥 [微信公众号](#微信公众号)
- ⭐️ [Star History](#star-history)


## MLOps技术栈架构

![MLOps stack architecture](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/7063ad642d814e1bb4bd0c2aa929e28c~tplv-k3u1fbpfcp-watermark.image?)

## MLOps

### MLOps杂谈

- [全球的MLOps和ML工具概览](https://juejin.cn/post/7035761114650509319)
- [聊聊MLOps是什么，它对算法工程师带来了什么](https://juejin.cn/post/7054433189854609415)
- [可重复可复现的机器学习在生产中的12个要素](https://juejin.cn/post/6987366816985120776)
- [软件工程大师 Martin Fowler 谈机器学习持续交付](https://juejin.cn/post/7088717646916485127)
- [谷歌大佬谈 MLOps ：机器学习中的持续交付和自动化流水线](https://juejin.cn/post/7090943334017368100)
- [如何测试你的机器学习流水线？](https://juejin.cn/post/7091686469093294117)
- [浅述MLOps的价值](https://juejin.cn/post/7092060563894698021)
- [AI 产业三大发展趋势（AutoML/MLOps/XAI）将加速企业 AI 应用落地](https://juejin.cn/post/7101844593339007007)
- [Algorithmia 首席执行官 Diego 谈从研发到人工智能的投资回报率](https://juejin.cn/post/7103331365269176334 )
- [机器学习模型在生产中表现不佳的5个原因](https://juejin.cn/post/7106162686047551502)
    - **为什么您的机器学习模型可能表现不佳**（现实的变化-概念漂移(真实世界)、工程与数据科学迷失在转化中(应用接口)、应用程序更新(应用接口)、特征处理 Bug(内部数据流水线)、数据 Schema 变化(内部数据流水线)）、使用指示器来检测模型的**常见问题**（字段删除、类型不匹配、默认值更改、值超出范围、分布漂移、性能指标下降）
- [如何将 MLOps 用于物联网和边缘设备（Valohai）](https://juejin.cn/post/7109502470501433381)
- [降低模型输出风险的三种方法（Valohai）](https://juejin.cn/post/7111402738218434596 )
- [Arize AI 对顶级 ML 团队调查得出的 3 个结论](https://juejin.cn/post/7104314758094028808 )
    - **解决模型问题仍然太痛苦和缓慢**（建议：评估并实现一个 ML 可观测性平台，帮助暴露和消除AI盲点。）、**ML 团队需要与业务主管更好地沟通**（建议：提高内部可见性、提高 ML 读写能力并将模型指标与业务结果联系起来）、**可解释性很重要，但它不是一切**（建议：不要仅仅依靠可解释性；采取积极主动的方法进行模型性能管理。）
- [识别人工智能用户场景---一种规格并不适用于所有场景（Noogata）](https://juejin.cn/post/7127085121647149064)
- [如何规模化企业人工智能（Noogata）](https://juejin.cn/post/7128052674548727815)
- [十大人工智能开发和实施面临的挑战](https://juejin.cn/post/7195850600503197754/)
- [DataOps 数据开发入门](https://juejin.cn/post/7204501231262761016/)
- [面向 AI 的 DevOps：准备好扩展您的 AI 了吗](https://juejin.cn/post/7204594495995002936)




### 无代码与以数据为中心的AI平台

- [无代码 AI 和 MLOps：无代码 AI 仅用于不会代码的终端用户（Valohai）](https://juejin.cn/post/7109268227687415844)
- [以数据为中心的人工智能应该如何实施（Valohai）](https://juejin.cn/post/7111861821170483237 )
- [数据优先的人工智能会是下一个颠覆性的大事件吗？（Continual）](https://juejin.cn/post/7089854711595008036)
- [无代码 AI 概览（Levity）](https://juejin.cn/post/7125994342233145352)
- [无代码人工智能：它是什么，它为什么重要？（Noogata）](https://juejin.cn/post/7126394934390685727)
- [我们为什么创建无代码 AI 平台 Noogata](https://juejin.cn/post/7126727182629634062)
- [无代码人工智能平台：成功的基石（Noogata）](https://juejin.cn/post/7127612176168124447)
- [无代码 AI 工具的类型（NoCode.ai）](https://juejin.cn/post/7128050124931989517)
- [无代码平台如何为中小型企业带来人工智能](https://juejin.cn/post/7129830227651657742)
- [DLOps：用于深度学习的 MLOps（Valohai）](https://juejin.cn/post/7155655271438630919)


## 数据管理


### 数据版本管理

捕获数据版本以重现、跟踪和记录您的 ML 模型血缘。


- [用于 MLOps 的最佳数据版本控制工具（Aporia）](https://juejin.cn/post/7108072955636088845)
- [数据科学家 Emily Gorcenski 谈数据版本控制（CD4ML）](https://juejin.cn/post/7090207690592845838)
- [开源数据版本控制指南](https://juejin.cn/post/7195845066887413816/)


### DVC

- [DVC 官网教程-中文版](https://juejin.cn/post/7065491901507436580)


### 特征存储

- [现代数据团队的特征工程（Continual）](https://juejin.cn/post/7101546409610084383 )
- [现代数据栈的未来（Continual）](https://juejin.cn/post/7102079693020463112 )
- [特征平台（Feature Store）：您需要知道的关于特征平台的一切信息（Continuous）](https://juejin.cn/post/7102447982028521479 )
- [用于 MLOps 的最佳特征平台（Aporia）](https://juejin.cn/post/7107038039754407967 )


## 机器学习建模



### AutoML

- [浅析自动机器学习（AutoML）工具NNI](https://juejin.cn/post/7002259027694452750)


### 模型实验跟踪

跟踪有关实验的重要信息，如参数、指标和模型。

- [开源实验跟踪工具指南](https://juejin.cn/post/7195850600503132218/)


### MLflow
- [浅谈机器学习生命周期平台MLflow](https://juejin.cn/post/7103628561063346183)
- [MLflow 快速入门](https://juejin.cn/post/7104037400912855077)



## 模型运营

### 模型推理

创建API端点并使用模型进行预测。


- [在线推理是否会导致您的白发？](https://juejin.cn/post/7110984671558631438)
- [一个开源模型服务（model serving）指南](https://juejin.cn/post/7159791096191533064)

### 模型服务



- [浅析云原生模型推理服务框架KServe](https://juejin.cn/post/7102959923302137864)
- [快速入门统一模型部署（Model Serving）框架 BentoML](https://juejin.cn/post/7084272148243546120)
- [BentoML核心概念（一）：服务定义](https://juejin.cn/post/7085489020637020167)
- [BentoML核心概念（二）：API 和 IO 描述符](https://juejin.cn/post/7085749118391287821)
- [BentoML核心概念（三）：构建Bentos](https://juejin.cn/post/7086120495393243167)
- [BentoML核心概念（四）：模型和 Bento 管理](https://juejin.cn/post/7086491756761448455)
- [使用 Seldon Core 服务模型](https://juejin.cn/post/7158995187355058206)
    - **什么是模型服务**（通过 API 与您的模型交互、将模型部署到云端或边缘设备、轻松扩展模型以满足用户需求）、Seldon Core简介、Seldon Core 安装、Seldon 如何为模型服务、使用自定义 Docker 镜像服务、Seldon 适合你吗
- [使用 Seldon Alibi 进行模型监控](https://juejin.cn/post/7159365230210842631)
    - 模型监控如何工作（数据漂移、异常值、偏见）、Alibi Detect 简介、监控模型（部署图像分类器、部署漂移检测器）、从 Alibi 中获取指标、Alibi 适合你吗？

**Triton**：
- [模型推理服务化框架Triton保姆式教程（一）：快速入门](https://zhuanlan.zhihu.com/p/629336492)
    - 本文简要介绍了模型服务化部署的几种方式以及如何选择一款模型服务化工具，同时，简单介绍了 Triton 主要特征及优势。
- [模型推理服务化框架Triton保姆式教程（二）：架构解析](https://zhuanlan.zhihu.com/p/634143650)
    - 对于一个模型推理服务框架来说，通常关注的指标有延时、吞吐、效率、灵活性和可扩展性等。那么，针对每个点应该如何去解决，这是在进行推理框架设计时需要去考虑的问题。因此，本文从更高的技术视野来看一个推理系统以及Triton的架构是如何进行设计的。
- [模型推理服务化框架Triton保姆式教程（三）：开发实践](https://zhuanlan.zhihu.com/p/634444666)
    - 本文简要介绍了如何基于PyTorch后端使用Triton封装一个模型推理服务。



### 模型推理引擎

- [大模型的好伙伴，浅析推理加速引擎FasterTransformer](https://juejin.cn/post/7227365126675710013)


### 模型监控


- [机器学习可观察性 VS 机器学习监控（Aporia）](https://juejin.cn/post/7106652607069814814)
- [如何理解机器学习中的偏见和公平（Aporia）](https://juejin.cn/post/7107645626417954829)
- [如何监控你的 ML 流水线](https://juejin.cn/post/7091319668350124068)
- [特定领域的机器学习监控](https://juejin.cn/post/7149694656790396958)
- [机器学习模型监控的 9 个技巧](https://juejin.cn/post/7151220412364357646)
- [监控模型在生产环境的性能（Arize）](https://juejin.cn/post/7151580330661511176)
- [可解释的监控：停止盲目行动并监控您的 AI](https://juejin.cn/post/7151946683411071012)
- [评估ML监控解决方案时要避免的常见陷阱（mona）](https://juejin.cn/post/7152678308822384676)
- [ML 模型再训练无法解决的问题（mona）](https://juejin.cn/post/7153050891040342024)
- [监控生产环境中的机器学习模型](https://juejin.cn/post/7153436480340230181)




#### 模型监控概述
- [什么是模型监控？（Valohai）](https://juejin.cn/post/7148265456107962405)
    - 为什么要监控模型、**机器学习模型监控清单**（数据分布变化、性能改变、健康指标/运营指标、数据完整性、分段性能、偏见/公平）、在 Valohai 中如何监控模型（存储指标、在 UI 中可视化指标）
- [机器学习模型监控清单](https://juejin.cn/post/7150633857098711047)
    - 服务健康、数据质量和完整性、数据和目标漂移、模型性能、分段性能表现、偏见/公平、异常值
- [模型监控：定义、重要性和最佳实践（AI Multiple）](https://juejin.cn/post/7148971892030849031)
    - 什么是模型监控、为什么模型监控很重要、ML 模型随时间退化的原因（不断变化的环境、更改业务数据）、**模型监控变量**（真实值与预测值检查、数据分布变化、无错误数据、公平、运行指标）
- [机器学习模型监控（Aporia）](https://juejin.cn/post/7105508854674227208)
    - 机器学习模型监控（什么是模型监控、**如何监控机器学习**（数据漂移检测、数据完整性检测、概念漂移检测、数据偏差、异常））、**模型中的漂移检测**（模型漂移、数据漂移（KS检验、PSI、Z-score）、概念漂移）、**机器学习性能监控**（如何监控机器学习性能、如何提高模型性能）、机器学习模型管理、模型可解释性、机器学习实验跟踪、机器学习模型注册表
- [MLOps：模型监控](https://juejin.cn/post/7150087110584696869)
    - 模型监控背景、模型监控动机、**模型监控指标**（稳定性指标、性能表现指标、运营指标）
- [监控生产中的ML系统，您应该跟踪哪些指标？](https://juejin.cn/post/7155279443315916830)
    - 为什么需要ML监控、ML监控动机、模型监控金字塔（软件后端、数据、ML模型、业务或产品KPI）、**模型监控指标**（ML系统健康监测、ML数据质量监控、ML模型质量监控、业务指标和KPI）、模型监控利益相关者、**模型监控难点**


#### 模型漂移

- [机器学习中的概念漂移（Aporia）](https://juejin.cn/post/7105047133664837639)
    - 机器学习中的**漂移类型**（概念漂移、预测漂移、标签漂移、特征漂移）、**概念漂移可以以不同的方式出现**（突然漂移、逐渐漂移、递增的漂移、重复出现的概念）、**概念漂移的两种类型**（虚拟的漂移、真正的漂移）、现实生活中的概念漂移、概念漂移的难点
- [机器学习概念漂移检测方法（Aporia）](https://juejin.cn/post/7105828961103380510)
    - **统计方法**（JS散度、KL散度、KS检验）、**统计过程控制方法**（DDM/EDDM、CUMSUM及其变体PH）、**时间窗口分布方法**（ADWIN、Paired Learners）、**上下文方法**（树特征）、漂移检测实现工具
- [如何检测和克服MLOps中的模型漂移](https://juejin.cn/post/7151053671462076423)
    - **模型漂移的类型**（概念漂移、数据漂移）、**解决模型漂移**、创建可持续的机器学习模型
- [数据漂移、概念漂移以及如何监控它们（mona）](https://juejin.cn/post/7152306653482713124)
    - 什么是数据漂移、什么是概念漂移、**数据漂移和概念漂移的区别**、什么时候应该关注概念漂移、**监控数据漂移和概念漂移的建议**

#### 模型监控数据类型

- [如何检测文本（NLP）和图像（计算机视觉）数据漂移](https://juejin.cn/post/7157524467411845128)
    - 四种不同类型的实时监测技术来**检测和减少模型漂移**(数据质量、模型质量、模型偏差、模型可解释性)、NLP 数据漂移（协变量漂移、标签漂移、概念漂移、**模型监控方法**）、图像数据漂移（**模型监控方法**）
- [使用 Arize 监控非结构化数据（Arize）](https://juejin.cn/post/7157891158251667464)
    - 为什么要 Embeddings、Arize 发布 Embeddings 的支持、使用 Arize 的示例工作流程
- [数据漂移检测（一）：使用表格数据的多变量漂移（Arthur）](https://juejin.cn/post/7158258547711541278)
    - 单变量漂移检测（**测量现在通过模型的数据**与**训练集**之间的分布相似性）、多变量漂移检测（**我们必须考虑数据的高维联合分布**，将**多维辅助模型**拟合到**训练集的完整联合分布**）
- [数据漂移检测（二）：NLP 和 CV 中的非结构化数据（Arthur）](https://juejin.cn/post/7158628393771073573/)
    - 非结构化数据漂移检测方法、概述（向量表示、密度模型、评分）、评估


#### 模型监控工具

- [ML 模型监控最佳工具](https://juejin.cn/post/7148612097201405988)
    - **如何比较 ML 模型监控工具**（易于集成、灵活性和表现力、开销、监控功能、警报）、**ML 模型监控工具**（Neptune、Arize、WhyLabs、Grafana+Prometheus、**Evidently（开源）**、Qualdo、Fiddler、Amazon SageMaker Model Monitor、**Seldon Alibi Detect（开源）**、Censius）
- [一个精选的模型监控工具列表](https://juejin.cn/post/7149372311060086815)
    - Aporia、**Deepchecks（开源）**、MLRun、**Evidently（开源）**、WhyLabs
- [机器学习模型监控工具：Evidently 与 Seldon Alibi 对比](https://juejin.cn/post/7156027015508803620)
    - **比较标准**（兼容性、集成、能力） 、Evidently（**离线分析、实时监控**）、Seldon Alibi Detect（**离线分析、实时监控**）


#### Evidently
- [如何检测、评估和可视化数据中的历史漂移（Evidently）](https://juejin.cn/post/7154164985088720932)
- [如何在 20 天内损坏一个模型？ 一个生产环境模型分析教程（Evidently）](https://juejin.cn/post/7154555545083445279)
- [你的模型隐藏了什么？ 一个评估 ML 模型的教程（Evidently）](https://juejin.cn/post/7154916127443779592)

#### Seldon Alibi Detect

- [在 IMDB 电影评论数据集上进行文本数据漂移检测（Seldon Alibi Detect）](https://juejin.cn/post/7156394459767242760)
    - 加载**数据集/Tokenizer**、预处理、**KS检验**、**MMD**（TensorFlow/PyTorch）、**从头开始训练的模型中的 embeddings**（TensorFlow）
- [在 CIFAR-10 数据集上使用最大均值差异（MMD）漂移检测器（Seldon Alibi Detect）](https://juejin.cn/post/7156769947257929741)
- [在 CIFAR-10 数据集上使用 Kolmogorov Smirnov 数据漂移检测器（Seldon Alibi Detect）](https://juejin.cn/post/7157128049983488008)



## 模型可视化

- [如何将模型可视化工具Netron改造为通用的WEB服务(Flask)?](https://juejin.cn/post/7044789533593829383)
- [机器学习模型可视化类型和工具](https://juejin.cn/post/7124712928267206693)
- [可视化机器学习实验指标和超参数的最佳工具（Neptune）](https://juejin.cn/post/7125354935973052446)
- [机器学习模型可视化：指南和工具（Neptune）](https://juejin.cn/post/7125676994783608840)
- [机器学习模型可视化的最佳工具（Neptune）](https://juejin.cn/post/7135342741281603597)
- [机器学习可视化利器-Yellowbrick](https://juejin.cn/post/7000772832934232100)
- [数据缺失值可视化利器-missingno](https://juejin.cn/post/7001281093521375262)
- [机器学习模型可视化（Slingshot）](https://juejin.cn/post/7213022785366884407)




## 可解释机器学习

- [Umang 谈部署可解释机器学习面临的挑战](https://juejin.cn/post/7104822407608664100 )
- [机器学习模型可解释性实践指南（Aporia）](https://juejin.cn/post/7107407198749196318)
- [ML 模型解释工具：模型解释是什么、为什么需要模型解释以及如何解释模型](https://juejin.cn/post/7153804107991433230)




## 机器学习流水线

自动化ML实验的步骤。调度流水线运行，以根据新数据重新训练模型。

- [开源机器学习流水线工具调研（MLOps）](https://juejin.cn/post/6981999588756422663)
- [正向数据工程和逆向数据工程（Prefect工作流）](https://juejin.cn/post/6993534434246918152)
- [开源机器学习工作流Ploomber](https://juejin.cn/post/6995704126315167780)
- [五分钟快速了解Airflow工作流](https://juejin.cn/post/6998279626472554503)
- [浅析数据工作流Prefect](https://juejin.cn/post/6999057168016080910)
- [浅析机器学习工作流Kubflow Pipelines](https://juejin.cn/post/7001995977368272933)
- [如何将 Apache Airflow 用于机器学习工作流](https://juejin.cn/post/7110770204069593095)
- [Kubeflow 和 Argo 的综合比较](https://juejin.cn/post/7112476300488474660)
- [用于 MLOps 的最佳训练编排工具（Aporia）](https://juejin.cn/post/7108386768948297765)



## 人工智能系统

- [人工智能系统（一）：概述](https://juejin.cn/post/7032683934517952519)
- [人工智能系统（二）：技术栈](https://juejin.cn/post/7033172836072030216)


## 大模型

LLM理论及实践: [llm-action](https://github.com/liguodongiot/llm-action)



## AI系统技术分享


- [202212-DevOps For AI-人工智能开发面临的挑战](./AI系统技术分享/DevOps%20for%20AI%20-%20人工智能应用开发面临的挑战.pdf)
- [202303-MLOps生态工具链综述](./AI系统技术分享/202303-MLOps生态工具链综述.pdf)
- [机器学习系统中的技术债务]()
- [大模型与分布式训练]()
- [机器学习模型监控]()
- [机器学习模型可视化]()




## 技术交流群

我创建了一个AI工程化学习交流群，供大家一起学习交流AI工程化相关的最新技术（MLOps、ModelOps、LLMOps、AI System等），**可加我微信进群**（加微信请备注来意，如：**进AI工程化交流群+GitHub**）。**一定要备注哟，否则不予通过**。

<p align="center">
  <img src="./pic/wechat.jpeg" width="20%" height="20%">
</p>





## 微信公众号

微信公众号：**吃果冻不吐果冻皮**，该公众号主要分享AI工程化（大模型、MLOps等）相关实践经验，免费电子书籍、论文等。

<p align="center">
  <img src="./pic/公众号.jpeg" width="30%" height="30%" div align=center>
</p>




## Star History


[![Star History Chart](https://api.star-history.com/svg?repos=liguodongiot/ai-system&type=Timeline)](https://star-history.com/#liguodongiot/ai-system&Timeline)






