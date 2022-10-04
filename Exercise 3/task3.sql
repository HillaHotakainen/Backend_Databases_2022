/* 
Try to delete employees Steven Thorpe from the database.
Does the delete operation succeed or not and why?

Yritä poistaa työntekijä Steven Thorpe tietokannasta.
Onnistuuko poisto? Miksi/Miksi ei?
*/
delete from employees where id = 5;

/*
 Ei onnistu koska Steve Thropen id'llä on linkki purchase_orders taulussa
 */