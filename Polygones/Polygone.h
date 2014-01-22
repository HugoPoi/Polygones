//
//  Polygone.h
//  Polygones
//
//  Created by Hugo Poissonnet on 27/12/2013.
//  Copyright (c) 2013 Hugo Poissonnet. All rights reserved.
//

#import <Foundation/Foundation.h>

#define MinPolygoneSide 3
#define MaxPolygoneSide 12

@interface Polygone : NSObject

@property(nonatomic) int numberOfSide;

-(NSString *) name;

@end
