from flask import Flask, send_from_directory, request

app = Flask(__name__)

@app.route("/<filename>")
def download_file(filename):
    return send_from_directory(
        './uploads',
        filename,
        as_attachment=True
    )

@app.route("/upload", methods=["POST"])
def upload():
    data = request.get_data()

    print("Received:", len(data), "bytes")
    print(data.decode("utf-8"))

    return "Received", 200

app.run(host="0.0.0.0", port=5000)