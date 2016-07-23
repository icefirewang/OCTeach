//
//  main.m
//  OCTeachWebServer
//
//  Created by wangjian on 16/7/23.
//  Copyright © 2016年 wangjian. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <OCFWebServer.h>
#import <OCFWebServerRequest.h>
#import <OCFWebServerResponse.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        OCFWebServer *server = [OCFWebServer new];
        
        // Add a request handler for every possible GET request
        
        [server addDefaultHandlerForMethod:@"GET"
                              requestClass:[OCFWebServerRequest class]
                              processBlock:^void(OCFWebServerRequest *request) {
                                  
                                  // Create your response and pass it to respondWith(...)
                                  OCFWebServerResponse *response = [OCFWebServerDataResponse responseWithHTML:@"Hello World1"];
                                  [request respondWith:response];
                              }];
        
        // Run the server on port 8080
        [server runWithPort:8080];
    }
    
}
