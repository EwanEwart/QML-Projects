import QtQuick 2.5

Rectangle {
    id: page
    width: 480; height: 480
    color: "lightgrey"

    Text {
        id: msg
        text: "QMLComponents\n\nColour Picker\n\nA \"QML component\" \nis like a \n\"black-box\""
        y: 30 // pixels
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true
    }

    Grid {
        id: colourPicker
        x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
        rows: 2; columns: 3; spacing: 3

        // "clickedColouredCell" signal => calls "onClickedColouredCell"
        Cell { cellColour: "red"; onClickedColouredCell: msg.color = cellColour }
        Cell { cellColour: "green"; onClickedColouredCell: msg.color = cellColour }
        Cell { cellColour: "blue"; onClickedColouredCell: msg.color = cellColour }
        Cell { cellColour: "yellow"; onClickedColouredCell: msg.color = cellColour }
        Cell { cellColour: "steelblue"; onClickedColouredCell: msg.color = cellColour }
        Cell { cellColour: "black"; onClickedColouredCell: msg.color = cellColour }
    }
}

/*
https://doc.qt.io/qt-6/qml-tutorial2.html

Let's add a colour picker 
to change the colour of the displayed text.

The colour picker is made of six cells 
with six different colours. 

To avoid writing the same code multiple times for each cell, 
create a new "Cell component". 

A component provides a way of defining "a new type" 
that we can re-use in other QML files. 
A "QML component" is like "a black-box" 
and interacts with the outside world through 

- properties, 
- signals and 
- functions 

and the QML component is generally defined in its own QML file. 

For more details, see the Component documentation. 
https://doc.qt.io/qt-6/qml-qtqml-component.html


The "component's filename" must always start with a "capital letter".

*/
