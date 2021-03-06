//
//  JingdianCell.m
//  SJTours
//
//  Created by ZhenzhenXu on 4/23/13.
//  Copyright (c) 2013 ZhenzhenXu. All rights reserved.
//

#import "JingdianCell.h"
#import "UIImageView+WebCache.h"
#import "RequestUrls.h"

@implementation JingdianCell

@synthesize smallImage=_smallImage;
@synthesize gTitle=_gTitle;
@synthesize gDescription=_gDescription;

- (void)createView:(NSDictionary *)dict{
    NSString *url=[NSString stringWithFormat:@"%@%@",[RequestUrls domainUrl],[dict objectForKey:@"vsmallImage"]];
    NSURL *imageUrl=[NSURL URLWithString:url];
    [_smallImage setImageWithURL:imageUrl placeholderImage:[UIImage imageNamed:@"placeholder"]];
    _smallImage.backgroundColor=[UIColor colorWithRed:0.91f green:0.91f blue:0.91f alpha:1.0f];
    _gTitle.text=[dict objectForKey:@"vtitle"];
    _gDescription.text=[dict objectForKey:@"vcontent"];
    _gTitle.textColor=[UIColor blackColor];
    _gTitle.highlightedTextColor=[UIColor blackColor];
    _gDescription.textColor=[UIColor lightGrayColor];
    _gDescription.highlightedTextColor=[UIColor lightGrayColor];
}

@end
