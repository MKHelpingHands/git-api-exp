/^###/ {
  header = $0 "\r\n";
  split($0, a1, "»¦«");
  split(a1[3], arr, " ");
  month = arr[3]
}
/^---/ {
  split($0, parts, "/");
  env = parts[3]
}
/^[-][[:digit:]]/ {
  gsub(/^-/,"Remove»¦«",$0);
  gsub(/,/,"»¦«",$0);
  gsub(/###/,"",header);
  printf "%s»¦«%s»¦«%s»¦«%s", env, month, $0, header
}
/^[+][[:digit:]]/ {
  gsub(/^+/,"Add»¦«",$0);
  gsub(/,/,"»¦«",$0);
  gsub(/###/,"",header);
  printf "%s»¦«%s»¦«%s»¦«%s", env, month, $0, header
}
