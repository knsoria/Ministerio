class SqButtons extends Button {
  color TXT = 0;
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
    switch(iID){
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
    }
  }
  
  void update() {
    over();
    pressed();
    switch(ID){
      case 0:    //
        activity = 196;
        break;
      case 1:    //
        activity = 196;
        break;
      case 2:    //
        
        break;
      case 3:    //
        
        break;
      case 4:    //
        
        break;
      case 5:    //
      
        break;
    }
  }
 
  void display() {
    switch(ID){
      case 0:
        fill(104,159,56);
        rect(x,y,w,h);
        break;
      case 1:
        fill(237,59,59);
        rect(x,y,w,h);
        break;
      case 2:
        fill(3,155,229);
        rect(x,y,w,h);
        break;
      case 3:
        fill(83,109,254);
        rect(x,y,w,h);
        break;
      case 4:
        fill(153,51,102);
        rect(x,y,w,h);
        break;
      case 5:
        fill(255,204,0);
        rect(x,y,w,h);
        break;
    }
    fill(TXT);
    text(SUBMENU, int(x+min_x*1.1), int(y+min_y*1.1));
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
