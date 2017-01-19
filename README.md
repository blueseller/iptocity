# iptocity

### 描述

ip地址转城市php扩展。

此代码在php5.4、php5.5上都能正常编译安装。
php7没有尝试，使用者可以自行尝试。

### 安装过程

/usr/local/php/bin/phpize

./configure --with-php-config=/usr/local/php/bin/php-config

make

make成功后，会在modules目录下面生成iptocity.so文件。把此文件cp到对应的php扩展lib目录下

最后修改php.ini,引入iptocity.so

使用php -m 测试扩展是否正确引入

### 使用例子

请直接查看并运行 test.php。



