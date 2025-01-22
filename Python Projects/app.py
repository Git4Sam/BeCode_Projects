from flask import Flask, render_template, request, flash, redirect, url_for
from markupsafe import escape

app = Flask(__name__)
app.secret_key = "your_secret_key_here"  # Replace with a secure secret key

@app.route("/", methods=["GET", "POST"])
def contact_form():
    if request.method == "POST":
        # Honeypot Anti-Spam
        honeypot = request.form.get("honeypot", "").strip()
        if honeypot:
            flash("Spam detected. Your submission was not processed.")
            return redirect(url_for("contact_form"))

        # Collect and sanitize form data
        first_name = escape(request.form.get("first_name", "").strip())
        last_name = escape(request.form.get("last_name", "").strip())
        email = escape(request.form.get("email", "").strip())
        country = escape(request.form.get("country", ""))
        message = escape(request.form.get("message", "").strip())
        gender = escape(request.form.get("gender", ""))
        subject = request.form.getlist("subject") or ["Others"]

        # Validation
        errors = {}
        if not first_name:
            errors["first_name"] = "First name is required."
        if not last_name:
            errors["last_name"] = "Last name is required."
        if not email or "@" not in email or "." not in email:
            errors["email"] = "Enter a valid email address."
        if not country:
            errors["country"] = "Select a country."
        if not message:
            errors["message"] = "Message cannot be empty."
        if not gender:
            errors["gender"] = "Please select a gender."

        if errors:
            return render_template("form.html", errors=errors, form_data=request.form)

        # Successful submission
        return render_template("success.html", form_data=request.form)

    return render_template("form.html")

if __name__ == "__main__":
    app.run(debug=True)

