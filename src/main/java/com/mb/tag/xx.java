package com.mb.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.text.SimpleDateFormat;

public class xx extends TagSupport {
    private Long value;
//    重写    TagSupport的 doStartTag方法
    @Override
    public int doStartTag() throws JspException {

            // 设置时间格式，通过simpleDateFormat的format方法转换时间格式
            SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss" );

            //转换时间格式        System.currentTimeMillis()获取当前系统时间
            String s = date.format(System.currentTimeMillis());
       try {
//           使用pageContext对象向jsp页面写入输入流，也就是我们刚转换的date格式的String字符串。

                pageContext.getOut().write(s);

            } catch (IOException e) {

                e.printStackTrace();
            }
            return super.doStartTag();
        }
        //set方法,用来设置Value值
        public void setValue(Long value) {
            this.value = value;
        }
    }
