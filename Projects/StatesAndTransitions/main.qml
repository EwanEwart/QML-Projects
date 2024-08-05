import QtQuick

Rectangle {
    id: page
    width: 320; height: 480
    color: "grey"

    Text {
        id: headerText
        text: "States \n& \nTransistions !"
        y: 30
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true

        MouseArea { id: mouseArea; anchors.fill: parent }

        // states to reach / target
        states: State {
            name: "down"; when: mouseArea.pressed == true
            PropertyChanges {
                headerText {
                    y: 160 // pixels
                    rotation: 180 // degrees
                    color: "white"
                }
            }
        }

        // transitions to reach states
        transitions: Transition {
            from: ""; to: "down"; reversible: true
            ParallelAnimation {
                // https://doc.qt.io/qt-6/qeasingcurve.html
                NumberAnimation { properties: "y,rotation"; duration: 500; easing.type: Easing.InOutQuad }
                ColorAnimation { duration: 500 }
            }
        }
    }

    Grid {
        id: colorPicker
        x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
        rows: 2; columns: 3; spacing: 3

        Cell { cellColor: "pink"; onClicked: headerText.color = cellColor }
        Cell { cellColor: "green"; onClicked: headerText.color = cellColor }
        Cell { cellColor: "blue"; onClicked: headerText.color = cellColor }
        Cell { cellColor: "yellow"; onClicked: headerText.color = cellColor }
        Cell { cellColor: "brown"; onClicked: headerText.color = cellColor }
        Cell { cellColor: "orange"; onClicked: headerText.color = cellColor }
    }
}
/*
https://doc.qt.io/qt-6/qml-tutorial3.html

Make this example a little bit more dynamic 
by introducing "states" and "transitions".

The text should move to the bottom of the screen when clicked 
rotate, and then become red in the end.

First, create a new "down state" for the Text type.
This state will be activated 
when the "MouseArea is pressed", 
https://doc.qt.io/qt-6/qml-qtquick-mousearea.html
and deactivated when it is released.


The "down state" includes a set of property changes 
from the implicit default state 
(the items as they were initially defined in QML). 
Specifically, set the "y" property of the text to 160, 
the "rotation" to 180 and the colour to red.

The text shouldn't appear at the bottom instantly, 
but rather move smoothly, 
so a "transition" is added between the two states.

"from" and "to" define the states 
between which the transition will run. 
In this case, the transition will be from the default state to the "down" state.

The same transition should be run in reverse 
when changing back from the "down" state to the "default" state, 
set "reversible" to true. 
This is equivalent to writing the two transitions separately.

The ParallelAnimation type 
https://doc.qt.io/qt-6/qml-qtquick-parallelanimation.html
makes sure that the two types of animations (number and color) 
start at the same time. 

We could also run them one after the other 
by using SequentialAnimation instead.
https://doc.qt.io/qt-6/qml-qtquick-sequentialanimation.html

*/
