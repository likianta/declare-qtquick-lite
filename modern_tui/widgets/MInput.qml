import QtQuick
import QtQuick.Controls

TextField {
    id: root
    height: 20
    leftPadding: 4
    rightPadding: 4

    font.family: 'Microsoft YaHei UI'
    font.pixelSize: 10
    placeholderTextColor: '#CCCCCC'
    selectByMouse: true
    selectionColor: '#CAC3C3'
    verticalAlignment: TextInput.AlignVCenter

    property alias hint: root.placeholderText

    background: Item {
        Rectangle {
            id: _baseboard
            anchors.bottom: parent.bottom
            width: parent.width
            height: 1
            radius: 1
            color: '#CCCCCC'

            Rectangle {
                id: _solid
                width: root.activeFocus ? parent.width : 0
                height: 1
                radius: 1
                color: '#333333'

                Behavior on width {
                    NumberAnimation {
                        duration: 240
                        easing.type: Easing.OutQuad
                    }
                }
            }
        }
    }
}
