"""Main module for the FastAPI application."""

from fastapi import FastAPI

app = FastAPI()


@app.get('/')
def root() -> dict:
    """Root endpoint."""
    return {'message': 'Hello World'}


@app.get('/status')
def status() -> dict:
    """Status endpoint."""
    return {'message': 'OK'}
