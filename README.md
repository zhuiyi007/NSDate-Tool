NSDate-Tool
===========

日期分类,判断是否是今年,今天等(iOS8之后系统提供了类似方法)

比较两个时间,通过NSDateComponents来拿到具体相差的时间
- (NSDateComponents *)componentsDate:(NSDate *)date;


判断是否为今年
- (BOOL)isThisYear;

判断是否为今天
- (BOOL)isToday;

判断是否为昨天
- (BOOL)isYesterday;

判断是否为明天
- (BOOL)isTomorrow;
