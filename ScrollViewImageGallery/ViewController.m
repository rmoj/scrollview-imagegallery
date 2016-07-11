//
//  ViewController.m
//  ScrollViewImageGallery
//
//  Created by Rene Mojica on 2016-07-11.
//  Copyright © 2016 Rene Mojica. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void) prepImageViews {
    
    NSArray *imageArray = @[[UIImage imageNamed:@"Lighthouse-in-Field"],[UIImage imageNamed:@"Lighthouse-night"],[UIImage imageNamed:@"Lighthouse-zoomed"]];
    
    CGFloat xOffset = 0;
    
    for (UIImage *eachImage in imageArray) {
    
        UIImageView *imgView = [[UIImageView alloc] initWithImage:eachImage];
        [imgView setFrame:CGRectMake(xOffset, 0, CGRectGetWidth(imgView.frame), CGRectGetHeight(imgView.frame))];
        [self.scrollView addSubview:imgView];
        xOffset += CGRectGetWidth(imgView.frame);
    }
    
//    NSLog(@"%f",xOffset);

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.scrollView.delegate = self;
    self.scrollView.contentSize = CGSizeMake(2210, 200);
    [self prepImageViews];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
