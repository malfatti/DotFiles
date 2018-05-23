## To set a target
crossdev -S -P -v -t $Target

## To test
"$Target"-gcc --version

## To remove target
crossdev -C $Target
