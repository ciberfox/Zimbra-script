#!/bin/sh
for account in `zmprov -l gaa`; do
webmailen=`zmprov ga $account |grep 'zimbraFeatureMailEnabled: TRUE' |sed 's/zimbraFeatureMailEnabled: TRUE //'`
accountstatus=`zmprov ga $account |grep 'zimbraAccountStatus:'`
if [ "$webmailen" != "" ]; then
echo "web mail is enabled for account $account, $accountstatus"
else
forwardingaddress=""
accountstatus=""
fi
done
