import os
from flask import Flask, render_template, request, url_for, redirect, g
from dotenv import load_dotenv
from database import connect_db, get_db
load_dotenv()

app = Flask(__name__)
app.config['TESTING'] = True
app.config["TEMPLATES_AUTO_RELOAD"] = True

@app.teardown_appcontext
def close_db(error):
   if hasattr(g, "sqlite_db"):
      g.sqlite_db.close()

@app.route('/')
def index():
	return render_template('index.html', title="BopdyOneSend — Send & Receive BTC")
if __name__ == '__main__':
   app.run()