import QtQuick

Item {
    id: container
    width: 300
    height: 300

    Rectangle {
        id: rect
        width: 100
        height: 100
        x: container.width / 2 - width / 2
        y: container.height / 2 - height / 2
        color: "orange"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }

        states: State {
            name: "resized"
            when: mouseArea.pressed
            PropertyChanges {
                rect {
                    color: "pink"
                    width: container.width - 50
                    height: container.height - 50
                }
            }
        }
    }
}
