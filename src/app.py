from flask import Flask, render_template
import random
app = Flask(__name__)

color_array=['#FF0000', '#00FF00']

random_number = random.randint(0, 1)
final_color=color_array[random_number]

@app.route('/')
def home():
    return render_template('index.html', final_color=final_color)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=False)
