//
//  LJSafeCategoryUtil.m
//  SafeArrayAndDictionary
//
//  Created by CLJ_Ceair on 2019/2/18.
//  Copyright © 2019 CLJ_Ceair. All rights reserved.
//

#import "LJSafeCategoryUtil.h"
#import "NSObject+Category.h"
#import "NSMutableArray+Safe.h"
#import "NSMutableDictionary+Safe.h"
#import "NSArray+Safe.h"
#import "NSDictionary+Safe.h"
#import <objc/runtime.h>
@implementation LJSafeCategoryUtil

+(void)setupSafeCategory
{
    
    // __NSArrayI: [NSArray alloc] 后得到的是__NSPlaceholderArray类的单例对象 init之后会得到__NSArrayI，__NSArray0，__NSSingleObjectArrayI，__NSArrayM（这个是NSMutableArray类）这些真实的类对象
    [objc_getClass("__NSArrayI") swizzleMethod:@selector(objectAtIndex:) withMethod:@selector(safeObjectAtIndex:)];
    // 空数组越界安全
    [objc_getClass("__NSArray0") swizzleMethod:@selector(objectAtIndex:) withMethod:@selector(safeObjectAtIndex:)];
    // 单元素数组越界安全
    [objc_getClass("__NSSingleObjectArrayI") swizzleMethod:@selector(objectAtIndex:) withMethod:@selector(safeObjectAtIndex:)];
    
    [objc_getClass("__NSArrayM") swizzleMethod:@selector(objectAtIndex:) withMethod:@selector(safeObjectAtIndex:)];
    [objc_getClass("__NSArrayM") swizzleMethod:@selector(addObject:) withMethod:@selector(safeAddObject:)];
    
    [objc_getClass("__NSDictionaryI") swizzleMethod:@selector(objectForKey:) withMethod:@selector(safeObjectForKey:)];
    
    //    // 空字典越界安全 本身就返回nil
    //    [objc_getClass("__NSDictionary0") swizzleMethod:@selector(objectForKey:) withMethod:@selector(safeObjectForKey:)];
    // 单元素字典越界安全 value为<null>时 返回nil
    [objc_getClass("__NSSingleEntryDictionaryI") swizzleMethod:@selector(objectForKey:) withMethod:@selector(safeObjectForKey:)];
    
    [objc_getClass("__NSDictionaryM") swizzleMethod:@selector(objectForKey:) withMethod:@selector(safeObjectForKey:)];
    [objc_getClass("__NSDictionaryM") swizzleMethod:@selector(setObject:forKey:) withMethod:@selector(safeSetObject:forKey:)];
}
@end
