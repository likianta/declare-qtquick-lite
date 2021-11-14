import QtQuick

Row {
    id: root
    anchors.horizontalCenter: parent.horizontalCenter
    width: parent.width
    height: root.is_hidden ? 0 : 20

    clip: true
//    opacity: root.is_hidden ? 0 : 1
    spacing: 10

    property bool is_hidden: false

    function hide() {
        root.is_hidden = true
    }

    function show() {
        root.is_hidden = false
    }

    Behavior on height {
        NumberAnimation {
            duration: 100
//            easing.type: Easing.OutQuad
        }
    }

//    Behavior on opacity {
//        NumberAnimation {
//            duration: 100
//            easing.type: Easing.OutQuad
//        }
//    }
}
