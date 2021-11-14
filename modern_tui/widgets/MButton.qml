import QtQuick
import QtQuick.Controls

Button {
    id: root
    height: 20
    flat: true

    property alias p_text: root.text

    background: Rectangle {
        border.width: 1
        border.color: (root.hovered || root.activeFocus) ? '#4164E8' : '#DDDDDD'
        color: root.pressed ? '#C6D2FF' : '#FFFFFF'
        radius: 4

        Behavior on border.color {
            ColorAnimation {
                duration: 100
            }
        }

        Behavior on color {
            ColorAnimation {
                duration: 200
            }
        }
    }

    contentItem: MText {
        id: _txt
        horizontalAlignment: Text.AlignHCenter
        p_text: root.text
        Component.onCompleted: {
            if (root.width == 0) {
                root.width = Qt.binding(() => {
                    return _txt.contentWidth + 12
                })
            }
        }
    }
}
