var target = 600851475143;
for(i = 1; i < target; i++) {
    if (target % i === 0) {
        primeFactor = i;
    }
}

document.write(primeFactor);
