import QtQuick

Window {
    width: 200
    height: 200
    visible: true
    title: qsTr("FSwQML")

    Rectangle {
        id: rct
        width: 100;height: 100
        color: "lightgrey"
        anchors.fill: parent
        Text {
            id: txt
            text: qsTr("First steps with QML")
            font.pointSize: 14
            color: "brown"
            anchors.centerIn: parent
        }
    }
}
