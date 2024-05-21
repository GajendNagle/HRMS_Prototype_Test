

const slider = document.querySelector('.slider');

function activate(e) {
    const items = document.querySelectorAll('.item');
    e.target.matches('.next') && slider.append(items[0]);
    e.target.matches('.prev') && slider.prepend(items[items.length - 1]);
}

document.addEventListener('click', activate, false);

// Function to simulate a click on the next button
function autoPlayNext() {
    document.querySelector('.next').click();
}

// Function to simulate a click on the previous button
function autoPlayPrev() {
    document.querySelector('.prev').click();
}

// Set up separate autoplay intervals for next and previous with a 4-second delay
const autoplayNextInterval = setInterval(autoPlayNext, 10000);

// Uncomment the following line if you want to enable autoplay for previous as well
// const autoplayPrevInterval = setInterval(autoPlayPrev, 2000);

// Stop autoplay when the user interacts with the slider
slider.addEventListener('mousedown', () => {
    clearInterval(autoplayNextInterval);
    // Uncomment the following line if you want to clear the interval for previous as well
    // clearInterval(autoplayPrevInterval);
});

