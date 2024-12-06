#!/usr/bin/sh
mariadb-dump AhOuaisdb -uroot -pBatmanEgy > /root/Backup-`(date -I)`.sql
echo "Sauvegarde terminée"