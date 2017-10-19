<?php
//+----------------------------------------------------
// | Description: 
// +----------------------------------------------------
// | Author: OuYangHao [oyhemail@163.com]
// | Last Modified: 2017-10-13
//+----------------------------------------------------
namespace app\common\validate;

use \think\Validate;

class Common
{
    public function __construct()
    {   
	    $this->request = Request::instance();
    }

    public static function isEmail($str)
    {
        ##检验email 
        return preg_match("/^([0-9A-Za-z\\-_\\.]+)@([0-9a-z]+\\.[a-z]{2,3}(\\.[a-z]{2})?)$/i", $str); 
    }

    public static function isUrl($str)
    { 
        ## 检验网址 
        return preg_match("/^http|https:\/\/[A-Za-z0-9]+\.[A-Za-z0-9]+[\/=\?%\-&_~`@[\]\':+!]*([^<>\"])*$/", $str); 
    }

    public static function isQQ($str)
    { 
        ## 检验qq 
        return preg_match("/^[1-9]\d{4,8}$/", $str); 
    }

    public static function isZip($str)
    { 
        ## 检验邮编 
        return preg_match("/^[1-9]\d{5}$/", $str); 
    }

    public static function isIdCard($str)
    { 
        ## 检验身份证 
        return preg_match("/^\d{15}(\d{2}[A-Za-z0-9])?$/", $str); 
    }

    public static function isChinese($str)
    { 
        ## 检验是否是中文 
        return ereg("^[".chr(0xa1)."-".chr(0xff)."]+$",$str); 
    }

    public static function isEnglish($str)
    { 
        ## 检验是否是英文 
        return preg_match("/^[A-Za-z]+$/", $str); 
    }

    public static function isMobile($str)
    { 
        ## 检验是否是手机 
        return preg_match("/^((\(\d{3}\))|(\d{3}\-))?13\d{9}$/", $str); 
    }

    public static function isPhone($str)
    { 
        ## 检验是否是电话 
        return preg_match("/^((\(\d{3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}$/",$str); 
    } 



}
