from flask import Flask, render_template
import os
import random
app = Flask(__name__)

color_array=['#FF0000', '#00FF00']

random_number = random.randint(0, 1)
final_color=color_array[random_number]
pod_name = None
try:
    pod_name=os.environ['MY_POD_NAME']
except:
    pass


@app.route('/')
def home():
    return render_template('index.html', pod_name=pod_name, final_color=final_color)
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=False)
