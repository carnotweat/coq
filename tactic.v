Lemma modusponens: forall (P Q: Prop), P -> (P -> Q) -> Q.
Proof. auto. Qed.

Ltac exploit x :=
   refine (modusponens _ _ (x _ _ _ _ _ _ _ _ _ _ _) _)
|| refine (modusponens _ _ (x _ _ _ _ _ _ _ _ _ _) _)
(* Lots of lines elided.  The actual code handle cases upto 
  35 arguments *)
|| refine (modusponens _ _ (x _ _ _) _)
|| refine (modusponens _ _ (x _ _) _)
|| refine (modusponens _ _ (x _) _).
