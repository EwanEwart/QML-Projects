import QtQuick
/*
========
Rotation
========
*/
Rectangle { // root static
    id: root
    color: "blue"
    width: 200; height: width

    Rectangle { // background static
        id: background
        color: "yellow"
        // position
        // x: 50; y: x;
        anchors.centerIn: parent
        // extension
        width: 100; height: width
    }
    Rectangle { // dynamic: will be rotated upon mouse-click
        id: squareRotated
        color: "red"
        // position
        // x: 50; y: x;
        anchors.centerIn: parent
        // extension
        width: 100; height: width
        /******************************
        * rotation static
        */
        // rotation degrees // static
        // rotation: -30
        Text {
            anchors.centerIn: parent
            text: "Click\nleft \nor \right."
        }
        MouseArea {
            anchors.fill: squareRotated
            acceptedButtons: Qt.LeftButton | Qt.RightButton

            /* ROTATION dynamic */
            /* ROTATION dynamic */
            /* ROTATION dynamic */
            onClicked: (mouse)=> {
            if (mouse.button == Qt.LeftButton) {
                // mathematical direction of rotatioon
                squareRotated.rotation -= 30
                res = 2.0 // {} for several lines
            }
            else
                // anti-mathematical direction of rotatioon
                squareRotated.rotation += 30 // no {} for in case of one line
            }
            /* ROTATION dynamic */
            /* ROTATION dynamic */
            /* ROTATION dynamic */
        }
        Behavior on rotation {
            NumberAnimation {
                duration: 500 // [ms]
            }
        }
    }
}
