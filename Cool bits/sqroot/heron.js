const average = (x, y) => {
    let result = x+y / 2;
    return result;
};

const square = (x) => {
    let result = x * x;
    return result;
};

const improve = (guess, x) => {
    let res = x / guess;
    let result = average(guess, res);
    return result;
};

const absolute = (x) => {
    if (x < 0) {
        return -x;
    } else { return x;
    };
};

const goodenough = (guess, x) => {
    if (absolute(square(guess) - x) < 0.001) {
        return true;
    } else {
        return false;
    };
};

const taketry = (guess, x) => {
    if (goodenough(guess, x) == true) {
        return guess;
    } else {
        taketry(improve(guess, x), x);
    };
};

const sqroot = (x) => {
    taketry(1, x);
};

// understand why this doesn't work
