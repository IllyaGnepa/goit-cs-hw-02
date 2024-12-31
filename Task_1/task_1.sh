#!/bin/bash

# Список вебсайтів для перевірки
WEBSITES=("https://google.com" "https://facebook.com" "https://twitter.com")

# Назва файлу логів
LOG_FILE="website_status.log"

# Очищення файлу логів перед записом нових результатів
> "$LOG_FILE"

# Перевірка кожного сайту
for SITE in "${WEBSITES[@]}"; do
    STATUS=$(curl -o /dev/null -s -w "%{http_code}" -L "$SITE")
    if [ "$STATUS" -eq 200 ]; then
        echo "<$SITE> is UP" | tee -a "$LOG_FILE"
    else
        echo "<$SITE> is DOWN" | tee -a "$LOG_FILE"
    fi
done

# Повідомлення про завершення
echo "Результати перевірки записано у файл: $LOG_FILE"