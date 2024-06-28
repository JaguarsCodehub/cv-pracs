#!pip install opencv-python
import cv2
face_cascade=cv2.CascadeClassifier(cv2.data.haarcascades+'haarcascades_frontalface_default.xml')
image_path="image2.jpg"
image=cv2.imread(image_path)
gray_image=cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
faces=face_cascade.detectMultiScale(gray_image, scaleFactor=1.1, minNeighbors=5, minSize=(30,30))
for (x,y,w,h) in faces:
    cv2.rectangle(image,(x,y),(x+w,y+h), (255,0,0),2)
output_path='facesdetecetd.jpg'
cv2.imwrite(output_path, image)
print('Faces detected: {len(faces)}. Output saved to {output_path}')
