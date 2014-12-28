//
//  NSDate+Tool.m
//  weibo
//
//  Created by ZhuiYi on 14/12/13.
//  Copyright (c) 2014年 ZhuiYi. All rights reserved.
//

#import "NSDate+Tool.h"

@implementation NSDate (Tool)

- (NSDateComponents *)componentsDate:(NSDate *)date
{
    /*
     NSCalendarUnitYear               = kCFCalendarUnitYear,
     NSCalendarUnitMonth              = kCFCalendarUnitMonth,
     NSCalendarUnitDay                = kCFCalendarUnitDay,
     NSCalendarUnitHour               = kCFCalendarUnitHour,
     NSCalendarUnitMinute             = kCFCalendarUnitMinute,
     NSCalendarUnitSecond             = kCFCalendarUnitSecond,
     */
    NSCalendar *calendar = [NSCalendar currentCalendar];
    int unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents *cmp = [calendar components:unit fromDate:self toDate:date options:0];
    return cmp;
}

#pragma mark - 判断是否为今年
- (BOOL)isThisYear
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *cmp = [calendar components:NSCalendarUnitYear fromDate:self.dateWithoutHHmmss toDate:[NSDate date].dateWithoutHHmmss options:0];
    return cmp.year == 0;
}

#pragma mark - 判断是否为今天
- (BOOL)isToday
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *cmp = [calendar components:NSCalendarUnitDay fromDate:self.dateWithoutHHmmss toDate:[NSDate date].dateWithoutHHmmss options:0];
    return cmp.day == 0;
}

#pragma mark - 判断是否为昨天
- (BOOL)isYesterday
{
    // 获得系统自带的日历(所有日期)
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *cmp = [calendar components:NSCalendarUnitDay fromDate:self.dateWithoutHHmmss toDate:[NSDate date].dateWithoutHHmmss options:0];
    return cmp.day == 1;
}

#pragma mark - 判断是否为明天
- (BOOL)isTomorrow
{
    // 获得系统自带的日历(所有日期)
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *cmp = [calendar components:NSCalendarUnitDay fromDate:self.dateWithoutHHmmss toDate:[NSDate date].dateWithoutHHmmss options:0];
    return cmp.day == -1;
}

#pragma mark - 返回一个没有时分秒的日期
- (NSDate *)dateWithoutHHmmss
{
    NSDateFormatter *frm = [[NSDateFormatter alloc] init];
    frm.dateFormat = @"yyyy-MM-dd";
    NSString *nowDateStr = [frm stringFromDate:self];
    return [frm dateFromString:nowDateStr];
}
@end
