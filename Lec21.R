#Function is sets of instruction for repeated task
#we use function so that we dont have to repeat a work again and again
#loop (multiplication table for 3)
for (index in 1:10)
{
  print(c(3,"*",index,"=",3*index))
}
#in the above function,if we want to calculate the namta of 125, we will have to replace 3 by 125
# but function create a universal formula for namta, so that we can provide the desired number for namta calculation
#make a function for multiplication_table
#Multiplication_table(inputNumber)
#make a function for multiplication_table

multiplication_table=function(inputNumber){
  for (index in 1:10)
  {
    print(c(inputNumber,"*",index,"=",inputNumber*index))
  }
}
#
multiplication_table(3)
#if we want "namta" of 150
multiplication_table(150)

