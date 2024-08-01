import QtQuick

Item {
    id: container
    property alias cellColor: rectangle.color
    // signal clicked(cellColor: color)
    signal clicked()

    width: 40; height: 25

    Rectangle {
        id: rectangle
        border.color: "black"
        border.width: 5
        anchors.fill: parent
    }

    MouseArea {
        anchors.fill: parent
        // onClicked: container.clicked(container.cellColor)
        onClicked: container.clicked()
    }
}
