//
//  ImageCell.h
//  Simple iOS App
//
//  Created by Indresh on 10/02/15.
//  Copyright (c) 2015 Indresh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IQAsyncImageView.h"

@interface ImageCell : UITableViewCell

@property (strong, nonatomic) IBOutlet IQAsyncImageView *imageViewCell;

@end
