double bill = 0;
double tip = 0;
int person = 1;

// preapring the results
double tipPerPerson = 0;
double totalPerPerson = 0;

// creating a function to calculate the tip
void calculate() {
  tipPerPerson = (bill * tip) / person;
  totalPerPerson = (bill * (1 + tip)) / person;
}
