%s/one/1/g



%s/[A-z]//g

%s/[0-9]\zs\(.*\)\ze[0-9]//g

%s/^[0-9]$/\0\0/g

%!awk '{print; total+=$1}END{print total}'
