# Python Project Template

### Features
- 🌎 Environment Management
    - 🖋️ Venv
    - 🐋 DevContainer
- 🧪 Testing
    - 🧪 Pytest
    - 🔬 Coverage
- 🔍 Formating/Linting
    - 🦀 Ruff
    - 🖤 Black
- 📦 Contanerization
    - 🐋 Docker

```bash
python -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -e .[dev,test]
```

```bash
make run
```