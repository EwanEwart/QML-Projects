import QtQuick 2.5

Rectangle {
    id: page
    width: 320; height: 480
    color: "lightgrey"

    Text {
        id: heading
        text: "QMLComponent:\nColour Picker"
        y: 30
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true
    }

    Grid {
        id: colorPicker
        x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
        rows: 2; columns: 3; spacing: 3

        Cell { cellColour: "red"; onClicked: heading.color = cellColour }
        Cell { cellColour: "green"; onClicked: heading.color = cellColour }
        Cell { cellColour: "blue"; onClicked: heading.color = cellColour }
        Cell { cellColour: "yellow"; onClicked: heading.color = cellColour }
        Cell { cellColour: "steelblue"; onClicked: heading.color = cellColour }
        Cell { cellColour: "black"; onClicked: heading.color = cellColour }
    }
}

/*
https://doc.qt.io/qt-6/qml-tutorial2.html

This chapter adds a colour picker 
to change the colour of the displayed text.

The colour picker is made of six cells 
with different colours. 

To avoid writing the same code multiple times for each cell, 
create a new Cell component. 

A component provides a way of defining a new type 
that we can re-use in other QML files. 
A QML component is like a black-box 
and interacts with the outside world through 

- properties, 
- signals and 
- functions 

and is generally defined in its own QML file. 

For more details, see the Component documentation. 
https://doc.qt.io/qt-6/qml-qtqml-component.html


The component's filename must always start with a capital letter.

*/