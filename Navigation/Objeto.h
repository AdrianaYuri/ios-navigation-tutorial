//
//  Objeto.h
//  Navigation
//
//  Created by Adriana Yuri on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Objeto : NSObject

{
    NSString *palavra;
    NSString *imagem;
}

@property NSString *palavra;
@property NSString *imagem;

-(Objeto*) initWithPalavra: (NSString*)p andImagem: (NSString*)i;
- (NSString*) retornaPrimeiraLetra;
@end
