import QtQuick

Column {
    id: button_test
    width: 200; height: 300
    Button{ id: btn01}
    Button{ id: btn02; color: "green"; x: width }
    Button{ id: btn03; color: "blue" }
}
