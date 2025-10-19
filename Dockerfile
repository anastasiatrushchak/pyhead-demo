# 1. Беремо базовий образ Python
FROM python:3.10-slim

# 2. Встановлюємо робочу директорію
WORKDIR /app

# 3. Копіюємо файли, потрібні для встановлення
# README потрібен, бо setup.py його читає для long_description
COPY setup.py .
COPY README.md . 

# 4. Копіюємо код нашого пакету
# Зверніть увагу на назву папки pyhead_demo
COPY pyhead_demo/ ./pyhead_demo/

# 5. Встановлюємо наш пакет всередині контейнера
# Це автоматично встановить 'click' і створить команду 'pyhead-demo'
RUN pip install .

# 6. Команда за замовчуванням
# Це те, що запуститься, коли ви напишете 'docker run <image_name>'
ENTRYPOINT ["pyhead-demo"]

# 7. (Опціонально) Що робити, якщо контейнер запустили без аргументів
# Якщо ENTRYPOINT - це "pyhead-demo", то це запустить "pyhead-demo --help"
CMD ["--help"]