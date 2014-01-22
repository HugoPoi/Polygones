//
//  Polygone.m
//  Polygones
//
//  Created by Hugo Poissonnet on 27/12/2013.
//  Copyright (c) 2013 Hugo Poissonnet. All rights reserved.
//

#import "Polygone.h"

@implementation Polygone

- (id) init{
    self = [super init];
    if(self){
        _numberOfSide = MinPolygoneSide;
    }
    return self;
}

-(void) setNumberOfSide:(int)numberOfSide{
    if(numberOfSide >= MinPolygoneSide && numberOfSide <= MaxPolygoneSide){
        _numberOfSide = numberOfSide;
    }
}

-(NSString *) name{
    NSArray * names = [NSArray arrayWithObjects:@"Triangle",@"Tétragone",@"Pentagone",@"Hexagone",@"Heptagone",@"Octogone",@"Ennéagone",@"Décagone",@"Hendécagone",@"Dodécagone",nil];

    return [names objectAtIndex:_numberOfSide-MinPolygoneSide];
}
@end
