// Project "WelcomeQML"

import QtQuick 2.5

Rectangle{
    id: page
    width: 320; height: 480
    color: "lightgrey"    
    
    Text {
        id: welcomeText
        text: "Welcome \nto \nQML!"
        y: 30 // vertical, from top, [pixels]
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pointSize: 24; font.bold: true
        // color: "#abcdef"
        color: "grey"
    }
}
