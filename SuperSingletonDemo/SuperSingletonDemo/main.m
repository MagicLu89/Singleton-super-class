//
//  main.m
//  SuperSingletonDemo
//
//  Created by Magic on 14/12/29.
//  Copyright (c) 2014年 aiousi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MLuFirSingle.h"
#import "MLuSecSingle.h"

int main(int argc, const char * argv[]) {
    
    MLuFirSingle * mluFir = [MLuFirSingle shareManager];
    MLuFirSingle * mluFir1 = [MLuFirSingle shareManager];
    
    MLuSecSingle * mluSec = [MLuSecSingle shareManager];
    MLuSecSingle * mluSec1 = [MLuSecSingle shareManager];
    
    [mluFir printFirSingleAdd];
    [mluFir1 printFirSingleAdd];
    
    [mluSec printSecSingleAdd];
    [mluSec1 printSecSingleAdd];
    
    return 0;
}
