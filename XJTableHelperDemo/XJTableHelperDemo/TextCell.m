//
//  TextCell.m
//  XJBaseProject
//
//  Created by 邢进 on 2017/3/15.
//  Copyright © 2017年 邢进. All rights reserved.
//

#import "TextCell.h"

@implementation TextCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)cellConfigureWithModel:(id)model {
    self.myLabel.text = model;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
