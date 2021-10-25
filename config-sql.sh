#!/bin/bash
echo "init git clone"
cd serve && git clone https://github.com/rathena/rathena.git emulador && cd ..
echo "finish git clone"

echo "init copy"
cd serve/emulador/sql-files

cp -v ../../../serve/emulador/sql-files/item_cash_db.sql ../../../db/sql-files/item_cash_db.sql
cp -v ../../../serve/emulador/sql-files/item_db_etc.sql ../../../db/sql-files/item_db_etc.sql
cp -v ../../../serve/emulador/sql-files/mob_db2.sql ../../../db/sql-files/mob_db2.sql
cp -v ../../../serve/emulador/sql-files/item_cash_db2.sql ../../../db/sql-files/item_cash_db2.sql
cp -v ../../../serve/emulador/sql-files/item_db_usable.sql ../../../db/sql-files/item_db_usable.sql
cp -v ../../../serve/emulador/sql-files/mob_skill_db.sql ../../../db/sql-files/mob_skill_db.sql
cp -v ../../../serve/emulador/sql-files/item_db.sql ../../../db/sql-files/item_db.sql
cp -v ../../../serve/emulador/sql-files/logs.sql ../../../db/sql-files/logs.sql
cp -v ../../../serve/emulador/sql-files/mob_skill_db2.sql ../../../db/sql-files/mob_skill_db2.sql
cp -v ../../../serve/emulador/sql-files/item_db2.sql ../../../db/sql-files/item_db2.sql
cp -v ../../../serve/emulador/sql-files/main.sql ../../../db/sql-files/main.sql
cp -v ../../../serve/emulador/sql-files/roulette_default_data.sql ../../../db/sql-files/roulette_default_data.sql
cp -v ../../../serve/emulador/sql-files/item_db_equip.sql ../../../db/sql-files/item_db_equip.sql
cp -v ../../../serve/emulador/sql-files/mob_db.sql ../../../db/sql-files/mob_db.sql
echo "finish copy"