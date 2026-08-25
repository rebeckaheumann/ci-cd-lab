# CI/CD Lab

一个用于学习和实践 CI/CD 的最小 FastAPI 服务。项目从可复现的本地开发流程开始，逐步接入持续集成、构建制品、容器化和自动部署。

## 环境要求

- Python 3.12
- [uv](https://docs.astral.sh/uv/)
- GNU Make

## 初始化环境

根据 `pyproject.toml` 和 `uv.lock` 创建或同步项目虚拟环境：

```bash
make sync
```

## 启动应用

启动支持自动重载的本地开发服务器：

```bash
make run
```

应用默认监听 `http://127.0.0.1:8000`。健康检查接口：

```bash
curl -i http://127.0.0.1:8000/health
```

预期响应：

```json
{
  "status": "ok"
}
```

## 本地质量检查

运行格式检查、lint 和自动化测试：

```bash
make check
```

也可以分别运行：

| 命令 | 用途 |
|---|---|
| `make format` | 使用 Ruff 格式化代码 |
| `make format-check` | 检查代码格式，不修改文件 |
| `make lint` | 使用 Ruff 检查代码问题 |
| `make test` | 使用 pytest 执行测试 |

## 项目结构

```text
.
├── app/                  # FastAPI 应用
├── tests/                # 自动化测试
├── docs/                 # 学习文档
├── Makefile              # 本地自动化入口
├── pyproject.toml        # 项目和依赖配置
└── uv.lock               # 锁定的完整依赖版本
```

完整学习路线见 [`docs/LEARNING_PLAN.md`](docs/LEARNING_PLAN.md)。