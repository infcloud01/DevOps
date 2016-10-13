#Enter a paramter of Running or Stopped as the argument when you run this to get a list of services in that state
function srv () {
   get-service | Where-Object Status -EQ $args[0] 
}