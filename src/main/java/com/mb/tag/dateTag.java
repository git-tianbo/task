package com.mb.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.lang.Long;

public class dateTag extends TagSupport {

    public Long value;

    //    重写    TagSupport的 doStartTag方法
    @Override
    public int doStartTag() throws JspException {

//        将传入的Long类型value  拆箱为long类型
        long time = value;

//        // 使用Calendar获取当前系统时间，需要获取Calendar对象后转换成Date输出
        Calendar c = Calendar.getInstance();

//      根据毫秒数设置时间
        c.setTimeInMillis(time);

        // 通过SimpleDateFormat设置时间格式
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        //转换时间格式    通过simpleDateFormat的format方法转换时间为String类型
        String s = dateFormat.format(c.getTime());

        try{

//            使用pageContext对象向jsp页面写入输入流，也就是我们刚转换的date格式的String字符串。
            pageContext.getOut().write(s);

        }catch (IOException e){
            e.printStackTrace();
        }
        return super.doStartTag();
    }

    public void setValue(Long value){
        this.value = value;
    }

}

