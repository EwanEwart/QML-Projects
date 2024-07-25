// Project "WelcomeQML"

import QtQuick 2.5

// Item {
//     id: rootItem
//     anchors.fill: parent

// Rectangle{
//     id: page
//     width: 320; height: 480
//     color: "lightgrey"    
    
    Text {
        id: welcomeText
        text: "Welcome to QML, \nMater!"
        // y: 30 // pixels
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pointSize: 24; font.bold: true
        // color: "#abcdef"
        color: "grey"
    }
// }
// }
