//
//  main.m
//  mediator
//
//  Created by Dennis on 2020/8/30.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DPPluginContext.h"
#import "DPDownloadPlugin.h"
#import "DPPlayPlugin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        DPPluginContext *context = [[DPPluginContext alloc] init];
        DPDownloadPlugin *downloader = [[DPDownloadPlugin alloc] initWithContext:context];
        DPPlayPlugin *player = [[DPPlayPlugin alloc] initWithContext:context];
        [context addPlugin:downloader];
        [context addPlugin:player];
        
        [player download];
        [downloader play];
    }
    return 0;
}
