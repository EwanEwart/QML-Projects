import QtQuick

Rectangle { 
    id: button
    width: 100; height: 100 // pixel
    border.width: 5
    border.color: black
    color: "red" // default colour
    Text {
        text: button.color
        color: "white"
        anchors.horizontalCenter: parent.horizontalCenter
        y: width/2
    }

    MouseArea {
        anchors.fill: parent
        onClicked: console.log("Button", color, " clicked")
    }
}
