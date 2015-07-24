class SqButtons extends Button {
  //anchoGlobal/9;   final static int W = 60, H = 40;
  //altoGlobal/13;
  final static color BTNC = #0000FF, TXTC = 0;
 
  final String label;
  final short x, y, xW, yH;
 
  Button(String SUBMENU, String submenu, byte  /*,int xx, int yy*/) {
    //label = txt;
 
    /*x = (short) xx;
    y = (short) yy;
 
    xW = (short) (xx + W);
    yH = (short) (yy + H);*/
  }
 
  void display() {
    fill(BTNC);
    rect(x, y, W, H);
 
    fill(TXTC);
    text(label, x + W/2, y + H/2);
  }
 
  boolean hasClicked() {
    return mouseX > x & mouseX < xW & mouseY > y & mouseY < yH;
  }
}
