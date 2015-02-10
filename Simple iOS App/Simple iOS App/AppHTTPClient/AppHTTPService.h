//
//  AppHTTPService.h
//  Simple iOS App
//
//  Created by Indresh on 10/02/15.
//  Copyright (c) 2015 Indresh. All rights reserved.
//

#import "IQHTTPService.h"

@interface AppHTTPService : IQHTTPService

-(void)getAllImagesWithCompletionHandler:(IQDictionaryCompletionBlock)completionHandler;
-(void)uploadImage:(UIImage*)image completionHandler:(IQDictionaryCompletionBlock)completionHandler;

@end
