//
//  ViewController.m
//  TrafficLightsOC
//
//  Created by Jaime Jazareno III on 06/01/2018.
//  Copyright © 2018 Jaime Jazareno III. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.label.text = [NSString stringWithFormat:@"%i", scoreInt];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startButton:(id)sender {
    if (scoreInt == 0) {
        timerInt = 3;
        scoreInt = 0;
        self.imageView.image = [UIImage imageNamed:@"trafficLight.png"];
        timer = [NSTimer scheduledTimerWithTimeInterval: 1.0 target:self selector: @selector(updateTimer) userInfo:nil repeats:true];
        self.startGameButton.enabled = false;
        self.startGameButton.alpha = 0.25;
        self.label.text = [NSString stringWithFormat:@"%i", scoreInt];
        [self.startGameButton setTitle:@"" forState:UIControlStateNormal];
    }
    else {
        [scoreTimer invalidate];
        scoreInt = 0;
        timerInt = 3;
        [self.startGameButton setTitle:@"Restart" forState:UIControlStateNormal];
        
    }
    
}

-(void) updateTimer {
    if(timerInt > 0){
        self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"trafficLight%i.png", timerInt]];
        timerInt -= 1;
    }
    else{
        [timer invalidate];
        [self.startGameButton setTitle:@"Stop" forState:UIControlStateNormal];
        self.startGameButton.enabled = true;
        self.startGameButton.alpha = 1;
        scoreTimer = [NSTimer scheduledTimerWithTimeInterval:0.001 target:self selector:@selector(updateScore) userInfo:nil repeats:true];
    }
}

-(void) updateScore {
    scoreInt += 1;
    self.label.text = [NSString stringWithFormat:@"%i", scoreInt];
    
    
}
@end
