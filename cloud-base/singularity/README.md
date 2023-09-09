

- Singularity 基本使用：https://www.bkunyun.com/helpce/docs/2030/about2/
- Singularity日常使用：http://www.xtaohub.com/Container-Tech/Singularity-in-nutshell.html
- singularity run：https://docs.sylabs.io/guides/3.1/user-guide/cli/singularity_run.html
- singularity文档：https://docs.sylabs.io/guides/3.1/user-guide/index.html








Singularity是和docker相似的容器化软件。



Singularity 的sif格式支持直接从docker image中转换过来，因此流程的迁移还是比较方便的。
考虑到学习成本，我大概还是只会使用docker来build镜像，再用singularity来部署。在集群中使用singularity，日常普通任务时使用docker。






Singularity是一个相对较新的容器软件，仍处于开发状态，兼容Docker容器这一特性让它的用户群体增长迅速。Singularity假设用户在一个有root权限的系统上构建容器，在一个没有root权限的系统上运行容器，这更符合科研应用的场景，因为HPC的用户是不会有root权限使用docker的。


singularity的重要概念

（1）容器(container): 

容器是一个包含用户软件和依赖的镜像系统，可独立运行某一条或者多条命令。Singularity没有镜像的概念，用户创建和运行的都是一个一个容器。

（2）SIF（Singularity Image File）：

压缩后的只读（read-only）的Singularity镜像文件，是生产使用的主要形式。

（3）Sandbox ：
可写(writable)的容器存在形式，是文件系统中的一个目录，常用于开发或者创建自己的容器，是开发使用的主要形式。


singularity 和docker 的区别：

（1）基于 Singularity 的高性能计算容器技术，相比Docker等在云计算环境中使用的容器技术，Singularity 同时支持root用户和非root用户启动，且容器启动前后，用户上下文保持不变，这使得用户权限在容器内部和外部都是相同的。

（2）Singularity与Docker的一个很大区别是生产环境使用的Singulariy容器是只读的SIF格式文件.

（3）Singularity 强调容器服务的便捷性、可移植性和可扩展性，而弱化了容器进程的高度隔离性，因此量级更轻，内核namespace更少，性能损失更小。




```
# From Docker
singularity pull tensorflow.sif docker://tensorflow/tensorflow:latest
```





## singularity run


```
--add-caps string 要添加的逗号分隔的功能列表
     --allow-setuid 允许容器中包含 setuid 二进制文件（仅限 root）
     --app string 设置应用程序在容器内运行
     --apply-cgroups 字符串从文件中为容器进程应用 cgroup（仅限 root）
-B, --bind 将用户绑定路径规范字符串化。 spec 的格式为 src[:dest[:opts]]，其中 src 和 dest 是外部路径和内部路径。 如果未给出 dest，则将其设置为等于 src。 挂载选项（“opts”）可以指定为“ro”（只读）或“rw”（读/写，这是默认值）。 多个绑定路径可以由逗号分隔的列表给出。
     --blkio-weight int 块IO相对权重，范围10-1000，0表示禁用
     --blkio-weight-device strings 设备特定块 IO 相对权重
-e, --cleanenv 在运行容器之前清理环境
     --compat 应用设置以提高 OCI/Docker 兼容性。 推断 --containall、--no-init、--no-umask、--no-eval、--writable-tmpfs。
-c, --contain 使用最小的 /dev 并清空其他目录（例如 /tmp 和 $HOME），而不是从主机共享文件系统
-C, --containall 不仅包含文件系统，还包含PID、IPC和环境
     --cpu-shares int 容器的 CPU 份额（默认 -1）
     --cpus string 容器可用的 CPU 数量
     --cpuset-cpus string 可用于容器的主机 CPU 列表
     --cpuset-mems string 容器可用的主机内存节点列表
     --disable-cache 不使用缓存，也不创建缓存
     --dns DNS 服务器的字符串列表，以逗号分隔，添加到 resolv.conf 中
     --docker-host string 指定自定义 Docker 守护进程主机
     --docker-login 以交互方式登录 Docker 存储库
     --drop-caps string 要删除的逗号分隔的功能列表
     --env stringToString 将环境变量传递给包含的进程（默认[]）
     --env-file 字符串将环境变量从文件传递到包含的进程
-f, --fakeroot 在新用户命名空间中以 uid 0 运行容器
     --fusemount strings 格式为“<type>:<fuse command> <mountpoint>”的 FUSE 文件系统挂载规范 - 其中 <type> 是“container”或“host”，指定执行挂载的位置（“container- daemon' 或 'host-daemon' 将运行分离的 FUSE 进程）。 <fuse command> 是 FUSE 可执行文件的路径，以及安装选项。 <mountpoint> 是容器中将连接 FUSE 安装的位置。 例如。 '容器：sshfs 10.0.0.1：/ /sshfs'。 暗示--pid。
-h, --help 运行帮助
-H, --home 字符串主目录规范。 spec 可以是 src 路径或 src:dest 对。 src 是容器外部主目录的源路径，dest 覆盖容器内的主目录。 （默认“/home/circleci”）
     --hostname string 设置容器主机名
-i, --ipc 在新的 IPC 命名空间中运行容器
     --keep-privs 让 root 用户保留容器中的权限（仅限 root）
     --memory string 内存限制（以字节为单位）
     --memory-reservation string 内存软限制（以字节为单位）
     --memory-swap string 交换限制，使用-1表示无限制交换
     --mount stringArray 安装规范，例如 '类型=绑定，源=/opt，目的地=/hostopt'。
-n, --net 在新的网络命名空间中运行容器（默认设置桥接网络接口）
     --network string 指定所需的网络类型，以逗号分隔，每个网络将在容器内启动一个专用接口（默认“bridge”）
     --network-args 字符串指定要传递给 CNI 插件的网络参数
     --no-eval 不要 shell 评估环境变量或 OCI 容器 CMD/ENTRYPOINT/ARGS
     --no-home 如果 /home 不是当前工作目录，则不挂载用户主目录
     --no-https 对于 docker:// oras:// 和 library://<hostname>/... URI 使用 http 而不是 https
     --no-init 不要使用 --pid 启动 shim 进程
     --no-mount strings 禁用在singularity.conf 中设置的一个或多个“mount xxx”选项，指定绝对目标路径以禁用绑定路径条目，或“bind-paths”以禁用所有绑定路径条目。
     --no-privs 删除容器中 root 用户的所有权限）
     --no-umask 不将 umask 传播到容器，设置默认 0022 umask
     --nv 启用 Nvidia 支持
     --nvccli 使用 nvidia-container-cli 进行 GPU 设置（实验）
     --oci 使用 OCI 运行时启动容器（实验性）
     --oom-kill-disable 禁用 OOM 杀手
-o, --overlay 字符串使用overlayFS镜像进行持久数据存储或作为容器的只读层
     --passphrase 提示输入加密密码
     --pem-path string 输入加密容器的 PEM 格式的 RSA 密钥的路径
-p, --pid 在新的 PID 命名空间中运行容器
     --pids-limit int 限制容器PID的数量，使用-1表示无限制
     --pwd string 容器内有效负载进程的初始工作目录
     --rocm 启用实验性 Rocm 支持
-S, --scratch 字符串包含容器内链接到临时目录的临时目录（使用 -W 强制定位）
     --安全字符串启用安全功能（SELinux、Apparmor、Seccomp）
     --sif-fuse 尝试 SIF 的 FUSE 挂载（仅限非特权/用户命名空间）（实验性）
-u, --userns 在新的用户命名空间中运行容器，允许 Singularity 在最新的内核上完全无特权地运行。 这会禁用 Singularity 的某些功能，例如它仅适用于沙箱图像。
     --uts 在新的 UTS 命名空间中运行容器
     --vm 启用虚拟机支持
     --vm-cpu string 分配给虚拟机的 CPU 核心数（隐含 --vm）（默认“1”）
     --vm-err 启用从 VM 附加 stderr
     --vm-ip string 为容器使用分配的 IP 地址。 默认为桥接网络内的 DHCP。 （默认“dhcp”）
     --vm-ram 字符串 分配给虚拟机的 RAM 量（以 MiB 为单位）（隐含 --vm）（默认“1024”）
-W, --workdir 用于 /tmp、/var/tmp 和 $HOME 的字符串工作目录（如果还使用了 -c/--contain）
-w, --writable 默认情况下，所有 Singularity 容器都是只读的。 此选项使文件系统可以读/写方式访问。
     --writable-tmpfs 使文件系统可以通过非持久性数据进行读写访问（仅支持覆盖）

```



### GPU




### 挂载


singularity 运行时会自动挂载这些目录，容器内其他目录归 root 账户所有，无法进行修改。 如果需要运行时挂载其他目录或文件，可以使用 --bind 或 -B 参数。


















