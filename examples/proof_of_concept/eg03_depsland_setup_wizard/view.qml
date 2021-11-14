import QtQuick
import QtQuick.Controls
import "../../../modern_tui/widgets" as W

Window {
    id: root
    width: 600
    height: 400
    visible: true

    // use permillage for calculating size is a good idea.

    W.VBox {
        anchors.fill: parent
        anchors.margins: 10

        W.HBox {
            id: _row0

            W.MText {
                id: _title
                p_text: '<b>installing depsland</b>'
            }
        }

        W.HBox {
            W.MText {
                id: _details
                p_hint: 'ready'
            }
        }

        W.HBox {
            id: _progress_row

            property int prog: 0

            W.MText {
                id: _progress_visual
//                width: 430
//                width: parent.width - _progress_percent.width
                p_text: pyside.call('update_progress', _progress_row.prog)
            }

            W.MText {
                id: _progress_percent
//                width: 40
                p_text: parent.prog + '%'
            }
        }

        W.HBox {
            W.MText {
                p_text: 'new designed progress bar'
            }
            W.MProgress {
                id: _progress_2
            }
        }

        W.HBox {
            W.MButton {
                p_text: 'start'
                onClicked: {
                    pyside.eval(`
                        from time import sleep
                        from lk_utils.subproc import run_new_thread

                        def main():
                            for i in range(101):
                                sleep(0.02)
                                if i % 7 == 0:
                                    # pick a random description
                                    step.setProperty('p_text', (
                                        'hello',
                                        'world',
                                        'welcome',
                                        'depsland',
                                    )[i % 4])
                                prog.setProperty('prog', i)
                                prog_2.setProperty('p_value', i)

                        run_new_thread(main)
                    `, {
                        'prog': _progress_row,
                        'prog_2': _progress_2,
                        'step': _details,
                    })
                }
            }
            W.MButton {
                p_text: 'reset'
                onClicked: {
                    _progress_row.prog = 0
                    _details.p_text = ''
                }
            }
            W.MButton {
                p_text: 'show/hide'
                onClicked: {
                    _progress_row.is_hidden = !_progress_row.is_hidden
                }
            }
        }
    }
}
