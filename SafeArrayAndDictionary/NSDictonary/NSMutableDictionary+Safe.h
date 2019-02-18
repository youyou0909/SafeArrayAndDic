//
//  NSMutableDictionary+Safe.h
//  SafeArrayAndDictionary
//
//  Created by CLJ_Ceair on 2019/2/18.
//  Copyright © 2019 CLJ_Ceair. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (Safe)
- (void)safeSetObject:(id)aObj forKey:(id<NSCopying>)aKey;
@end
