//
//  ClasseTesteViewController.h
//  Navigation
//
//  Created by Adriana Yuri on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Objeto.h"

@interface ClasseViewController : UIViewController{
    Objeto *palavraTela;
    NSInteger indice;
}

@property Objeto *palavraTela;
@property NSInteger indice;

- (id)initWithPalavra :(Objeto*) dicionario ;

@end
