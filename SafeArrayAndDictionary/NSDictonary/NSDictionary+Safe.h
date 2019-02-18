//
//  NSDictionary+Safe.h
//  SafeArrayAndDictionary
//
//  Created by CLJ_Ceair on 2019/2/18.
//  Copyright © 2019 CLJ_Ceair. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Safe)
//用于数据解析，返回对象为字符串或值类型，数组和字典不要用此方法
- (id)safeObjectForKey:(NSString *)key;

//设置键值对 针对对象为空处理
- (void)safeSetValue:(id)object forKey:(id)key;

@end
