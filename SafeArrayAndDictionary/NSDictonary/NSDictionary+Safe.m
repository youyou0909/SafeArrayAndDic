//
//  NSDictionary+Safe.m
//  SafeArrayAndDictionary
//
//  Created by CLJ_Ceair on 2019/2/18.
//  Copyright © 2019 CLJ_Ceair. All rights reserved.
//

#import "NSDictionary+Safe.h"

@implementation NSDictionary (Safe)
- (id)safeObjectForKey:(NSString *)key {
    if(key == nil)
        return nil;
    id value = [self safeObjectForKey:key];
    if (value == [NSNull null]) {
        return nil;
    }
    return value;
}

- (void)safeSetValue:(id)object forKey:(id)key {
    if ([key isKindOfClass:[NSNull class]]) {
        return;
    }
    if ([object isKindOfClass:[NSNull class]]) {
        [self safeSetValue:@"" forKey:key];
    }else{
        [self safeSetValue:object forKey:key];
    }
}


@end
