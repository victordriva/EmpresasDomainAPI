from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def home():
    """Example route.

    Returns:
        dict: A dictionary with a message.
    """
    return {"message": "Hello World"}


if __name__ == "__main__":
    import os

    import uvicorn

    port = int(os.environ.get("PORT", 8000))
    uvicorn.run(app, host="0.0.0.0", port=port)  # noqa: S104
