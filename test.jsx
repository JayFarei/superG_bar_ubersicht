import {css} from "uebersicht"

export const command = (dispatch) =>
  fetch('https://anorthic-sardine-3532.dataplicity.io)')
    .then((response) => {
        temp = JSON.parse(output)
        celsius = temp.celsius
      dispatch({ type: 'FETCH_SUCCEDED', data: celsius });
    })
    .catch((error) => {
      dispatch({ type: 'FETCH_FAILED', error: error });
    });


export const refreshFrequency = 1000;