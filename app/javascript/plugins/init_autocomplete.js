import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('boat');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
