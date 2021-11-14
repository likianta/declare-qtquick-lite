from lk_logger import lk
from lk_qtquick_scaffold import *


@reg()
def run(file_i):
    if file_i:
        lk.loga(file_i)
        return file_i.replace('.md', '.html')
    else:
        return ''


# hot_loader.start('./proof_of_concept/eg01/view.qml')
hot_loader.start('./proof_of_concept/eg02_md_img_2_b64/view.qml')
