import cv2
import matplotlib.pyplot as plt
import matplotlib.animation as animation

#Initialize the Haar Cascade pedestrian detection model

pedestrian_cascade = cv2.CascadeClassifier(cv2.data.haarcascades + 'haarcascade_fullbody.xml')

# Load the video
video_path = 'D:/VIDEO.mp4'
cap= cv2.VideoCapture(video_path)

#check if the video is opened successfully
if not cap.isOpened():
    print("Error: Unable to open the video.")
    exit()


#Function to detect pedestrians and draw bounding boxes
def detect_pedestrians(frame):
    #Convert the frame to grayscale
    gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

    #Detect pedestrians in the grayscale frame
    pedestrians = pedestrian_cascade.detectMultiScale(gray_frame, scaleFactor=1.05,minNeighbors=5,minSize=(30,30))

    #Draw rectangles around the detected pedestrains
    for(x,y,w,h) in pedestrians:
        cv2.rectangle( frame,(x,y),(x+w,y+h),(0,255,0),2)
    return frame
fig,ax=plt.subplots()
#Function to update the animation
def update(frame):
    #Read a frME FROM THE VIDEO
    ret,frame = cap.read()
    if not ret:
        ani.event_source.stop()
        return

    #Detect pedestrians and draw boundng boxes
    frame_with_pedestrains=detect_pedestrians(frame)

    ax.clear()
    ax.imshow(cv2.cvtColor(frame_with_pedestrains, cv2.COLOR_BGR2RGB))
    ax.axis('off')

#create the animation
ani=animation.FuncAnimation(fig,update,interval=50)

#Display the animation
plt.show()
#Release the video capture object
cap.release
