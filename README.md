# SafeArrayAndDic
数组字典防越界完整封装
大家知道防越界一般会使用运行时特性来替换方法 一般都是这样写的：
```
Class myClass = NSClassFromString(@"__NSArrayI");
        Method safeMethod=class_getInstanceMethod (self, @selector(objectAtSafeIndexI:));
        
        Method unsafeMethod=class_getInstanceMethod (myClass, @selector(objectAtIndex:));
        method_exchangeImplementations(unsafeMethod, safeMethod);
```

但是我看到很多人只考虑__NSArrayI和__NSArrayM这两种情况。

其实这样是考虑不全的 应该考虑__NSArrayI（两个及两个以上元素数组）、 __NSArrayM （可变数组）、__NSArray0（空数组）、 __NSSingleObjectArrayI（单元素数组）这四种情况。

字典也类似 又有不同 其实字典的空字典不用做特殊处理 其他的还是需要的。
