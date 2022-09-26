BEGIN {
  FS=OFS="»¦«";
  printf "GitHub commit reference;Author;Change date;Type\r\n"
}
NF==12 && /^prod»¦«/  {
  gsub(/;/,",",$3);
  gsub(/;/,",",$4);
  gsub(/;/,",",$5);
  gsub(/;/,",",$6);
  
  printf  "%s;%s;%s;%s;\r\n" ,$3,$4,$5,$6
}
