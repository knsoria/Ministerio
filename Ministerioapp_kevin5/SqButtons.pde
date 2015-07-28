class SqButtons extends Button {
  color TXT = 255;
  String SUBMENU,submenu;
  int min_x, min_y, ID;
 
  SqButtons(int iID, String iSUBMENU, String isubmenu, int imin_x,int imin_y) {
    SUBMENU = iSUBMENU;
    submenu = isubmenu;
    ID = iID;
    min_x = imin_x;
    min_y = imin_y;
    
    w = 3*min_x;
    h = 2*min_y;
    switch(ID%6){
      case 0:
        x = min_x;    y = 4*min_y;
        break;
      case 1:
        x = 5*min_x;  y = 4*min_y;
        break;
      case 2:
        x = min_x;    y = 7*min_y;
        break;
      case 3:
        x = 5*min_x;  y = 7*min_y;
        break;
      case 4:
        x = min_x;    y = 10*min_y;
        break;
      case 5:
        x = 5*min_x;  y = 10*min_y;
        break;
      default:
        x = 0;  y = 0;
    }
  }
  
  void update() {
    over();
    pressed();
    if(pressed){
      switch(ID){
        case 0:    //Submenú Aymara || Saludándonos
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<6;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[0]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[0]+str(i)+".png");
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++]);  //Saludandonos || 0 || Hola || Saludo
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++]);  //Saludandonos || 1 || Hola || Respuesta
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++]);  //Saludandonos || 2 || Chau || Despedida
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++]);  //Saludandonos || 3 || Chau || Respuesta de despedida
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++]);  //Saludandonos || 4 || Si
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++]);  //Saludandonos || 5 || No
            j=1;
          }
          //////////////////////////////////////////
          activity = 2;
          break;
        case 1:    //Submenú Aymara || Conociéndonos
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<10;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[0]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[0]+str(i+6)+".png");
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++]);  //Conociéndonos || 6 || ¿Cuál es tu nombre?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++]);  //Conociéndonos || 7 || Mi nombre es
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++]);  //Conociéndonos || 8 || ¿Cuántos años tienes?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++]);  //Conociéndonos || 9 || Yo tengo
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++]);  //Conociéndonos || 10 || ¿De dónde eres?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++]);  //Conociéndonos || 11 || Yo soy de 
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++]);  //Conociéndonos || 12 || ¿Dónde vives? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++]);  //Conociéndonos || 13 || Yo vivo en
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++]);  //Conociéndonos || 14 || ¿A dónde estás yendo? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++]);  //Conociéndonos || 15 || Estoy yendo a
            j=1;
          }
          //////////////////////////////////////////
          activity = 5;
          break;
        case 2:    //Submenú Aymara || Estamos viviendo
          activity = 10;
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<18;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[0]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[0]+str(i+16)+".png");
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++]);  //Estamos viviendo || 16 || Yo canto 
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++]);  //Estamos viviendo || 17 || To canté
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++]);  //Estamos viviendo || 18 || Yo cantaré
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++]);  //Estamos viviendo || 19 || Tú cantas
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++]);  //Estamos viviendo || 20 || Tú cantaste
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++]);  //Estamos viviendo || 21 || Tú cantarás
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++]);  //Estamos viviendo || 22 || Él canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++]);  //Estamos viviendo || 23 || Él cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++]);  //Estamos viviendo || 24 || Él cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++]);  //Estamos viviendo || 25 || Ella canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++]);  //Estamos viviendo || 26 || Ella cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++]);  //Estamos viviendo || 27 || Ella cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++]);  //Estamos viviendo || 28 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++]);  //Estamos viviendo || 29 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++]);  //Estamos viviendo || 30 || Nosotros cantaremos
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++]);  //Estamos viviendo || 31 || Ustedes cantan
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++]);  //Estamos viviendo || 32 || Ustedes cantaron
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++]);  //Estamos viviendo || 33 || Ustedes cantarán
            j=1;
          }
          //////////////////////////////////////////
          break;
        case 3:    //Submenú Aymara || Madre tierra
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<10;i++){
              //if(i<10){
                jaqaru_base[i]=loadImage(lenguas[1]+"_base"+str(i+3)+".png");
              //}
              jaqaru_file[i]=loadImage(lenguas[1]+str(i+70)+".png");
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[0],jaqaru_file[i++]);  //Madre tierra || 34 || Árbol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[1],jaqaru_file[i++]);  //Madre tierra || 35 || Río 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[2],jaqaru_file[i++]);  //Madre tierra || 34 || Nubes
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[3],jaqaru_file[i++]);  //Madre tierra || 35 || Lluvia
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[4],jaqaru_file[i++]);  //Madre tierra || 34 || Casa
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[5],jaqaru_file[i++]);  //Madre tierra || 35 || Comida
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[6],jaqaru_file[i++]);  //Madre tierra || 34 || Sol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[7],jaqaru_file[i++]);  //Madre tierra || 35 || Luna 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[8],jaqaru_file[i++]);  //Madre tierra || 34 || Estrellas
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[9],jaqaru_file[i++]);  //Madre tierra || 35 || Fuego 
            j=1;
          }
          //////////////////////////////////////////
          activity = 31;
          break;
        case 4:    //Submenú Aymara || Animales
          activity = 36;
          break;
        case 5:    //Submenú Aymara || Abecedario
          activity = 39;
          break;
        case 6:    //Submenú Jaqaru || Saludándonos
          ///////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<6;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[1]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[1]+str(i)+".png");
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++]);  //Saludandonos || 0 || Hola || Saludo
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++]);  //Saludandonos || 1 || Hola || Respuesta
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++]);  //Saludandonos || 2 || Chau || Despedida
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++]);  //Saludandonos || 3 || Chau || Respuesta de despedida
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++]);  //Saludandonos || 4 || Si
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++]);  //Saludandonos || 5 || No
            j=1;
          }
          ///////////////////////////////////////////
          activity = 41;
          break;
        case 7:    //Submenú Jaqaru || Conociéndonos
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<10;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[1]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[1]+str(i+6)+".png");
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++]);  //Conociéndonos || 6 || ¿Cuál es tu nombre?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++]);  //Conociéndonos || 7 || Mi nombre es
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++]);  //Conociéndonos || 8 || ¿Cuántos años tienes?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++]);  //Conociéndonos || 9 || Yo tengo
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++]);  //Conociéndonos || 10 || ¿De dónde eres?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++]);  //Conociéndonos || 11 || Yo soy de 
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++]);  //Conociéndonos || 12 || ¿Dónde vives? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++]);  //Conociéndonos || 13 || Yo vivo en
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++]);  //Conociéndonos || 14 || ¿A dónde estás yendo? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++]);  //Conociéndonos || 15 || Estoy yendo a
            j=1;
          }
          //////////////////////////////////////////
          activity = 44;
          break;
        case 8:    //Submenú Jaqaru || Estamos viviendo
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<18;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[1]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[1]+str(i+16)+".png");
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++]);  //Estamos viviendo || 16 || Yo canto 
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++]);  //Estamos viviendo || 17 || To canté
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++]);  //Estamos viviendo || 18 || Yo cantaré
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++]);  //Estamos viviendo || 19 || Tú cantas
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++]);  //Estamos viviendo || 20 || Tú cantaste
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++]);  //Estamos viviendo || 21 || Tú cantarás
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++]);  //Estamos viviendo || 22 || Él canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++]);  //Estamos viviendo || 23 || Él cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++]);  //Estamos viviendo || 24 || Él cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++]);  //Estamos viviendo || 25 || Ella canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++]);  //Estamos viviendo || 26 || Ella cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++]);  //Estamos viviendo || 27 || Ella cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++]);  //Estamos viviendo || 28 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++]);  //Estamos viviendo || 29 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++]);  //Estamos viviendo || 30 || Nosotros cantaremos
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++]);  //Estamos viviendo || 31 || Ustedes cantan
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++]);  //Estamos viviendo || 32 || Ustedes cantaron
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++]);  //Estamos viviendo || 33 || Ustedes cantarán
            j=1;
          }
          //////////////////////////////////////////
          activity = 49;
          break;
        case 9:    //Submenú Jaqaru || Madre tierra
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<10;i++){
              //if(i<10){
                jaqaru_base[i]=loadImage(lenguas[1]+"_base"+str(i+3)+".png");
              //}
              jaqaru_file[i]=loadImage(lenguas[1]+str(i+70)+".png");
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[0],jaqaru_file[i++]);  //Madre tierra || 34 || Árbol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[1],jaqaru_file[i++]);  //Madre tierra || 35 || Río 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[2],jaqaru_file[i++]);  //Madre tierra || 34 || Nubes
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[3],jaqaru_file[i++]);  //Madre tierra || 35 || Lluvia
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[4],jaqaru_file[i++]);  //Madre tierra || 34 || Casa
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[5],jaqaru_file[i++]);  //Madre tierra || 35 || Comida
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[6],jaqaru_file[i++]);  //Madre tierra || 34 || Sol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[7],jaqaru_file[i++]);  //Madre tierra || 35 || Luna 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[8],jaqaru_file[i++]);  //Madre tierra || 34 || Estrellas
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[9],jaqaru_file[i++]);  //Madre tierra || 35 || Fuego 
            j=1;
          }
          //////////////////////////////////////////
          activity = 70;
          break;
        case 10:   //Submenú Jaqaru || Animales
          activity = 75;
          break;
        case 11:   //Submenú Jaqaru || Abecedario
          activity = 78;
          break;
        case 12:   //Submenú Quechua || Saludándonos
          activity = 80;
          break;
        case 13:   //Submenú Quechua || Conociéndonos
          activity = 83;
          break;
        case 14:   //Submenú Quechua || Estamos viviendo
          activity = 88;
          break;
        case 15:   //Submenú Quechua || Madre tierra
          activity = 109;
          break;
        case 16:   //Submenú Quechua || Animales
          activity = 114;
          break;
        case 17:   //Submenú Quechua || Abecedario
          activity = 117;
          break;
        case 18:   //Submenú Shipibo || Saludándonos
          activity = 119;
          break;
        case 19:   //Submenú Shipibo || Conociéndonos
          activity = 122;
          break;
        case 20:   //Submenú Shipibo || Estamos viviendo
          activity = 127;
          break;
        case 21:   //Submenú Shipibo || Madre tierra
          activity = 148;
          break;
        case 22:   //Submenú Shipibo || Animales
          activity = 153;
          break;
        case 23:   //Submenú Shipibo || Abecedario
          activity = 156;
          break;
        case 24:   //Submenú Matsiguenka || Saludándonos
          activity = 158;
          break;
        case 25:   //Submenú Matsiguenka || Conociéndonos
          activity = 161;
          break;
        case 26:   //Submenú Matsiguenka || Estamos viviendo
          activity = 166;
          break;
        case 27:   //Submenú Matsiguenka || Madre tierra
          activity = 187;
          break;
        case 28:   //Submenú Matsiguenka || Animales
          activity = 192;
          break;
        case 29:   //Submenú Matsiguenka || Abecedario
          activity = 195;
          break;
        case 30:   //Submenú Yine || Saludándonos
          activity = 197;
          break;
        case 31:   //Submenú Yine || Conociéndonos
          activity = 200;
          break;
        case 32:   //Submenú Yine || Estamos viviendo
          activity = 205;
          break;
        case 33:   //Submenú Yine || Madre tierra
          activity = 226;
          break;
        case 34:   //Submenú Yine || Animales
          activity = 231;
          break;
        case 35:   //Submenú Yine || Abecedario
          activity = 234;
          break;
      }
    }
  }
 
  void display() {
    switch(ID%6){
      case 0:
        fill(104,159,56);
        break;
      case 1:
        fill(237,59,59);
        break;
      case 2:
        fill(3,155,229);
        break;
      case 3:
        fill(83,109,254);
        break;
      case 4:
        fill(153,51,102);
        break;
      case 5:
        fill(255,204,0);
        break;
    }
    noStroke();
    rect(x,y,w,h,7);
    fill(TXT);
    textFont(fontMenu);
    //textFont(fontsubMenu);
    textSize(altoGlobal/16);
    text(SUBMENU, int(x+min_x*1.5), int(y+min_y));
    textSize(altoGlobal/28);
    text(submenu, int(x+min_x*1.5), int(y+min_y*1.5));
  }
  
  void over(){
    if( overRect(x, y, w, h) ) {
      over = true;
    } else {
      over = false;
    }
  }
 
}
