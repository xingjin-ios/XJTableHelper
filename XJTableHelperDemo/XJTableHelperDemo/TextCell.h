//
//  TextCell.h
//  XJBaseProject
//
//  Created by 邢进 on 2017/3/15.
//  Copyright © 2017年 邢进. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

- (void)cellConfigureWithModel:(id)model;

@end
