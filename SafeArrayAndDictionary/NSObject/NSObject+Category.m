//
//  NSObject+Category.m
//  SafeArrayAndDictionary
//
//  Created by CLJ_Ceair on 2019/2/18.
//  Copyright © 2019 CLJ_Ceair. All rights reserved.
//

#import "NSObject+Category.h"

#define GetClass(obj)    object_getClass(obj)

@implementation NSObject (Category)

+ (BOOL)swizzleMethod:(SEL)origSel withMethod:(SEL)altSel {
    Method origMethod = class_getInstanceMethod(self, origSel);
    if (!origMethod) {
        return NO;
    }
    
    Method altMethod = class_getInstanceMethod(self, altSel);
    if (!altMethod) {
        return NO;
    }
    
    class_addMethod(self,
                    origSel,
                    class_getMethodImplementation(self, origSel),
                    method_getTypeEncoding(origMethod));
    class_addMethod(self,
                    altSel,
                    class_getMethodImplementation(self, altSel),
                    method_getTypeEncoding(altMethod));
    
    method_exchangeImplementations(class_getInstanceMethod(self, origSel), class_getInstanceMethod(self, altSel));
    return YES;
}

+ (BOOL)swizzleClassMethod:(SEL)origSel withClassMethod:(SEL)altSel {
    return [GetClass((id)self) swizzleMethod:origSel withMethod:altSel];
}
@end
