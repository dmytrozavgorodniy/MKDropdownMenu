//
//  TPSViewController.m
//  MKDropdownMenuExample
//
//  Created by Dmytro Zavgorodniy on 11/24/16.
//  Copyright © 2016 Tipsi Team. All rights reserved.
//

#import "TPSViewController.h"
#import "MKDropdownMenu.h"

@interface TPSViewController () <MKDropdownMenuDataSource, MKDropdownMenuDelegate>

@property (nonatomic, strong) IBOutlet MKDropdownMenu *dropdownMenu;

@end

@implementation TPSViewController

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // customize dropdown appearance
    self.dropdownMenu.backgroundColor = [UIColor greenColor];
    self.dropdownMenu.dropdownCornerRadius = 2.f;
    self.dropdownMenu.dropdownBorderWidth = 2.f;
    self.dropdownMenu.dropdownBorderColor = [UIColor brownColor];
    self.dropdownMenu.rowSeparatorColor = [UIColor brownColor];
    self.dropdownMenu.disclosureIndicatorImage = [[UIImage alloc] init];
    self.dropdownMenu.disclosureIndicatorSelectionRotation = 0.f;
    self.dropdownMenu.componentTextAlignment = NSTextAlignmentLeft;
    self.dropdownMenu.rowTextAlignment = NSTextAlignmentLeft;
}

#pragma mark - MKDropdownMenuDataSource

- (NSInteger)numberOfComponentsInDropdownMenu:(MKDropdownMenu *)dropdownMenu
{
    return 1;
}

- (NSInteger)dropdownMenu:(MKDropdownMenu *)dropdownMenu numberOfRowsInComponent:(NSInteger)component
{
    return 50;
}

- (CGFloat)dropdownMenu:(MKDropdownMenu *)dropdownMenu rowHeightForComponent:(NSInteger)component {
    return CGRectGetHeight(self.dropdownMenu.bounds);
}

#pragma mark - MKDropdownMenuDelegate

- (nullable NSAttributedString *)dropdownMenu:(MKDropdownMenu *)dropdownMenu attributedTitleForComponent:(NSInteger)component
{
    NSString *string = @"Title";
    NSDictionary *attributes = @{
                                 NSFontAttributeName: [UIFont systemFontOfSize:20.f],
                                 NSForegroundColorAttributeName: [UIColor brownColor],
                                 };
    
    return [[NSAttributedString alloc] initWithString:string attributes:attributes];
}

- (nullable NSAttributedString *)dropdownMenu:(MKDropdownMenu *)dropdownMenu attributedTitleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSString *string = [NSString stringWithFormat:@"C:%ld,R:%ld", component, row];
    NSDictionary *attributes = @{
                                 NSFontAttributeName: [UIFont systemFontOfSize:18.f],
                                 NSForegroundColorAttributeName: [UIColor brownColor],
                                 };
    
    return [[NSAttributedString alloc] initWithString:string attributes:attributes];
}

@end
