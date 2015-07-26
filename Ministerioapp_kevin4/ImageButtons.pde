class ImageButtons extends Button {
  PImage base;
  PImage down;
  PImage currentimage;
  int objetos;
  int posicion;
  int modo;
  int ID;
  //boolean pageact;
  //boolean pagenew;

  ImageButtons(int iID,int imodo,int ix, int iy, int iw, int ih, PImage ibase, PImage idown){
    ID = iID;
    x = ix;
    y = iy;
    w = iw;
    h = ih;
    modo = imodo;
    base = ibase;
    down = idown;
    currentimage = base;
  }
  
  ImageButtons(int iobjetos, int iposicion, PImage ibase, PImage idown){
    objetos = iobjetos;
    modo = 3;
    posicion = iposicion;
    base = ibase;
    down = idown;
    switch(objetos){
      case 0:    //2 sujetos
        switch(posicion){
          case 0:
            //función para hallar posición x e y
            x = int(anchoGlobal/2);
            y = int(altoGlobal/2);
            w = ibase.width;
            h = ibase.height;
            break;
          case 1:
            break;
        }
        break;
      case 1:    //3 sujetos
        break;
      case 2:    //2 objetos
        break;
    }
    currentimage = base;
  }
  
  void update() {
    over();
    pressed();
    switch(modo){
      case 0:    //Menú pricipal
        if(pressed && (ID<=5)) {
          switch(ID) {
            case 0:      //Submenú Aymara
              activity = 1;
              break;
            case 1:      //Submenú Jaqaru
              activity = 40;
              break;
            case 2:      //Submenú Quechua
              activity = 79;
              break;
            case 3:      //Submenú Shipibo
              activity = 118;
              break;
            case 4:      //Submenú Matsiguenka
              activity = 157;
              break;
            case 5:      //Submenú Yine
              activity = 196;
              break;
          }
          currentimage = down;
        }
        else {
          currentimage = base;
        }
        break;
      case 1:    //Adelantar
        if(pressed) {
          activity++;
          currentimage = down;
        }
        else {
          currentimage = base;
        }
        break;
      case 2:    //Regresar
        if(pressed) {
          switch(ID){
            case 6:
              activity--;
              break;
            case 8:
              switch(--activity/39){
                case 0:
                  activity = 1;
                  break;
                case 1:
                  activity = 40;
                  break;
                case 2:
                  activity = 79;
                  break;
                case 3:
                  activity = 118;
                  break;
                case 4:
                  activity = 157;
                  break;
                case 5:
                  activity = 196;
                  break;
              }
              break;
            case 9:
              activity = 0;
              break;
          }
          currentimage = down;
        }
        else {
          currentimage = base;
        }
        break;
      case 3:    //Mostrar texto
        if(last_activity==activity) {
          if(pressed){
            currentimage = down;  //evento activador
          }
        }
        else {
          currentimage = base;
        }
        break;
    }
  }
  
  void over(){
    if( overRect(x, y, w, h) ) {
      over = true;
    } else {
      over = false;
    }
  }
  
  void display(){
    image(currentimage, x, y, w, h);
  }
}
