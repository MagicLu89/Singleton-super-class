//
//  MLuSingleton.h
//  ClientSocket
//
//  Created by Magic on 14/12/27.
//  Copyright (c) 2014年 aiousi. All rights reserved.
//

//  Read me:
/**
 *  Autho 陆洋洋(MagicLu)
 *
 *  e-mail:magiclu89@gmail.com
 *
 *  本类是用于派生子类而做的父类
 *  考虑多个子类的问题，创造一个数组容器用来存储每一个子类的实例
 *  通过对子类在数组中的查找来核对是否当前子类已经创造过
 *
 *  this class is the super class of all singleton class.
 *  because ,I have several singleton class ,so , i think whether i can establish a super class of singleton class.
 *  now, you can get a NSMutableArray that store several subClass of singleton class.
 *  judge whether the subclass is belong to NSMutableArray,so ,you can konw the subclass if exist or not.
 *  if you have any question or better idea , please Email me
 */

/**
 *  单例父类(super class of singleton class)
 */

#import <Foundation/Foundation.h>

@interface MLuSingleton : NSObject

/**
 *  获取单例方法(Function)
 */
+(instancetype) shareManager;

@end
