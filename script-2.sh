#!/bin/sh
end=0
until test $end -eq 1
do 
echo Are you okay? \(y\/n\)
read input
case $input in
 'y'|'Y')
  echo glad to hear it
  end=1
  ;;
 'n'|'n')
  echo sorry that you are not feeling good
  end=1
  ;;
 *)
  echo incorrect choice
esac
done

