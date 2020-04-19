if(!process.argv[2])
  console.log("Usage: node hnfacts.js <file>");
else {
  data = require('fs').readFileSync(process.argv[2]).toString();
  if(!(count = (data.match(/\[\]/g) || []).length/2)%2)
    console.log("Error: Please provide an equal number of []s inline as you have in your references.");
  else {
    i=1;
    while(data.indexOf("\[\]")>=0) {
      if(i==(count+1))
        i=1;
      data=data.replace(/\[\]/,'['+i+']');
      i++;
    }
    console.log(data);
  }
}
