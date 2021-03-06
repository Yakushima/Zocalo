#! /bin/sh

#     Copyright 2008 Chris Hibbert.  All rights reserved.
#    This file is published under the terms of the MIT license, a copy of
#    which has been included with this distribution in the LICENSE file.

if [ ! -d etc -o ! -d jars ] 
then
   echo "    " Please run this command in the directory containing the 
   echo "    " etc and jars directories.
   exit 2
fi

if [ ! -f etc/sqltool.rc ] 
then
   echo "    " Could not find etc/sqltool.rc.  Something is wrong with
   echo "    " the installation.  Please try re-installing.
   exit 2
fi

SQLFILE="etc/sqltool.rc"

sql="SELECT owner as trader, price, quantity, claims.name as claim, positions.name as pos, \
                        time, openingprice, closingprice \
      from PUBLIC.TRADES, public.claims, public.positions
             where trades.pos = positions.positions_id and  \
                  claims.claims_id = positions.claims_id and  \
				  claims.name like '$1'; "

java -jar jars/hsqldb.jar --rcfile $SQLFILE --sql "$sql" zdb
