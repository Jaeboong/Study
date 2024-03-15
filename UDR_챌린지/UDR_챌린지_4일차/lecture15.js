arr1 = [1,2,3], arr2 = [4,5,6];

console.log(arr1.sort(), arr2.sort());

arr1.push(4);
arr2.pop();
arr1.shift();
arr1.unshift(0);
arr1.reverse();

console.log(arr1.sort(), arr2.sort());

arr1.concat(arr2);
console.log(arr1.indexOf(2));
console.log(arr1.lastIndexOf(4));

var str = "1,2,3,4,5";
arr = str.split(",");

console.log(arr.sort());
