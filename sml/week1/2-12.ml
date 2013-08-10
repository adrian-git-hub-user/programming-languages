fun sum_list (xs : int list) = 
	if null xs
		then 0
	else
		hd xs + sum_list(tl xs);

sum_list[3,2,1]

fun countdown (x: int) = 
	if x = 0
		then []
	else 
		x :: countdown(x - 1);

countdown(3)

fun append(xs : int list, ys : int list) = 
	if null xs
	 then ys
	else (hd xs) :: append((tl xs), ys);

append([1,2,3] , [4,5,6]);

fun sum_pair_list(xs : (int * int) list) = 
	if null xs
	then 0
else #1 (hd xs) + #2 (hd xs) 
		+ sum_pair_list(tl xs);

sum_pair_list[(3,4) , (5,6) , (1,1)];

fun firsts (xs : (int * int) list) = 
	if null xs
	then []
	else (#1 (hd xs)) :: firsts(tl xs);

firsts[(3,4) , (5,6) , (1,1)];

fun seconds (xs : (int * int) list) = 
	if null xs
	then []
	else (#2 (hd xs)) :: seconds(tl xs);

seconds[(3,4) , (5,6) , (1,1)];

fun sum_pair_list2 (xs : (int * int) list) = 
	sum_list (firsts xs) + sum_list (seconds xs);

sum_pair_list2[(1,2) , (3,4)];
