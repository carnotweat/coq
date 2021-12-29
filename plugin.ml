let exploit (c: Termconstr) = fun gl ->  
(* the type of [c] is [ty] *)
let ty = Tacmachpf_type_of gl c in 

(* In the general case, [ty] can be written as [forall (x1:t1)
... (xn:tn), t]. We decompose this arity in two parts: [ctx] which
is [(xn, tn); ...; (x1,t1)] and the conclusion [t] *)
let ctx, t = Termdecompose_prod_assum ty in

(* We will also need the type of the conclusion of the goal *)
let concl = Tacmachpf_concl gl in 
