class SqButtons extends Button {
  int u_x = anchoGlobal/9;
  int u_y = altoGlobal/13;
  final static color TXTC = 0;
 
  final String label;
  final short x, y, xW, yH;
 
  Button(String SUBMENU, String submenu, byte  ID) {
    //label = txt;
 
    /*x = (short) u_x;
    y = (short) u_y;
 
    xW = (short) (u_x + W);
    yH = (short) (u_y + H);*/
  }
 
  void display() {
    w = 3*u_x;
    h = 2*u_y;
    switch(){
      case 0:
        x = u_x;
        y = 4*u_y;
        fill(104,159,56);
        rect(x,y,w,h);
        break;
      case 1:
        x = 5*u_x;
        y = 4*u_y;
        fill(237,59,59);
        rect(x,y,w,h);
        break;
      case 2:
        x = u_x;
        y = 7*u_y;
        fill(3,155,229);
        rect(x,y,w,h);
        break;
      case 3:
        x = 5*u_x;
        y = 7*u_y;
        fill(83,109,254);
        rect(x,y,w,h);
        break;
      case 4:
        x = u_x;
        y = 10*u_y;
        fill(153,51,102);
        rect(x,y,w,h);
        break;
      case 5:
        x = 5*u_x;
        y = 10*u_y;
        fill(255,204,0);
        rect(x,y,w,h);
        break;
    }
    fill(255);
    text(label, x + W/2, y + H/2);
  }
  
  void over(){
    if( overRect(x, y, w, h) ) {
      over = true;
    } else {
      over = false;
    }
  }
 
}
