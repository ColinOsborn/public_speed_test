import React from 'react';
import ReactDOM from 'react-dom/client';

class PlacesList extends React.Component {
  render() {
    return (
      <div> Places list now rendered in REACT! </div>
    )
  }
}

const placesList = ReactDOM.createRoot(document.getElementById("places-list-container"));
placesList.render(<PlacesList/>);