fun count(from : int, to : int) = 
	if from=to
		then 
			to :: []
		else 
			from :: count(from + 1, to);

count(1 , 3);

fun countup_from1(x: int) = 
	count(1 , x);

countup_from1(4);

(******* let implementation ************)

fun countup_from1(x : int) = 
	let
	fun count(from : int, to : int) = 
		if from=to
			then 
				to :: []
			else 
				from :: count(from + 1, to);
	in 
		count(1 , x)
	end;

countup_from1 4;

(******* removing to variable *********)

fun countup_from1 (x : int) = 
	let
		fun count(from : int) = 
			if(from=x)
				then x :: []
			else
				from :: count(from+1)
	in
		count(1)
	end;

countup_from1 6;
