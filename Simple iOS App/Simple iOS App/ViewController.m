//
//  ViewController.m
//  Simple iOS App
//
//  Created by Indresh on 10/02/15.
//  Copyright (c) 2015 Indresh. All rights reserved.
//

#import "ViewController.h"
#import "AppHTTPService.h"
#import "ImageCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController
{
    NSArray *imageURLs;
    IBOutlet UITableView *tableViewImages;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
//    imageURLs = @[@"http://isc.stuorg.iastate.edu/wp-content/uploads/sample.jpg",
//                  @"http://res.cloudinary.com/demo/image/upload/sample.jpg",
//                  @"http://upload.wikimedia.org/wikipedia/commons/1/16/HDRI_Sample_Scene_Balls_(JPEG-HDR).jpg",
//                  @"http://imgsv.imaging.nikon.com/lineup/lens/zoom/normalzoom/af-s_24-85mmf_35-45g_ed_vr/img/sample/sample2_l.jpg"];
//    [tableViewImages reloadData];
    
    [[AppHTTPService service] getAllImagesWithCompletionHandler:^(NSDictionary *result, NSError *error) {
        imageURLs = result[@"images"];
        [tableViewImages reloadData];
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [imageURLs count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ImageCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([ImageCell class]) forIndexPath:indexPath];
    
    [cell.imageViewCell loadImage:imageURLs[indexPath.row]];

    return cell;
}

@end
