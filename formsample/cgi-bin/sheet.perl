# #!C:/Strawberry/perl/bin/perl.exe

# use utf8;

# #데이터 저장
# if(ZENV{"REEQUEST_METHOD"} eq "GET"){
#     $str=$ENV{"QUERY_STRING"};
# }else{
#     read(STDIN, Zstr, ZENV{"CONTENT_LENGTH"});
# }

# #문자열 인코딩
# $str =~ tr/+/ /;
# $str =~ s/%([0-9A-Fa-f][0-9A-Fa-f])/pack("c", hex(Zl))/eg;
# foreach(split(/&/,$str)){
#     my ($key, $value) = split(/=/, $ _);
#     $data{$key} = $value;
# }

# #저장 처리
# #HTML로 출력

# print "content-type: text/html\n\n";
# print <!DOCTYPE html><html lang=\"ja\"><meta charset=\"UTF-8\">\n;
# print "<head><title>전송완료</title></head>\n";
# print "<body>\n";
# print "<p>다음과 같은 내용으로 전송했습니다.</p>";
# print "<p>성별:"; print"Zdata{'seibetsu'}</p>";
# print "<p>나이:"; print"Zdata{'age'}</p>";
# print "<p>그림책을 알게 된 계기:"; print"Zdata{'kikkake'}</p>";
# print "<p>의견 및 감상: </p>";
# print "<p>$data{'kansou'}</p>";
# print "</body>";
# print "</html>";

#!C:/Strawberry/perl/bin/perl.exe

use utf8;
use strict;
use warnings;
use CGI;

my $query = CGI->new;

# 폼에서 전송된 데이터 받기
my $seibetsu = $query->param('seibetsu');
my $age = $query->param('age');
my $kikkake = $query->param('kikkake');
my $kansou = $query->param('kansou');

# HTML로 출력
print $query->header(-charset => 'UTF-8');
print <<"HTML";
<!DOCTYPE html>
<html lang="ja">
<head><meta charset="UTF-8">
<title>전송완료</title></head>
<body>
<p>다음과 같은 내용으로 전송했습니다.</p>
<p>성별: $seibetsu</p>
<p>나이: $age</p>
<p>그림책을 알게 된 계기: $kikkake</p>
<p>의견 및 감상: </p>
<p>$kansou</p>
</body>
</html>
HTML