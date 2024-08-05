// https://doc.qt.io/qt-6/qmlfirststeps.html
/*
A QML document defines a hierarchy of objects 
with a highly-readable, 
structured layout. 

Every QML document consists of two parts: 
- an imports section and 
- an object declaration section. 

The "types" and "functionality"
most common to "user interfaces"
are provided in the "QtQuick" import.

QtQuick => types  +  functionality of user interfaces

Importing and Using the QtQuick Module

To use the Qt Quick module, 
https://doc.qt.io/qt-6/qtquick-index.html
a QML document needs to import it. 
The import syntax looks like this:
*/
import QtQuick 
/* The types and functionality 
that Qt Quick provides 
can now be used in the QML document!

The Qt Quick module is the standard library for writing QML applications

Defining an Object Hierarchy

The object declaration in a QML document defines 
what will be displayed in the visual scene. 

Qt Quick provides the basic building blocks for all user interfaces, 
such as the objects for displaying images and text 
and for handling user input.

A simple object declaration might be 
a coloured rectangle with some text centered in it:
*/

// Window {
//     width: 400; height: width
//     visible: true
//     title: qsTr("FSwQML")

    Rectangle {
        id: rct
        width: 300;height: 100
        color: "lightblue"
        // anchors.fill: parent
        // anchors.centerIn: parent
        Text {
            id: txt
            text: qsTr("First steps \nwith QML")
            font.pointSize: 14
            color: "black"
            anchors.centerIn: parent
        }
    }
// }

/*
This defines an object hierarchy 
with a Rectangle as root object, 
which has a child Text object. 
The parent of the Text object 
is automatically set to the Rectangle, 
and similarly, 
the Text object is added to the children property of the Rectangle object, 
by QML.

Putting it All Together

The Rectangle and Text types used in the above example 
are both provided by the QtQuick import. 
Putting the import and object declaration together, 
we get a complete QML document.

*/
