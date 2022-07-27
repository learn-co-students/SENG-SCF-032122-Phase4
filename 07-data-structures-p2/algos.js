console.log("good luck, you've got this!!", "🍀");
// Given an array [2, 9, 1, 3] create a custom function to sort the array without using a built in sort method such as .sort.

// - Write the question down and confirm your assumptions
//  - Write out/explain steps for the solution before coding
//  - Code out solution
//  - Run test case examples
//  - Give Big - O

function sort(array) {
  for (let i = 0; i < array.length; i++) {
    console.log("looping");
    for (let j = i + 1; j < array.length; j++) {
      console.log("looping");
      if (array[i] > array[j]) {
        // ES 6 destructuring assignment
        [array[i], array[j]] = [array[j], array[i]];
      }
    }
  }
  return array;
}

// alternative to ES6 destructuring
// let temp = array[i]
// array[i] = array[j]
// array[j] = temp

// if i wanted to implement a slightly more optimal algorithm I might create new array, call Math.min on the array and use indexOf to find the index of that element in the array. and then use .splice to remove that element from the array. keep pushing until our input array is empty (using a while loop => while arr.length)

// this is still not perfect in terms of time complexity because we are reindexing elements in our input array every time we splice. Also Math.min and .indexOf use resources. But it is another way that doesn't use nested loops and I like it because it shows a command of some of JavaScript's built in methods.
function newSort(arr) {
  let result = [], smallest;
  while (arr.length) {
    smallest = Math.min(...arr);
    currentIdx = arr.indexOf(smallest);
    console.log(smallest, currentIdx);
    result.push(smallest)
    arr.splice(currentIdx, 1);
  }
  return result;
}

const arr = [2, 100, 9, 13, 1, 3]
console.log(newSort(arr))
