#The details of this code can be found in my video here - #https://www.youtube.com/watch?v=hIq4bVT2ghk

from waitress import serve
import SAFlaskFinal

serve(SAFlaskFinal.app, port=8000, threads=6)