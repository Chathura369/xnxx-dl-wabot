FROM ravindu01manoj/sewqueen:fullcontrol

FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*


RUN npm install


CMD ["node", "xnxx.js"]
