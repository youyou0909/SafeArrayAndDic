//
//  NSObject+Category.h
//  SafeArrayAndDictionary
//
//  Created by CLJ_Ceair on 2019/2/18.
//  Copyright © 2019 CLJ_Ceair. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

NS_ASSUME_NONNULL_BEGIN
@interface NSObject (Category)

@property (nonatomic, strong, readonly) NSMutableArray *associatedObjectNames;


/*
 * swizzle实例方法
 * origSel_: 原方法
 * altSel_:新方法
 */
+ (BOOL)swizzleMethod:(SEL)origSel withMethod:(SEL)altSel;

/*
 * swizzle类方法
 * origSel_: 原方法
 * altSel_:新方法
 */
+ (BOOL)swizzleClassMethod:(SEL)origSel withClassMethod:(SEL)altSel;
@end

NS_ASSUME_NONNULL_END
