// Project "Hello"
import QtQuick 2.5 // build-in QML types, e.g., Rectangle, Image, ...

Rectangle {

  id: page // root object

  // anchors.fill: parent
  width: 320; height: 480
  color: "lightgrey"

  Text { // child object
    id: helloText
    text: "Greetings, Fi!"
    color: "green"
    y: 30 // vertical position: from the top of its parent object
    anchors.horizontalCenter: page.horizontalCenter // horizontal position
    font.pointSize: 24; font.bold: true
  }

}
