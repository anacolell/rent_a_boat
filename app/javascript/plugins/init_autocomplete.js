import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('boat');
  if (addressInout) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
