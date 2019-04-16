set -ex

DIRECTORY=/tmp/pdfs

if [ ! -d "${DIRECTORY}" ]; then
  echo "Please create a the ${DIRECTORY} directory and place your PDFs there"
  exit 1
fi

docker run \
        --rm \
        -it \
        --mount type=bind,source=${DIRECTORY},target=/pdfs adamatan-images_and_video \
        bash -c "cd /pdfs && convert -density 150 -trim /pdfs/*.pdf -quality 100 -sharpen 0x1.0 image-%05d.jpg"