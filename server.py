from flask import Flask, send_from_directory

app = Flask(__name__)

@app.route("/<filename>")
def download_file(filename):
    return send_from_directory(
        './uploads',
        filename,
        as_attachment=True
    )


app.run(host="0.0.0.0", port=5000)