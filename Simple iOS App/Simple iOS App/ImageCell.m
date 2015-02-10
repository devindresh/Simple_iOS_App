//
//  ImageCell.m
//  Simple iOS App
//
//  Created by Indresh on 10/02/15.
//  Copyright (c) 2015 Indresh. All rights reserved.
//

#import "ImageCell.h"

@implementation ImageCell

-(void)prepareForReuse
{
    [super prepareForReuse];
    [self.imageViewCell removeCallbacks];
}

-(void)dealloc
{
    [self.imageViewCell removeCallbacks];
}

@end
