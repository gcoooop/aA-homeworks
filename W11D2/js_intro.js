function madLib(verb, adjective, noun) {
  console.log(`We shall ${verb} the ${adjective} ${noun}`)
}

function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}

function fizzBuzz(array) {
  let result = new Array
  for (let i = 0; i < array.length; i++) {
    if ( array[i] % 5 === 0 || array[i] % 3 === 0 ) {
      result.push( array[i] )
    }
  }
  return result
}

function isPrime(number) {
  for (let i = 2; i < number - 1; i++ ) {
    if (number % i === 0) {
      return false
    }
  }
    return true
}

function sumOfNPrimes(n) {
  let result = 0
  let primeCount = 0
  for (let i = 2; primeCount < n; i++ ) {
    if ( isPrime(i) ) {
      primeCount++
      result = result + i
    }
  }
  return result
}