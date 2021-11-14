import QtQuick
import QtQuick.Controls
import "../../../modern_tui/widgets" as W

Window {
    id: root
    width: 400
    height: 70
    visible: true

    // use permillage for calculating size is a good idea.

    W.VBox {
        anchors.fill: parent
        anchors.margins: 10

        W.HBox {
            id: _row0
            width: parent.width

            W.MInput {
                id: _path_i
                width: parent.width - 120
                hint: 'input markdown filepath here'
            }

            W.MButton {
                id: _browse
                width: 50
                text: 'browse'
                onClicked: {
                    // pass
                }
            }

            W.MButton {
                id: _run
                width: 50
                text: 'run'
                onClicked: {
                    const path_o = pyside.call('run', _path_i.text)
                    _path_o.p_text = path_o
                }
            }
        }

        W.HBox {
            id: _row1
            width: parent.width

            property bool p_available: _path_o.p_text != ''

            W.MText {
                id: _path_o
                width: _path_i.width
                p_hint: 'empty'
            }

            W.MButton {
                visible: parent.p_available
                width: 50
                text: 'open'
            }

            W.MButton {
                visible: parent.p_available
                width: 50
                text: 'copy'
            }
        }
    }
}
