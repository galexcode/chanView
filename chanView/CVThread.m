//
//  CVThread.m
//  chanView
//
//  Created by Grayson Chao on 11/13/13.
//  Copyright (c) 2013 Grayson Chao. All rights reserved.
//

#import "CVThread.h"

@implementation CVThread {
}

- (id)initWithJSON:(NSDictionary*)sourceJSON
{
    self = [super init];
    if (self && sourceJSON) {
        _json = sourceJSON;
    }
    return self;
}

-(NSMutableDictionary*) getPosts {
    return [_json objectForKey:@"last_replies"];
}

-(BOOL) update {
    return YES;
}
@end
