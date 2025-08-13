import subprocess
import time
import json
import sys

# https://github.com/mezutelni/dotfiles/blob/master/.local/bin/scrolling-mpris.py

# Customization settings (easy to modify)
GLYPH_FONT_FAMILY = "Symbols Nerd Font Mono"  # Set to your desired symbols font
# Those are glyphs that will be always visible at left side of module.
GLYPHS = {
    "paused": "",
    "playing": "",
    "stopped": ""
}
DEFAULT_GLYPH = ""  # Glyph when status is unknown or default
# Text to display when nothing is playing
TEXT_WHEN_STOPPED = "Nothing playing right now"
# Length of the song title part (excludes glyph and space)
SCROLL_TEXT_LENGTH = 30
REFRESH_INTERVAL = 0.3  # How often the script updates (in seconds)
# Path to playerctl, use which playerctl to find yours.
PLAYERCTL_PATH = "/usr/bin/playerctl"

# Function to get player status using playerctl


def get_player_status():
    try:
        result = subprocess.run(
            [PLAYERCTL_PATH, 'status'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        status = result.stdout.decode('utf-8').strip().lower()
        if result.returncode != 0 or not status:
            return "stopped"  # Default to stopped if no status
        return status
    except Exception as e:
        return "stopped"

# Function to get currently playing song using playerctl


def get_current_song():
    try:
        result = subprocess.run([PLAYERCTL_PATH, 'metadata', 'title'],
                                stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        song_title = result.stdout.decode('utf-8').strip()
        if result.returncode != 0 or not song_title:
            return None  # Return None if no song is playing or an error occurred
        return song_title
    except Exception as e:
        return None


def get_current_artist():
    try:
        result = subprocess.run([PLAYERCTL_PATH, 'metadata', 'artist'],
                                stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        song_artist = result.stdout.decode('utf-8').strip()
        if result.returncode != 0 or not song_artist:
            return None  # Return None if no song is playing or an error occurred
        return song_artist
    except Exception as e:
        return None

# Function to generate scrolling text with fixed length


def scroll_text(text, length=SCROLL_TEXT_LENGTH):
    # Ensure the text is padded to the desired length
    text = text.ljust(length)
    # Add space and repeat start for scrolling effect
    scrolling_text = text + ' ' + text[:length]

    for i in range(len(scrolling_text) - length):
        # Use a generator to yield scrolling parts
        yield scrolling_text[i:i + length]


if __name__ == "__main__":
    scroll_generator = None

    while True:
        output = {}

        try:
            # Get the player status and song title
            status = get_player_status()
            artist = get_current_artist()
            song = get_current_song()

            song = f"{artist} - {song}    "

            # Get the glyph based on player status
            glyph = GLYPHS.get(status, DEFAULT_GLYPH)

            if song:
                if len(song) > SCROLL_TEXT_LENGTH:  # Adjusted for fixed glyph space
                    if scroll_generator is None:
                        scroll_generator = scroll_text(
                            song)  # Initialize the generator
                    try:
                        song_text = next(scroll_generator)
                    except StopIteration:
                        scroll_generator = scroll_text(song)
                        song_text = next(scroll_generator)
                else:
                    # Ensure the song title is padded
                    song_text = song.ljust(SCROLL_TEXT_LENGTH)
                    scroll_generator = None
            else:
                # Ensure fixed length when stopped
                song_text = TEXT_WHEN_STOPPED.ljust(SCROLL_TEXT_LENGTH)

            # Combine glyph and song text with a fixed space
            output['text'] = f"<span font_family='{
                GLYPH_FONT_FAMILY}'>{glyph}</span> {song_text}"

        except Exception as e:
            output['text'] = f" Error: {str(e)}".ljust(
                SCROLL_TEXT_LENGTH + 2)  # Show error with stop symbol

        # Print the JSON-like output
        print(json.dumps(output), end='\n')

        time.sleep(REFRESH_INTERVAL)
