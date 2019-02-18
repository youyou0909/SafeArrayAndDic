//
//  NSMutableDictionary+Safe.m
//  SafeArrayAndDictionary
//
//  Created by CLJ_Ceair on 2019/2/18.
//  Copyright © 2019 CLJ_Ceair. All rights reserved.
//

#import "NSMutableDictionary+Safe.h"

@implementation NSMutableDictionary (Safe)
- (void)safeSetObject:(id)aObj forKey:(id<NSCopying>)aKey
{
    if (aObj && ![aObj isKindOfClass:[NSNull class]] && aKey) {
        if ([aObj isKindOfClass:[NSString class]] ) {
            NSString * str=(NSString*)aObj;
            if (str.length==0) {
                return;
            }
        }
        [self safeSetObject:aObj forKey:aKey];
    } else {
        return;
    }
}
@end
