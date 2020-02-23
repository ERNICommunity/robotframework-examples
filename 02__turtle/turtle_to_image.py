import turtle
import io
import base64
from PIL import Image
from robot.libraries.BuiltIn import BuiltIn

def save_to_file():
    ts = turtle.getscreen()
    ps = ts.getcanvas().postscript(colormode='color')
    img = Image.open(io.BytesIO(ps.encode('utf-8')))
    img.save('/tmp/test.jpg')

def save_to_html():
    ts = turtle.getscreen()
    ps = ts.getcanvas().postscript(colormode='color')
    img = Image.open(io.BytesIO(ps.encode('utf-8')))

    buffered = io.BytesIO()
    img.save(buffered, format="JPEG")
    img_str = base64.b64encode(buffered.getvalue()).decode('utf-8')
    img_html = f"<img src=\"data:image/jpg;base64, {img_str}\" style=\"width:100%\" />"
    return img_html

def log_screen():
    img_html = save_to_html()
    BuiltIn().log(img_html, html=True)

def screen_to_message():
    img_html = save_to_html()
    BuiltIn().set_test_message(f"*HTML* {img_html}")
