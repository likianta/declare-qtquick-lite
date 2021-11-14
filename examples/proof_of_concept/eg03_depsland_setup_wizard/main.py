from lk_logger import lk
from lk_qtquick_scaffold import *


@reg()
def update_progress(progress: int):
    # lk.loga(progress)
    if not progress:
        return '<font color="#CCCCCC">{}</font>'.format('-' * 100)
    progress = int(progress)
    a, b = progress, 100 - progress
    return (
        '<font color="red">{}</font>'
        '<font color="#CCCCCC">{}</font>'.format(
            '-' * a, '-' * b
        )
    )


hot_loader.start('view.qml')
