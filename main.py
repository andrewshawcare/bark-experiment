from bark import SAMPLE_RATE, generate_audio, preload_models
from scipy.io.wavfile import write as write_wav

def main():
    # download and load all models
    preload_models()

    # generate audio from text
    text_prompt = """
        Hello, my name is Suno. And, uh — and I like pizza. [laughs] 
        But I also have other interests such as playing tic tac toe.
    """
    audio_array = generate_audio(text_prompt)

    # play text in notebook
    write_wav("audio.wav", SAMPLE_RATE, audio_array)

if __name__ == "__main__":
    main()