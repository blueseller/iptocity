<?php
//初始化数据
$citys = file_get_contents("iplist.txt");
$cityLine  = explode("\n",$citys);
$cityArr   = array();
foreach($cityLine as $row)
{
    if(empty($row)){continue;}
    $line = explode("\t",$row);
    if(empty($line[3]) || $line[3] == "未知")
    {
        $cityArr[$line[0]] = $line[2];
    }
    else
    {
        $cityArr[$line[0]] = $line[3];
    }
}

//IP地址转换例子
$ip = '210.110.11.49';
$ip_int = sprintf("%u\n", ip2long($ip));//使用无符号类型，防止出现负数
echo $cityArr[iptocity($ip_int)]."\n";

//大数据量随机测试
$start = time();
for($i=0;$i<1000000;$i++)
{
	$num = rand(247853559,3758095361);
	$cityNum = iptocity($num);
    echo $cityArr[$cityNum]."\n"; 
}
$end = time();
echo $end - $start."\n";
