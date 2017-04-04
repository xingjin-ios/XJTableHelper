//
//  ViewController.m
//  XJTableHelperDemo
//
//  Created by 邢进 on 2017/4/4.
//  Copyright © 2017年 邢进. All rights reserved.
//

#import "ViewController.h"
#import "XJTableHelper.h"
#import "TextCell.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *table;

@property (nonatomic, strong)XJTableHelper *tableHelper;@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"XJTableHelper";
    NSArray *array = @[@"从前有个傻子交配的书法家欧式的积分水电费水电费几号放假看收费方会计师风科技示范户开始发货", @"从前有",@"方会计师风科技示范户开始发货",@"欧式的积分水电费水电费几号放假看收费方会计师风科技示范户开始发货",@"从前有个傻子交配的书法家欧式的积分水电费水电费几号放假看收费方会计师风科技示范户开始发货从前有个傻子交配的书法家欧式的积分水电费水电费几号放假看收费方会计师风科技示范户开始发货"];
    
    //ios 8 以后cell自适应高度
    _table.estimatedRowHeight = 40;//预算高度
    _table.rowHeight = UITableViewAutomaticDimension;
    
    //1.只处理dataSource
    _tableHelper = [[XJTableHelper alloc] initWithidentifier:@"TextCell" cellConfigureBlock:^(id cell, id model, NSIndexPath *indexPath) {
        [cell cellConfigureWithModel:model];
    }];
    
    _table.dataSource = self.tableHelper;
    _table.delegate = self;
    [self.tableHelper addModels:array];
    [_table reloadData];
    
    //2.datasouce 和 delegate 全交由处理
    //    _tableHelper = [[XJTableHelper alloc] initWithidentifier:@"TextCell" cellConfigureBlock:^(id cell, id model, NSIndexPath *indexPath) {
    //        [cell cellConfigureWithModel:model];
    //    } cellHeightBlock:^CGFloat(NSIndexPath *indexPath, id model) {
    //        return UITableViewAutomaticDimension;
    //    } cellDidSelectBlock:^(NSIndexPath *indexPath, id model) {
    //        [self.navigationController pushViewController:[UIViewController new] animated:YES];
    //    }];
    //    [_tableHelper handleView:_table delegate:YES];
    //    [self.tableHelper addModels:array];
    //    [_table reloadData];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
