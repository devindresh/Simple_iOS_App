//
//  AppHTTPService.m
//  Simple iOS App
//
//  Created by Indresh on 10/02/15.
//  Copyright (c) 2015 Indresh. All rights reserved.
//

#import "AppHTTPService.h"
#import <UIKit/UIKit.h>

@implementation AppHTTPService

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.serverURL = @"www.example.com";
    }
    return self;
}

-(void)uploadImage:(UIImage*)image completionHandler:(IQDictionaryCompletionBlock)completionHandler
{
//    NSData *data = nsdata
    IQMultipartFormData *formData = [IQMultipartFormData multipartDataWithKeyName:@"image" fileName:@"image" data:UIImageJPEGRepresentation(image, 1.0) mimeType:@"image/jpeg"];

    [self requestWithPath:@"/fileUpload.php" parameter:nil multipartFormData:formData uploadProgressBlock:^(CGFloat progress) {

    } completionHandler:completionHandler];
}

-(void)getAllImagesWithCompletionHandler:(IQDictionaryCompletionBlock)completionHandler
{
    [self requestWithPath:@"/images.php" httpMethod:kIQHTTPMethodGET parameter:nil completionHandler:^(NSDictionary *result, NSError *error) {

    }];
}

@end
