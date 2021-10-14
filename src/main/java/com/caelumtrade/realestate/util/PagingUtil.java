package com.caelumtrade.realestate.util;

public class PagingUtil {


    public static String adminPaging(int totalRecordCount,int pageSize,int blockPage,int nowPage){

        StringBuffer bf = new StringBuffer();

        bf.append("<div class='page_num'>");

        int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));

        int intTemp = ((nowPage - 1) / blockPage) * blockPage + 1;

        if((intTemp -blockPage) >= 0) {
            bf.append("<div class='prev'><a href='javascript:getList("+(intTemp -blockPage)+")' > &nbsp; </a></div>");
        } else {
            bf.append("<div class='prev'><a href='javascript:getList("+1+")' > &nbsp; </a></div>");
        }

        int blockCount = 1;

        while(blockCount <= blockPage && intTemp <= totalPage){

            if(intTemp == nowPage){
                bf.append("<div class='page on'><a href='#'>"+intTemp+"</a></div>");
            } else {
                bf.append("<div class='page'><a href='javascript:getList("+intTemp+")'>"+intTemp+"</a></div>");
            }
            intTemp = intTemp + 1;
            blockCount = blockCount + 1;
        }

        if(totalPage < intTemp) {
            bf.append("<div class='next'><a href='javascript:getList("+(totalPage)+")'> &nbsp; </a></div>");
        } else {
            bf.append("<div class='next'><a href='javascript:getList("+(intTemp)+")'> &nbsp; </a></div>");
        }

        bf.append("</div>");

        return bf.toString();
    }

}
