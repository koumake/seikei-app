if (document.URL.match( /new/ ) || document.URL.match( /edit/ ))   {
  document.addEventListener('DOMContentLoaded', function(){
    const imageList = document.getElementById('image-list');
    console.log(imageList);
    const createImageHTML = (blob) => {
        const imageElement = document.createElement('div');
        imageElement.setAttribute('id', "image-element")
        let imageElementNum = document.querySelectorAll('#image-element').length
        
        const blobImage = document.createElement('img');
        blobImage.setAttribute('src', blob);
        
        const inputHTML = document.createElement('input');
        inputHTML.setAttribute('id', `review_image_${imageElementNum}`)
        inputHTML.setAttribute('name', 'review[images][]')
        inputHTML.setAttribute('type', 'file')

        imageElement.appendChild(blobImage)
        imageElement.appendChild(inputHTML)
        imageList.appendChild(imageElement)

        imageElement.appendChild(blobImage)
        imageElement.appendChild(inputHTML)
        imageList.appendChild(imageElement)

        inputHTML.addEventListener('change', (e) => {
          file = e.target.files[0];
          blob = window.URL.createObjectURL(file);

          createImageHTML(blob)
        })
        document.getElementById('review_image').addEventListener('change', function(e){
        
          const file = e.target.files[0];
          const blob = window.URL.createObjectURL(file);
          

          createImageHTML(blob);
        });

    };
    
    //console.log(createImageHTML);
    //console.log(imageElement);
    //console.log(inputHTML);
    //console.log(blobImage);
    //console.log(imageElementNum);
    

    document.getElementById('review_image').addEventListener('change', function(e){
        
        const file = e.target.files[0];
        const blob = window.URL.createObjectURL(file);

        createImageHTML(blob);
    });
  });
}