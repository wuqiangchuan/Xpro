#!/bin/env python2.7
#coding:utf-8
##### code  by  mik ####
##### qiangchuan.wu ####

from devops import models




def UsePagination(pages,disNum,allCount):
         #显示第一页的内容
         #翻页列表
    if allCount <= disNum:
        x = [1]
    elif allCount > disNum:
        if allCount%disNum != 0:
            x = [x+1 for x in range(0,divmod(allCount,disNum)[0]+1)]
        else:
            x = [x+1 for x in range(0,divmod(allCount,disNum)[0])]

    if pages is None or pages == '' or int(pages) <= 1:
        pages = 1
        beforePage = 1
        afterPage = 1
        Pages = [pages]

    if allCount <= disNum:
        pages = 1
        beforePage = 1
        afterPage = 1
        Pages = [pages]

    if pages and int(pages) <= x[-1]:
        pages = int(pages)
        beforePage = pages-1
        afterPage = pages+1
        Pages = [pages]

    if pages and int(pages) > x[-1]:
        pages = x[-1]
        beforePage = x[-1]-1
        afterPage = x[-1]
        Pages = [pages]
        
    return Pages,beforePage,afterPage,x,pages
    