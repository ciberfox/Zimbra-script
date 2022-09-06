#!/bin/sh
for account in `zmprov -l gaa`; do
forwardingaddress=`zmprov ga $account |grep 'zimbraMailForwardingAddress:' |sed 's/zimbraMailForwardingAddress: //'`
if [ "$forwardingaddress" != "" ]; then
echo "$account is forwarding to $forwardingaddress"
else
forwardingaddress=""
fi
done
