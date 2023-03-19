import moviepy
import moviepy.editor
import yt_dlp
import os
def hai():
    ydl_opts = {
        'format': 'worst',
        'outtmpl': '%(title)s.%(ext)s',
    }
    url = input("Enter the URL  :")

    with yt_dlp.YoutubeDL(ydl_opts) as ydl:
        ydl.download([url])
    for file in os.listdir():
        if file.endswith(".3gp"):
            os.rename(file, "myvideo2.mp4")
hai()
video=moviepy.editor.VideoFileClip("myvideo2.mp4")
audio=video.audio
audio.write_audiofile("Exp1.wav")
