//
//  DataKeeper.h
//  firstApp
//
//  Created by Алекс  on 04.05.17.
//  Copyright © 2017 Алекс . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataKeeper : NSObject

@property NSMutableArray *data;

-(id)init;

-(void)addLine: (NSString*) line;
@end
