from flask import Flask
app = Flask(__name__)
@app.route("/")
def hello():
	return "ACTUALIZACIÓN 1"
if __name__ == "__main___":
	 app.run()
