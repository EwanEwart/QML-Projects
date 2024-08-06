import QtQuick

Rectangle {
    id: signal
    width: 200; height: 200
    state: "NORMAL"

    states: [
        State {
            name: "NORMAL"
            PropertyChanges { target: signal; color: "green"}
            PropertyChanges { target: flag; state: "FLAG_DOWN"}
        },
        State {
            name: "CRITICAL"
            PropertyChanges { target: signal; color: "red"}
            PropertyChanges { target: flag; state: "FLAG_UP"}
        }
    ]
}
