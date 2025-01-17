
const makeAnimalList = templater((o)=>`
<div class="animallist-item">
	<a href="#" class="display-flex animal-jump" data-id="${o.id}">
      <div class="flex-none animallist-item-image">
         <img src="${o.img}" alt="">
      </div>
      <div class="flex-stretch animallist-item-body padding-md">
         <div class="animallist-item-name">${o.name}</div>
         <div class="animallist-item-breed"><strong>Breed:</strong> ${o.breed}</div>
         <div class="animallist-item-color"><strong>Color:</strong> ${o.color}</div>
      </div>
   </a>
</div>
`);


const makeUserProfile = (o) => `
<div class="display-flex flex-vertical">
<div class="user-profile-image">
   <img src="${o.img}" alt="">
</div>
</div>
<div class="profile-detail">
   <h1 class="user-profile-name">${o.name}</h1>
   <h3 style="font-weight: 500;"><strong>Username:</strong> &commat;${o.username}</h3>
   <h3 style="font-weight: 500;"><strong>Email:</strong> ${o.email}</h3>
   <div style="margin: 0 0.5em 0 0.5em"><div class="form-button" style="margin-top: 1em;"><a href="#page-user-settings">Settings</a></div></div>
</div>
`;


const makeAnimalProfile = (o) => `
<div>
   <h2 class="dog-profile-name">${o.name}</h2>
   <div class="dog-profile-breed"><strong>Breed:</strong>  ${o.breed}</div>
   <div class="dog-profile-gender"><strong>Gender:</strong>  ${o.gender}</div>
   <div class="dog-profile-color"><strong>Color:</strong>  ${o.color}</div>
   <div class="dog-description"><strong>Description:</strong> <p>${o.description}</p></div>
   <div class="dog-description"><strong>Uniqueness:</strong> <p>${o.uniqueness}</p></div>
</div>
`;

const makeAnimalPopup = o => `
<div class="display-flex animal-jump" data-id="${o.animal_id}">
   <div class="flex-none animal-popup-image">
      <img src="${o.img}" alt="">
   </div>
   <div class="flex-stretch animal-popup-body padding-md">
      <div class="animal-popup-name">${o.name}</div>
      <div class="animal-popup-breed"><strong>Breed</strong> ${o.breed}</div>
      <div class="animal-popup-color"><strong>Color</strong> ${o.color}</div>
   </div>
</div>
`;


const FormControlInput = ({namespace,name,displayname,type,placeholder,value}) => `
<div class="form-control">
   <label for="${namespace}-${name}" class="form-label">${displayname}</label>
   <input type="${type}" id="${namespace}-${name}" class="form-input" data-role="none" placeholder="${placeholder}" value="${value}">
</div>
`;
const FormControlTextarea = ({namespace,name,displayname,placeholder,value}) => `
<div class="form-control">
   <label for="${namespace}-${name}" class="form-label">${displayname}</label>
   <textarea id="${namespace}-${name}" class="form-input" data-role="none" placeholder="${placeholder}">${value}</textarea>
</div>
`;


const makeAnimalFormInputs = (o,namespace) => `
${FormControlInput({
   namespace:namespace,
   name:"name",
   displayname:"Name",
   type:"text",
   placeholder:"What's the Dog Name?",
   value:o.name
})}
${FormControlInput({
   namespace:namespace,
   name:"breed",
   displayname:"Breed",
   type:"text",
   placeholder:"What's the Dog Breed?",
   value:o.breed
})}
<div class="form-control">
<label class="form-label">Gender</label>
<select id="${namespace}-gender" data-role="none" class="form-input">
   <option>Female</option>
   <option>Male</option>
</select>
</div>
${FormControlInput({
   namespace:namespace,
   name:"color",
   displayname:"Color",
   type:"text",
   placeholder:"What Color is the Dog?",
   value:o.color
})}
${FormControlTextarea({
   namespace:namespace,
   name:"description",
   displayname:"Description",
   placeholder:"Type the Dog Description",
   value:o.description
})}
${FormControlTextarea({
   namespace:namespace,
   name:"uniqueness",
   displayname:"Uniqueness",
   placeholder:"What's the Dog Uniqueness?",
   value:o.uniqueness
})}
`;


const makeUserFormInputs = (o,namespace) => `
${FormControlInput({
   namespace:namespace,
   name:"name",
   displayname:"Name",
   type:"text",
   placeholder:"Type Your Name",
   value:o.name
})}
${FormControlInput({
   namespace:namespace,
   name:"username",
   displayname:"Username",
   type:"text",
   placeholder:"Type Your Username",
   value:o.username
})}
${FormControlInput({
   namespace:namespace,
   name:"email",
   displayname:"Email",
   type:"email",
   placeholder:"Type Your Email Address",
   value:o.email
})}
`;



const makeAnimalChoiceSelect = ({animals,name,chosen=0}) => `
<select id="${name}">
   ${templater(o=>`
      <option value="${o.id}" ${o.id===chosen?'selected':''}>${o.name}</option>
   `)(animals)}
</select>
`;


const makeAnimalListSet = (arr,target="#page-list .animallist") => {
   $(".filter-bar").html(makeFilterList(arr));
   $(target).html(makeAnimalList(arr));
}

const capitalize = s => s[0].toUpperCase()+s.substr(1);

const filterList = (animals,type) => {
   let a = [...(new Set(animals.map(o=>o[type])))];
   return templater(o=>o?`<a href="#" data-filter="${type}" data-value="${o}">${capitalize(o)}</a>`:'')(a);
}


const makeFilterList = (animals) => {
   return `
   <a href="#" data-filter="type" data-value="">All</a>
   <div style="color: var(--color-main-dark);">|</div>
   ${filterList(animals,'breed')}
   <div style="color: var(--color-main-dark);">|</div>
   ${filterList(animals,'color')}
   `;
}