import graphics as r

win = r.GraphWin('Outdoor Scene', 700,400)
win.setBackground('orange')

MessageEntryBox = r.Entry(r.Point(100, 20) , 20)
MessageEntryBox.draw ( win )

house = r.Rectangle(r.Point (340, 150) , r.Point (50,350))
house.draw ( win )
house.setFill("tan")

door = r.Rectangle(r.Point(170, 350) , r.Point(240,250))
doorknob = r.Point(230,305)
door.draw ( win )
doorknob.draw ( win )
door.setFill("grey")

floormat = r.Rectangle(r.Point(170, 385) , r.Point(240, 355))
floormat.draw ( win )
floormat.setFill("red")
floormatMessage = r.Text(r.Point(205, 370), "Welcome")
floormatMessage.draw ( win )

rooflineleft = r.Line(r.Point(50, 150), r.Point(200, 20))
rooflineleft.draw ( win )
rooflineright = r.Line(r.Point(340, 150), r.Point(200, 20))
rooflineright.draw( win )

sun = r.Circle (r.Point(650, 25), 95)
sun.draw ( win )
sun.setFill ("yellow")

window = r.Rectangle (r.Point(325,225), r.Point(270,170))
wind = r.Rectangle (r.Point(69, 225), r.Point(130, 170))
window.setFill("white")
wind.setFill("white")
window.draw(win)
wind.draw(win)

stump = r.Rectangle( r.Point(410,310), r.Point(440,250))
stump.setFill("brown")
stump.draw(win)
  
tree = r.Triangle (r.Point(380,250) , r.Point(470,250), r.Point(425,200))
tree.setFill("lightgreen")
tree.draw(win)
  
treee = r.Triangle (r.Point(380,200), r.Point(470,200),r.Point(425,150))
window.setFill("lightgreen")
treee.draw(win)
  
tre = r.Triangle (r.Point(380,150), r.Point(470,150), r.Point(425,100))
window.setFill("lightgreen")
tre.draw(win)
  
win.getMouse()
win.close()
