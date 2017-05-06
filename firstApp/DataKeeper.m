//
//  DataKeeper.m
//  firstApp
//
//  Created by Алекс  on 04.05.17.
//  Copyright © 2017 Алекс . All rights reserved.
//

#import "DataKeeper.h"

@implementation DataKeeper

//@synthesize data;

-(id) init{
    self = [super init];
    _data = [NSMutableArray alloc];
    return self;
}

-(void)addLine: (NSString*) line{
    [_data addObject:line];
}

@end
