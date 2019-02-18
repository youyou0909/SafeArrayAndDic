//
//  LJSafeCategoryUtil.h
//  SafeArrayAndDictionary
//
//  Created by CLJ_Ceair on 2019/2/18.
//  Copyright © 2019 CLJ_Ceair. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LJSafeCategoryUtil : NSObject
//无痕减少NSArray、NSDictonary崩溃率
+(void)setupSafeCategory;
@end

NS_ASSUME_NONNULL_END
