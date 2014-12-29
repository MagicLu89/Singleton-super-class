//
//  MLuSingleton.m
//  ClientSocket
//
//  Created by Magic on 14/12/27.
//  Copyright (c) 2014年 aiousi. All rights reserved.
//

#import "MLuSingleton.h"

//to store subclass
static NSMutableArray * instanceArray = nil;

@implementation MLuSingleton

+(instancetype) shareManager
{
    unsigned long index = NSNotFound;
    
    @synchronized(self){
        if (instanceArray == nil) {
            instanceArray = [[NSMutableArray alloc] init];
        }
        
        index = [self isHaveTheInstance:self];
        
        if (index == NSNotFound) {
            [instanceArray addObject:[[super allocWithZone:NULL] init]];
            
            return [instanceArray lastObject];
        }
    };
    
    return [instanceArray objectAtIndex:index];
}

//judge whether have this subclass
+(NSInteger) isHaveTheInstance:(Class) instance
{
    for (MLuSingleton * inst in instanceArray) {
        if ([inst isKindOfClass:instance]) {
            return [instanceArray indexOfObject:inst];
        }
    }
    
    return [instanceArray indexOfObject:instance];
}

+(instancetype) allocWithZone:(struct _NSZone *)zone
{
    return [self shareManager];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(instancetype) copy
{
    return self;
}

@end
