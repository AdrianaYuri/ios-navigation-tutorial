//
//  Singleton.h
//  Navigation
//
//  Created by Adriana Yuri on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

@property (nonatomic, strong) NSMutableArray*dados;

+(id) allocWithZone:(struct _NSZone *)zone;
+(id) sharedInstance;
- (NSMutableArray*) retornaArray;



@end
