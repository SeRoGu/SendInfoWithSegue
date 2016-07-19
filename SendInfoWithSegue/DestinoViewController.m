//
//  DestinoViewController.m
//  SendInfoWithSegue
//
//  Created by Seba on 19/7/16.
//  Copyright © 2016 Seba. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DestinoViewController.h"

@interface DestinoViewController ()



@end

@implementation DestinoViewController
@synthesize buzonEntrada;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void) viewWillAppear:(BOOL)animated{
    
    self.MensajeQuellego.text = self.buzonEntrada ;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
