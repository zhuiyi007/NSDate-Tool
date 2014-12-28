//
//  NSDate+Tool.h
//  weibo
//
//  Created by ZhuiYi on 14/12/13.
//  Copyright (c) 2014年 ZhuiYi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Tool)
/**
 *  比较两个时间
 *
 *  @param date 要比较的时间
 *
 *  @return 比较的结果
 */
- (NSDateComponents *)componentsDate:(NSDate *)date;
/**
 *  判断是否为今年
 *
 *  @return 结果
 */
- (BOOL)isThisYear;
/**
 *  判断是否为今天
 *
 *  @return 结果
 */
- (BOOL)isToday;
/**
 *  判断是否为昨天
 *
 *  @return 结果
 */
- (BOOL)isYesterday;
/**
 *  判断是否为明天
 *
 *  @return 结果
 */
- (BOOL)isTomorrow;

@end
