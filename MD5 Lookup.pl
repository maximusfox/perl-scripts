#!/usr/bin/perl
# md5 lookup
# Coded by: Saime
# Website: http://saime.biz
use LWP::UserAgent;
use HTTP::Cookies;
print "[+] MD5 Lookup Tool\n";
print "[+] Coded by: Saime\n";
print "\n[+] Hash: ";
$hash = <STDIN>;
chomp $hash;
$www = new LWP::UserAgent;
$site = "http://md5.rednoize.com/?q=$hash/*";
$res = $www -> get($site) or error();
$res -> content() =~ /"result" >(.*)</ or error();
print "\n[+] md5.rednoize.com\t: $1 \n\n";
$site = "http://gdataonline.com/qkhash.php?mode=txt&hash=$hash/*";
$res = $www -> get($site) or error();
$res -> content() =~ /<b>(.*)</ or error();
print "[+] gdataonline.com\t: $1 \n\n";
sub error()
{}