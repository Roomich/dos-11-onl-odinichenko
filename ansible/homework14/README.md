# Задание

### Создать окружение с минимум 3 машинами:
1. centos
1. centos/debian
1. debian/ubuntu

### На мастере
* установить ansible.
* создать inventory.
* создать playbook, который устанавливает apache на все хосты, загружает index.html в /var/www/html/index.html.
* Сделать handler, который будет перезагружать apache, если index.html менялся.