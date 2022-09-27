If you download a video from the Internet and when you open it, the video player indicates a shorter length than the correct one, then you need this solution:

-mainFolder
    - example1.mp4
    - example2.mp4
    - example3.mp4

sudo apt-get update
sudo apt-get install ffmpeg

chmod +x ./videoFixLength.sh

Just execute this batch in the mainFolder
./videoFixLength.sh



Description about batch:
    Create a temp folder named "fix"
        mkdir fix;

    For each file will apply a command that will fix the duration problem and save it inside the "fix" folder.
        for i in *.mp4; do ffmpeg -ignore_editlist 1 -i "$i" -codec copy ./fix/"$i"

    Delete the video from the main folder and end loop
        rm -r ./"$i"; done; 

    Move all fixed videos to the main folder
        mv ./fix/*.mp4 ./; 

    Remove "fix" folder
        rm -r ./fix



