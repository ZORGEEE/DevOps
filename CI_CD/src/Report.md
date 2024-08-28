## Basic CI/CD

Разработка простого **CI/CD** для проекта *SimpleBashUtils*. Сборка, тестирование, развертывание.

## Part 1. Настройка **gitlab-runner**

`-` `sudo apt-install gitlab-runner`

![](/src/img/ci_cd_1_1.png)

`-` `sudo gitlab-runner register`

![](/src/img/ci_cd_1_2.png)

`-` `sudo gitlab-runner verify`

`-` `systemctl gitlab-runner restart`

![](/src/img/ci_cd_1_3.png)

## Part 2. Сборка

### Создаём файл .gitlab-ci.yml в корне репозитория:

![](/src/img/ci_cd_2_1.png)

### Успешно отработанный пайплайн:

![](/src/img/ci_cd_2_2.png)

### Наличие файлов в папке `artifacts`:

![](/src/img/ci_cd_2_3.png)

## Part 3. Тест кодстайла

### Добавляем тест на стиль в ранее созданный файл:

![](/src/img/ci_cd_3_1.png)

### Пайплайн не отрабатывает:

![](/src/img/ci_cd_3_2.png)

![](/src/img/ci_cd_3_3.png)

### Вношу правки в код:

![](/src/img/ci_cd_3_4.png)

### Успешно отработавший пайплайн:

![](/src/img/ci_cd_3_5.png)

## Part 4. Интеграционные тесты

### Добавляем тест на интеграцию в ранее созданный файл:

![](/src/img/ci_cd_4_1.png)

### Успешно отрабатывает:

![](/src/img/ci_cd_4_2.png)

![](/src/img/ci_cd_4_3.png)

## Part 5. Этап деплоя

### 1. Поднимаю вторую виртуальную машину

### 2. Изменяю netplan на обоих машинах

### 3. Пингую их между собой:

![](/src/img/ci_cd_5_1.png)
![](/src/img/ci_cd_5_2.png)

### 4. Создаю пользователя gitlab-runner на первой машине
`sudo su gitlab-runner`

### 5. Генерирую ключ `ssh` 
`ssh-keygen -t rsa -B 2048

### 6. Устанавливаю `openssh-server` на вторую машину

### 7. Копирую `ssh` - ключ на вторую машину:

![](/src/img/ci_cd_5_3.png)

### 8. Выдаю права на второй машине для папки `/usr/local/bin`

`sudo chmod -R 777 /usr/local/bin/`

![](/src/img/ci_cd_5_4.png)

### 9. Создаю скрипт для копирования артефактов на вторую машину по `ssh`

![](/src/img/ci_cd_5_5.png)

### 10. Успешно отработавший пайп:

![](/src/img/ci_cd_5_6.png)

### 11. Файлы появились в нужной папке на второй машине

![](/src/img/ci_cd_5_7.png)

## Part 6. Дополнительно. Уведомления

### Настрой уведомления об успешном/неуспешном выполнении пайплайна через бота с именем «[твой nickname] DO6 CI/CD» в *Telegram*.

#### Через бот @geymyid_bot получаю id своего пользователя

#### Через бот @BotFather получаю токен для своего бота

### Добавляю в `yml` файл строчки с вызовом скрипта

![](/src/img/ci_cd_6_1.png)

### Создаю скрипт для телеграм бота

![](/src/img/ci_cd_6_2.png)

### Работающий телеграм бот

![](/src/img/ci_cd_6_3.png)
