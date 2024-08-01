import QtQuick 2.5

Item {
    id: container
    // Declare a cellColour property. 
    // This property is accessible from outside the component.
    // This allows to instantiate the cells with different colours. 
    // bind rectangle.color to cellColour
    // E.g: cellColour = blue --> rectangle.color = blue
    property alias cellColour: rectangle.color
    // 
    signal clickedColouredCell()

    width: 40; height: 25

    // colour buttons
    Rectangle {
        id: rectangle
        border.color: "grey"
        border.width: 5
        anchors.fill: parent
    }

    MouseArea {
        anchors.fill: parent
        // emit a clickedColouredCell signal
        onClicked: container.clickedColouredCell()
    }
}

/*
The root type of the component is an Item 
with the id "container". 

An Item is the most basic visual type in QML 
and is often used as a container 
for other types.
https://doc.qt.io/qt-6/qml-qtquick-item.html

Declare a "cellColour" property. 
This property is accessible from "outside the component".
This allows to instantiate the cells with different colours. 

This property is an "alias" to an existing property ! 
The "color of the rectangle" that composes the cell 
Refer to Property Binding: 
https://doc.qt.io/qt-6/qtqml-syntax-propertybinding.html

The component should have a "signal" 
that's called "clickedColouredCell" here 
(with cellColour as a parameter of type color.)
The signal will be used to change the colour of the text 
in the main QML file later.

The "cell component" is a coloured rectangle with the id rectangle.

The anchors.fill property is a convenient way 
to set the size of a visual type. 

In this case 
the rectangle will have the same size 
as its parent. 
Refer to Anchor-Based Layout: 
https://doc.qt.io/qt-6/qtquick-positioning-anchors.html

In order to change the colour of the text 
when clicking on a cell, 
create a MouseArea type with the same size as its parent.
https://doc.qt.io/qt-6/qml-qtquick-mousearea.html

A MouseArea defines a "signal" called clickedColouredCell in this case. 
When this "signal" is triggered 
emit a clickedColouredCell signal (with the colour as parameter).

*/