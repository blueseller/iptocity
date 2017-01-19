<?php
//初始化数据
$citys = file_get_contents("iplist.txt");
$cityLine  = explode("\n",$citys);
$cityArr   = array();
foreach($cityLine as $row)
{
    $line = explode("\t",$row);
    if(empty($line[3]) || $line[3] == "未知")
    {
        $cityLine[$line[0]] = $line[2];
    }
    else
    {
        $cityLine[$line[0]] = $line[3];
    }
}
$start = time();
for($i=0;$i<1000000;$i++)
{
	$num = rand(247853559,3758095361);
	$cityNum = iptocity($num);
    echo $cityLine[$cityNum]."\n"; 
}
$end = time();
echo $end - $start."\n";
