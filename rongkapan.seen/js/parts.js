
const makeAnimalList = templater((o)=>`
<div class="animallist-item">
	<a href="#page-animal-profile" class="display-flex" data-id="${o.id}">
      <div class="flex-none animallist-item-image">
         <img src="${o.img}" alt="">
      </div>
      <div class="flex-stretch animallist-item-body padding-md">
         <div class="animallist-item-name">${o.name}</div>
         <div class="animallist-item-type"><strong>Color:</strong> ${o.color}</div>
         <div class="animallist-item-breed"><strong>Breed:</strong> ${o.breed}</div>
      </div>
   </a>
</div>
`);


const makeUserProfile = (o) => `
<div class="user-profile-image">
	<img src="${o.img}" alt="">
</div>


`;