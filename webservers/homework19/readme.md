# Задание:

### Настроить для двух вебсерверов (apache2, nginx):
* статический контент /opt/apache2|nginx/www.test.com/
* логи /opt/apache2|nginx/logs/
* папка с логами должна быть смонтирована на хосте
* настроить алиас в конфиге веберверов www.test.com

/opt/apache2|nginx/
  Logs - помещаются и пробрасываются из контейнера на хост
www.test.com - статика (index.html)
