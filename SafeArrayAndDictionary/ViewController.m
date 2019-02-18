//
//  ViewController.m
//  SafeArrayAndDictionary
//
//  Created by CLJ_Ceair on 2019/2/18.
//  Copyright © 2019 CLJ_Ceair. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //
    NSArray *placeholder = [NSArray alloc];
    NSArray *placeholder2 = [NSArray alloc];
    NSArray *arr1 = @[];
    NSArray *arr2 = [placeholder initWithObjects:@0, nil];
    NSArray *arr3 = [placeholder initWithObjects:@0, @1, nil];
    NSArray *arr4 = [placeholder initWithObjects:@0, @1, @2, nil];
    
    NSLog(@"placeholder: %s", object_getClassName(placeholder));    // placeholder: __NSPlaceholderArray
    NSLog(@"arr1: %s", object_getClassName(arr1));                  // arr1: __NSArray0
    NSLog(@"arr2: %s", object_getClassName(arr2));                  // arr2: __NSSingleObjectArrayI
    NSLog(@"arr3: %s", object_getClassName(arr3));                  // arr3: __NSArrayI
    NSLog(@"arr4: %s", object_getClassName(arr4));                  // arr4: __NSArrayI
    
    NSDictionary * placeholderDic = [NSDictionary alloc];
    NSDictionary * dic1 = [placeholderDic init];
    NSDictionary * dic2 = [placeholderDic initWithObjectsAndKeys:[NSNull null],@"key", nil];
    NSDictionary * dic3 = [placeholderDic initWithObjectsAndKeys:@"valuesd",@"key",[NSNull null],@"key2",nil];
    NSDictionary * dic4 = [placeholderDic initWithObjectsAndKeys:@"valuesd",@"key",@"valuesd2",@"key2",@"valuesd3",@"key3",nil];
    
    NSLog(@"===================");
    NSLog(@"placeholder: %s", object_getClassName(placeholderDic));    // placeholder: __NSPlaceholderArray
    NSLog(@"arr1: %s", object_getClassName(dic1));                  // arr1: __NSArray0
    NSLog(@"arr2: %s", object_getClassName(dic2));                  // arr2: __NSSingleObjectArrayI
    NSLog(@"arr3: %s", object_getClassName(dic3));                  // arr3: __NSArrayI
    NSLog(@"arr4: %s", object_getClassName(dic4));
    
    
    NSMutableArray *mPlaceholder = [NSMutableArray alloc];
    NSMutableArray *mArr1 = [mPlaceholder init];
    NSMutableArray *mArr2 = [mPlaceholder initWithObjects:@0, nil];
    NSMutableArray *mArr3 = [mPlaceholder initWithObjects:@0, @1, nil];
    NSMutableArray *mArr4 = [mPlaceholder initWithObjects:@0, @1,@2, nil];
    
    
    NSLog(@"===================");
    NSLog(@"mPlaceholder: %s", object_getClassName(mPlaceholder));    // mPlaceholder: __NSPlaceholderArray
    NSLog(@"mArr1: %s", object_getClassName(mArr1));                  // mArr1: __NSArrayM
    NSLog(@"mArr2: %s", object_getClassName(mArr2));                  // mArr2: __NSArrayM
    NSLog(@"mArr3: %s", object_getClassName(mArr3));                  // mArr3: __NSArrayM
    NSLog(@"mArr4: %s", object_getClassName(mArr4));                  // mArr4: __NSArrayM
    
    
    NSLog(@"%p ====  %p",placeholder,placeholder2);
    
    NSString * str = [dic2 objectForKey:@"key"];
    NSNumber * num = [arr2 objectAtIndex:10];
    
}


@end
