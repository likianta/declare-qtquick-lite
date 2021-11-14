import QtQuick
import QtQuick.Controls
import "../../../modern_tui/widgets" as W

Window {
    id: root
    visible: true

    W.VBox {
        anchors.fill: parent
        anchors.margins: 10

        W.HBox {
            id: _row0
            width: parent.width
//            width: contentWidth
//            width: childrenRect.width

            W.MInput {
                id: _title
                width: 50
                hint: 'title'
            }
            W.MInput {
                id: _path
                width: 300
                hint: 'path'
            }
            W.MInput {
                id: _subpath
                width: 50
                hint: 'subpath'
                text: '.assets'
            }
            W.MButton {
                id: _dump
                text: 'dump'
                onClicked: {
                    console.log('dump', _title.text, _path.text, _subpath.text)
                }
            }
            W.MText {
                id: _filename
                width: 125
                text: 'empty'
            }
        }
    }

    Component.onCompleted: {
        root.width = _row0.childrenRect.width
    }
}
