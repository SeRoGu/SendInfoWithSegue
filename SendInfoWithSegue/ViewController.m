//
//  ViewController.m
//  SendInfoWithSegue
//
//  Created by Seba on 19/7/16.
//  Copyright © 2016 Seba. All rights reserved.
//

#import "ViewController.h"
#import "DestinoViewController.h"

@interface ViewController ()



@end

@implementation ViewController
@synthesize buzonEntrada;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ( [segue.identifier isEqualToString: @"AlSegue2" ]) {
        
        ((DestinoViewController *)segue.destinationViewController).buzonEntrada = self.MensajeAEnviar.text;

    }
    
}
-(void) viewWillAppear:(BOOL)animated{
    
    self.mensajeQueLLego.text = self.buzonEntrada ;
    
}
-(IBAction)volvioView2:(UIStoryboardSegue *)sender{
    if ( [sender.identifier isEqualToString: @"AlSegue1" ]) {
        

        ((ViewController *)sender.destinationViewController).buzonEntrada = ((DestinoViewController *)sender.sourceViewController).MensajeAEnviar.text ;
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
