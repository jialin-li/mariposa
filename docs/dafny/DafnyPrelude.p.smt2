(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(set-info :category "industrial")
(declare-sort |T@U| 0)
(declare-sort |T@T| 0)
(declare-fun real_pow (Real Real) Real)
(declare-fun UOrdering2 (|T@U| |T@U|) Bool)
(declare-fun UOrdering3 (|T@T| |T@U| |T@U|) Bool)
(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun TBool () T@U)
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TReal () T@U)
(declare-fun TORDINAL () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun TagORDINAL () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagISet () T@U)
(declare-fun TagMultiSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun TagIMap () T@U)
(declare-fun TagClass () T@U)
(declare-fun class._System.int () T@U)
(declare-fun class._System.bool () T@U)
(declare-fun class._System.set () T@U)
(declare-fun class._System.seq () T@U)
(declare-fun class._System.multiset () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Ctor (T@T) Int)
(declare-fun boolType () T@T)
(declare-fun intType () T@T)
(declare-fun realType () T@T)
(declare-fun bool_2_U (Bool) T@U)
(declare-fun U_2_bool (T@U) Bool)
(declare-fun type (T@U) T@T)
(declare-fun int_2_U (Int) T@U)
(declare-fun U_2_int (T@U) Int)
(declare-fun real_2_U (Real) T@U)
(declare-fun U_2_real (T@U) Real)
(declare-fun TyType () T@T)
(declare-fun TyTagType () T@T)
(declare-fun ClassNameType () T@T)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun NameFamilyType () T@T)
(declare-fun |Map#Disjoint| (T@U T@U) Bool)
(declare-fun MapTypeInv1 (T@T) T@T)
(declare-fun MapTypeInv0 (T@T) T@T)
(declare-fun MapType (T@T T@T) T@T)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun $IsAlloc (T@U T@U T@U) Bool)
(declare-fun TBitvector (Int) T@U)
(declare-fun refType () T@T)
(declare-fun MapType1Type (T@T) T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Difference| (T@U T@U) T@U)
(declare-fun |MultiSet#Intersection| (T@U T@U) T@U)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |MultiSet#FromSeq| (T@U) T@U)
(declare-fun |Seq#Empty| (T@T) T@U)
(declare-fun |MultiSet#Empty| (T@T) T@U)
(declare-fun SeqType (T@T) T@T)
(declare-fun SeqTypeInv0 (T@T) T@T)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |IMap#Domain| (T@U) T@U)
(declare-fun |IMap#Glue| (T@U T@U T@U) T@U)
(declare-fun IMapType (T@T T@T) T@T)
(declare-fun IMapTypeInv0 (T@T) T@T)
(declare-fun IMapTypeInv1 (T@T) T@T)
(declare-fun |IMap#Elements| (T@U) T@U)
(declare-fun $Is (T@U T@U) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |ISet#Union| (T@U T@U) T@U)
(declare-fun |ISet#Intersection| (T@U T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Map#Card| (T@U) Int)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun |Set#Singleton| (T@U) T@U)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun |Map#Subtract| (T@U T@U) T@U)
(declare-fun |IMap#Subtract| (T@U T@U) T@U)
(declare-fun |Seq#FromArray| (T@U T@U) T@U)
(declare-fun _System.array.Length (T@U) Int)
(declare-fun IndexField (Int) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun TISet (T@U) T@U)
(declare-fun |Math#clip| (Int) Int)
(declare-fun q@Int (Real) Int)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $$Language$Dafny () Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun AtLayer (T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun |Seq#Create| (T@U T@U Int T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $Box (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Map#Empty| (T@T T@T) T@U)
(declare-fun |IMap#Empty| (T@T T@T) T@U)
(declare-fun $HeapSuccGhost (T@U T@U) Bool)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |ISet#Equal| (T@U T@U) Bool)
(declare-fun |ORD#Plus| (T@U T@U) T@U)
(declare-fun |char#Minus| (T@U T@U) T@U)
(declare-fun charType () T@T)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun |char#Plus| (T@U T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |IMap#Values| (T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |ISet#Disjoint| (T@U T@U) Bool)
(declare-fun |ISet#Difference| (T@U T@U) T@U)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun |MultiSet#Subset| (T@U T@U) Bool)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun |IMap#Items| (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun TIMap (T@U T@U) T@U)
(declare-fun INTERNAL_div_boogie (Int Int) Int)
(declare-fun Div (Int Int) Int)
(declare-fun |ORD#LessThanLimit| (T@U T@U) Bool)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun |IMap#Equal| (T@U T@U) Bool)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |ISet#UnionOne| (T@U T@U) T@U)
(declare-fun q@Real (Int) Real)
(declare-fun |ISet#Empty| (T@T) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun FieldOfDecl (T@T T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun |MultiSet#FromSet| (T@U) T@U)
(declare-fun |Seq#Singleton| (T@U) T@U)
(declare-fun |MultiSet#Singleton| (T@U) T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Inv0_TIMap (T@U) T@U)
(declare-fun Inv1_TIMap (T@U) T@U)
(declare-fun Inv0_TBitvector (T@U) Int)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun INTERNAL_lt_boogie (Int Int) Bool)
(declare-fun INTERNAL_gt_boogie (Int Int) Bool)
(declare-fun |Map#Merge| (T@U T@U) T@U)
(declare-fun |IMap#Merge| (T@U T@U) T@U)
(declare-fun |IMap#Build| (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |MultiSet#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#Empty| (T@T) T@U)
(declare-fun INTERNAL_mod_boogie (Int Int) Int)
(declare-fun Mod (Int Int) Int)
(declare-fun TypeTuple (T@U T@U) T@U)
(declare-fun TypeTupleCar (T@U) T@U)
(declare-fun TypeTupleCdr (T@U) T@U)
(declare-fun MultiIndexField_Inverse0 (T@U) T@U)
(declare-fun MultiIndexField_Inverse1 (T@U) Int)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun INTERNAL_le_boogie (Int Int) Bool)
(declare-fun INTERNAL_ge_boogie (Int Int) Bool)
(declare-fun INTERNAL_sub_boogie (Int Int) Int)
(declare-fun Sub (Int Int) Int)
(declare-fun INTERNAL_add_boogie (Int Int) Int)
(declare-fun Add (Int Int) Int)
(declare-fun INTERNAL_mul_boogie (Int Int) Int)
(declare-fun Mul (Int Int) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |ISet#Subset| (T@U T@U) Bool)
(declare-fun Tclass._System.object? () T@U)
(declare-fun |Seq#SameUntil| (T@U T@U Int) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (Ctor boolType) 0) (= (Ctor intType) 1)) (= (Ctor realType) 2)) (forall ((arg0 Bool) ) (! (= (U_2_bool (bool_2_U arg0)) arg0)
 :qid |typeInv:U_2_bool|
 :pattern ( (bool_2_U arg0))
))) (forall ((x T@U) ) (!  (=> (= (type x) boolType) (= (bool_2_U (U_2_bool x)) x))
 :qid |cast:U_2_bool|
 :pattern ( (U_2_bool x))
))) (forall ((arg0@@0 Bool) ) (! (= (type (bool_2_U arg0@@0)) boolType)
 :qid |funType:bool_2_U|
 :pattern ( (bool_2_U arg0@@0))
))) (forall ((arg0@@1 Int) ) (! (= (U_2_int (int_2_U arg0@@1)) arg0@@1)
 :qid |typeInv:U_2_int|
 :pattern ( (int_2_U arg0@@1))
))) (forall ((x@@0 T@U) ) (!  (=> (= (type x@@0) intType) (= (int_2_U (U_2_int x@@0)) x@@0))
 :qid |cast:U_2_int|
 :pattern ( (U_2_int x@@0))
))) (forall ((arg0@@2 Int) ) (! (= (type (int_2_U arg0@@2)) intType)
 :qid |funType:int_2_U|
 :pattern ( (int_2_U arg0@@2))
))) (forall ((arg0@@3 Real) ) (! (= (U_2_real (real_2_U arg0@@3)) arg0@@3)
 :qid |typeInv:U_2_real|
 :pattern ( (real_2_U arg0@@3))
))) (forall ((x@@1 T@U) ) (!  (=> (= (type x@@1) realType) (= (real_2_U (U_2_real x@@1)) x@@1))
 :qid |cast:U_2_real|
 :pattern ( (U_2_real x@@1))
))) (forall ((arg0@@4 Real) ) (! (= (type (real_2_U arg0@@4)) realType)
 :qid |funType:real_2_U|
 :pattern ( (real_2_U arg0@@4))
))) (= (Ctor TyType) 3)) (= (type TBool) TyType)) (= (type TChar) TyType)) (= (type TInt) TyType)) (= (type TReal) TyType)) (= (type TORDINAL) TyType)) (= (Ctor TyTagType) 4)) (= (type TagBool) TyTagType)) (= (type TagChar) TyTagType)) (= (type TagInt) TyTagType)) (= (type TagReal) TyTagType)) (= (type TagORDINAL) TyTagType)) (= (type TagSet) TyTagType)) (= (type TagISet) TyTagType)) (= (type TagMultiSet) TyTagType)) (= (type TagSeq) TyTagType)) (= (type TagMap) TyTagType)) (= (type TagIMap) TyTagType)) (= (type TagClass) TyTagType)) (= (Ctor ClassNameType) 5)) (= (type class._System.int) ClassNameType)) (= (type class._System.bool) ClassNameType)) (= (type class._System.set) ClassNameType)) (= (type class._System.seq) ClassNameType)) (= (type class._System.multiset) ClassNameType)) (forall ((arg0@@5 T@T) ) (! (= (Ctor (FieldType arg0@@5)) 6)
 :qid |ctor:FieldType|
))) (forall ((arg0@@6 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@6)) arg0@@6)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@6))
))) (= (type alloc) (FieldType boolType))) (= (Ctor NameFamilyType) 7)) (= (type allocName) NameFamilyType)))
(assert (distinct TBool TChar TInt TReal TORDINAL TagBool TagChar TagInt TagReal TagORDINAL TagSet TagISet TagMultiSet TagSeq TagMap TagIMap TagClass class._System.int class._System.bool class._System.set class._System.seq class._System.multiset alloc allocName)
)
(assert  (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@7 T@T) (arg1 T@T) ) (! (= (Ctor (MapType arg0@@7 arg1)) 8)
 :qid |ctor:MapType|
)) (forall ((arg0@@8 T@T) (arg1@@0 T@T) ) (! (= (MapTypeInv0 (MapType arg0@@8 arg1@@0)) arg0@@8)
 :qid |typeInv:MapTypeInv0|
 :pattern ( (MapType arg0@@8 arg1@@0))
))) (forall ((arg0@@9 T@T) (arg1@@1 T@T) ) (! (= (MapTypeInv1 (MapType arg0@@9 arg1@@1)) arg1@@1)
 :qid |typeInv:MapTypeInv1|
 :pattern ( (MapType arg0@@9 arg1@@1))
))) (forall ((arg0@@10 T@T) (arg1@@2 T@T) ) (! (= (Ctor (MapType0Type arg0@@10 arg1@@2)) 9)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@11 T@T) (arg1@@3 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@11 arg1@@3)) arg0@@11)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@11 arg1@@3))
))) (forall ((arg0@@12 T@T) (arg1@@4 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@12 arg1@@4)) arg1@@4)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@12 arg1@@4))
))) (forall ((arg0@@13 T@U) (arg1@@5 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@13))))
(let ((aVar0 (type arg1@@5)))
 (=> (and (= (type arg0@@13) (MapType0Type aVar0 aVar1)) (= (type arg1@@5) aVar0)) (= (type (MapType0Select arg0@@13 arg1@@5)) aVar1))))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@13 arg1@@5))
))) (forall ((arg0@@14 T@U) (arg1@@6 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0@@0 (type arg1@@6)))
 (=> (and (and (= (type arg0@@14) (MapType0Type aVar0@@0 aVar1@@0)) (= (type arg1@@6) aVar0@@0)) (= (type arg2) aVar1@@0)) (= (type (MapType0Store arg0@@14 arg1@@6 arg2)) (MapType0Type aVar0@@0 aVar1@@0)))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@14 arg1@@6 arg2))
))) (forall ((m T@U) (x0 T@U) (val T@U) ) (! (let ((aVar1@@1 (MapType0TypeInv1 (type m))))
 (=> (= (type val) aVar1@@1) (= (MapType0Select (MapType0Store m x0 val) x0) val)))
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (and (forall ((val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select (MapType0Store m@@0 x0@@0 val@@0) y0) (MapType0Select m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (y0@@0 T@U) ) (!  (or true (= (MapType0Select (MapType0Store m@@1 x0@@1 val@@1) y0@@0) (MapType0Select m@@1 y0@@0)))
 :qid |mapAx2:MapType0Select|
 :weight 0
)))) (forall ((arg0@@15 T@U) ) (! (let ((V (MapTypeInv1 (type arg0@@15))))
(let ((U (MapTypeInv0 (type arg0@@15))))
 (=> (= (type arg0@@15) (MapType U V)) (= (type (|Map#Domain| arg0@@15)) (MapType0Type U boolType)))))
 :qid |funType:Map#Domain|
 :pattern ( (|Map#Domain| arg0@@15))
))))
(assert (forall ((m@@2 T@U) (|m'| T@U) ) (! (let ((V@@0 (MapTypeInv1 (type m@@2))))
(let ((U@@0 (MapTypeInv0 (type m@@2))))
 (=> (and (= (type m@@2) (MapType U@@0 V@@0)) (= (type |m'|) (MapType U@@0 V@@0))) (= (|Map#Disjoint| m@@2 |m'|) (forall ((o T@U) ) (!  (=> (= (type o) U@@0) (or (not (U_2_bool (MapType0Select (|Map#Domain| m@@2) o))) (not (U_2_bool (MapType0Select (|Map#Domain| |m'|) o)))))
 :qid |DafnyPreludebpl.1325:38|
 :skolemid |304|
 :pattern ( (MapType0Select (|Map#Domain| m@@2) o))
 :pattern ( (MapType0Select (|Map#Domain| |m'|) o))
))))))
 :qid |DafnyPreludebpl.1323:21|
 :skolemid |305|
 :pattern ( (|Map#Disjoint| m@@2 |m'|))
)))
(assert (= (FDim alloc) 0))
(assert (forall ((arg0@@16 T@U) ) (!  (=> (= (type arg0@@16) TyType) (= (type (Tag arg0@@16)) TyTagType))
 :qid |funType:Tag|
 :pattern ( (Tag arg0@@16))
)))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (= (Tag TORDINAL) TagORDINAL))
(assert (forall ((arg0@@17 T@U) ) (! (let ((T (FieldTypeInv0 (type arg0@@17))))
 (=> (= (type arg0@@17) (FieldType T)) (= (type (DeclName arg0@@17)) NameFamilyType)))
 :qid |funType:DeclName|
 :pattern ( (DeclName arg0@@17))
)))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (and (= (Ctor refType) 10) (forall ((arg0@@18 T@T) ) (! (= (Ctor (MapType1Type arg0@@18)) 11)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@19 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@19)) arg0@@19)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@19))
))) (forall ((arg0@@20 T@U) (arg1@@7 T@U) ) (! (let ((aVar0@@1 (MapType1TypeInv0 (type arg0@@20))))
(let ((alpha (FieldTypeInv0 (type arg1@@7))))
 (=> (and (= (type arg0@@20) (MapType1Type aVar0@@1)) (= (type arg1@@7) (FieldType alpha))) (= (type (MapType1Select arg0@@20 arg1@@7)) aVar0@@1))))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@20 arg1@@7))
))) (forall ((arg0@@21 T@U) (arg1@@8 T@U) (arg2@@0 T@U) ) (! (let ((aVar0@@2 (type arg2@@0)))
(let ((alpha@@0 (FieldTypeInv0 (type arg1@@8))))
 (=> (and (and (= (type arg0@@21) (MapType1Type aVar0@@2)) (= (type arg1@@8) (FieldType alpha@@0))) (= (type arg2@@0) aVar0@@2)) (= (type (MapType1Store arg0@@21 arg1@@8 arg2@@0)) (MapType1Type aVar0@@2)))))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@21 arg1@@8 arg2@@0))
))) (forall ((m@@3 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((aVar0@@3 (MapType1TypeInv0 (type m@@3))))
 (=> (= (type val@@2) aVar0@@3) (= (MapType1Select (MapType1Store m@@3 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@4 x0@@3 val@@3) y0@@1) (MapType1Select m@@4 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@5 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@5 x0@@4 val@@4) y0@@2) (MapType1Select m@@5 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (Ctor BoxType) 12)) (forall ((arg0@@22 Int) ) (! (= (type (TBitvector arg0@@22)) TyType)
 :qid |funType:TBitvector|
 :pattern ( (TBitvector arg0@@22))
))))
(assert (forall ((v T@U) (h T@U) ) (!  (=> (and (= (type v) intType) (= (type h) (MapType0Type refType (MapType1Type BoxType)))) ($IsAlloc v (TBitvector 0) h))
 :qid |DafnyPreludebpl.298:19|
 :skolemid |65|
 :pattern ( ($IsAlloc v (TBitvector 0) h))
)))
(assert  (and (and (forall ((arg0@@23 T@U) (arg1@@9 T@U) ) (! (let ((T@@0 (MapType0TypeInv0 (type arg0@@23))))
 (=> (and (= (type arg0@@23) (MapType0Type T@@0 intType)) (= (type arg1@@9) (MapType0Type T@@0 intType))) (= (type (|MultiSet#Difference| arg0@@23 arg1@@9)) (MapType0Type T@@0 intType))))
 :qid |funType:MultiSet#Difference|
 :pattern ( (|MultiSet#Difference| arg0@@23 arg1@@9))
)) (forall ((arg0@@24 T@U) (arg1@@10 T@U) ) (! (let ((T@@1 (MapType0TypeInv0 (type arg0@@24))))
 (=> (and (= (type arg0@@24) (MapType0Type T@@1 intType)) (= (type arg1@@10) (MapType0Type T@@1 intType))) (= (type (|MultiSet#Intersection| arg0@@24 arg1@@10)) (MapType0Type T@@1 intType))))
 :qid |funType:MultiSet#Intersection|
 :pattern ( (|MultiSet#Intersection| arg0@@24 arg1@@10))
))) (forall ((arg0@@25 T@U) (arg1@@11 T@U) ) (! (let ((T@@2 (MapType0TypeInv0 (type arg0@@25))))
 (=> (and (= (type arg0@@25) (MapType0Type T@@2 intType)) (= (type arg1@@11) (MapType0Type T@@2 intType))) (= (type (|MultiSet#Union| arg0@@25 arg1@@11)) (MapType0Type T@@2 intType))))
 :qid |funType:MultiSet#Union|
 :pattern ( (|MultiSet#Union| arg0@@25 arg1@@11))
))))
(assert (forall ((a T@U) (b T@U) ) (! (let ((T@@3 (MapType0TypeInv0 (type a))))
 (=> (and (= (type a) (MapType0Type T@@3 intType)) (= (type b) (MapType0Type T@@3 intType))) (and (= (+ (+ (|MultiSet#Card| (|MultiSet#Difference| a b)) (|MultiSet#Card| (|MultiSet#Difference| b a))) (* 2 (|MultiSet#Card| (|MultiSet#Intersection| a b)))) (|MultiSet#Card| (|MultiSet#Union| a b))) (= (|MultiSet#Card| (|MultiSet#Difference| a b)) (- (|MultiSet#Card| a) (|MultiSet#Card| (|MultiSet#Intersection| a b)))))))
 :qid |DafnyPreludebpl.899:18|
 :skolemid |203|
 :pattern ( (|MultiSet#Card| (|MultiSet#Difference| a b)))
)))
(assert (forall ((T@@4 T@T) (arg0@@26 T@U) ) (!  (=> (= (type arg0@@26) BoxType) (= (type ($Unbox T@@4 arg0@@26)) T@@4))
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T@@4 arg0@@26))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> (and (and (= (type h@@0) (MapType0Type refType (MapType1Type BoxType))) (= (type k) (MapType0Type refType (MapType1Type BoxType)))) ($HeapSucc h@@0 k)) (forall ((o@@0 T@U) ) (!  (=> (and (= (type o@@0) refType) (U_2_bool ($Unbox boolType (MapType1Select (MapType0Select h@@0 o@@0) alloc)))) (U_2_bool ($Unbox boolType (MapType1Select (MapType0Select k o@@0) alloc))))
 :qid |DafnyPreludebpl.614:30|
 :skolemid |117|
 :pattern ( ($Unbox boolType (MapType1Select (MapType0Select k o@@0) alloc)))
)))
 :qid |DafnyPreludebpl.613:15|
 :skolemid |118|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((o@@1 T@U) (p T@U) (r T@U) ) (!  (=> (and (and (and (= (type o@@1) BoxType) (= (type p) BoxType)) (= (type r) BoxType)) (and (|ORD#Less| o@@1 p) (|ORD#Less| p r))) (|ORD#Less| o@@1 r))
 :qid |DafnyPreludebpl.431:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@1 p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o@@1 p) (|ORD#Less| o@@1 r))
)))
(assert  (and (and (and (and (forall ((arg0@@27 T@T) ) (! (= (Ctor (SeqType arg0@@27)) 13)
 :qid |ctor:SeqType|
)) (forall ((arg0@@28 T@T) ) (! (= (SeqTypeInv0 (SeqType arg0@@28)) arg0@@28)
 :qid |typeInv:SeqTypeInv0|
 :pattern ( (SeqType arg0@@28))
))) (forall ((arg0@@29 T@U) ) (! (let ((T@@5 (SeqTypeInv0 (type arg0@@29))))
 (=> (= (type arg0@@29) (SeqType T@@5)) (= (type (|MultiSet#FromSeq| arg0@@29)) (MapType0Type T@@5 intType))))
 :qid |funType:MultiSet#FromSeq|
 :pattern ( (|MultiSet#FromSeq| arg0@@29))
))) (forall ((T@@6 T@T) ) (! (= (type (|Seq#Empty| T@@6)) (SeqType T@@6))
 :qid |funType:Seq#Empty|
 :pattern ( (|Seq#Empty| T@@6))
))) (forall ((T@@7 T@T) ) (! (= (type (|MultiSet#Empty| T@@7)) (MapType0Type T@@7 intType))
 :qid |funType:MultiSet#Empty|
 :pattern ( (|MultiSet#Empty| T@@7))
))))
(assert (forall ((T@@8 T@T) ) (! (= (|MultiSet#FromSeq| (|Seq#Empty| T@@8)) (|MultiSet#Empty| T@@8))
 :skolemid |213|
)))
(assert (forall ((arg0@@30 T@U) (arg1@@12 T@U) ) (! (let ((T@@9 (type arg1@@12)))
 (=> (and (= (type arg0@@30) (SeqType T@@9)) (= (type arg1@@12) T@@9)) (= (type (|Seq#Build| arg0@@30 arg1@@12)) (SeqType T@@9))))
 :qid |funType:Seq#Build|
 :pattern ( (|Seq#Build| arg0@@30 arg1@@12))
)))
(assert (forall ((s T@U) (v@@0 T@U) (x@@2 T@U) ) (! (let ((T@@10 (type v@@0)))
 (=> (and (= (type s) (SeqType T@@10)) (= (type x@@2) T@@10)) (= (|Seq#Contains| (|Seq#Build| s v@@0) x@@2)  (or (= v@@0 x@@2) (|Seq#Contains| s x@@2)))))
 :qid |DafnyPreludebpl.1047:18|
 :skolemid |240|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v@@0) x@@2))
)))
(assert (forall ((arg0@@31 T@U) (arg1@@13 T@U) (arg2@@1 T@U) ) (! (let ((V@@1 (MapType0TypeInv1 (type arg1@@13))))
(let ((U@@1 (MapType0TypeInv0 (type arg0@@31))))
 (=> (and (and (= (type arg0@@31) (MapType0Type U@@1 boolType)) (= (type arg1@@13) (MapType0Type U@@1 V@@1))) (= (type arg2@@1) TyType)) (= (type (|Map#Glue| arg0@@31 arg1@@13 arg2@@1)) (MapType U@@1 V@@1)))))
 :qid |funType:Map#Glue|
 :pattern ( (|Map#Glue| arg0@@31 arg1@@13 arg2@@1))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (t T@U) ) (! (let ((V@@2 (MapType0TypeInv1 (type b@@0))))
(let ((U@@2 (MapType0TypeInv0 (type a@@0))))
 (=> (and (and (= (type a@@0) (MapType0Type U@@2 boolType)) (= (type b@@0) (MapType0Type U@@2 V@@2))) (= (type t) TyType)) (= (|Map#Domain| (|Map#Glue| a@@0 b@@0 t)) a@@0))))
 :qid |DafnyPreludebpl.1260:21|
 :skolemid |289|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@0 b@@0 t)))
)))
(assert (forall ((arg0@@32 T@U) ) (! (let ((V@@3 (MapTypeInv1 (type arg0@@32))))
(let ((U@@3 (MapTypeInv0 (type arg0@@32))))
 (=> (= (type arg0@@32) (MapType U@@3 V@@3)) (= (type (|Map#Elements| arg0@@32)) (MapType0Type U@@3 V@@3)))))
 :qid |funType:Map#Elements|
 :pattern ( (|Map#Elements| arg0@@32))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (t@@0 T@U) ) (! (let ((V@@4 (MapType0TypeInv1 (type b@@1))))
(let ((U@@4 (MapType0TypeInv0 (type a@@1))))
 (=> (and (and (= (type a@@1) (MapType0Type U@@4 boolType)) (= (type b@@1) (MapType0Type U@@4 V@@4))) (= (type t@@0) TyType)) (= (|Map#Elements| (|Map#Glue| a@@1 b@@1 t@@0)) b@@1))))
 :qid |DafnyPreludebpl.1263:21|
 :skolemid |290|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@1 b@@1 t@@0)))
)))
(assert  (and (and (and (and (forall ((arg0@@33 T@T) (arg1@@14 T@T) ) (! (= (Ctor (IMapType arg0@@33 arg1@@14)) 14)
 :qid |ctor:IMapType|
)) (forall ((arg0@@34 T@T) (arg1@@15 T@T) ) (! (= (IMapTypeInv0 (IMapType arg0@@34 arg1@@15)) arg0@@34)
 :qid |typeInv:IMapTypeInv0|
 :pattern ( (IMapType arg0@@34 arg1@@15))
))) (forall ((arg0@@35 T@T) (arg1@@16 T@T) ) (! (= (IMapTypeInv1 (IMapType arg0@@35 arg1@@16)) arg1@@16)
 :qid |typeInv:IMapTypeInv1|
 :pattern ( (IMapType arg0@@35 arg1@@16))
))) (forall ((arg0@@36 T@U) ) (! (let ((V@@5 (IMapTypeInv1 (type arg0@@36))))
(let ((U@@5 (IMapTypeInv0 (type arg0@@36))))
 (=> (= (type arg0@@36) (IMapType U@@5 V@@5)) (= (type (|IMap#Domain| arg0@@36)) (MapType0Type U@@5 boolType)))))
 :qid |funType:IMap#Domain|
 :pattern ( (|IMap#Domain| arg0@@36))
))) (forall ((arg0@@37 T@U) (arg1@@17 T@U) (arg2@@2 T@U) ) (! (let ((V@@6 (MapType0TypeInv1 (type arg1@@17))))
(let ((U@@6 (MapType0TypeInv0 (type arg0@@37))))
 (=> (and (and (= (type arg0@@37) (MapType0Type U@@6 boolType)) (= (type arg1@@17) (MapType0Type U@@6 V@@6))) (= (type arg2@@2) TyType)) (= (type (|IMap#Glue| arg0@@37 arg1@@17 arg2@@2)) (IMapType U@@6 V@@6)))))
 :qid |funType:IMap#Glue|
 :pattern ( (|IMap#Glue| arg0@@37 arg1@@17 arg2@@2))
))))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (t@@1 T@U) ) (! (let ((V@@7 (MapType0TypeInv1 (type b@@2))))
(let ((U@@7 (MapType0TypeInv0 (type a@@2))))
 (=> (and (and (= (type a@@2) (MapType0Type U@@7 boolType)) (= (type b@@2) (MapType0Type U@@7 V@@7))) (= (type t@@1) TyType)) (= (|IMap#Domain| (|IMap#Glue| a@@2 b@@2 t@@1)) a@@2))))
 :qid |DafnyPreludebpl.1395:21|
 :skolemid |319|
 :pattern ( (|IMap#Domain| (|IMap#Glue| a@@2 b@@2 t@@1)))
)))
(assert (forall ((arg0@@38 T@U) ) (! (let ((V@@8 (IMapTypeInv1 (type arg0@@38))))
(let ((U@@8 (IMapTypeInv0 (type arg0@@38))))
 (=> (= (type arg0@@38) (IMapType U@@8 V@@8)) (= (type (|IMap#Elements| arg0@@38)) (MapType0Type U@@8 V@@8)))))
 :qid |funType:IMap#Elements|
 :pattern ( (|IMap#Elements| arg0@@38))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (t@@2 T@U) ) (! (let ((V@@9 (MapType0TypeInv1 (type b@@3))))
(let ((U@@9 (MapType0TypeInv0 (type a@@3))))
 (=> (and (and (= (type a@@3) (MapType0Type U@@9 boolType)) (= (type b@@3) (MapType0Type U@@9 V@@9))) (= (type t@@2) TyType)) (= (|IMap#Elements| (|IMap#Glue| a@@3 b@@3 t@@2)) b@@3))))
 :qid |DafnyPreludebpl.1398:21|
 :skolemid |320|
 :pattern ( (|IMap#Elements| (|IMap#Glue| a@@3 b@@3 t@@2)))
)))
(assert (forall ((v@@1 T@U) ) (!  (=> (= (type v@@1) intType) ($Is v@@1 (TBitvector 0)))
 :qid |DafnyPreludebpl.239:19|
 :skolemid |44|
 :pattern ( ($Is v@@1 (TBitvector 0)))
)))
(assert (forall ((a@@4 Int) (b@@4 Int) ) (!  (or (= (|Math#min| a@@4 b@@4) a@@4) (= (|Math#min| a@@4 b@@4) b@@4))
 :qid |DafnyPreludebpl.829:15|
 :skolemid |179|
 :pattern ( (|Math#min| a@@4 b@@4))
)))
(assert  (and (forall ((arg0@@39 T@U) (arg1@@18 T@U) ) (!  (=> (and (= (type arg0@@39) BoxType) (= (type arg1@@18) BoxType)) (= (type (|ORD#Minus| arg0@@39 arg1@@18)) BoxType))
 :qid |funType:ORD#Minus|
 :pattern ( (|ORD#Minus| arg0@@39 arg1@@18))
)) (forall ((arg0@@40 Int) ) (! (= (type (|ORD#FromNat| arg0@@40)) BoxType)
 :qid |funType:ORD#FromNat|
 :pattern ( (|ORD#FromNat| arg0@@40))
))))
(assert (forall ((o@@2 T@U) (m@@6 Int) (n Int) ) (!  (=> (= (type o@@2) BoxType) (=> (and (and (<= 0 m@@6) (<= 0 n)) (<= (+ m@@6 n) (|ORD#Offset| o@@2))) (= (|ORD#Minus| (|ORD#Minus| o@@2 (|ORD#FromNat| m@@6)) (|ORD#FromNat| n)) (|ORD#Minus| o@@2 (|ORD#FromNat| (+ m@@6 n))))))
 :qid |DafnyPreludebpl.470:15|
 :skolemid |97|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@2 (|ORD#FromNat| m@@6)) (|ORD#FromNat| n)))
)))
(assert (forall ((x@@3 T@U) ) (! (let ((T@@11 (type x@@3)))
 (not (|Seq#Contains| (|Seq#Empty| T@@11) x@@3)))
 :qid |DafnyPreludebpl.1038:18|
 :skolemid |238|
 :pattern ( (let ((T@@11 (type x@@3)))
(|Seq#Contains| (|Seq#Empty| T@@11) x@@3)))
)))
(assert (forall ((arg0@@41 T@U) (arg1@@19 Int) ) (! (let ((T@@12 (SeqTypeInv0 (type arg0@@41))))
 (=> (= (type arg0@@41) (SeqType T@@12)) (= (type (|Seq#Drop| arg0@@41 arg1@@19)) (SeqType T@@12))))
 :qid |funType:Seq#Drop|
 :pattern ( (|Seq#Drop| arg0@@41 arg1@@19))
)))
(assert (forall ((s@@0 T@U) (v@@2 T@U) (n@@0 Int) ) (! (let ((T@@13 (type v@@2)))
 (=> (= (type s@@0) (SeqType T@@13)) (=> (and (<= 0 n@@0) (<= n@@0 (|Seq#Length| s@@0))) (= (|Seq#Drop| (|Seq#Build| s@@0 v@@2) n@@0) (|Seq#Build| (|Seq#Drop| s@@0 n@@0) v@@2)))))
 :qid |DafnyPreludebpl.1152:18|
 :skolemid |266|
 :pattern ( (|Seq#Drop| (|Seq#Build| s@@0 v@@2) n@@0))
)))
(assert (forall ((arg0@@42 T@U) ) (!  (=> (= (type arg0@@42) TyType) (= (type (TMultiSet arg0@@42)) TyType))
 :qid |funType:TMultiSet|
 :pattern ( (TMultiSet arg0@@42))
)))
(assert (forall ((v@@3 T@U) (t0 T@U) ) (!  (=> (and (and (= (type v@@3) (MapType0Type BoxType intType)) (= (type t0) TyType)) ($Is v@@3 (TMultiSet t0))) ($IsGoodMultiSet v@@3))
 :qid |DafnyPreludebpl.253:19|
 :skolemid |51|
 :pattern ( ($Is v@@3 (TMultiSet t0)))
)))
(assert (forall ((s@@1 T@U) ) (! (let ((T@@14 (SeqTypeInv0 (type s@@1))))
 (=> (= (type s@@1) (SeqType T@@14)) ($IsGoodMultiSet (|MultiSet#FromSeq| s@@1))))
 :qid |DafnyPreludebpl.935:18|
 :skolemid |214|
 :pattern ( (|MultiSet#FromSeq| s@@1))
)))
(assert  (and (forall ((arg0@@43 T@U) (arg1@@20 Int) ) (! (let ((T@@15 (SeqTypeInv0 (type arg0@@43))))
 (=> (= (type arg0@@43) (SeqType T@@15)) (= (type (|Seq#Index| arg0@@43 arg1@@20)) T@@15)))
 :qid |funType:Seq#Index|
 :pattern ( (|Seq#Index| arg0@@43 arg1@@20))
)) (forall ((arg0@@44 T@U) (arg1@@21 Int) (arg2@@3 T@U) ) (! (let ((T@@16 (type arg2@@3)))
 (=> (and (= (type arg0@@44) (SeqType T@@16)) (= (type arg2@@3) intType)) (= (type (|Seq#Update| arg0@@44 arg1@@21 arg2@@3)) (SeqType T@@16))))
 :qid |funType:Seq#Update|
 :pattern ( (|Seq#Update| arg0@@44 arg1@@21 arg2@@3))
))))
(assert (forall ((s@@2 T@U) (i Int) (v@@4 T@U) (n@@1 Int) ) (! (let ((T@@17 (type v@@4)))
 (=> (= (type s@@2) (SeqType T@@17)) (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length| s@@2))) (and (=> (= i n@@1) (= (|Seq#Index| (|Seq#Update| s@@2 i v@@4) n@@1) v@@4)) (=> (not (= i n@@1)) (= (|Seq#Index| (|Seq#Update| s@@2 i v@@4) n@@1) (|Seq#Index| s@@2 n@@1)))))))
 :qid |DafnyPreludebpl.1029:18|
 :skolemid |235|
 :pattern ( (|Seq#Index| (|Seq#Update| s@@2 i v@@4) n@@1))
)))
(assert (forall ((arg0@@45 T@U) (arg1@@22 T@U) ) (! (let ((T@@18 (MapType0TypeInv0 (type arg0@@45))))
 (=> (and (= (type arg0@@45) (MapType0Type T@@18 boolType)) (= (type arg1@@22) (MapType0Type T@@18 boolType))) (= (type (|Set#Union| arg0@@45 arg1@@22)) (MapType0Type T@@18 boolType))))
 :qid |funType:Set#Union|
 :pattern ( (|Set#Union| arg0@@45 arg1@@22))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (! (let ((T@@19 (MapType0TypeInv0 (type a@@5))))
 (=> (and (= (type a@@5) (MapType0Type T@@19 boolType)) (= (type b@@5) (MapType0Type T@@19 boolType))) (= (|Set#Union| (|Set#Union| a@@5 b@@5) b@@5) (|Set#Union| a@@5 b@@5))))
 :qid |DafnyPreludebpl.714:18|
 :skolemid |140|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@5) b@@5))
)))
(assert (forall ((arg0@@46 T@U) (arg1@@23 T@U) ) (! (let ((T@@20 (MapType0TypeInv0 (type arg0@@46))))
 (=> (and (= (type arg0@@46) (MapType0Type T@@20 boolType)) (= (type arg1@@23) (MapType0Type T@@20 boolType))) (= (type (|Set#Intersection| arg0@@46 arg1@@23)) (MapType0Type T@@20 boolType))))
 :qid |funType:Set#Intersection|
 :pattern ( (|Set#Intersection| arg0@@46 arg1@@23))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (! (let ((T@@21 (MapType0TypeInv0 (type a@@6))))
 (=> (and (= (type a@@6) (MapType0Type T@@21 boolType)) (= (type b@@6) (MapType0Type T@@21 boolType))) (= (|Set#Intersection| (|Set#Intersection| a@@6 b@@6) b@@6) (|Set#Intersection| a@@6 b@@6))))
 :qid |DafnyPreludebpl.718:18|
 :skolemid |142|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@6 b@@6) b@@6))
)))
(assert (forall ((arg0@@47 T@U) (arg1@@24 T@U) ) (! (let ((T@@22 (MapType0TypeInv0 (type arg0@@47))))
 (=> (and (= (type arg0@@47) (MapType0Type T@@22 boolType)) (= (type arg1@@24) (MapType0Type T@@22 boolType))) (= (type (|ISet#Union| arg0@@47 arg1@@24)) (MapType0Type T@@22 boolType))))
 :qid |funType:ISet#Union|
 :pattern ( (|ISet#Union| arg0@@47 arg1@@24))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (! (let ((T@@23 (MapType0TypeInv0 (type a@@7))))
 (=> (and (= (type a@@7) (MapType0Type T@@23 boolType)) (= (type b@@7) (MapType0Type T@@23 boolType))) (= (|ISet#Union| (|ISet#Union| a@@7 b@@7) b@@7) (|ISet#Union| a@@7 b@@7))))
 :qid |DafnyPreludebpl.792:18|
 :skolemid |164|
 :pattern ( (|ISet#Union| (|ISet#Union| a@@7 b@@7) b@@7))
)))
(assert (forall ((arg0@@48 T@U) (arg1@@25 T@U) ) (! (let ((T@@24 (MapType0TypeInv0 (type arg0@@48))))
 (=> (and (= (type arg0@@48) (MapType0Type T@@24 boolType)) (= (type arg1@@25) (MapType0Type T@@24 boolType))) (= (type (|ISet#Intersection| arg0@@48 arg1@@25)) (MapType0Type T@@24 boolType))))
 :qid |funType:ISet#Intersection|
 :pattern ( (|ISet#Intersection| arg0@@48 arg1@@25))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (! (let ((T@@25 (MapType0TypeInv0 (type a@@8))))
 (=> (and (= (type a@@8) (MapType0Type T@@25 boolType)) (= (type b@@8) (MapType0Type T@@25 boolType))) (= (|ISet#Intersection| (|ISet#Intersection| a@@8 b@@8) b@@8) (|ISet#Intersection| a@@8 b@@8))))
 :qid |DafnyPreludebpl.796:18|
 :skolemid |166|
 :pattern ( (|ISet#Intersection| (|ISet#Intersection| a@@8 b@@8) b@@8))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (! (let ((T@@26 (MapType0TypeInv0 (type a@@9))))
 (=> (and (= (type a@@9) (MapType0Type T@@26 intType)) (= (type b@@9) (MapType0Type T@@26 intType))) (= (|MultiSet#Intersection| (|MultiSet#Intersection| a@@9 b@@9) b@@9) (|MultiSet#Intersection| a@@9 b@@9))))
 :qid |DafnyPreludebpl.888:18|
 :skolemid |199|
 :pattern ( (|MultiSet#Intersection| (|MultiSet#Intersection| a@@9 b@@9) b@@9))
)))
(assert  (and (forall ((arg0@@49 T@U) (arg1@@26 Int) ) (! (let ((T@@27 (SeqTypeInv0 (type arg0@@49))))
 (=> (= (type arg0@@49) (SeqType T@@27)) (= (type (|Seq#Take| arg0@@49 arg1@@26)) (SeqType T@@27))))
 :qid |funType:Seq#Take|
 :pattern ( (|Seq#Take| arg0@@49 arg1@@26))
)) (forall ((arg0@@50 T@U) (arg1@@27 T@U) ) (! (let ((T@@28 (SeqTypeInv0 (type arg0@@50))))
 (=> (and (= (type arg0@@50) (SeqType T@@28)) (= (type arg1@@27) (SeqType T@@28))) (= (type (|Seq#Append| arg0@@50 arg1@@27)) (SeqType T@@28))))
 :qid |funType:Seq#Append|
 :pattern ( (|Seq#Append| arg0@@50 arg1@@27))
))))
(assert (forall ((s@@3 T@U) (t@@3 T@U) (n@@2 Int) ) (! (let ((T@@29 (SeqTypeInv0 (type s@@3))))
 (=> (and (and (= (type s@@3) (SeqType T@@29)) (= (type t@@3) (SeqType T@@29))) (= n@@2 (|Seq#Length| s@@3))) (and (= (|Seq#Take| (|Seq#Append| s@@3 t@@3) n@@2) s@@3) (= (|Seq#Drop| (|Seq#Append| s@@3 t@@3) n@@2) t@@3))))
 :qid |DafnyPreludebpl.1101:18|
 :skolemid |255|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@3 t@@3) n@@2))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@3 t@@3) n@@2))
)))
(assert (forall ((arg0@@51 T@U) (arg1@@28 T@U) (arg2@@4 T@U) ) (! (let ((V@@10 (type arg2@@4)))
(let ((U@@10 (type arg1@@28)))
 (=> (and (and (= (type arg0@@51) (MapType U@@10 V@@10)) (= (type arg1@@28) U@@10)) (= (type arg2@@4) V@@10)) (= (type (|Map#Build| arg0@@51 arg1@@28 arg2@@4)) (MapType U@@10 V@@10)))))
 :qid |funType:Map#Build|
 :pattern ( (|Map#Build| arg0@@51 arg1@@28 arg2@@4))
)))
(assert (forall ((m@@7 T@U) (u T@U) (v@@5 T@U) ) (! (let ((V@@11 (type v@@5)))
(let ((U@@11 (type u)))
 (=> (and (= (type m@@7) (MapType U@@11 V@@11)) (U_2_bool (MapType0Select (|Map#Domain| m@@7) u))) (= (|Map#Card| (|Map#Build| m@@7 u v@@5)) (|Map#Card| m@@7)))))
 :qid |DafnyPreludebpl.1286:21|
 :skolemid |294|
 :pattern ( (|Map#Card| (|Map#Build| m@@7 u v@@5)))
)))
(assert (forall ((arg0@@52 T@U) ) (! (let ((T@@30 (type arg0@@52)))
 (=> (= (type arg0@@52) T@@30) (= (type (|Set#Singleton| arg0@@52)) (MapType0Type T@@30 boolType))))
 :qid |funType:Set#Singleton|
 :pattern ( (|Set#Singleton| arg0@@52))
)))
(assert (forall ((r@@0 T@U) (o@@3 T@U) ) (! (let ((T@@31 (type r@@0)))
 (=> (= (type o@@3) T@@31) (= (U_2_bool (MapType0Select (|Set#Singleton| r@@0) o@@3)) (= r@@0 o@@3))))
 :qid |DafnyPreludebpl.679:18|
 :skolemid |128|
 :pattern ( (MapType0Select (|Set#Singleton| r@@0) o@@3))
)))
(assert (forall ((s@@4 T@U) (x@@4 T@U) ) (! (let ((T@@32 (type x@@4)))
 (=> (= (type s@@4) (SeqType T@@32)) (= (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@4))) (= x@@4 (|Seq#Index| s@@4 i@@0)))
 :qid |DafnyPreludebpl.959:11|
 :skolemid |219|
 :pattern ( (|Seq#Index| s@@4 i@@0))
)) (< 0 (U_2_int (MapType0Select (|MultiSet#FromSeq| s@@4) x@@4))))))
 :qid |DafnyPreludebpl.958:18|
 :skolemid |220|
 :pattern ( (MapType0Select (|MultiSet#FromSeq| s@@4) x@@4))
)))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (! (let ((T@@33 (MapType0TypeInv0 (type a@@10))))
 (=> (and (= (type a@@10) (MapType0Type T@@33 boolType)) (= (type b@@10) (MapType0Type T@@33 boolType))) (= (+ (|Set#Card| (|Set#Union| a@@10 b@@10)) (|Set#Card| (|Set#Intersection| a@@10 b@@10))) (+ (|Set#Card| a@@10) (|Set#Card| b@@10)))))
 :qid |DafnyPreludebpl.722:18|
 :skolemid |144|
 :pattern ( (|Set#Card| (|Set#Union| a@@10 b@@10)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@10 b@@10)))
)))
(assert (forall ((arg0@@53 T@U) (arg1@@29 T@U) ) (! (let ((V@@12 (MapTypeInv1 (type arg0@@53))))
(let ((U@@12 (MapTypeInv0 (type arg0@@53))))
 (=> (and (= (type arg0@@53) (MapType U@@12 V@@12)) (= (type arg1@@29) (MapType0Type U@@12 boolType))) (= (type (|Map#Subtract| arg0@@53 arg1@@29)) (MapType U@@12 V@@12)))))
 :qid |funType:Map#Subtract|
 :pattern ( (|Map#Subtract| arg0@@53 arg1@@29))
)))
(assert (forall ((m@@8 T@U) (s@@5 T@U) (u@@0 T@U) ) (! (let ((V@@13 (MapTypeInv1 (type m@@8))))
(let ((U@@13 (type u@@0)))
 (=> (and (and (= (type m@@8) (MapType U@@13 V@@13)) (= (type s@@5) (MapType0Type U@@13 boolType))) (U_2_bool (MapType0Select (|Map#Domain| (|Map#Subtract| m@@8 s@@5)) u@@0))) (= (MapType0Select (|Map#Elements| (|Map#Subtract| m@@8 s@@5)) u@@0) (MapType0Select (|Map#Elements| m@@8) u@@0)))))
 :qid |DafnyPreludebpl.1306:21|
 :skolemid |299|
 :pattern ( (MapType0Select (|Map#Elements| (|Map#Subtract| m@@8 s@@5)) u@@0))
)))
(assert (forall ((arg0@@54 T@U) (arg1@@30 T@U) ) (! (let ((V@@14 (IMapTypeInv1 (type arg0@@54))))
(let ((U@@14 (IMapTypeInv0 (type arg0@@54))))
 (=> (and (= (type arg0@@54) (IMapType U@@14 V@@14)) (= (type arg1@@30) (MapType0Type U@@14 boolType))) (= (type (|IMap#Subtract| arg0@@54 arg1@@30)) (IMapType U@@14 V@@14)))))
 :qid |funType:IMap#Subtract|
 :pattern ( (|IMap#Subtract| arg0@@54 arg1@@30))
)))
(assert (forall ((m@@9 T@U) (s@@6 T@U) (u@@1 T@U) ) (! (let ((V@@15 (IMapTypeInv1 (type m@@9))))
(let ((U@@15 (type u@@1)))
 (=> (and (and (= (type m@@9) (IMapType U@@15 V@@15)) (= (type s@@6) (MapType0Type U@@15 boolType))) (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Subtract| m@@9 s@@6)) u@@1))) (= (MapType0Select (|IMap#Elements| (|IMap#Subtract| m@@9 s@@6)) u@@1) (MapType0Select (|IMap#Elements| m@@9) u@@1)))))
 :qid |DafnyPreludebpl.1447:21|
 :skolemid |331|
 :pattern ( (MapType0Select (|IMap#Elements| (|IMap#Subtract| m@@9 s@@6)) u@@1))
)))
(assert  (and (forall ((arg0@@55 T@U) (arg1@@31 T@U) ) (!  (=> (and (= (type arg0@@55) (MapType0Type refType (MapType1Type BoxType))) (= (type arg1@@31) refType)) (= (type (|Seq#FromArray| arg0@@55 arg1@@31)) (SeqType BoxType)))
 :qid |funType:Seq#FromArray|
 :pattern ( (|Seq#FromArray| arg0@@55 arg1@@31))
)) (forall ((arg0@@56 Int) ) (! (= (type (IndexField arg0@@56)) (FieldType BoxType))
 :qid |funType:IndexField|
 :pattern ( (IndexField arg0@@56))
))))
(assert (forall ((h@@1 T@U) (a@@11 T@U) (n0 Int) (n1 Int) ) (!  (=> (and (= (type h@@1) (MapType0Type refType (MapType1Type BoxType))) (= (type a@@11) refType)) (=> (and (and (= (+ n0 1) n1) (<= 0 n0)) (<= n1 (_System.array.Length a@@11))) (= (|Seq#Take| (|Seq#FromArray| h@@1 a@@11) n1) (|Seq#Build| (|Seq#Take| (|Seq#FromArray| h@@1 a@@11) n0) ($Unbox BoxType (MapType1Select (MapType0Select h@@1 a@@11) (IndexField n0)))))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |265|
 :pattern ( (|Seq#Take| (|Seq#FromArray| h@@1 a@@11) n0) (|Seq#Take| (|Seq#FromArray| h@@1 a@@11) n1))
)))
(assert (forall ((s@@7 T@U) (i@@1 Int) (v@@6 T@U) (n@@3 Int) ) (! (let ((T@@34 (type v@@6)))
 (=> (= (type s@@7) (SeqType T@@34)) (=> (and (and (<= 0 n@@3) (<= n@@3 i@@1)) (< i@@1 (|Seq#Length| s@@7))) (= (|Seq#Drop| (|Seq#Update| s@@7 i@@1 v@@6) n@@3) (|Seq#Update| (|Seq#Drop| s@@7 n@@3) (- i@@1 n@@3) v@@6)))))
 :qid |DafnyPreludebpl.1141:18|
 :skolemid |263|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@7 i@@1 v@@6) n@@3))
)))
(assert (forall ((a@@12 T@U) (b@@11 T@U) (o@@4 T@U) ) (! (let ((T@@35 (type o@@4)))
 (=> (and (= (type a@@12) (MapType0Type T@@35 intType)) (= (type b@@11) (MapType0Type T@@35 intType))) (= (U_2_int (MapType0Select (|MultiSet#Union| a@@12 b@@11) o@@4)) (+ (U_2_int (MapType0Select a@@12 o@@4)) (U_2_int (MapType0Select b@@11 o@@4))))))
 :qid |DafnyPreludebpl.878:18|
 :skolemid |196|
 :pattern ( (MapType0Select (|MultiSet#Union| a@@12 b@@11) o@@4))
)))
(assert (forall ((s@@8 T@U) (n@@4 Int) ) (! (let ((T@@36 (SeqTypeInv0 (type s@@8))))
 (=> (and (= (type s@@8) (SeqType T@@36)) (= n@@4 0)) (= (|Seq#Drop| s@@8 n@@4) s@@8)))
 :qid |DafnyPreludebpl.1171:18|
 :skolemid |271|
 :pattern ( (|Seq#Drop| s@@8 n@@4))
)))
(assert (forall ((arg0@@57 T@U) ) (!  (=> (= (type arg0@@57) TyType) (= (type (TSet arg0@@57)) TyType))
 :qid |funType:TSet|
 :pattern ( (TSet arg0@@57))
)))
(assert (forall ((v@@7 T@U) (t0@@0 T@U) ) (!  (=> (and (= (type v@@7) (MapType0Type BoxType boolType)) (= (type t0@@0) TyType)) (= ($Is v@@7 (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (and (= (type bx) BoxType) (U_2_bool (MapType0Select v@@7 bx))) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.243:15|
 :skolemid |45|
 :pattern ( (MapType0Select v@@7 bx))
))))
 :qid |DafnyPreludebpl.241:19|
 :skolemid |46|
 :pattern ( ($Is v@@7 (TSet t0@@0)))
)))
(assert (forall ((arg0@@58 T@U) ) (!  (=> (= (type arg0@@58) TyType) (= (type (TISet arg0@@58)) TyType))
 :qid |funType:TISet|
 :pattern ( (TISet arg0@@58))
)))
(assert (forall ((v@@8 T@U) (t0@@1 T@U) ) (!  (=> (and (= (type v@@8) (MapType0Type BoxType boolType)) (= (type t0@@1) TyType)) (= ($Is v@@8 (TISet t0@@1)) (forall ((bx@@0 T@U) ) (!  (=> (and (= (type bx@@0) BoxType) (U_2_bool (MapType0Select v@@8 bx@@0))) ($IsBox bx@@0 t0@@1))
 :qid |DafnyPreludebpl.247:15|
 :skolemid |47|
 :pattern ( (MapType0Select v@@8 bx@@0))
))))
 :qid |DafnyPreludebpl.245:19|
 :skolemid |48|
 :pattern ( ($Is v@@8 (TISet t0@@1)))
)))
(assert (forall ((a@@13 Int) ) (!  (=> (<= 0 a@@13) (= (|Math#clip| a@@13) a@@13))
 :qid |DafnyPreludebpl.832:15|
 :skolemid |180|
 :pattern ( (|Math#clip| a@@13))
)))
(assert (forall ((x@@5 Real) ) (! (= (q@Int x@@5) (to_int x@@5))
 :qid |DafnyPreludebpl.583:14|
 :skolemid |112|
 :pattern ( (q@Int x@@5))
)))
(assert (forall ((x@@6 Int) ) (! (= (LitInt x@@6) x@@6)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |18|
 :pattern ( (LitInt x@@6))
)))
(assert (forall ((x@@7 Real) ) (! (= (LitReal x@@7) x@@7)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |20|
 :pattern ( (LitReal x@@7))
)))
(assert (forall ((arg0@@59 T@U) ) (! (let ((T@@37 (type arg0@@59)))
 (=> (= (type arg0@@59) T@@37) (= (type (Lit arg0@@59)) T@@37)))
 :qid |funType:Lit|
 :pattern ( (Lit arg0@@59))
)))
(assert (forall ((x@@8 T@U) ) (! (= (Lit x@@8) x@@8)
 :qid |DafnyPreludebpl.101:29|
 :skolemid |16|
 :pattern ( (Lit x@@8))
)))
(assert (forall ((arg0@@60 T@U) ) (!  (=> (= (type arg0@@60) TyType) (= (type (TSeq arg0@@60)) TyType))
 :qid |funType:TSeq|
 :pattern ( (TSeq arg0@@60))
)))
(assert (forall ((s@@9 T@U) (bx@@1 T@U) (t@@4 T@U) ) (!  (=> (and (and (and (= (type s@@9) (SeqType BoxType)) (= (type bx@@1) BoxType)) (= (type t@@4) TyType)) (and ($Is s@@9 (TSeq t@@4)) ($IsBox bx@@1 t@@4))) ($Is (|Seq#Build| s@@9 bx@@1) (TSeq t@@4)))
 :qid |DafnyPreludebpl.1003:15|
 :skolemid |228|
 :pattern ( ($Is (|Seq#Build| s@@9 bx@@1) (TSeq t@@4)))
)))
(assert $$Language$Dafny)
(assert (forall ((s@@10 T@U) (n@@5 Int) (j Int) ) (! (let ((T@@38 (SeqTypeInv0 (type s@@10))))
 (=> (= (type s@@10) (SeqType T@@38)) (=> (and (and (<= 0 j) (< j n@@5)) (< j (|Seq#Length| s@@10))) (= (|Seq#Index| (|Seq#Take| s@@10 n@@5) j) (|Seq#Index| s@@10 j)))))
 :qid |DafnyPreludebpl.1080:18|
 :weight 25
 :skolemid |251|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@10 n@@5) j))
 :pattern ( (|Seq#Index| s@@10 j) (|Seq#Take| s@@10 n@@5))
)))
(assert (forall ((s@@11 T@U) (n@@6 Int) ) (! (let ((T@@39 (SeqTypeInv0 (type s@@11))))
 (=> (= (type s@@11) (SeqType T@@39)) (=> (and (<= 0 n@@6) (<= n@@6 (|Seq#Length| s@@11))) (= (|Seq#Length| (|Seq#Drop| s@@11 n@@6)) (- (|Seq#Length| s@@11) n@@6)))))
 :qid |DafnyPreludebpl.1088:18|
 :skolemid |252|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@11 n@@6)))
)))
(assert (forall ((m@@10 T@U) (u@@2 T@U) (v@@9 T@U) ) (! (let ((V@@16 (type v@@9)))
(let ((U@@16 (type u@@2)))
 (=> (and (= (type m@@10) (MapType U@@16 V@@16)) (not (U_2_bool (MapType0Select (|Map#Domain| m@@10) u@@2)))) (= (|Map#Card| (|Map#Build| m@@10 u@@2 v@@9)) (+ (|Map#Card| m@@10) 1)))))
 :qid |DafnyPreludebpl.1288:21|
 :skolemid |295|
 :pattern ( (|Map#Card| (|Map#Build| m@@10 u@@2 v@@9)))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (let ((T@@40 (SeqTypeInv0 (type s0))))
 (=> (and (= (type s0) (SeqType T@@40)) (= (type s1) (SeqType T@@40))) (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1066:13|
 :skolemid |245|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))))
 :qid |DafnyPreludebpl.1063:18|
 :skolemid |246|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((a@@14 T@U) (b@@12 T@U) (o@@5 T@U) ) (! (let ((T@@41 (type o@@5)))
 (=> (and (= (type a@@14) (MapType0Type T@@41 intType)) (= (type b@@12) (MapType0Type T@@41 intType))) (= (U_2_int (MapType0Select (|MultiSet#Difference| a@@14 b@@12) o@@5)) (|Math#clip| (- (U_2_int (MapType0Select a@@14 o@@5)) (U_2_int (MapType0Select b@@12 o@@5)))))))
 :qid |DafnyPreludebpl.895:18|
 :skolemid |201|
 :pattern ( (MapType0Select (|MultiSet#Difference| a@@14 b@@12) o@@5))
)))
(assert (forall ((s@@12 T@U) (i@@2 Int) ) (! (let ((T@@42 (SeqTypeInv0 (type s@@12))))
 (=> (= (type s@@12) (SeqType T@@42)) (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@12))) (< (|Seq#Rank| (|Seq#Take| s@@12 i@@2)) (|Seq#Rank| s@@12)))))
 :qid |DafnyPreludebpl.1163:18|
 :skolemid |269|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@12 i@@2)))
)))
(assert (forall ((T@@43 T@T) ) (! (= (|Seq#Length| (|Seq#Empty| T@@43)) 0)
 :skolemid |222|
 :pattern ( (|Seq#Empty| T@@43))
)))
(assert (forall ((arg0@@61 T@U) ) (!  (=> (= (type arg0@@61) (MapType0Type refType boolType)) (= (type (SetRef_to_SetBox arg0@@61)) (MapType0Type BoxType boolType)))
 :qid |funType:SetRef_to_SetBox|
 :pattern ( (SetRef_to_SetBox arg0@@61))
)))
(assert (forall ((s@@13 T@U) (bx@@2 T@U) ) (!  (=> (and (= (type s@@13) (MapType0Type refType boolType)) (= (type bx@@2) BoxType)) (= (U_2_bool (MapType0Select (SetRef_to_SetBox s@@13) bx@@2)) (U_2_bool (MapType0Select s@@13 ($Unbox refType bx@@2)))))
 :qid |DafnyPreludebpl.374:15|
 :skolemid |81|
 :pattern ( (MapType0Select (SetRef_to_SetBox s@@13) bx@@2))
)))
(assert (forall ((arg0@@62 T@U) (arg1@@32 Int) ) (!  (=> (= (type arg0@@62) (FieldType BoxType)) (= (type (MultiIndexField arg0@@62 arg1@@32)) (FieldType BoxType)))
 :qid |funType:MultiIndexField|
 :pattern ( (MultiIndexField arg0@@62 arg1@@32))
)))
(assert (forall ((f T@U) (i@@3 Int) ) (!  (=> (= (type f) (FieldType BoxType)) (= (FDim (MultiIndexField f i@@3)) (+ (FDim f) 1)))
 :qid |DafnyPreludebpl.524:15|
 :skolemid |104|
 :pattern ( (MultiIndexField f i@@3))
)))
(assert (forall ((arg0@@63 T@U) (arg1@@33 T@U) ) (! (let ((T@@44 (type arg1@@33)))
 (=> (and (= (type arg0@@63) (MapType0Type T@@44 intType)) (= (type arg1@@33) T@@44)) (= (type (|MultiSet#UnionOne| arg0@@63 arg1@@33)) (MapType0Type T@@44 intType))))
 :qid |funType:MultiSet#UnionOne|
 :pattern ( (|MultiSet#UnionOne| arg0@@63 arg1@@33))
)))
(assert (forall ((a@@15 T@U) (x@@9 T@U) ) (! (let ((T@@45 (type x@@9)))
 (=> (= (type a@@15) (MapType0Type T@@45 intType)) (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@15 x@@9)) (+ (|MultiSet#Card| a@@15) 1))))
 :qid |DafnyPreludebpl.872:18|
 :skolemid |195|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@15 x@@9)))
)))
(assert (forall ((s@@14 T@U) (i@@4 Int) ) (! (let ((T@@46 (SeqTypeInv0 (type s@@14))))
 (=> (= (type s@@14) (SeqType T@@46)) (=> (and (< 0 i@@4) (<= i@@4 (|Seq#Length| s@@14))) (< (|Seq#Rank| (|Seq#Drop| s@@14 i@@4)) (|Seq#Rank| s@@14)))))
 :qid |DafnyPreludebpl.1160:18|
 :skolemid |268|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@14 i@@4)))
)))
(assert  (and (= (Ctor LayerTypeType) 15) (forall ((arg0@@64 T@U) (arg1@@34 T@U) ) (! (let ((A (MapType0TypeInv1 (type arg0@@64))))
 (=> (and (= (type arg0@@64) (MapType0Type LayerTypeType A)) (= (type arg1@@34) LayerTypeType)) (= (type (AtLayer arg0@@64 arg1@@34)) A)))
 :qid |funType:AtLayer|
 :pattern ( (AtLayer arg0@@64 arg1@@34))
))))
(assert (forall ((f@@0 T@U) (ly T@U) ) (! (let ((A@@0 (MapType0TypeInv1 (type f@@0))))
 (=> (and (= (type f@@0) (MapType0Type LayerTypeType A@@0)) (= (type ly) LayerTypeType)) (= (AtLayer f@@0 ly) (MapType0Select f@@0 ly))))
 :qid |DafnyPreludebpl.505:18|
 :skolemid |100|
 :pattern ( (AtLayer f@@0 ly))
)))
(assert ($IsGhostField alloc))
(assert (= (type $OneHeap) (MapType0Type refType (MapType1Type BoxType))))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s@@15 T@U) (v@@10 T@U) ) (! (let ((T@@47 (type v@@10)))
 (=> (= (type s@@15) (SeqType T@@47)) (= (|Seq#Length| (|Seq#Build| s@@15 v@@10)) (+ 1 (|Seq#Length| s@@15)))))
 :qid |DafnyPreludebpl.995:18|
 :skolemid |226|
 :pattern ( (|Seq#Build| s@@15 v@@10))
)))
(assert  (and (and (and (= (Ctor HandleTypeType) 16) (forall ((arg0@@65 T@U) (arg1@@35 T@U) (arg2@@5 Int) (arg3 T@U) ) (!  (=> (and (and (= (type arg0@@65) TyType) (= (type arg1@@35) (MapType0Type refType (MapType1Type BoxType)))) (= (type arg3) intType)) (= (type (|Seq#Create| arg0@@65 arg1@@35 arg2@@5 arg3)) (SeqType BoxType)))
 :qid |funType:Seq#Create|
 :pattern ( (|Seq#Create| arg0@@65 arg1@@35 arg2@@5 arg3))
))) (forall ((arg0@@66 T@U) (arg1@@36 T@U) (arg2@@6 T@U) (arg3@@0 T@U) (arg4 T@U) ) (!  (=> (and (and (and (and (= (type arg0@@66) TyType) (= (type arg1@@36) TyType)) (= (type arg2@@6) (MapType0Type refType (MapType1Type BoxType)))) (= (type arg3@@0) HandleTypeType)) (= (type arg4) BoxType)) (= (type (Apply1 arg0@@66 arg1@@36 arg2@@6 arg3@@0 arg4)) BoxType))
 :qid |funType:Apply1|
 :pattern ( (Apply1 arg0@@66 arg1@@36 arg2@@6 arg3@@0 arg4))
))) (forall ((arg0@@67 T@U) ) (! (let ((T@@48 (type arg0@@67)))
 (=> (= (type arg0@@67) T@@48) (= (type ($Box arg0@@67)) BoxType)))
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@67))
))))
(assert (forall ((ty T@U) (heap T@U) (len Int) (init T@U) (i@@5 Int) ) (!  (=> (and (and (and (= (type ty) TyType) (= (type heap) (MapType0Type refType (MapType1Type BoxType)))) (= (type init) HandleTypeType)) (and (and ($IsGoodHeap heap) (<= 0 i@@5)) (< i@@5 len))) (= (|Seq#Index| (|Seq#Create| ty heap len init) i@@5) (Apply1 TInt ty heap init ($Box (int_2_U i@@5)))))
 :qid |DafnyPreludebpl.1011:15|
 :skolemid |230|
 :pattern ( (|Seq#Index| (|Seq#Create| ty heap len init) i@@5))
)))
(assert (forall ((v@@11 T@U) (t@@5 T@U) (h@@2 T@U) ) (!  (=> (and (= (type t@@5) TyType) (= (type h@@2) (MapType0Type refType (MapType1Type BoxType)))) (= ($IsAllocBox ($Box v@@11) t@@5 h@@2) ($IsAlloc v@@11 t@@5 h@@2)))
 :qid |DafnyPreludebpl.220:18|
 :skolemid |38|
 :pattern ( ($IsAllocBox ($Box v@@11) t@@5 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@6 T@U) ) (!  (=> (and (and (and (and (and (= (type h@@3) (MapType0Type refType (MapType1Type BoxType))) (= (type k@@0) (MapType0Type refType (MapType1Type BoxType)))) (= (type bx@@3) BoxType)) (= (type t@@6) TyType)) ($HeapSucc h@@3 k@@0)) ($IsAllocBox bx@@3 t@@6 h@@3)) ($IsAllocBox bx@@3 t@@6 k@@0))
 :qid |DafnyPreludebpl.562:15|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@0) ($IsAllocBox bx@@3 t@@6 h@@3))
)))
(assert (forall ((h@@4 T@U) (k@@1 T@U) (v@@12 T@U) (t@@7 T@U) ) (!  (=> (and (and (and (and (= (type h@@4) (MapType0Type refType (MapType1Type BoxType))) (= (type k@@1) (MapType0Type refType (MapType1Type BoxType)))) (= (type t@@7) TyType)) ($HeapSucc h@@4 k@@1)) ($IsAlloc v@@12 t@@7 h@@4)) ($IsAlloc v@@12 t@@7 k@@1))
 :qid |DafnyPreludebpl.559:18|
 :skolemid |109|
 :pattern ( ($HeapSucc h@@4 k@@1) ($IsAlloc v@@12 t@@7 h@@4))
)))
(assert (forall ((s@@16 T@U) (n@@7 Int) (j@@1 Int) ) (! (let ((T@@49 (SeqTypeInv0 (type s@@16))))
 (=> (= (type s@@16) (SeqType T@@49)) (=> (and (and (<= 0 n@@7) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@16) n@@7))) (= (|Seq#Index| (|Seq#Drop| s@@16 n@@7) j@@1) (|Seq#Index| s@@16 (+ j@@1 n@@7))))))
 :qid |DafnyPreludebpl.1090:18|
 :weight 25
 :skolemid |253|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@16 n@@7) j@@1))
)))
(assert (forall ((s@@17 T@U) ) (! (let ((T@@50 (MapType0TypeInv0 (type s@@17))))
 (=> (= (type s@@17) (MapType0Type T@@50 intType)) (and (= (= (|MultiSet#Card| s@@17) 0) (= s@@17 (|MultiSet#Empty| T@@50))) (=> (not (= (|MultiSet#Card| s@@17) 0)) (exists ((x@@10 T@U) ) (!  (and (= (type x@@10) T@@50) (< 0 (U_2_int (MapType0Select s@@17 x@@10))))
 :qid |DafnyPreludebpl.852:38|
 :skolemid |187|
 :no-pattern (type x@@10)
 :no-pattern (U_2_int x@@10)
 :no-pattern (U_2_bool x@@10)
))))))
 :qid |DafnyPreludebpl.850:18|
 :skolemid |188|
 :pattern ( (|MultiSet#Card| s@@17))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) (y T@U) ) (! (let ((T@@51 (type y)))
 (=> (and (and (= (type a@@16) (MapType0Type T@@51 intType)) (= (type b@@13) (MapType0Type T@@51 intType))) (<= (U_2_int (MapType0Select a@@16 y)) (U_2_int (MapType0Select b@@13 y)))) (= (U_2_int (MapType0Select (|MultiSet#Difference| a@@16 b@@13) y)) 0)))
 :qid |DafnyPreludebpl.897:18|
 :skolemid |202|
 :pattern ( (|MultiSet#Difference| a@@16 b@@13) (MapType0Select b@@13 y) (MapType0Select a@@16 y))
)))
(assert (forall ((U@@17 T@T) (V@@17 T@T) ) (! (= (type (|Map#Empty| U@@17 V@@17)) (MapType U@@17 V@@17))
 :qid |funType:Map#Empty|
 :pattern ( (|Map#Empty| U@@17 V@@17))
)))
(assert (forall ((u@@3 T@U) (V@@18 T@T) ) (! (let ((U@@18 (type u@@3)))
 (not (U_2_bool (MapType0Select (|Map#Domain| (|Map#Empty| U@@18 V@@18)) u@@3))))
 :qid |DafnyPreludebpl.1255:21|
 :skolemid |288|
 :pattern ( (let ((U@@18 (type u@@3)))
(MapType0Select (|Map#Domain| (|Map#Empty| U@@18 V@@18)) u@@3)))
)))
(assert (forall ((U@@19 T@T) (V@@19 T@T) ) (! (= (type (|IMap#Empty| U@@19 V@@19)) (IMapType U@@19 V@@19))
 :qid |funType:IMap#Empty|
 :pattern ( (|IMap#Empty| U@@19 V@@19))
)))
(assert (forall ((u@@4 T@U) (V@@20 T@T) ) (! (let ((U@@20 (type u@@4)))
 (not (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Empty| U@@20 V@@20)) u@@4))))
 :qid |DafnyPreludebpl.1390:21|
 :skolemid |318|
 :pattern ( (let ((U@@20 (type u@@4)))
(MapType0Select (|IMap#Domain| (|IMap#Empty| U@@20 V@@20)) u@@4)))
)))
(assert (forall ((h@@5 T@U) (k@@2 T@U) ) (!  (=> (and (and (= (type h@@5) (MapType0Type refType (MapType1Type BoxType))) (= (type k@@2) (MapType0Type refType (MapType1Type BoxType)))) ($HeapSuccGhost h@@5 k@@2)) (and ($HeapSucc h@@5 k@@2) (forall ((o@@6 T@U) (f@@1 T@U) ) (! (let ((alpha@@1 (FieldTypeInv0 (type f@@1))))
 (=> (and (and (= (type o@@6) refType) (= (type f@@1) (FieldType alpha@@1))) (not ($IsGhostField f@@1))) (= ($Unbox alpha@@1 (MapType1Select (MapType0Select h@@5 o@@6) f@@1)) ($Unbox alpha@@1 (MapType1Select (MapType0Select k@@2 o@@6) f@@1)))))
 :qid |DafnyPreludebpl.548:24|
 :skolemid |107|
 :pattern ( (let ((alpha@@1 (FieldTypeInv0 (type f@@1))))
($Unbox alpha@@1 (MapType1Select (MapType0Select k@@2 o@@6) f@@1))))
))))
 :qid |DafnyPreludebpl.545:18|
 :skolemid |108|
 :pattern ( ($HeapSuccGhost h@@5 k@@2))
)))
(assert (forall ((o@@7 T@U) (p@@0 T@U) ) (!  (=> (and (and (= (type o@@7) BoxType) (= (type p@@0) BoxType)) (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@7)))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@7 p@@0)) (|ORD#IsNat| o@@7)) (= (|ORD#Offset| (|ORD#Minus| o@@7 p@@0)) (- (|ORD#Offset| o@@7) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |94|
 :pattern ( (|ORD#Minus| o@@7 p@@0))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (! (let ((T@@52 (MapType0TypeInv0 (type a@@17))))
 (=> (and (= (type a@@17) (MapType0Type T@@52 boolType)) (= (type b@@14) (MapType0Type T@@52 boolType))) (= (|Set#Equal| a@@17 b@@14) (forall ((o@@8 T@U) ) (!  (=> (= (type o@@8) T@@52) (= (U_2_bool (MapType0Select a@@17 o@@8)) (U_2_bool (MapType0Select b@@14 o@@8))))
 :qid |DafnyPreludebpl.747:31|
 :skolemid |150|
 :pattern ( (MapType0Select a@@17 o@@8))
 :pattern ( (MapType0Select b@@14 o@@8))
)))))
 :qid |DafnyPreludebpl.746:18|
 :skolemid |151|
 :pattern ( (|Set#Equal| a@@17 b@@14))
)))
(assert (forall ((a@@18 T@U) (b@@15 T@U) ) (! (let ((T@@53 (MapType0TypeInv0 (type a@@18))))
 (=> (and (= (type a@@18) (MapType0Type T@@53 boolType)) (= (type b@@15) (MapType0Type T@@53 boolType))) (= (|ISet#Equal| a@@18 b@@15) (forall ((o@@9 T@U) ) (!  (=> (= (type o@@9) T@@53) (= (U_2_bool (MapType0Select a@@18 o@@9)) (U_2_bool (MapType0Select b@@15 o@@9))))
 :qid |DafnyPreludebpl.814:32|
 :skolemid |172|
 :pattern ( (MapType0Select a@@18 o@@9))
 :pattern ( (MapType0Select b@@15 o@@9))
)))))
 :qid |DafnyPreludebpl.813:18|
 :skolemid |173|
 :pattern ( (|ISet#Equal| a@@18 b@@15))
)))
(assert (forall ((a@@19 T@U) (b@@16 T@U) ) (! (let ((T@@54 (MapType0TypeInv0 (type a@@19))))
 (=> (and (= (type a@@19) (MapType0Type T@@54 intType)) (= (type b@@16) (MapType0Type T@@54 intType))) (= (|MultiSet#Card| (|MultiSet#Union| a@@19 b@@16)) (+ (|MultiSet#Card| a@@19) (|MultiSet#Card| b@@16)))))
 :qid |DafnyPreludebpl.880:18|
 :skolemid |197|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@19 b@@16)))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (let ((T@@55 (SeqTypeInv0 (type s0@@0))))
 (=> (and (= (type s0@@0) (SeqType T@@55)) (= (type s1@@0) (SeqType T@@55))) (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))))
 :qid |DafnyPreludebpl.1017:18|
 :skolemid |231|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((n@@8 Int) ) (!  (=> (<= 0 n@@8) (and (|ORD#IsNat| (|ORD#FromNat| n@@8)) (= (|ORD#Offset| (|ORD#FromNat| n@@8)) n@@8)))
 :qid |DafnyPreludebpl.416:15|
 :skolemid |85|
 :pattern ( (|ORD#FromNat| n@@8))
)))
(assert (forall ((ms T@U) ) (! (let ((T@@56 (MapType0TypeInv0 (type ms))))
 (=> (= (type ms) (MapType0Type T@@56 intType)) (= ($IsGoodMultiSet ms) (forall ((bx@@4 T@U) ) (!  (=> (= (type bx@@4) T@@56) (and (<= 0 (U_2_int (MapType0Select ms bx@@4))) (<= (U_2_int (MapType0Select ms bx@@4)) (|MultiSet#Card| ms))))
 :qid |DafnyPreludebpl.841:11|
 :skolemid |182|
 :pattern ( (MapType0Select ms bx@@4))
)))))
 :qid |DafnyPreludebpl.839:18|
 :skolemid |183|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((arg0@@68 T@U) (arg1@@37 T@U) ) (!  (=> (and (= (type arg0@@68) BoxType) (= (type arg1@@37) BoxType)) (= (type (|ORD#Plus| arg0@@68 arg1@@37)) BoxType))
 :qid |funType:ORD#Plus|
 :pattern ( (|ORD#Plus| arg0@@68 arg1@@37))
)))
(assert (forall ((o@@10 T@U) (p@@1 T@U) ) (!  (=> (and (= (type o@@10) BoxType) (= (type p@@1) BoxType)) (and (or (= o@@10 (|ORD#Plus| o@@10 p@@1)) (|ORD#Less| o@@10 (|ORD#Plus| o@@10 p@@1))) (or (= p@@1 (|ORD#Plus| o@@10 p@@1)) (|ORD#Less| p@@1 (|ORD#Plus| o@@10 p@@1)))))
 :qid |DafnyPreludebpl.447:15|
 :skolemid |92|
 :pattern ( (|ORD#Plus| o@@10 p@@1))
)))
(assert (forall ((a@@20 T@U) (x@@11 T@U) ) (! (let ((T@@57 (type x@@11)))
 (=> (= (type a@@20) (MapType0Type T@@57 intType)) (= (U_2_int (MapType0Select (|MultiSet#UnionOne| a@@20 x@@11) x@@11)) (+ (U_2_int (MapType0Select a@@20 x@@11)) 1))))
 :qid |DafnyPreludebpl.864:18|
 :skolemid |192|
 :pattern ( (|MultiSet#UnionOne| a@@20 x@@11))
)))
(assert (forall ((s@@18 T@U) (i@@6 Int) (v@@13 T@U) ) (! (let ((T@@58 (type v@@13)))
 (=> (= (type s@@18) (SeqType T@@58)) (and (=> (= i@@6 (|Seq#Length| s@@18)) (= (|Seq#Index| (|Seq#Build| s@@18 v@@13) i@@6) v@@13)) (=> (not (= i@@6 (|Seq#Length| s@@18))) (= (|Seq#Index| (|Seq#Build| s@@18 v@@13) i@@6) (|Seq#Index| s@@18 i@@6))))))
 :qid |DafnyPreludebpl.998:18|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@18 v@@13) i@@6))
)))
(assert  (and (and (= (Ctor charType) 17) (forall ((arg0@@69 T@U) (arg1@@38 T@U) ) (!  (=> (and (= (type arg0@@69) charType) (= (type arg1@@38) charType)) (= (type (|char#Minus| arg0@@69 arg1@@38)) charType))
 :qid |funType:char#Minus|
 :pattern ( (|char#Minus| arg0@@69 arg1@@38))
))) (forall ((arg0@@70 Int) ) (! (= (type (|char#FromInt| arg0@@70)) charType)
 :qid |funType:char#FromInt|
 :pattern ( (|char#FromInt| arg0@@70))
))))
(assert (forall ((a@@21 T@U) (b@@17 T@U) ) (!  (=> (and (= (type a@@21) charType) (= (type b@@17) charType)) (= (|char#Minus| a@@21 b@@17) (|char#FromInt| (- (|char#ToInt| a@@21) (|char#ToInt| b@@17)))))
 :qid |DafnyPreludebpl.150:17|
 :skolemid |24|
 :pattern ( (|char#Minus| a@@21 b@@17))
)))
(assert (forall ((arg0@@71 T@U) (arg1@@39 T@U) ) (!  (=> (and (= (type arg0@@71) charType) (= (type arg1@@39) charType)) (= (type (|char#Plus| arg0@@71 arg1@@39)) charType))
 :qid |funType:char#Plus|
 :pattern ( (|char#Plus| arg0@@71 arg1@@39))
)))
(assert (forall ((a@@22 T@U) (b@@18 T@U) ) (!  (=> (and (= (type a@@22) charType) (= (type b@@18) charType)) (= (|char#Plus| a@@22 b@@18) (|char#FromInt| (+ (|char#ToInt| a@@22) (|char#ToInt| b@@18)))))
 :qid |DafnyPreludebpl.145:17|
 :skolemid |23|
 :pattern ( (|char#Plus| a@@22 b@@18))
)))
(assert (forall ((a@@23 T@U) (x@@12 T@U) (y@@0 T@U) ) (! (let ((T@@59 (type x@@12)))
 (=> (and (and (= (type a@@23) (MapType0Type T@@59 intType)) (= (type y@@0) T@@59)) (< 0 (U_2_int (MapType0Select a@@23 y@@0)))) (< 0 (U_2_int (MapType0Select (|MultiSet#UnionOne| a@@23 x@@12) y@@0)))))
 :qid |DafnyPreludebpl.867:18|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@23 x@@12) (MapType0Select a@@23 y@@0))
)))
(assert (forall ((m@@11 T@U) ) (! (let ((V@@21 (MapTypeInv1 (type m@@11))))
(let ((U@@21 (MapTypeInv0 (type m@@11))))
 (=> (= (type m@@11) (MapType U@@21 V@@21)) (or (= m@@11 (|Map#Empty| U@@21 V@@21)) (exists ((k@@3 T@U) ) (!  (and (= (type k@@3) U@@21) (U_2_bool (MapType0Select (|Map#Domain| m@@11) k@@3)))
 :qid |DafnyPreludebpl.1201:31|
 :skolemid |276|
 :no-pattern (type k@@3)
 :no-pattern (U_2_int k@@3)
 :no-pattern (U_2_bool k@@3)
))))))
 :qid |DafnyPreludebpl.1199:21|
 :skolemid |277|
 :pattern ( (|Map#Domain| m@@11))
)))
(assert (forall ((arg0@@72 T@U) ) (! (let ((V@@22 (MapTypeInv1 (type arg0@@72))))
(let ((U@@22 (MapTypeInv0 (type arg0@@72))))
 (=> (= (type arg0@@72) (MapType U@@22 V@@22)) (= (type (|Map#Values| arg0@@72)) (MapType0Type V@@22 boolType)))))
 :qid |funType:Map#Values|
 :pattern ( (|Map#Values| arg0@@72))
)))
(assert (forall ((m@@12 T@U) ) (! (let ((V@@23 (MapTypeInv1 (type m@@12))))
(let ((U@@23 (MapTypeInv0 (type m@@12))))
 (=> (= (type m@@12) (MapType U@@23 V@@23)) (or (= m@@12 (|Map#Empty| U@@23 V@@23)) (exists ((v@@14 T@U) ) (!  (and (= (type v@@14) V@@23) (U_2_bool (MapType0Select (|Map#Values| m@@12) v@@14)))
 :qid |DafnyPreludebpl.1204:31|
 :skolemid |278|
 :no-pattern (type v@@14)
 :no-pattern (U_2_int v@@14)
 :no-pattern (U_2_bool v@@14)
))))))
 :qid |DafnyPreludebpl.1202:21|
 :skolemid |279|
 :pattern ( (|Map#Values| m@@12))
)))
(assert (forall ((m@@13 T@U) ) (! (let ((V@@24 (IMapTypeInv1 (type m@@13))))
(let ((U@@24 (IMapTypeInv0 (type m@@13))))
 (=> (= (type m@@13) (IMapType U@@24 V@@24)) (or (= m@@13 (|IMap#Empty| U@@24 V@@24)) (exists ((k@@4 T@U) ) (!  (and (= (type k@@4) U@@24) (U_2_bool (MapType0Select (|IMap#Domain| m@@13) k@@4)))
 :qid |DafnyPreludebpl.1341:32|
 :skolemid |306|
 :no-pattern (type k@@4)
 :no-pattern (U_2_int k@@4)
 :no-pattern (U_2_bool k@@4)
))))))
 :qid |DafnyPreludebpl.1339:21|
 :skolemid |307|
 :pattern ( (|IMap#Domain| m@@13))
)))
(assert (forall ((arg0@@73 T@U) ) (! (let ((V@@25 (IMapTypeInv1 (type arg0@@73))))
(let ((U@@25 (IMapTypeInv0 (type arg0@@73))))
 (=> (= (type arg0@@73) (IMapType U@@25 V@@25)) (= (type (|IMap#Values| arg0@@73)) (MapType0Type V@@25 boolType)))))
 :qid |funType:IMap#Values|
 :pattern ( (|IMap#Values| arg0@@73))
)))
(assert (forall ((m@@14 T@U) ) (! (let ((V@@26 (IMapTypeInv1 (type m@@14))))
(let ((U@@26 (IMapTypeInv0 (type m@@14))))
 (=> (= (type m@@14) (IMapType U@@26 V@@26)) (or (= m@@14 (|IMap#Empty| U@@26 V@@26)) (exists ((v@@15 T@U) ) (!  (and (= (type v@@15) V@@26) (U_2_bool (MapType0Select (|IMap#Values| m@@14) v@@15)))
 :qid |DafnyPreludebpl.1344:32|
 :skolemid |308|
 :no-pattern (type v@@15)
 :no-pattern (U_2_int v@@15)
 :no-pattern (U_2_bool v@@15)
))))))
 :qid |DafnyPreludebpl.1342:21|
 :skolemid |309|
 :pattern ( (|IMap#Values| m@@14))
)))
(assert (forall ((a@@24 T@U) (x@@13 T@U) (o@@11 T@U) ) (! (let ((T@@60 (type x@@13)))
 (=> (and (= (type a@@24) (MapType0Type T@@60 intType)) (= (type o@@11) T@@60)) (= (< 0 (U_2_int (MapType0Select (|MultiSet#UnionOne| a@@24 x@@13) o@@11)))  (or (= o@@11 x@@13) (< 0 (U_2_int (MapType0Select a@@24 o@@11)))))))
 :qid |DafnyPreludebpl.861:18|
 :skolemid |191|
 :pattern ( (MapType0Select (|MultiSet#UnionOne| a@@24 x@@13) o@@11))
)))
(assert (forall ((h@@6 T@U) (a@@25 T@U) ) (!  (=> (and (= (type h@@6) (MapType0Type refType (MapType1Type BoxType))) (= (type a@@25) refType)) (forall ((i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length| (|Seq#FromArray| h@@6 a@@25)))) (= (|Seq#Index| (|Seq#FromArray| h@@6 a@@25) i@@7) ($Unbox BoxType (MapType1Select (MapType0Select h@@6 a@@25) (IndexField i@@7)))))
 :qid |DafnyPreludebpl.1115:11|
 :skolemid |257|
 :pattern ( ($Unbox BoxType (MapType1Select (MapType0Select h@@6 a@@25) (IndexField i@@7))))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@6 a@@25) i@@7))
)))
 :qid |DafnyPreludebpl.1113:15|
 :skolemid |258|
 :pattern ( (|Seq#FromArray| h@@6 a@@25))
)))
(assert (forall ((v@@16 T@U) (t0@@2 T@U) ) (!  (=> (and (= (type v@@16) (MapType0Type BoxType intType)) (= (type t0@@2) TyType)) (= ($Is v@@16 (TMultiSet t0@@2)) (forall ((bx@@5 T@U) ) (!  (=> (and (= (type bx@@5) BoxType) (< 0 (U_2_int (MapType0Select v@@16 bx@@5)))) ($IsBox bx@@5 t0@@2))
 :qid |DafnyPreludebpl.251:15|
 :skolemid |49|
 :pattern ( (MapType0Select v@@16 bx@@5))
))))
 :qid |DafnyPreludebpl.249:19|
 :skolemid |50|
 :pattern ( ($Is v@@16 (TMultiSet t0@@2)))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@14 T@U) ) (! (let ((T@@61 (type x@@14)))
 (=> (and (= (type s0@@1) (SeqType T@@61)) (= (type s1@@1) (SeqType T@@61))) (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@14)  (or (|Seq#Contains| s0@@1 x@@14) (|Seq#Contains| s1@@1 x@@14)))))
 :qid |DafnyPreludebpl.1042:18|
 :skolemid |239|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@14))
)))
(assert (forall ((s@@19 T@U) (n@@9 Int) (x@@15 T@U) ) (! (let ((T@@62 (type x@@15)))
 (=> (= (type s@@19) (SeqType T@@62)) (= (|Seq#Contains| (|Seq#Take| s@@19 n@@9) x@@15) (exists ((i@@8 Int) ) (!  (and (and (and (<= 0 i@@8) (< i@@8 n@@9)) (< i@@8 (|Seq#Length| s@@19))) (= (|Seq#Index| s@@19 i@@8) x@@15))
 :qid |DafnyPreludebpl.1054:13|
 :skolemid |241|
 :pattern ( (|Seq#Index| s@@19 i@@8))
)))))
 :qid |DafnyPreludebpl.1051:18|
 :skolemid |242|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@19 n@@9) x@@15))
)))
(assert (forall ((arg0@@74 T@U) (arg1@@40 T@U) ) (! (let ((T@@63 (MapType0TypeInv0 (type arg0@@74))))
 (=> (and (= (type arg0@@74) (MapType0Type T@@63 boolType)) (= (type arg1@@40) (MapType0Type T@@63 boolType))) (= (type (|Set#Difference| arg0@@74 arg1@@40)) (MapType0Type T@@63 boolType))))
 :qid |funType:Set#Difference|
 :pattern ( (|Set#Difference| arg0@@74 arg1@@40))
)))
(assert (forall ((a@@26 T@U) (b@@19 T@U) ) (! (let ((T@@64 (MapType0TypeInv0 (type a@@26))))
 (=> (and (and (= (type a@@26) (MapType0Type T@@64 boolType)) (= (type b@@19) (MapType0Type T@@64 boolType))) (|Set#Disjoint| a@@26 b@@19)) (and (= (|Set#Difference| (|Set#Union| a@@26 b@@19) a@@26) b@@19) (= (|Set#Difference| (|Set#Union| a@@26 b@@19) b@@19) a@@26))))
 :qid |DafnyPreludebpl.701:18|
 :skolemid |138|
 :pattern ( (|Set#Union| a@@26 b@@19))
)))
(assert (forall ((arg0@@75 T@U) (arg1@@41 T@U) ) (! (let ((T@@65 (MapType0TypeInv0 (type arg0@@75))))
 (=> (and (= (type arg0@@75) (MapType0Type T@@65 boolType)) (= (type arg1@@41) (MapType0Type T@@65 boolType))) (= (type (|ISet#Difference| arg0@@75 arg1@@41)) (MapType0Type T@@65 boolType))))
 :qid |funType:ISet#Difference|
 :pattern ( (|ISet#Difference| arg0@@75 arg1@@41))
)))
(assert (forall ((a@@27 T@U) (b@@20 T@U) ) (! (let ((T@@66 (MapType0TypeInv0 (type a@@27))))
 (=> (and (and (= (type a@@27) (MapType0Type T@@66 boolType)) (= (type b@@20) (MapType0Type T@@66 boolType))) (|ISet#Disjoint| a@@27 b@@20)) (and (= (|ISet#Difference| (|ISet#Union| a@@27 b@@20) a@@27) b@@20) (= (|ISet#Difference| (|ISet#Union| a@@27 b@@20) b@@20) a@@27))))
 :qid |DafnyPreludebpl.783:18|
 :skolemid |162|
 :pattern ( (|ISet#Union| a@@27 b@@20))
)))
(assert (forall ((a@@28 T@U) (b@@21 T@U) ) (! (let ((T@@67 (MapType0TypeInv0 (type a@@28))))
 (=> (and (= (type a@@28) (MapType0Type T@@67 intType)) (= (type b@@21) (MapType0Type T@@67 intType))) (= (|MultiSet#Equal| a@@28 b@@21) (forall ((o@@12 T@U) ) (!  (=> (= (type o@@12) T@@67) (= (U_2_int (MapType0Select a@@28 o@@12)) (U_2_int (MapType0Select b@@21 o@@12))))
 :qid |DafnyPreludebpl.913:36|
 :skolemid |206|
 :pattern ( (MapType0Select a@@28 o@@12))
 :pattern ( (MapType0Select b@@21 o@@12))
)))))
 :qid |DafnyPreludebpl.912:18|
 :skolemid |207|
 :pattern ( (|MultiSet#Equal| a@@28 b@@21))
)))
(assert (forall ((a@@29 T@U) (b@@22 T@U) ) (! (let ((T@@68 (MapType0TypeInv0 (type a@@29))))
 (=> (and (= (type a@@29) (MapType0Type T@@68 intType)) (= (type b@@22) (MapType0Type T@@68 intType))) (= (|MultiSet#Subset| a@@29 b@@22) (forall ((o@@13 T@U) ) (!  (=> (= (type o@@13) T@@68) (<= (U_2_int (MapType0Select a@@29 o@@13)) (U_2_int (MapType0Select b@@22 o@@13))))
 :qid |DafnyPreludebpl.909:37|
 :skolemid |204|
 :pattern ( (MapType0Select a@@29 o@@13))
 :pattern ( (MapType0Select b@@22 o@@13))
)))))
 :qid |DafnyPreludebpl.908:18|
 :skolemid |205|
 :pattern ( (|MultiSet#Subset| a@@29 b@@22))
)))
(assert (forall ((m@@15 T@U) ) (! (let ((V@@27 (MapTypeInv1 (type m@@15))))
(let ((U@@27 (MapTypeInv0 (type m@@15))))
 (=> (= (type m@@15) (MapType U@@27 V@@27)) (= (= (|Map#Card| m@@15) 0) (= m@@15 (|Map#Empty| U@@27 V@@27))))))
 :qid |DafnyPreludebpl.1195:21|
 :skolemid |275|
 :pattern ( (|Map#Card| m@@15))
)))
(assert (forall ((s@@20 T@U) (x@@16 T@U) ) (! (let ((T@@69 (type x@@16)))
 (=> (= (type s@@20) (SeqType T@@69)) (= (|Seq#Contains| s@@20 x@@16) (exists ((i@@9 Int) ) (!  (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length| s@@20))) (= (|Seq#Index| s@@20 i@@9) x@@16))
 :qid |DafnyPreludebpl.1037:13|
 :skolemid |236|
 :pattern ( (|Seq#Index| s@@20 i@@9))
)))))
 :qid |DafnyPreludebpl.1035:18|
 :skolemid |237|
 :pattern ( (|Seq#Contains| s@@20 x@@16))
)))
(assert (forall ((s@@21 T@U) (i@@10 Int) (v@@17 T@U) (n@@10 Int) ) (! (let ((T@@70 (type v@@17)))
 (=> (= (type s@@21) (SeqType T@@70)) (=> (and (and (<= 0 i@@10) (< i@@10 n@@10)) (<= n@@10 (|Seq#Length| s@@21))) (= (|Seq#Drop| (|Seq#Update| s@@21 i@@10 v@@17) n@@10) (|Seq#Drop| s@@21 n@@10)))))
 :qid |DafnyPreludebpl.1144:18|
 :skolemid |264|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@21 i@@10 v@@17) n@@10))
)))
(assert (forall ((a@@30 T@U) (b@@23 T@U) (o@@14 T@U) ) (! (let ((T@@71 (type o@@14)))
 (=> (and (= (type a@@30) (MapType0Type T@@71 boolType)) (= (type b@@23) (MapType0Type T@@71 boolType))) (= (U_2_bool (MapType0Select (|Set#Intersection| a@@30 b@@23) o@@14))  (and (U_2_bool (MapType0Select a@@30 o@@14)) (U_2_bool (MapType0Select b@@23 o@@14))))))
 :qid |DafnyPreludebpl.711:18|
 :skolemid |139|
 :pattern ( (MapType0Select (|Set#Intersection| a@@30 b@@23) o@@14))
)))
(assert (forall ((a@@31 T@U) (b@@24 T@U) (o@@15 T@U) ) (! (let ((T@@72 (type o@@15)))
 (=> (and (= (type a@@31) (MapType0Type T@@72 boolType)) (= (type b@@24) (MapType0Type T@@72 boolType))) (= (U_2_bool (MapType0Select (|ISet#Intersection| a@@31 b@@24) o@@15))  (and (U_2_bool (MapType0Select a@@31 o@@15)) (U_2_bool (MapType0Select b@@24 o@@15))))))
 :qid |DafnyPreludebpl.789:18|
 :skolemid |163|
 :pattern ( (MapType0Select (|ISet#Intersection| a@@31 b@@24) o@@15))
)))
(assert (forall ((o@@16 T@U) (p@@2 T@U) ) (!  (=> (and (= (type o@@16) BoxType) (= (type p@@2) BoxType)) (or (or (|ORD#Less| o@@16 p@@2) (= o@@16 p@@2)) (|ORD#Less| p@@2 o@@16)))
 :qid |DafnyPreludebpl.428:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@16 p@@2) (|ORD#Less| p@@2 o@@16))
)))
(assert (forall ((a@@32 T@U) (b@@25 T@U) (o@@17 T@U) ) (! (let ((T@@73 (type o@@17)))
 (=> (and (= (type a@@32) (MapType0Type T@@73 boolType)) (= (type b@@25) (MapType0Type T@@73 boolType))) (= (U_2_bool (MapType0Select (|Set#Difference| a@@32 b@@25) o@@17))  (and (U_2_bool (MapType0Select a@@32 o@@17)) (not (U_2_bool (MapType0Select b@@25 o@@17)))))))
 :qid |DafnyPreludebpl.726:18|
 :skolemid |145|
 :pattern ( (MapType0Select (|Set#Difference| a@@32 b@@25) o@@17))
)))
(assert (forall ((a@@33 T@U) (b@@26 T@U) (o@@18 T@U) ) (! (let ((T@@74 (type o@@18)))
 (=> (and (= (type a@@33) (MapType0Type T@@74 boolType)) (= (type b@@26) (MapType0Type T@@74 boolType))) (= (U_2_bool (MapType0Select (|ISet#Difference| a@@33 b@@26) o@@18))  (and (U_2_bool (MapType0Select a@@33 o@@18)) (not (U_2_bool (MapType0Select b@@26 o@@18)))))))
 :qid |DafnyPreludebpl.803:18|
 :skolemid |168|
 :pattern ( (MapType0Select (|ISet#Difference| a@@33 b@@26) o@@18))
)))
(assert (forall ((v@@18 T@U) (t0@@3 T@U) (h@@7 T@U) ) (!  (=> (and (and (= (type v@@18) (MapType0Type BoxType boolType)) (= (type t0@@3) TyType)) (= (type h@@7) (MapType0Type refType (MapType1Type BoxType)))) (= ($IsAlloc v@@18 (TSet t0@@3) h@@7) (forall ((bx@@6 T@U) ) (!  (=> (and (= (type bx@@6) BoxType) (U_2_bool (MapType0Select v@@18 bx@@6))) ($IsAllocBox bx@@6 t0@@3 h@@7))
 :qid |DafnyPreludebpl.302:15|
 :skolemid |66|
 :pattern ( (MapType0Select v@@18 bx@@6))
))))
 :qid |DafnyPreludebpl.300:19|
 :skolemid |67|
 :pattern ( ($IsAlloc v@@18 (TSet t0@@3) h@@7))
)))
(assert (forall ((v@@19 T@U) (t0@@4 T@U) (h@@8 T@U) ) (!  (=> (and (and (= (type v@@19) (MapType0Type BoxType boolType)) (= (type t0@@4) TyType)) (= (type h@@8) (MapType0Type refType (MapType1Type BoxType)))) (= ($IsAlloc v@@19 (TISet t0@@4) h@@8) (forall ((bx@@7 T@U) ) (!  (=> (and (= (type bx@@7) BoxType) (U_2_bool (MapType0Select v@@19 bx@@7))) ($IsAllocBox bx@@7 t0@@4 h@@8))
 :qid |DafnyPreludebpl.306:15|
 :skolemid |68|
 :pattern ( (MapType0Select v@@19 bx@@7))
))))
 :qid |DafnyPreludebpl.304:19|
 :skolemid |69|
 :pattern ( ($IsAlloc v@@19 (TISet t0@@4) h@@8))
)))
(assert (forall ((o@@19 T@U) ) (! (let ((T@@75 (type o@@19)))
(= (U_2_int (MapType0Select (|MultiSet#Empty| T@@75) o@@19)) 0))
 :qid |DafnyPreludebpl.849:18|
 :skolemid |186|
 :pattern ( (let ((T@@75 (type o@@19)))
(MapType0Select (|MultiSet#Empty| T@@75) o@@19)))
)))
(assert  (and (and (and (forall ((arg0@@76 T@U) ) (! (let ((V@@28 (MapTypeInv1 (type arg0@@76))))
(let ((U@@28 (MapTypeInv0 (type arg0@@76))))
 (=> (= (type arg0@@76) (MapType U@@28 V@@28)) (= (type (|Map#Items| arg0@@76)) (MapType0Type BoxType boolType)))))
 :qid |funType:Map#Items|
 :pattern ( (|Map#Items| arg0@@76))
)) (= (Ctor DatatypeTypeType) 18)) (forall ((arg0@@77 T@U) ) (!  (=> (= (type arg0@@77) DatatypeTypeType) (= (type (_System.Tuple2._0 arg0@@77)) BoxType))
 :qid |funType:_System.Tuple2._0|
 :pattern ( (_System.Tuple2._0 arg0@@77))
))) (forall ((arg0@@78 T@U) ) (!  (=> (= (type arg0@@78) DatatypeTypeType) (= (type (_System.Tuple2._1 arg0@@78)) BoxType))
 :qid |funType:_System.Tuple2._1|
 :pattern ( (_System.Tuple2._1 arg0@@78))
))))
(assert (forall ((m@@16 T@U) (item T@U) ) (!  (=> (and (= (type m@@16) (MapType BoxType BoxType)) (= (type item) BoxType)) (= (U_2_bool (MapType0Select (|Map#Items| m@@16) item))  (and (U_2_bool (MapType0Select (|Map#Domain| m@@16) (_System.Tuple2._0 ($Unbox DatatypeTypeType item)))) (= (MapType0Select (|Map#Elements| m@@16) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item))))))
 :qid |DafnyPreludebpl.1247:15|
 :skolemid |287|
 :pattern ( (MapType0Select (|Map#Items| m@@16) item))
)))
(assert (forall ((arg0@@79 T@U) ) (! (let ((V@@29 (IMapTypeInv1 (type arg0@@79))))
(let ((U@@29 (IMapTypeInv0 (type arg0@@79))))
 (=> (= (type arg0@@79) (IMapType U@@29 V@@29)) (= (type (|IMap#Items| arg0@@79)) (MapType0Type BoxType boolType)))))
 :qid |funType:IMap#Items|
 :pattern ( (|IMap#Items| arg0@@79))
)))
(assert (forall ((m@@17 T@U) (item@@0 T@U) ) (!  (=> (and (= (type m@@17) (IMapType BoxType BoxType)) (= (type item@@0) BoxType)) (= (U_2_bool (MapType0Select (|IMap#Items| m@@17) item@@0))  (and (U_2_bool (MapType0Select (|IMap#Domain| m@@17) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0)))) (= (MapType0Select (|IMap#Elements| m@@17) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item@@0))))))
 :qid |DafnyPreludebpl.1383:15|
 :skolemid |317|
 :pattern ( (MapType0Select (|IMap#Items| m@@17) item@@0))
)))
(assert (forall ((m@@18 T@U) (v@@20 T@U) ) (! (let ((V@@30 (type v@@20)))
(let ((U@@30 (MapTypeInv0 (type m@@18))))
 (=> (= (type m@@18) (MapType U@@30 V@@30)) (= (U_2_bool (MapType0Select (|Map#Values| m@@18) v@@20)) (exists ((u@@5 T@U) ) (!  (and (= (type u@@5) U@@30) (and (U_2_bool (MapType0Select (|Map#Domain| m@@18) u@@5)) (= v@@20 (MapType0Select (|Map#Elements| m@@18) u@@5))))
 :qid |DafnyPreludebpl.1228:10|
 :skolemid |285|
 :pattern ( (MapType0Select (|Map#Domain| m@@18) u@@5))
 :pattern ( (MapType0Select (|Map#Elements| m@@18) u@@5))
))))))
 :qid |DafnyPreludebpl.1226:20|
 :skolemid |286|
 :pattern ( (MapType0Select (|Map#Values| m@@18) v@@20))
)))
(assert (forall ((m@@19 T@U) (v@@21 T@U) ) (! (let ((V@@31 (type v@@21)))
(let ((U@@31 (IMapTypeInv0 (type m@@19))))
 (=> (= (type m@@19) (IMapType U@@31 V@@31)) (= (U_2_bool (MapType0Select (|IMap#Values| m@@19) v@@21)) (exists ((u@@6 T@U) ) (!  (and (= (type u@@6) U@@31) (and (U_2_bool (MapType0Select (|IMap#Domain| m@@19) u@@6)) (= v@@21 (MapType0Select (|IMap#Elements| m@@19) u@@6))))
 :qid |DafnyPreludebpl.1368:10|
 :skolemid |315|
 :pattern ( (MapType0Select (|IMap#Domain| m@@19) u@@6))
 :pattern ( (MapType0Select (|IMap#Elements| m@@19) u@@6))
))))))
 :qid |DafnyPreludebpl.1366:20|
 :skolemid |316|
 :pattern ( (MapType0Select (|IMap#Values| m@@19) v@@21))
)))
(assert (forall ((arg0@@80 T@U) (arg1@@42 T@U) ) (!  (=> (and (= (type arg0@@80) TyType) (= (type arg1@@42) TyType)) (= (type (TMap arg0@@80 arg1@@42)) TyType))
 :qid |funType:TMap|
 :pattern ( (TMap arg0@@80 arg1@@42))
)))
(assert (forall ((v@@22 T@U) (t0@@5 T@U) (t1 T@U) (h@@9 T@U) ) (!  (=> (and (and (and (= (type v@@22) (MapType BoxType BoxType)) (= (type t0@@5) TyType)) (= (type t1) TyType)) (= (type h@@9) (MapType0Type refType (MapType1Type BoxType)))) (= ($IsAlloc v@@22 (TMap t0@@5 t1) h@@9) (forall ((bx@@8 T@U) ) (!  (=> (and (= (type bx@@8) BoxType) (U_2_bool (MapType0Select (|Map#Domain| v@@22) bx@@8))) (and ($IsAllocBox (MapType0Select (|Map#Elements| v@@22) bx@@8) t1 h@@9) ($IsAllocBox bx@@8 t0@@5 h@@9)))
 :qid |DafnyPreludebpl.321:23|
 :skolemid |74|
 :pattern ( (MapType0Select (|Map#Elements| v@@22) bx@@8))
 :pattern ( (MapType0Select (|Map#Domain| v@@22) bx@@8))
))))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( ($IsAlloc v@@22 (TMap t0@@5 t1) h@@9))
)))
(assert (forall ((arg0@@81 T@U) (arg1@@43 T@U) ) (!  (=> (and (= (type arg0@@81) TyType) (= (type arg1@@43) TyType)) (= (type (TIMap arg0@@81 arg1@@43)) TyType))
 :qid |funType:TIMap|
 :pattern ( (TIMap arg0@@81 arg1@@43))
)))
(assert (forall ((v@@23 T@U) (t0@@6 T@U) (t1@@0 T@U) (h@@10 T@U) ) (!  (=> (and (and (and (= (type v@@23) (IMapType BoxType BoxType)) (= (type t0@@6) TyType)) (= (type t1@@0) TyType)) (= (type h@@10) (MapType0Type refType (MapType1Type BoxType)))) (= ($IsAlloc v@@23 (TIMap t0@@6 t1@@0) h@@10) (forall ((bx@@9 T@U) ) (!  (=> (and (= (type bx@@9) BoxType) (U_2_bool (MapType0Select (|IMap#Domain| v@@23) bx@@9))) (and ($IsAllocBox (MapType0Select (|IMap#Elements| v@@23) bx@@9) t1@@0 h@@10) ($IsAllocBox bx@@9 t0@@6 h@@10)))
 :qid |DafnyPreludebpl.330:23|
 :skolemid |76|
 :pattern ( (MapType0Select (|IMap#Elements| v@@23) bx@@9))
 :pattern ( (MapType0Select (|IMap#Domain| v@@23) bx@@9))
))))
 :qid |DafnyPreludebpl.327:19|
 :skolemid |77|
 :pattern ( ($IsAlloc v@@23 (TIMap t0@@6 t1@@0) h@@10))
)))
(assert (forall ((o@@20 T@U) (p@@3 T@U) ) (!  (=> (and (= (type o@@20) BoxType) (= (type p@@3) BoxType)) (and (=> (= o@@20 (|ORD#FromNat| 0)) (= (|ORD#Plus| o@@20 p@@3) p@@3)) (=> (= p@@3 (|ORD#FromNat| 0)) (= (|ORD#Plus| o@@20 p@@3) o@@20))))
 :qid |DafnyPreludebpl.450:15|
 :skolemid |93|
 :pattern ( (|ORD#Plus| o@@20 p@@3))
)))
(assert (forall ((x@@17 Int) (y@@1 Int) ) (! (= (INTERNAL_div_boogie x@@17 y@@1) (div x@@17 y@@1))
 :qid |DafnyPreludebpl.1459:30|
 :skolemid |335|
 :pattern ( (INTERNAL_div_boogie x@@17 y@@1))
)))
(assert (forall ((x@@18 Int) (y@@2 Int) ) (! (= (Div x@@18 y@@2) (div x@@18 y@@2))
 :qid |DafnyPreludebpl.1467:14|
 :skolemid |342|
 :pattern ( (Div x@@18 y@@2))
)))
(assert (forall ((o@@21 T@U) (p@@4 T@U) ) (!  (=> (and (= (type o@@21) BoxType) (= (type p@@4) BoxType)) (= (|ORD#LessThanLimit| o@@21 p@@4) (|ORD#Less| o@@21 p@@4)))
 :qid |DafnyPreludebpl.438:15|
 :skolemid |90|
 :pattern ( (|ORD#LessThanLimit| o@@21 p@@4))
)))
(assert (forall ((a@@34 T@U) (b@@27 T@U) ) (! (let ((T@@76 (MapType0TypeInv0 (type a@@34))))
 (=> (and (and (= (type a@@34) (MapType0Type T@@76 boolType)) (= (type b@@27) (MapType0Type T@@76 boolType))) (|Set#Equal| a@@34 b@@27)) (= a@@34 b@@27)))
 :qid |DafnyPreludebpl.748:18|
 :skolemid |152|
 :pattern ( (|Set#Equal| a@@34 b@@27))
)))
(assert (forall ((a@@35 T@U) (b@@28 T@U) ) (! (let ((T@@77 (MapType0TypeInv0 (type a@@35))))
 (=> (and (and (= (type a@@35) (MapType0Type T@@77 boolType)) (= (type b@@28) (MapType0Type T@@77 boolType))) (|ISet#Equal| a@@35 b@@28)) (= a@@35 b@@28)))
 :qid |DafnyPreludebpl.815:18|
 :skolemid |174|
 :pattern ( (|ISet#Equal| a@@35 b@@28))
)))
(assert (forall ((a@@36 T@U) (b@@29 T@U) ) (! (let ((T@@78 (MapType0TypeInv0 (type a@@36))))
 (=> (and (and (= (type a@@36) (MapType0Type T@@78 intType)) (= (type b@@29) (MapType0Type T@@78 intType))) (|MultiSet#Equal| a@@36 b@@29)) (= a@@36 b@@29)))
 :qid |DafnyPreludebpl.915:18|
 :skolemid |208|
 :pattern ( (|MultiSet#Equal| a@@36 b@@29))
)))
(assert (forall ((a@@37 T@U) (b@@30 T@U) ) (! (let ((T@@79 (SeqTypeInv0 (type a@@37))))
 (=> (and (and (= (type a@@37) (SeqType T@@79)) (= (type b@@30) (SeqType T@@79))) (|Seq#Equal| a@@37 b@@30)) (= a@@37 b@@30)))
 :qid |DafnyPreludebpl.1068:18|
 :skolemid |247|
 :pattern ( (|Seq#Equal| a@@37 b@@30))
)))
(assert (forall ((m@@20 T@U) (|m'@@0| T@U) ) (! (let ((V@@32 (MapTypeInv1 (type m@@20))))
(let ((U@@32 (MapTypeInv0 (type m@@20))))
 (=> (and (and (= (type m@@20) (MapType U@@32 V@@32)) (= (type |m'@@0|) (MapType U@@32 V@@32))) (|Map#Equal| m@@20 |m'@@0|)) (= m@@20 |m'@@0|))))
 :qid |DafnyPreludebpl.1318:21|
 :skolemid |303|
 :pattern ( (|Map#Equal| m@@20 |m'@@0|))
)))
(assert (forall ((m@@21 T@U) (|m'@@1| T@U) ) (! (let ((V@@33 (IMapTypeInv1 (type m@@21))))
(let ((U@@33 (IMapTypeInv0 (type m@@21))))
 (=> (and (and (= (type m@@21) (IMapType U@@33 V@@33)) (= (type |m'@@1|) (IMapType U@@33 V@@33))) (|IMap#Equal| m@@21 |m'@@1|)) (= m@@21 |m'@@1|))))
 :qid |DafnyPreludebpl.1428:21|
 :skolemid |327|
 :pattern ( (|IMap#Equal| m@@21 |m'@@1|))
)))
(assert (forall ((arg0@@82 T@U) (arg1@@44 T@U) ) (! (let ((T@@80 (type arg1@@44)))
 (=> (and (= (type arg0@@82) (MapType0Type T@@80 boolType)) (= (type arg1@@44) T@@80)) (= (type (|Set#UnionOne| arg0@@82 arg1@@44)) (MapType0Type T@@80 boolType))))
 :qid |funType:Set#UnionOne|
 :pattern ( (|Set#UnionOne| arg0@@82 arg1@@44))
)))
(assert (forall ((a@@38 T@U) (x@@19 T@U) (y@@3 T@U) ) (! (let ((T@@81 (type x@@19)))
 (=> (and (and (= (type a@@38) (MapType0Type T@@81 boolType)) (= (type y@@3) T@@81)) (U_2_bool (MapType0Select a@@38 y@@3))) (U_2_bool (MapType0Select (|Set#UnionOne| a@@38 x@@19) y@@3))))
 :qid |DafnyPreludebpl.687:18|
 :skolemid |132|
 :pattern ( (|Set#UnionOne| a@@38 x@@19) (MapType0Select a@@38 y@@3))
)))
(assert (forall ((a@@39 T@U) (b@@31 T@U) (y@@4 T@U) ) (! (let ((T@@82 (type y@@4)))
 (=> (and (and (= (type a@@39) (MapType0Type T@@82 boolType)) (= (type b@@31) (MapType0Type T@@82 boolType))) (U_2_bool (MapType0Select a@@39 y@@4))) (U_2_bool (MapType0Select (|Set#Union| a@@39 b@@31) y@@4))))
 :qid |DafnyPreludebpl.697:18|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@39 b@@31) (MapType0Select a@@39 y@@4))
)))
(assert (forall ((a@@40 T@U) (b@@32 T@U) (y@@5 T@U) ) (! (let ((T@@83 (type y@@5)))
 (=> (and (and (= (type a@@40) (MapType0Type T@@83 boolType)) (= (type b@@32) (MapType0Type T@@83 boolType))) (U_2_bool (MapType0Select b@@32 y@@5))) (U_2_bool (MapType0Select (|Set#Union| a@@40 b@@32) y@@5))))
 :qid |DafnyPreludebpl.699:18|
 :skolemid |137|
 :pattern ( (|Set#Union| a@@40 b@@32) (MapType0Select b@@32 y@@5))
)))
(assert (forall ((arg0@@83 T@U) (arg1@@45 T@U) ) (! (let ((T@@84 (type arg1@@45)))
 (=> (and (= (type arg0@@83) (MapType0Type T@@84 boolType)) (= (type arg1@@45) T@@84)) (= (type (|ISet#UnionOne| arg0@@83 arg1@@45)) (MapType0Type T@@84 boolType))))
 :qid |funType:ISet#UnionOne|
 :pattern ( (|ISet#UnionOne| arg0@@83 arg1@@45))
)))
(assert (forall ((a@@41 T@U) (x@@20 T@U) (y@@6 T@U) ) (! (let ((T@@85 (type x@@20)))
 (=> (and (and (= (type a@@41) (MapType0Type T@@85 boolType)) (= (type y@@6) T@@85)) (U_2_bool (MapType0Select a@@41 y@@6))) (U_2_bool (MapType0Select (|ISet#UnionOne| a@@41 x@@20) y@@6))))
 :qid |DafnyPreludebpl.773:18|
 :skolemid |158|
 :pattern ( (|ISet#UnionOne| a@@41 x@@20) (MapType0Select a@@41 y@@6))
)))
(assert (forall ((a@@42 T@U) (b@@33 T@U) (y@@7 T@U) ) (! (let ((T@@86 (type y@@7)))
 (=> (and (and (= (type a@@42) (MapType0Type T@@86 boolType)) (= (type b@@33) (MapType0Type T@@86 boolType))) (U_2_bool (MapType0Select a@@42 y@@7))) (U_2_bool (MapType0Select (|ISet#Union| a@@42 b@@33) y@@7))))
 :qid |DafnyPreludebpl.779:18|
 :skolemid |160|
 :pattern ( (|ISet#Union| a@@42 b@@33) (MapType0Select a@@42 y@@7))
)))
(assert (forall ((a@@43 T@U) (b@@34 T@U) (y@@8 T@U) ) (! (let ((T@@87 (type y@@8)))
 (=> (and (and (= (type a@@43) (MapType0Type T@@87 boolType)) (= (type b@@34) (MapType0Type T@@87 boolType))) (U_2_bool (MapType0Select b@@34 y@@8))) (U_2_bool (MapType0Select (|ISet#Union| a@@43 b@@34) y@@8))))
 :qid |DafnyPreludebpl.781:18|
 :skolemid |161|
 :pattern ( (|ISet#Union| a@@43 b@@34) (MapType0Select b@@34 y@@8))
)))
(assert (forall ((x@@21 Int) ) (! (= (q@Real x@@21) (to_real x@@21))
 :qid |DafnyPreludebpl.584:15|
 :skolemid |113|
 :pattern ( (q@Real x@@21))
)))
(assert (forall ((a@@44 T@U) (x@@22 T@U) (o@@22 T@U) ) (! (let ((T@@88 (type x@@22)))
 (=> (and (= (type a@@44) (MapType0Type T@@88 boolType)) (= (type o@@22) T@@88)) (= (U_2_bool (MapType0Select (|Set#UnionOne| a@@44 x@@22) o@@22))  (or (= o@@22 x@@22) (U_2_bool (MapType0Select a@@44 o@@22))))))
 :qid |DafnyPreludebpl.683:18|
 :skolemid |130|
 :pattern ( (MapType0Select (|Set#UnionOne| a@@44 x@@22) o@@22))
)))
(assert (forall ((a@@45 T@U) (x@@23 T@U) (o@@23 T@U) ) (! (let ((T@@89 (type x@@23)))
 (=> (and (= (type a@@45) (MapType0Type T@@89 boolType)) (= (type o@@23) T@@89)) (= (U_2_bool (MapType0Select (|ISet#UnionOne| a@@45 x@@23) o@@23))  (or (= o@@23 x@@23) (U_2_bool (MapType0Select a@@45 o@@23))))))
 :qid |DafnyPreludebpl.769:18|
 :skolemid |156|
 :pattern ( (MapType0Select (|ISet#UnionOne| a@@45 x@@23) o@@23))
)))
(assert (forall ((s@@22 T@U) (n@@11 Int) ) (! (let ((T@@90 (SeqTypeInv0 (type s@@22))))
 (=> (= (type s@@22) (SeqType T@@90)) (=> (and (<= 0 n@@11) (<= n@@11 (|Seq#Length| s@@22))) (= (|Seq#Length| (|Seq#Take| s@@22 n@@11)) n@@11))))
 :qid |DafnyPreludebpl.1078:18|
 :skolemid |250|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@22 n@@11)))
)))
(assert (forall ((a@@46 T@U) (b@@35 T@U) (c T@U) ) (!  (=> (and (and (and (and (= (type a@@46) (MapType0Type refType (MapType1Type BoxType))) (= (type b@@35) (MapType0Type refType (MapType1Type BoxType)))) (= (type c) (MapType0Type refType (MapType1Type BoxType)))) (not (= a@@46 c))) (and ($HeapSucc a@@46 b@@35) ($HeapSucc b@@35 c))) ($HeapSucc a@@46 c))
 :qid |DafnyPreludebpl.611:15|
 :skolemid |116|
 :pattern ( ($HeapSucc a@@46 b@@35) ($HeapSucc b@@35 c))
)))
(assert (forall ((a@@47 T@U) (b@@36 T@U) (y@@9 T@U) ) (! (let ((T@@91 (type y@@9)))
 (=> (and (and (= (type a@@47) (MapType0Type T@@91 boolType)) (= (type b@@36) (MapType0Type T@@91 boolType))) (U_2_bool (MapType0Select b@@36 y@@9))) (not (U_2_bool (MapType0Select (|Set#Difference| a@@47 b@@36) y@@9)))))
 :qid |DafnyPreludebpl.728:18|
 :skolemid |146|
 :pattern ( (|Set#Difference| a@@47 b@@36) (MapType0Select b@@36 y@@9))
)))
(assert (forall ((a@@48 T@U) (b@@37 T@U) (y@@10 T@U) ) (! (let ((T@@92 (type y@@10)))
 (=> (and (and (= (type a@@48) (MapType0Type T@@92 boolType)) (= (type b@@37) (MapType0Type T@@92 boolType))) (U_2_bool (MapType0Select b@@37 y@@10))) (not (U_2_bool (MapType0Select (|ISet#Difference| a@@48 b@@37) y@@10)))))
 :qid |DafnyPreludebpl.805:18|
 :skolemid |169|
 :pattern ( (|ISet#Difference| a@@48 b@@37) (MapType0Select b@@37 y@@10))
)))
(assert (forall ((T@@93 T@T) ) (! (= (type (|ISet#Empty| T@@93)) (MapType0Type T@@93 boolType))
 :qid |funType:ISet#Empty|
 :pattern ( (|ISet#Empty| T@@93))
)))
(assert (forall ((m@@22 T@U) ) (! (let ((V@@34 (IMapTypeInv1 (type m@@22))))
(let ((U@@34 (IMapTypeInv0 (type m@@22))))
 (=> (= (type m@@22) (IMapType U@@34 V@@34)) (= (= m@@22 (|IMap#Empty| U@@34 V@@34)) (= (|IMap#Domain| m@@22) (|ISet#Empty| U@@34))))))
 :qid |DafnyPreludebpl.1349:21|
 :skolemid |312|
 :pattern ( (|IMap#Domain| m@@22))
)))
(assert (forall ((m@@23 T@U) ) (! (let ((V@@35 (IMapTypeInv1 (type m@@23))))
(let ((U@@35 (IMapTypeInv0 (type m@@23))))
 (=> (= (type m@@23) (IMapType U@@35 V@@35)) (= (= m@@23 (|IMap#Empty| U@@35 V@@35)) (= (|IMap#Values| m@@23) (|ISet#Empty| V@@35))))))
 :qid |DafnyPreludebpl.1352:21|
 :skolemid |313|
 :pattern ( (|IMap#Values| m@@23))
)))
(assert (forall ((m@@24 T@U) ) (! (let ((V@@36 (IMapTypeInv1 (type m@@24))))
(let ((U@@36 (IMapTypeInv0 (type m@@24))))
 (=> (= (type m@@24) (IMapType U@@36 V@@36)) (= (= m@@24 (|IMap#Empty| U@@36 V@@36)) (= (|IMap#Items| m@@24) (|ISet#Empty| BoxType))))))
 :qid |DafnyPreludebpl.1355:21|
 :skolemid |314|
 :pattern ( (|IMap#Items| m@@24))
)))
(assert (forall ((arg0@@84 T@U) (arg1@@46 T@U) ) (!  (=> (and (= (type arg0@@84) BoxType) (= (type arg1@@46) BoxType)) (= (type (|#_System._tuple#2._#Make2| arg0@@84 arg1@@46)) DatatypeTypeType))
 :qid |funType:#_System._tuple#2._#Make2|
 :pattern ( (|#_System._tuple#2._#Make2| arg0@@84 arg1@@46))
)))
(assert (forall ((m@@25 T@U) ) (! (let ((V@@37 (MapTypeInv1 (type m@@25))))
(let ((U@@37 (MapTypeInv0 (type m@@25))))
 (=> (= (type m@@25) (MapType U@@37 V@@37)) (or (= m@@25 (|Map#Empty| U@@37 V@@37)) (exists ((k@@5 T@U) (v@@24 T@U) ) (!  (and (and (= (type k@@5) BoxType) (= (type v@@24) BoxType)) (U_2_bool (MapType0Select (|Map#Items| m@@25) ($Box (|#_System._tuple#2._#Make2| k@@5 v@@24)))))
 :qid |DafnyPreludebpl.1207:31|
 :skolemid |280|
 :no-pattern (type k@@5)
 :no-pattern (type v@@24)
 :no-pattern (U_2_int k@@5)
 :no-pattern (U_2_bool k@@5)
 :no-pattern (U_2_int v@@24)
 :no-pattern (U_2_bool v@@24)
))))))
 :qid |DafnyPreludebpl.1205:21|
 :skolemid |281|
 :pattern ( (|Map#Items| m@@25))
)))
(assert (forall ((m@@26 T@U) ) (! (let ((V@@38 (IMapTypeInv1 (type m@@26))))
(let ((U@@38 (IMapTypeInv0 (type m@@26))))
 (=> (= (type m@@26) (IMapType U@@38 V@@38)) (or (= m@@26 (|IMap#Empty| U@@38 V@@38)) (exists ((k@@6 T@U) (v@@25 T@U) ) (!  (and (and (= (type k@@6) BoxType) (= (type v@@25) BoxType)) (U_2_bool (MapType0Select (|IMap#Items| m@@26) ($Box (|#_System._tuple#2._#Make2| k@@6 v@@25)))))
 :qid |DafnyPreludebpl.1347:32|
 :skolemid |310|
 :no-pattern (type k@@6)
 :no-pattern (type v@@25)
 :no-pattern (U_2_int k@@6)
 :no-pattern (U_2_bool k@@6)
 :no-pattern (U_2_int v@@25)
 :no-pattern (U_2_bool v@@25)
))))))
 :qid |DafnyPreludebpl.1345:21|
 :skolemid |311|
 :pattern ( (|IMap#Items| m@@26))
)))
(assert  (and (forall ((alpha@@2 T@T) (arg0@@85 T@U) (arg1@@47 T@U) ) (!  (=> (and (= (type arg0@@85) ClassNameType) (= (type arg1@@47) NameFamilyType)) (= (type (FieldOfDecl alpha@@2 arg0@@85 arg1@@47)) (FieldType alpha@@2)))
 :qid |funType:FieldOfDecl|
 :pattern ( (FieldOfDecl alpha@@2 arg0@@85 arg1@@47))
)) (forall ((arg0@@86 T@U) ) (! (let ((T@@94 (FieldTypeInv0 (type arg0@@86))))
 (=> (= (type arg0@@86) (FieldType T@@94)) (= (type (DeclType arg0@@86)) ClassNameType)))
 :qid |funType:DeclType|
 :pattern ( (DeclType arg0@@86))
))))
(assert (forall ((cl T@U) (nm T@U) (T@@95 T@T) ) (!  (=> (and (= (type cl) ClassNameType) (= (type nm) NameFamilyType)) (and (= (DeclType (FieldOfDecl T@@95 cl nm)) cl) (= (DeclName (FieldOfDecl T@@95 cl nm)) nm)))
 :qid |DafnyPreludebpl.538:18|
 :skolemid |106|
 :pattern ( (FieldOfDecl T@@95 cl nm))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> (and (= (type bx@@10) BoxType) ($IsBox bx@@10 TInt)) (and (= ($Box ($Unbox intType bx@@10)) bx@@10) ($Is ($Unbox intType bx@@10) TInt)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |26|
 :pattern ( ($IsBox bx@@10 TInt))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> (and (= (type bx@@11) BoxType) ($IsBox bx@@11 TReal)) (and (= ($Box ($Unbox realType bx@@11)) bx@@11) ($Is ($Unbox realType bx@@11) TReal)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@11 TReal))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> (and (= (type bx@@12) BoxType) ($IsBox bx@@12 TBool)) (and (= ($Box ($Unbox boolType bx@@12)) bx@@12) ($Is ($Unbox boolType bx@@12) TBool)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@12 TBool))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> (and (= (type bx@@13) BoxType) ($IsBox bx@@13 TChar)) (and (= ($Box ($Unbox charType bx@@13)) bx@@13) ($Is ($Unbox charType bx@@13) TChar)))
 :qid |DafnyPreludebpl.188:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@13 TChar))
)))
(assert (forall ((a@@49 T@U) (b@@38 T@U) ) (! (let ((T@@96 (MapType0TypeInv0 (type a@@49))))
 (=> (and (= (type a@@49) (MapType0Type T@@96 boolType)) (= (type b@@38) (MapType0Type T@@96 boolType))) (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@49 b@@38)) (|Set#Card| (|Set#Difference| b@@38 a@@49))) (|Set#Card| (|Set#Intersection| a@@49 b@@38))) (|Set#Card| (|Set#Union| a@@49 b@@38))) (= (|Set#Card| (|Set#Difference| a@@49 b@@38)) (- (|Set#Card| a@@49) (|Set#Card| (|Set#Intersection| a@@49 b@@38)))))))
 :qid |DafnyPreludebpl.730:18|
 :skolemid |147|
 :pattern ( (|Set#Card| (|Set#Difference| a@@49 b@@38)))
)))
(assert (forall ((v@@26 T@U) (t@@8 T@U) ) (!  (=> (= (type t@@8) TyType) (= ($IsBox ($Box v@@26) t@@8) ($Is v@@26 t@@8)))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |37|
 :pattern ( ($IsBox ($Box v@@26) t@@8))
)))
(assert (forall ((arg0@@87 T@U) ) (! (let ((T@@97 (MapType0TypeInv0 (type arg0@@87))))
 (=> (= (type arg0@@87) (MapType0Type T@@97 boolType)) (= (type (|MultiSet#FromSet| arg0@@87)) (MapType0Type T@@97 intType))))
 :qid |funType:MultiSet#FromSet|
 :pattern ( (|MultiSet#FromSet| arg0@@87))
)))
(assert (forall ((s@@23 T@U) (a@@50 T@U) ) (! (let ((T@@98 (type a@@50)))
 (=> (= (type s@@23) (MapType0Type T@@98 boolType)) (and (= (= (U_2_int (MapType0Select (|MultiSet#FromSet| s@@23) a@@50)) 0)  (not (U_2_bool (MapType0Select s@@23 a@@50)))) (= (= (U_2_int (MapType0Select (|MultiSet#FromSet| s@@23) a@@50)) 1) (U_2_bool (MapType0Select s@@23 a@@50))))))
 :qid |DafnyPreludebpl.924:18|
 :skolemid |211|
 :pattern ( (MapType0Select (|MultiSet#FromSet| s@@23) a@@50))
)))
(assert (forall ((arg0@@88 T@U) ) (! (let ((T@@99 (type arg0@@88)))
 (=> (= (type arg0@@88) T@@99) (= (type (|Seq#Singleton| arg0@@88)) (SeqType T@@99))))
 :qid |funType:Seq#Singleton|
 :pattern ( (|Seq#Singleton| arg0@@88))
)))
(assert (forall ((t@@9 T@U) ) (! (= (|Seq#Index| (|Seq#Singleton| t@@9) 0) t@@9)
 :qid |DafnyPreludebpl.1021:18|
 :skolemid |232|
 :pattern ( (|Seq#Index| (|Seq#Singleton| t@@9) 0))
)))
(assert (forall ((s@@24 T@U) (i@@11 Int) (v@@27 T@U) (n@@12 Int) ) (! (let ((T@@100 (type v@@27)))
 (=> (= (type s@@24) (SeqType T@@100)) (=> (and (<= n@@12 i@@11) (< i@@11 (|Seq#Length| s@@24))) (= (|Seq#Take| (|Seq#Update| s@@24 i@@11 v@@27) n@@12) (|Seq#Take| s@@24 n@@12)))))
 :qid |DafnyPreludebpl.1138:18|
 :skolemid |262|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@24 i@@11 v@@27) n@@12))
)))
(assert (forall ((arg0@@89 T@U) ) (! (let ((T@@101 (type arg0@@89)))
 (=> (= (type arg0@@89) T@@101) (= (type (|MultiSet#Singleton| arg0@@89)) (MapType0Type T@@101 intType))))
 :qid |funType:MultiSet#Singleton|
 :pattern ( (|MultiSet#Singleton| arg0@@89))
)))
(assert (forall ((r@@1 T@U) (o@@24 T@U) ) (! (let ((T@@102 (type r@@1)))
 (=> (= (type o@@24) T@@102) (and (= (= (U_2_int (MapType0Select (|MultiSet#Singleton| r@@1) o@@24)) 1) (= r@@1 o@@24)) (= (= (U_2_int (MapType0Select (|MultiSet#Singleton| r@@1) o@@24)) 0) (not (= r@@1 o@@24))))))
 :qid |DafnyPreludebpl.855:18|
 :skolemid |189|
 :pattern ( (MapType0Select (|MultiSet#Singleton| r@@1) o@@24))
)))
(assert (forall ((o@@25 T@U) ) (!  (=> (= (type o@@25) BoxType) (<= 0 (|ORD#Offset| o@@25)))
 :qid |DafnyPreludebpl.410:15|
 :skolemid |84|
 :pattern ( (|ORD#Offset| o@@25))
)))
(assert (forall ((o@@26 T@U) ) (!  (=> (= (type o@@26) refType) (<= 0 (_System.array.Length o@@26)))
 :qid |DafnyPreludebpl.576:17|
 :skolemid |111|
 :no-pattern (type o@@26)
 :no-pattern (U_2_int o@@26)
 :no-pattern (U_2_bool o@@26)
)))
(assert (forall ((s@@25 T@U) ) (! (let ((T@@103 (MapType0TypeInv0 (type s@@25))))
 (=> (= (type s@@25) (MapType0Type T@@103 boolType)) (<= 0 (|Set#Card| s@@25))))
 :qid |DafnyPreludebpl.666:18|
 :skolemid |123|
 :pattern ( (|Set#Card| s@@25))
)))
(assert (forall ((s@@26 T@U) ) (! (let ((T@@104 (MapType0TypeInv0 (type s@@26))))
 (=> (= (type s@@26) (MapType0Type T@@104 intType)) (<= 0 (|MultiSet#Card| s@@26))))
 :qid |DafnyPreludebpl.844:18|
 :skolemid |184|
 :pattern ( (|MultiSet#Card| s@@26))
)))
(assert (forall ((s@@27 T@U) ) (! (let ((T@@105 (SeqTypeInv0 (type s@@27))))
 (=> (= (type s@@27) (SeqType T@@105)) (<= 0 (|Seq#Length| s@@27))))
 :qid |DafnyPreludebpl.968:18|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@27))
)))
(assert (forall ((m@@27 T@U) ) (! (let ((V@@39 (MapTypeInv1 (type m@@27))))
(let ((U@@39 (MapTypeInv0 (type m@@27))))
 (=> (= (type m@@27) (MapType U@@39 V@@39)) (<= 0 (|Map#Card| m@@27)))))
 :qid |DafnyPreludebpl.1193:20|
 :skolemid |274|
 :pattern ( (|Map#Card| m@@27))
)))
(assert (forall ((ty@@0 T@U) ) (!  (=> (and (= (type ty@@0) TyType) ($AlwaysAllocated ty@@0)) (forall ((h@@11 T@U) (v@@28 T@U) ) (!  (=> (and (and (= (type h@@11) (MapType0Type refType (MapType1Type BoxType))) (= (type v@@28) BoxType)) ($IsBox v@@28 ty@@0)) ($IsAllocBox v@@28 ty@@0 h@@11))
 :qid |DafnyPreludebpl.340:15|
 :skolemid |78|
 :pattern ( ($IsAllocBox v@@28 ty@@0 h@@11))
)))
 :qid |DafnyPreludebpl.338:19|
 :skolemid |79|
 :pattern ( ($AlwaysAllocated ty@@0))
)))
(assert (forall ((s@@28 T@U) (i@@12 Int) (j@@2 Int) ) (! (let ((T@@106 (SeqTypeInv0 (type s@@28))))
 (=> (= (type s@@28) (SeqType T@@106)) (=> (and (and (<= 0 i@@12) (< i@@12 j@@2)) (<= j@@2 (|Seq#Length| s@@28))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@28 i@@12) (|Seq#Drop| s@@28 j@@2))) (|Seq#Rank| s@@28)))))
 :qid |DafnyPreludebpl.1166:18|
 :skolemid |270|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@28 i@@12) (|Seq#Drop| s@@28 j@@2))))
)))
(assert (forall ((a@@51 T@U) (b@@39 T@U) (o@@27 T@U) ) (! (let ((T@@107 (type o@@27)))
 (=> (and (= (type a@@51) (MapType0Type T@@107 intType)) (= (type b@@39) (MapType0Type T@@107 intType))) (= (U_2_int (MapType0Select (|MultiSet#Intersection| a@@51 b@@39) o@@27)) (|Math#min| (U_2_int (MapType0Select a@@51 o@@27)) (U_2_int (MapType0Select b@@39 o@@27))))))
 :qid |DafnyPreludebpl.884:18|
 :skolemid |198|
 :pattern ( (MapType0Select (|MultiSet#Intersection| a@@51 b@@39) o@@27))
)))
(assert (forall ((arg0@@90 T@U) ) (!  (=> (= (type arg0@@90) TyType) (= (type (Inv0_TMap arg0@@90)) TyType))
 :qid |funType:Inv0_TMap|
 :pattern ( (Inv0_TMap arg0@@90))
)))
(assert (forall ((t@@10 T@U) (u@@7 T@U) ) (!  (=> (and (= (type t@@10) TyType) (= (type u@@7) TyType)) (= (Inv0_TMap (TMap t@@10 u@@7)) t@@10))
 :qid |DafnyPreludebpl.56:17|
 :skolemid |9|
 :pattern ( (TMap t@@10 u@@7))
)))
(assert (forall ((arg0@@91 T@U) ) (!  (=> (= (type arg0@@91) TyType) (= (type (Inv1_TMap arg0@@91)) TyType))
 :qid |funType:Inv1_TMap|
 :pattern ( (Inv1_TMap arg0@@91))
)))
(assert (forall ((t@@11 T@U) (u@@8 T@U) ) (!  (=> (and (= (type t@@11) TyType) (= (type u@@8) TyType)) (= (Inv1_TMap (TMap t@@11 u@@8)) u@@8))
 :qid |DafnyPreludebpl.57:17|
 :skolemid |10|
 :pattern ( (TMap t@@11 u@@8))
)))
(assert (forall ((t@@12 T@U) (u@@9 T@U) ) (!  (=> (and (= (type t@@12) TyType) (= (type u@@9) TyType)) (= (Tag (TMap t@@12 u@@9)) TagMap))
 :qid |DafnyPreludebpl.58:17|
 :skolemid |11|
 :pattern ( (TMap t@@12 u@@9))
)))
(assert (forall ((arg0@@92 T@U) ) (!  (=> (= (type arg0@@92) TyType) (= (type (Inv0_TIMap arg0@@92)) TyType))
 :qid |funType:Inv0_TIMap|
 :pattern ( (Inv0_TIMap arg0@@92))
)))
(assert (forall ((t@@13 T@U) (u@@10 T@U) ) (!  (=> (and (= (type t@@13) TyType) (= (type u@@10) TyType)) (= (Inv0_TIMap (TIMap t@@13 u@@10)) t@@13))
 :qid |DafnyPreludebpl.61:17|
 :skolemid |12|
 :pattern ( (TIMap t@@13 u@@10))
)))
(assert (forall ((arg0@@93 T@U) ) (!  (=> (= (type arg0@@93) TyType) (= (type (Inv1_TIMap arg0@@93)) TyType))
 :qid |funType:Inv1_TIMap|
 :pattern ( (Inv1_TIMap arg0@@93))
)))
(assert (forall ((t@@14 T@U) (u@@11 T@U) ) (!  (=> (and (= (type t@@14) TyType) (= (type u@@11) TyType)) (= (Inv1_TIMap (TIMap t@@14 u@@11)) u@@11))
 :qid |DafnyPreludebpl.62:17|
 :skolemid |13|
 :pattern ( (TIMap t@@14 u@@11))
)))
(assert (forall ((t@@15 T@U) (u@@12 T@U) ) (!  (=> (and (= (type t@@15) TyType) (= (type u@@12) TyType)) (= (Tag (TIMap t@@15 u@@12)) TagIMap))
 :qid |DafnyPreludebpl.63:17|
 :skolemid |14|
 :pattern ( (TIMap t@@15 u@@12))
)))
(assert (forall ((v@@29 T@U) (t0@@7 T@U) (h@@12 T@U) ) (!  (=> (and (and (= (type v@@29) (SeqType BoxType)) (= (type t0@@7) TyType)) (= (type h@@12) (MapType0Type refType (MapType1Type BoxType)))) (= ($IsAlloc v@@29 (TSeq t0@@7) h@@12) (forall ((i@@13 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 (|Seq#Length| v@@29))) ($IsAllocBox (|Seq#Index| v@@29 i@@13) t0@@7 h@@12))
 :qid |DafnyPreludebpl.314:15|
 :skolemid |72|
 :pattern ( (|Seq#Index| v@@29 i@@13))
))))
 :qid |DafnyPreludebpl.312:19|
 :skolemid |73|
 :pattern ( ($IsAlloc v@@29 (TSeq t0@@7) h@@12))
)))
(assert (forall ((a@@52 T@U) (x@@24 T@U) ) (! (let ((T@@108 (type x@@24)))
 (=> (= (type a@@52) (MapType0Type T@@108 boolType)) (U_2_bool (MapType0Select (|Set#UnionOne| a@@52 x@@24) x@@24))))
 :qid |DafnyPreludebpl.685:18|
 :skolemid |131|
 :pattern ( (|Set#UnionOne| a@@52 x@@24))
)))
(assert (forall ((a@@53 T@U) (x@@25 T@U) ) (! (let ((T@@109 (type x@@25)))
 (=> (= (type a@@53) (MapType0Type T@@109 boolType)) (U_2_bool (MapType0Select (|ISet#UnionOne| a@@53 x@@25) x@@25))))
 :qid |DafnyPreludebpl.771:18|
 :skolemid |157|
 :pattern ( (|ISet#UnionOne| a@@53 x@@25))
)))
(assert (forall ((a@@54 T@U) (x@@26 T@U) ) (! (let ((T@@110 (type x@@26)))
 (=> (and (= (type a@@54) (MapType0Type T@@110 boolType)) (U_2_bool (MapType0Select a@@54 x@@26))) (= (|Set#Card| (|Set#UnionOne| a@@54 x@@26)) (|Set#Card| a@@54))))
 :qid |DafnyPreludebpl.689:18|
 :skolemid |133|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@54 x@@26)))
)))
(assert (forall ((w Int) ) (! (= (Inv0_TBitvector (TBitvector w)) w)
 :qid |DafnyPreludebpl.37:17|
 :skolemid |0|
 :pattern ( (TBitvector w))
)))
(assert (forall ((arg0@@94 T@U) ) (!  (=> (= (type arg0@@94) TyType) (= (type (Inv0_TSet arg0@@94)) TyType))
 :qid |funType:Inv0_TSet|
 :pattern ( (Inv0_TSet arg0@@94))
)))
(assert (forall ((t@@16 T@U) ) (!  (=> (= (type t@@16) TyType) (= (Inv0_TSet (TSet t@@16)) t@@16))
 :qid |DafnyPreludebpl.40:17|
 :skolemid |1|
 :pattern ( (TSet t@@16))
)))
(assert (forall ((t@@17 T@U) ) (!  (=> (= (type t@@17) TyType) (= (Tag (TSet t@@17)) TagSet))
 :qid |DafnyPreludebpl.41:17|
 :skolemid |2|
 :pattern ( (TSet t@@17))
)))
(assert (forall ((arg0@@95 T@U) ) (!  (=> (= (type arg0@@95) TyType) (= (type (Inv0_TISet arg0@@95)) TyType))
 :qid |funType:Inv0_TISet|
 :pattern ( (Inv0_TISet arg0@@95))
)))
(assert (forall ((t@@18 T@U) ) (!  (=> (= (type t@@18) TyType) (= (Inv0_TISet (TISet t@@18)) t@@18))
 :qid |DafnyPreludebpl.44:17|
 :skolemid |3|
 :pattern ( (TISet t@@18))
)))
(assert (forall ((t@@19 T@U) ) (!  (=> (= (type t@@19) TyType) (= (Tag (TISet t@@19)) TagISet))
 :qid |DafnyPreludebpl.45:17|
 :skolemid |4|
 :pattern ( (TISet t@@19))
)))
(assert (forall ((arg0@@96 T@U) ) (!  (=> (= (type arg0@@96) TyType) (= (type (Inv0_TMultiSet arg0@@96)) TyType))
 :qid |funType:Inv0_TMultiSet|
 :pattern ( (Inv0_TMultiSet arg0@@96))
)))
(assert (forall ((t@@20 T@U) ) (!  (=> (= (type t@@20) TyType) (= (Inv0_TMultiSet (TMultiSet t@@20)) t@@20))
 :qid |DafnyPreludebpl.48:17|
 :skolemid |5|
 :pattern ( (TMultiSet t@@20))
)))
(assert (forall ((t@@21 T@U) ) (!  (=> (= (type t@@21) TyType) (= (Tag (TMultiSet t@@21)) TagMultiSet))
 :qid |DafnyPreludebpl.49:17|
 :skolemid |6|
 :pattern ( (TMultiSet t@@21))
)))
(assert (forall ((arg0@@97 T@U) ) (!  (=> (= (type arg0@@97) TyType) (= (type (Inv0_TSeq arg0@@97)) TyType))
 :qid |funType:Inv0_TSeq|
 :pattern ( (Inv0_TSeq arg0@@97))
)))
(assert (forall ((t@@22 T@U) ) (!  (=> (= (type t@@22) TyType) (= (Inv0_TSeq (TSeq t@@22)) t@@22))
 :qid |DafnyPreludebpl.52:17|
 :skolemid |7|
 :pattern ( (TSeq t@@22))
)))
(assert (forall ((t@@23 T@U) ) (!  (=> (= (type t@@23) TyType) (= (Tag (TSeq t@@23)) TagSeq))
 :qid |DafnyPreludebpl.53:17|
 :skolemid |8|
 :pattern ( (TSeq t@@23))
)))
(assert (forall ((i@@14 Int) ) (! (= (FDim (IndexField i@@14)) 1)
 :qid |DafnyPreludebpl.519:15|
 :skolemid |102|
 :pattern ( (IndexField i@@14))
)))
(assert (forall ((i@@15 Int) ) (! (= (IndexField_Inverse (IndexField i@@15)) i@@15)
 :qid |DafnyPreludebpl.521:15|
 :skolemid |103|
 :pattern ( (IndexField i@@15))
)))
(assert (forall ((i@@16 Int) ) (! (= (q@Int (q@Real i@@16)) i@@16)
 :qid |DafnyPreludebpl.585:15|
 :skolemid |114|
 :pattern ( (q@Int (q@Real i@@16)))
)))
(assert (forall ((x@@27 T@U) ) (! (let ((T@@111 (type x@@27)))
(= ($Unbox T@@111 ($Box x@@27)) x@@27))
 :qid |DafnyPreludebpl.170:20|
 :skolemid |25|
 :pattern ( ($Box x@@27))
)))
(assert (forall ((r@@2 T@U) ) (! (= (|Set#Card| (|Set#Singleton| r@@2)) 1)
 :qid |DafnyPreludebpl.680:18|
 :skolemid |129|
 :pattern ( (|Set#Card| (|Set#Singleton| r@@2)))
)))
(assert (forall ((t@@24 T@U) ) (! (= (|Seq#Length| (|Seq#Singleton| t@@24)) 1)
 :qid |DafnyPreludebpl.985:18|
 :skolemid |224|
 :pattern ( (|Seq#Length| (|Seq#Singleton| t@@24)))
)))
(assert (forall ((v@@30 T@U) (t0@@8 T@U) (t1@@1 T@U) ) (!  (=> (and (and (= (type v@@30) (MapType BoxType BoxType)) (= (type t0@@8) TyType)) (= (type t1@@1) TyType)) (= ($Is v@@30 (TMap t0@@8 t1@@1)) (forall ((bx@@14 T@U) ) (!  (=> (and (= (type bx@@14) BoxType) (U_2_bool (MapType0Select (|Map#Domain| v@@30) bx@@14))) (and ($IsBox (MapType0Select (|Map#Elements| v@@30) bx@@14) t1@@1) ($IsBox bx@@14 t0@@8)))
 :qid |DafnyPreludebpl.264:23|
 :skolemid |54|
 :pattern ( (MapType0Select (|Map#Elements| v@@30) bx@@14))
 :pattern ( (MapType0Select (|Map#Domain| v@@30) bx@@14))
))))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( ($Is v@@30 (TMap t0@@8 t1@@1)))
)))
(assert (forall ((v@@31 T@U) (t0@@9 T@U) (t1@@2 T@U) ) (!  (=> (and (and (= (type v@@31) (IMapType BoxType BoxType)) (= (type t0@@9) TyType)) (= (type t1@@2) TyType)) (= ($Is v@@31 (TIMap t0@@9 t1@@2)) (forall ((bx@@15 T@U) ) (!  (=> (and (= (type bx@@15) BoxType) (U_2_bool (MapType0Select (|IMap#Domain| v@@31) bx@@15))) (and ($IsBox (MapType0Select (|IMap#Elements| v@@31) bx@@15) t1@@2) ($IsBox bx@@15 t0@@9)))
 :qid |DafnyPreludebpl.279:23|
 :skolemid |57|
 :pattern ( (MapType0Select (|IMap#Elements| v@@31) bx@@15))
 :pattern ( (MapType0Select (|IMap#Domain| v@@31) bx@@15))
))))
 :qid |DafnyPreludebpl.276:19|
 :skolemid |58|
 :pattern ( ($Is v@@31 (TIMap t0@@9 t1@@2)))
)))
(assert (forall ((o@@28 T@U) (p@@5 T@U) ) (!  (=> (and (= (type o@@28) BoxType) (= (type p@@5) BoxType)) (and (and (and (=> (|ORD#Less| o@@28 p@@5) (not (= o@@28 p@@5))) (=> (and (|ORD#IsNat| o@@28) (not (|ORD#IsNat| p@@5))) (|ORD#Less| o@@28 p@@5))) (=> (and (|ORD#IsNat| o@@28) (|ORD#IsNat| p@@5)) (= (|ORD#Less| o@@28 p@@5) (< (|ORD#Offset| o@@28) (|ORD#Offset| p@@5))))) (=> (and (|ORD#Less| o@@28 p@@5) (|ORD#IsNat| p@@5)) (|ORD#IsNat| o@@28))))
 :qid |DafnyPreludebpl.422:15|
 :skolemid |87|
 :pattern ( (|ORD#Less| o@@28 p@@5))
)))
(assert (forall ((h@@13 T@U) (i@@17 Int) (v@@32 T@U) (a@@55 T@U) ) (!  (=> (and (and (and (= (type h@@13) (MapType0Type refType (MapType1Type BoxType))) (= (type v@@32) BoxType)) (= (type a@@55) refType)) (and (<= 0 i@@17) (< i@@17 (_System.array.Length a@@55)))) (= (|Seq#FromArray| (MapType0Store h@@13 a@@55 (MapType1Store (MapType0Select h@@13 a@@55) (IndexField i@@17) ($Box v@@32))) a@@55) (|Seq#Update| (|Seq#FromArray| h@@13 a@@55) i@@17 v@@32)))
 :qid |DafnyPreludebpl.1130:15|
 :skolemid |260|
 :pattern ( (|Seq#FromArray| (MapType0Store h@@13 a@@55 (MapType1Store (MapType0Select h@@13 a@@55) (IndexField i@@17) ($Box v@@32))) a@@55))
)))
(assert (forall ((r@@3 T@U) ) (! (U_2_bool (MapType0Select (|Set#Singleton| r@@3) r@@3))
 :qid |DafnyPreludebpl.678:18|
 :skolemid |127|
 :pattern ( (|Set#Singleton| r@@3))
)))
(assert (forall ((x@@28 Int) (y@@11 Int) ) (! (= (INTERNAL_lt_boogie x@@28 y@@11) (< x@@28 y@@11))
 :qid |DafnyPreludebpl.1461:51|
 :skolemid |337|
 :pattern ( (INTERNAL_lt_boogie x@@28 y@@11))
)))
(assert (forall ((x@@29 Int) (y@@12 Int) ) (! (= (INTERNAL_gt_boogie x@@29 y@@12) (> x@@29 y@@12))
 :qid |DafnyPreludebpl.1463:51|
 :skolemid |339|
 :pattern ( (INTERNAL_gt_boogie x@@29 y@@12))
)))
(assert (forall ((arg0@@98 T@U) (arg1@@48 T@U) ) (! (let ((V@@40 (MapTypeInv1 (type arg0@@98))))
(let ((U@@40 (MapTypeInv0 (type arg0@@98))))
 (=> (and (= (type arg0@@98) (MapType U@@40 V@@40)) (= (type arg1@@48) (MapType U@@40 V@@40))) (= (type (|Map#Merge| arg0@@98 arg1@@48)) (MapType U@@40 V@@40)))))
 :qid |funType:Map#Merge|
 :pattern ( (|Map#Merge| arg0@@98 arg1@@48))
)))
(assert (forall ((m@@28 T@U) (n@@13 T@U) (u@@13 T@U) ) (! (let ((V@@41 (MapTypeInv1 (type m@@28))))
(let ((U@@41 (type u@@13)))
 (=> (and (and (= (type m@@28) (MapType U@@41 V@@41)) (= (type n@@13) (MapType U@@41 V@@41))) (U_2_bool (MapType0Select (|Map#Domain| (|Map#Merge| m@@28 n@@13)) u@@13))) (and (=> (not (U_2_bool (MapType0Select (|Map#Domain| n@@13) u@@13))) (= (MapType0Select (|Map#Elements| (|Map#Merge| m@@28 n@@13)) u@@13) (MapType0Select (|Map#Elements| m@@28) u@@13))) (=> (U_2_bool (MapType0Select (|Map#Domain| n@@13) u@@13)) (= (MapType0Select (|Map#Elements| (|Map#Merge| m@@28 n@@13)) u@@13) (MapType0Select (|Map#Elements| n@@13) u@@13)))))))
 :qid |DafnyPreludebpl.1296:21|
 :skolemid |297|
 :pattern ( (MapType0Select (|Map#Elements| (|Map#Merge| m@@28 n@@13)) u@@13))
)))
(assert (forall ((arg0@@99 T@U) (arg1@@49 T@U) ) (! (let ((V@@42 (IMapTypeInv1 (type arg0@@99))))
(let ((U@@42 (IMapTypeInv0 (type arg0@@99))))
 (=> (and (= (type arg0@@99) (IMapType U@@42 V@@42)) (= (type arg1@@49) (IMapType U@@42 V@@42))) (= (type (|IMap#Merge| arg0@@99 arg1@@49)) (IMapType U@@42 V@@42)))))
 :qid |funType:IMap#Merge|
 :pattern ( (|IMap#Merge| arg0@@99 arg1@@49))
)))
(assert (forall ((m@@29 T@U) (n@@14 T@U) (u@@14 T@U) ) (! (let ((V@@43 (IMapTypeInv1 (type m@@29))))
(let ((U@@43 (type u@@14)))
 (=> (and (and (= (type m@@29) (IMapType U@@43 V@@43)) (= (type n@@14) (IMapType U@@43 V@@43))) (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Merge| m@@29 n@@14)) u@@14))) (and (=> (not (U_2_bool (MapType0Select (|IMap#Domain| n@@14) u@@14))) (= (MapType0Select (|IMap#Elements| (|IMap#Merge| m@@29 n@@14)) u@@14) (MapType0Select (|IMap#Elements| m@@29) u@@14))) (=> (U_2_bool (MapType0Select (|IMap#Domain| n@@14) u@@14)) (= (MapType0Select (|IMap#Elements| (|IMap#Merge| m@@29 n@@14)) u@@14) (MapType0Select (|IMap#Elements| n@@14) u@@14)))))))
 :qid |DafnyPreludebpl.1437:21|
 :skolemid |329|
 :pattern ( (MapType0Select (|IMap#Elements| (|IMap#Merge| m@@29 n@@14)) u@@14))
)))
(assert (forall ((s@@29 T@U) (i@@18 Int) (v@@33 T@U) (x@@30 T@U) ) (! (let ((T@@112 (type v@@33)))
 (=> (and (and (= (type s@@29) (SeqType T@@112)) (= (type x@@30) T@@112)) (and (<= 0 i@@18) (< i@@18 (|Seq#Length| s@@29)))) (= (U_2_int (MapType0Select (|MultiSet#FromSeq| (|Seq#Update| s@@29 i@@18 v@@33)) x@@30)) (U_2_int (MapType0Select (|MultiSet#Union| (|MultiSet#Difference| (|MultiSet#FromSeq| s@@29) (|MultiSet#Singleton| (|Seq#Index| s@@29 i@@18))) (|MultiSet#Singleton| v@@33)) x@@30)))))
 :qid |DafnyPreludebpl.952:18|
 :skolemid |218|
 :pattern ( (MapType0Select (|MultiSet#FromSeq| (|Seq#Update| s@@29 i@@18 v@@33)) x@@30))
)))
(assert (forall ((a@@56 T@U) (b@@40 T@U) ) (! (let ((T@@113 (MapType0TypeInv0 (type a@@56))))
 (=> (and (= (type a@@56) (MapType0Type T@@113 boolType)) (= (type b@@40) (MapType0Type T@@113 boolType))) (= (|Set#Union| a@@56 (|Set#Union| a@@56 b@@40)) (|Set#Union| a@@56 b@@40))))
 :qid |DafnyPreludebpl.716:18|
 :skolemid |141|
 :pattern ( (|Set#Union| a@@56 (|Set#Union| a@@56 b@@40)))
)))
(assert (forall ((a@@57 T@U) (b@@41 T@U) ) (! (let ((T@@114 (MapType0TypeInv0 (type a@@57))))
 (=> (and (= (type a@@57) (MapType0Type T@@114 boolType)) (= (type b@@41) (MapType0Type T@@114 boolType))) (= (|Set#Intersection| a@@57 (|Set#Intersection| a@@57 b@@41)) (|Set#Intersection| a@@57 b@@41))))
 :qid |DafnyPreludebpl.720:18|
 :skolemid |143|
 :pattern ( (|Set#Intersection| a@@57 (|Set#Intersection| a@@57 b@@41)))
)))
(assert (forall ((a@@58 T@U) (b@@42 T@U) ) (! (let ((T@@115 (MapType0TypeInv0 (type a@@58))))
 (=> (and (= (type a@@58) (MapType0Type T@@115 boolType)) (= (type b@@42) (MapType0Type T@@115 boolType))) (= (|ISet#Union| a@@58 (|ISet#Union| a@@58 b@@42)) (|ISet#Union| a@@58 b@@42))))
 :qid |DafnyPreludebpl.794:18|
 :skolemid |165|
 :pattern ( (|ISet#Union| a@@58 (|ISet#Union| a@@58 b@@42)))
)))
(assert (forall ((a@@59 T@U) (b@@43 T@U) ) (! (let ((T@@116 (MapType0TypeInv0 (type a@@59))))
 (=> (and (= (type a@@59) (MapType0Type T@@116 boolType)) (= (type b@@43) (MapType0Type T@@116 boolType))) (= (|ISet#Intersection| a@@59 (|ISet#Intersection| a@@59 b@@43)) (|ISet#Intersection| a@@59 b@@43))))
 :qid |DafnyPreludebpl.798:18|
 :skolemid |167|
 :pattern ( (|ISet#Intersection| a@@59 (|ISet#Intersection| a@@59 b@@43)))
)))
(assert (forall ((a@@60 T@U) (b@@44 T@U) ) (! (let ((T@@117 (MapType0TypeInv0 (type a@@60))))
 (=> (and (= (type a@@60) (MapType0Type T@@117 intType)) (= (type b@@44) (MapType0Type T@@117 intType))) (= (|MultiSet#Intersection| a@@60 (|MultiSet#Intersection| a@@60 b@@44)) (|MultiSet#Intersection| a@@60 b@@44))))
 :qid |DafnyPreludebpl.890:18|
 :skolemid |200|
 :pattern ( (|MultiSet#Intersection| a@@60 (|MultiSet#Intersection| a@@60 b@@44)))
)))
(assert (forall ((m@@30 T@U) (u@@15 T@U) (|u'| T@U) (v@@34 T@U) ) (! (let ((V@@44 (type v@@34)))
(let ((U@@44 (type u@@15)))
 (=> (and (= (type m@@30) (MapType U@@44 V@@44)) (= (type |u'|) U@@44)) (and (=> (= |u'| u@@15) (and (U_2_bool (MapType0Select (|Map#Domain| (|Map#Build| m@@30 u@@15 v@@34)) |u'|)) (= (MapType0Select (|Map#Elements| (|Map#Build| m@@30 u@@15 v@@34)) |u'|) v@@34))) (=> (not (= |u'| u@@15)) (and (= (U_2_bool (MapType0Select (|Map#Domain| (|Map#Build| m@@30 u@@15 v@@34)) |u'|)) (U_2_bool (MapType0Select (|Map#Domain| m@@30) |u'|))) (= (MapType0Select (|Map#Elements| (|Map#Build| m@@30 u@@15 v@@34)) |u'|) (MapType0Select (|Map#Elements| m@@30) |u'|))))))))
 :qid |DafnyPreludebpl.1280:21|
 :skolemid |293|
 :pattern ( (MapType0Select (|Map#Domain| (|Map#Build| m@@30 u@@15 v@@34)) |u'|))
 :pattern ( (MapType0Select (|Map#Elements| (|Map#Build| m@@30 u@@15 v@@34)) |u'|))
)))
(assert (forall ((arg0@@100 T@U) (arg1@@50 T@U) (arg2@@7 T@U) ) (! (let ((V@@45 (type arg2@@7)))
(let ((U@@45 (type arg1@@50)))
 (=> (and (and (= (type arg0@@100) (IMapType U@@45 V@@45)) (= (type arg1@@50) U@@45)) (= (type arg2@@7) V@@45)) (= (type (|IMap#Build| arg0@@100 arg1@@50 arg2@@7)) (IMapType U@@45 V@@45)))))
 :qid |funType:IMap#Build|
 :pattern ( (|IMap#Build| arg0@@100 arg1@@50 arg2@@7))
)))
(assert (forall ((m@@31 T@U) (u@@16 T@U) (|u'@@0| T@U) (v@@35 T@U) ) (! (let ((V@@46 (type v@@35)))
(let ((U@@46 (type u@@16)))
 (=> (and (= (type m@@31) (IMapType U@@46 V@@46)) (= (type |u'@@0|) U@@46)) (and (=> (= |u'@@0| u@@16) (and (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Build| m@@31 u@@16 v@@35)) |u'@@0|)) (= (MapType0Select (|IMap#Elements| (|IMap#Build| m@@31 u@@16 v@@35)) |u'@@0|) v@@35))) (=> (not (= |u'@@0| u@@16)) (and (= (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Build| m@@31 u@@16 v@@35)) |u'@@0|)) (U_2_bool (MapType0Select (|IMap#Domain| m@@31) |u'@@0|))) (= (MapType0Select (|IMap#Elements| (|IMap#Build| m@@31 u@@16 v@@35)) |u'@@0|) (MapType0Select (|IMap#Elements| m@@31) |u'@@0|))))))))
 :qid |DafnyPreludebpl.1414:21|
 :skolemid |323|
 :pattern ( (MapType0Select (|IMap#Domain| (|IMap#Build| m@@31 u@@16 v@@35)) |u'@@0|))
 :pattern ( (MapType0Select (|IMap#Elements| (|IMap#Build| m@@31 u@@16 v@@35)) |u'@@0|))
)))
(assert (forall ((arg0@@101 T@U) ) (!  (=> (= (type arg0@@101) LayerTypeType) (= (type ($LS arg0@@101)) LayerTypeType))
 :qid |funType:$LS|
 :pattern ( ($LS arg0@@101))
)))
(assert (forall ((f@@2 T@U) (ly@@0 T@U) ) (! (let ((A@@1 (MapType0TypeInv1 (type f@@2))))
 (=> (and (= (type f@@2) (MapType0Type LayerTypeType A@@1)) (= (type ly@@0) LayerTypeType)) (= (AtLayer f@@2 ($LS ly@@0)) (AtLayer f@@2 ly@@0))))
 :qid |DafnyPreludebpl.506:18|
 :skolemid |101|
 :pattern ( (AtLayer f@@2 ($LS ly@@0)))
)))
(assert (forall ((n@@15 Int) ) (!  (=> (and (<= 0 n@@15) (< n@@15 65536)) (= (|char#ToInt| (|char#FromInt| n@@15)) n@@15))
 :qid |DafnyPreludebpl.132:17|
 :skolemid |21|
 :pattern ( (|char#FromInt| n@@15))
)))
(assert (forall ((bx@@16 T@U) (s@@30 T@U) (t@@25 T@U) ) (!  (=> (and (and (and (= (type bx@@16) BoxType) (= (type s@@30) TyType)) (= (type t@@25) TyType)) ($IsBox bx@@16 (TMap s@@30 t@@25))) (and (= ($Box ($Unbox (MapType BoxType BoxType) bx@@16)) bx@@16) ($Is ($Unbox (MapType BoxType BoxType) bx@@16) (TMap s@@30 t@@25))))
 :qid |DafnyPreludebpl.210:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@16 (TMap s@@30 t@@25)))
)))
(assert (forall ((bx@@17 T@U) (s@@31 T@U) (t@@26 T@U) ) (!  (=> (and (and (and (= (type bx@@17) BoxType) (= (type s@@31) TyType)) (= (type t@@26) TyType)) ($IsBox bx@@17 (TIMap s@@31 t@@26))) (and (= ($Box ($Unbox (IMapType BoxType BoxType) bx@@17)) bx@@17) ($Is ($Unbox (IMapType BoxType BoxType) bx@@17) (TIMap s@@31 t@@26))))
 :qid |DafnyPreludebpl.213:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@17 (TIMap s@@31 t@@26)))
)))
(assert (forall ((a@@61 T@U) (b@@45 T@U) ) (! (let ((T@@118 (MapType0TypeInv0 (type a@@61))))
 (=> (and (= (type a@@61) (MapType0Type T@@118 intType)) (= (type b@@45) (MapType0Type T@@118 intType))) (= (|MultiSet#Disjoint| a@@61 b@@45) (forall ((o@@29 T@U) ) (!  (=> (= (type o@@29) T@@118) (or (= (U_2_int (MapType0Select a@@61 o@@29)) 0) (= (U_2_int (MapType0Select b@@45 o@@29)) 0)))
 :qid |DafnyPreludebpl.920:39|
 :skolemid |209|
 :pattern ( (MapType0Select a@@61 o@@29))
 :pattern ( (MapType0Select b@@45 o@@29))
)))))
 :qid |DafnyPreludebpl.919:18|
 :skolemid |210|
 :pattern ( (|MultiSet#Disjoint| a@@61 b@@45))
)))
(assert (forall ((T@@119 T@T) ) (! (= (type (|Set#Empty| T@@119)) (MapType0Type T@@119 boolType))
 :qid |funType:Set#Empty|
 :pattern ( (|Set#Empty| T@@119))
)))
(assert (forall ((o@@30 T@U) ) (! (let ((T@@120 (type o@@30)))
 (not (U_2_bool (MapType0Select (|Set#Empty| T@@120) o@@30))))
 :qid |DafnyPreludebpl.669:18|
 :skolemid |124|
 :pattern ( (let ((T@@120 (type o@@30)))
(MapType0Select (|Set#Empty| T@@120) o@@30)))
)))
(assert (forall ((o@@31 T@U) ) (! (let ((T@@121 (type o@@31)))
 (not (U_2_bool (MapType0Select (|ISet#Empty| T@@121) o@@31))))
 :qid |DafnyPreludebpl.762:18|
 :skolemid |155|
 :pattern ( (let ((T@@121 (type o@@31)))
(MapType0Select (|ISet#Empty| T@@121) o@@31)))
)))
(assert (forall ((h0 T@U) (h1 T@U) (a@@62 T@U) ) (!  (=> (and (and (= (type h0) (MapType0Type refType (MapType1Type BoxType))) (= (type h1) (MapType0Type refType (MapType1Type BoxType)))) (= (type a@@62) refType)) (=> (and (and (and ($IsGoodHeap h0) ($IsGoodHeap h1)) ($HeapSucc h0 h1)) (= (MapType0Select h0 a@@62) (MapType0Select h1 a@@62))) (= (|Seq#FromArray| h0 a@@62) (|Seq#FromArray| h1 a@@62))))
 :qid |DafnyPreludebpl.1125:15|
 :skolemid |259|
 :pattern ( (|Seq#FromArray| h1 a@@62) ($HeapSucc h0 h1))
)))
(assert (forall ((s@@32 T@U) (i@@19 Int) (v@@36 T@U) ) (! (let ((T@@122 (type v@@36)))
 (=> (= (type s@@32) (SeqType T@@122)) (=> (and (<= 0 i@@19) (< i@@19 (|Seq#Length| s@@32))) (= (|Seq#Length| (|Seq#Update| s@@32 i@@19 v@@36)) (|Seq#Length| s@@32)))))
 :qid |DafnyPreludebpl.1027:18|
 :skolemid |234|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@32 i@@19 v@@36)))
)))
(assert (forall ((x@@31 Int) (y@@13 Int) ) (! (= (INTERNAL_mod_boogie x@@31 y@@13) (mod x@@31 y@@13))
 :qid |DafnyPreludebpl.1460:30|
 :skolemid |336|
 :pattern ( (INTERNAL_mod_boogie x@@31 y@@13))
)))
(assert (forall ((x@@32 Int) (y@@14 Int) ) (! (= (Mod x@@32 y@@14) (mod x@@32 y@@14))
 :qid |DafnyPreludebpl.1468:14|
 :skolemid |343|
 :pattern ( (Mod x@@32 y@@14))
)))
(assert (forall ((a@@63 T@U) (b@@46 T@U) (t0@@10 T@U) (t1@@3 T@U) ) (!  (=> (and (and (and (and (= (type a@@63) (MapType0Type BoxType boolType)) (= (type b@@46) (MapType0Type BoxType BoxType))) (= (type t0@@10) TyType)) (= (type t1@@3) TyType)) (forall ((bx@@18 T@U) ) (!  (=> (and (= (type bx@@18) BoxType) (U_2_bool (MapType0Select a@@63 bx@@18))) (and ($IsBox bx@@18 t0@@10) ($IsBox (MapType0Select b@@46 bx@@18) t1@@3)))
 :qid |DafnyPreludebpl.1269:11|
 :skolemid |291|
 :no-pattern (type bx@@18)
 :no-pattern (U_2_int bx@@18)
 :no-pattern (U_2_bool bx@@18)
))) ($Is (|Map#Glue| a@@63 b@@46 (TMap t0@@10 t1@@3)) (TMap t0@@10 t1@@3)))
 :qid |DafnyPreludebpl.1266:15|
 :skolemid |292|
 :pattern ( (|Map#Glue| a@@63 b@@46 (TMap t0@@10 t1@@3)))
)))
(assert (forall ((a@@64 T@U) (b@@47 T@U) (t0@@11 T@U) (t1@@4 T@U) ) (!  (=> (and (and (and (and (= (type a@@64) (MapType0Type BoxType boolType)) (= (type b@@47) (MapType0Type BoxType BoxType))) (= (type t0@@11) TyType)) (= (type t1@@4) TyType)) (forall ((bx@@19 T@U) ) (!  (=> (and (= (type bx@@19) BoxType) (U_2_bool (MapType0Select a@@64 bx@@19))) (and ($IsBox bx@@19 t0@@11) ($IsBox (MapType0Select b@@47 bx@@19) t1@@4)))
 :qid |DafnyPreludebpl.1404:11|
 :skolemid |321|
 :no-pattern (type bx@@19)
 :no-pattern (U_2_int bx@@19)
 :no-pattern (U_2_bool bx@@19)
))) ($Is (|Map#Glue| a@@64 b@@47 (TIMap t0@@11 t1@@4)) (TIMap t0@@11 t1@@4)))
 :qid |DafnyPreludebpl.1401:15|
 :skolemid |322|
 :pattern ( (|IMap#Glue| a@@64 b@@47 (TIMap t0@@11 t1@@4)))
)))
(assert (forall ((h@@14 T@U) (a@@65 T@U) ) (!  (=> (and (= (type h@@14) (MapType0Type refType (MapType1Type BoxType))) (= (type a@@65) refType)) (= (|Seq#Length| (|Seq#FromArray| h@@14 a@@65)) (_System.array.Length a@@65)))
 :qid |DafnyPreludebpl.1110:15|
 :skolemid |256|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@14 a@@65)))
)))
(assert  (and (and (forall ((arg0@@102 T@U) (arg1@@51 T@U) ) (!  (=> (and (= (type arg0@@102) ClassNameType) (= (type arg1@@51) ClassNameType)) (= (type (TypeTuple arg0@@102 arg1@@51)) ClassNameType))
 :qid |funType:TypeTuple|
 :pattern ( (TypeTuple arg0@@102 arg1@@51))
)) (forall ((arg0@@103 T@U) ) (!  (=> (= (type arg0@@103) ClassNameType) (= (type (TypeTupleCar arg0@@103)) ClassNameType))
 :qid |funType:TypeTupleCar|
 :pattern ( (TypeTupleCar arg0@@103))
))) (forall ((arg0@@104 T@U) ) (!  (=> (= (type arg0@@104) ClassNameType) (= (type (TypeTupleCdr arg0@@104)) ClassNameType))
 :qid |funType:TypeTupleCdr|
 :pattern ( (TypeTupleCdr arg0@@104))
))))
(assert (forall ((a@@66 T@U) (b@@48 T@U) ) (!  (=> (and (= (type a@@66) ClassNameType) (= (type b@@48) ClassNameType)) (and (= (TypeTupleCar (TypeTuple a@@66 b@@48)) a@@66) (= (TypeTupleCdr (TypeTuple a@@66 b@@48)) b@@48)))
 :qid |DafnyPreludebpl.365:15|
 :skolemid |80|
 :pattern ( (TypeTuple a@@66 b@@48))
)))
(assert (forall ((arg0@@105 T@U) ) (! (let ((T@@123 (FieldTypeInv0 (type arg0@@105))))
 (=> (= (type arg0@@105) (FieldType T@@123)) (= (type (MultiIndexField_Inverse0 arg0@@105)) (FieldType T@@123))))
 :qid |funType:MultiIndexField_Inverse0|
 :pattern ( (MultiIndexField_Inverse0 arg0@@105))
)))
(assert (forall ((f@@3 T@U) (i@@20 Int) ) (!  (=> (= (type f@@3) (FieldType BoxType)) (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@3 i@@20)) f@@3) (= (MultiIndexField_Inverse1 (MultiIndexField f@@3 i@@20)) i@@20)))
 :qid |DafnyPreludebpl.527:15|
 :skolemid |105|
 :pattern ( (MultiIndexField f@@3 i@@20))
)))
(assert  (and (forall ((arg0@@106 T@U) ) (! (let ((T@@124 (SeqTypeInv0 (type arg0@@106))))
 (=> (= (type arg0@@106) (SeqType T@@124)) (= (type (|Seq#Build_inv0| arg0@@106)) (SeqType T@@124))))
 :qid |funType:Seq#Build_inv0|
 :pattern ( (|Seq#Build_inv0| arg0@@106))
)) (forall ((arg0@@107 T@U) ) (! (let ((T@@125 (SeqTypeInv0 (type arg0@@107))))
 (=> (= (type arg0@@107) (SeqType T@@125)) (= (type (|Seq#Build_inv1| arg0@@107)) T@@125)))
 :qid |funType:Seq#Build_inv1|
 :pattern ( (|Seq#Build_inv1| arg0@@107))
))))
(assert (forall ((s@@33 T@U) (val@@5 T@U) ) (! (let ((T@@126 (type val@@5)))
 (=> (= (type s@@33) (SeqType T@@126)) (and (= (|Seq#Build_inv0| (|Seq#Build| s@@33 val@@5)) s@@33) (= (|Seq#Build_inv1| (|Seq#Build| s@@33 val@@5)) val@@5))))
 :qid |DafnyPreludebpl.990:18|
 :skolemid |225|
 :pattern ( (|Seq#Build| s@@33 val@@5))
)))
(assert (forall ((m@@32 T@U) (|m'@@2| T@U) ) (! (let ((V@@47 (MapTypeInv1 (type m@@32))))
(let ((U@@47 (MapTypeInv0 (type m@@32))))
 (=> (and (= (type m@@32) (MapType U@@47 V@@47)) (= (type |m'@@2|) (MapType U@@47 V@@47))) (= (|Map#Equal| m@@32 |m'@@2|)  (and (forall ((u@@17 T@U) ) (!  (=> (= (type u@@17) U@@47) (= (U_2_bool (MapType0Select (|Map#Domain| m@@32) u@@17)) (U_2_bool (MapType0Select (|Map#Domain| |m'@@2|) u@@17))))
 :qid |DafnyPreludebpl.1315:35|
 :skolemid |300|
 :no-pattern (type u@@17)
 :no-pattern (U_2_int u@@17)
 :no-pattern (U_2_bool u@@17)
)) (forall ((u@@18 T@U) ) (!  (=> (and (= (type u@@18) U@@47) (U_2_bool (MapType0Select (|Map#Domain| m@@32) u@@18))) (= (MapType0Select (|Map#Elements| m@@32) u@@18) (MapType0Select (|Map#Elements| |m'@@2|) u@@18)))
 :qid |DafnyPreludebpl.1316:35|
 :skolemid |301|
 :no-pattern (type u@@18)
 :no-pattern (U_2_int u@@18)
 :no-pattern (U_2_bool u@@18)
)))))))
 :qid |DafnyPreludebpl.1313:21|
 :skolemid |302|
 :pattern ( (|Map#Equal| m@@32 |m'@@2|))
)))
(assert (forall ((m@@33 T@U) (|m'@@3| T@U) ) (! (let ((V@@48 (IMapTypeInv1 (type m@@33))))
(let ((U@@48 (IMapTypeInv0 (type m@@33))))
 (=> (and (= (type m@@33) (IMapType U@@48 V@@48)) (= (type |m'@@3|) (IMapType U@@48 V@@48))) (= (|IMap#Equal| m@@33 |m'@@3|)  (and (forall ((u@@19 T@U) ) (!  (=> (= (type u@@19) U@@48) (= (U_2_bool (MapType0Select (|IMap#Domain| m@@33) u@@19)) (U_2_bool (MapType0Select (|IMap#Domain| |m'@@3|) u@@19))))
 :qid |DafnyPreludebpl.1425:36|
 :skolemid |324|
 :no-pattern (type u@@19)
 :no-pattern (U_2_int u@@19)
 :no-pattern (U_2_bool u@@19)
)) (forall ((u@@20 T@U) ) (!  (=> (and (= (type u@@20) U@@48) (U_2_bool (MapType0Select (|IMap#Domain| m@@33) u@@20))) (= (MapType0Select (|IMap#Elements| m@@33) u@@20) (MapType0Select (|IMap#Elements| |m'@@3|) u@@20)))
 :qid |DafnyPreludebpl.1426:35|
 :skolemid |325|
 :no-pattern (type u@@20)
 :no-pattern (U_2_int u@@20)
 :no-pattern (U_2_bool u@@20)
)))))))
 :qid |DafnyPreludebpl.1423:21|
 :skolemid |326|
 :pattern ( (|IMap#Equal| m@@33 |m'@@3|))
)))
(assert (forall ((o@@32 T@U) (m@@34 Int) (n@@16 Int) ) (!  (=> (= (type o@@32) BoxType) (=> (and (<= 0 m@@34) (<= 0 n@@16)) (= (|ORD#Plus| (|ORD#Plus| o@@32 (|ORD#FromNat| m@@34)) (|ORD#FromNat| n@@16)) (|ORD#Plus| o@@32 (|ORD#FromNat| (+ m@@34 n@@16))))))
 :qid |DafnyPreludebpl.465:15|
 :skolemid |96|
 :pattern ( (|ORD#Plus| (|ORD#Plus| o@@32 (|ORD#FromNat| m@@34)) (|ORD#FromNat| n@@16)))
)))
(assert (forall ((x@@33 Int) (y@@15 Int) ) (! (= (INTERNAL_le_boogie x@@33 y@@15) (<= x@@33 y@@15))
 :qid |DafnyPreludebpl.1462:51|
 :skolemid |338|
 :pattern ( (INTERNAL_le_boogie x@@33 y@@15))
)))
(assert (forall ((x@@34 Int) (y@@16 Int) ) (! (= (INTERNAL_ge_boogie x@@34 y@@16) (>= x@@34 y@@16))
 :qid |DafnyPreludebpl.1464:51|
 :skolemid |340|
 :pattern ( (INTERNAL_ge_boogie x@@34 y@@16))
)))
(assert (forall ((x@@35 Int) (y@@17 Int) ) (! (= (INTERNAL_sub_boogie x@@35 y@@17) (- x@@35 y@@17))
 :qid |DafnyPreludebpl.1457:30|
 :skolemid |333|
 :pattern ( (INTERNAL_sub_boogie x@@35 y@@17))
)))
(assert (forall ((x@@36 Int) (y@@18 Int) ) (! (= (Sub x@@36 y@@18) (- x@@36 y@@18))
 :qid |DafnyPreludebpl.1470:14|
 :skolemid |345|
 :pattern ( (Sub x@@36 y@@18))
)))
(assert (forall ((x@@37 Int) (y@@19 Int) ) (! (= (INTERNAL_add_boogie x@@37 y@@19) (+ x@@37 y@@19))
 :qid |DafnyPreludebpl.1456:30|
 :skolemid |332|
 :pattern ( (INTERNAL_add_boogie x@@37 y@@19))
)))
(assert (forall ((x@@38 Int) (y@@20 Int) ) (! (= (Add x@@38 y@@20) (+ x@@38 y@@20))
 :qid |DafnyPreludebpl.1469:14|
 :skolemid |344|
 :pattern ( (Add x@@38 y@@20))
)))
(assert (forall ((x@@39 Int) (y@@21 Int) ) (! (= (INTERNAL_mul_boogie x@@39 y@@21) (* x@@39 y@@21))
 :qid |DafnyPreludebpl.1458:30|
 :skolemid |334|
 :pattern ( (INTERNAL_mul_boogie x@@39 y@@21))
)))
(assert (forall ((x@@40 Int) (y@@22 Int) ) (! (= (Mul x@@40 y@@22) (* x@@40 y@@22))
 :qid |DafnyPreludebpl.1466:14|
 :skolemid |341|
 :pattern ( (Mul x@@40 y@@22))
)))
(assert (forall ((d T@U) ) (!  (=> (= (type d) DatatypeTypeType) (= (BoxRank ($Box d)) (DtRank d)))
 :qid |DafnyPreludebpl.395:15|
 :skolemid |83|
 :pattern ( (BoxRank ($Box d)))
)))
(assert (forall ((r@@4 T@U) ) (! (let ((T@@127 (type r@@4)))
(= (|MultiSet#Singleton| r@@4) (|MultiSet#UnionOne| (|MultiSet#Empty| T@@127) r@@4)))
 :qid |DafnyPreludebpl.857:18|
 :skolemid |190|
 :pattern ( (|MultiSet#Singleton| r@@4))
)))
(assert (forall ((s@@34 T@U) ) (! (let ((T@@128 (MapType0TypeInv0 (type s@@34))))
 (=> (= (type s@@34) (MapType0Type T@@128 boolType)) (= (|MultiSet#Card| (|MultiSet#FromSet| s@@34)) (|Set#Card| s@@34))))
 :qid |DafnyPreludebpl.927:18|
 :skolemid |212|
 :pattern ( (|MultiSet#Card| (|MultiSet#FromSet| s@@34)))
)))
(assert (forall ((s@@35 T@U) ) (! (let ((T@@129 (SeqTypeInv0 (type s@@35))))
 (=> (= (type s@@35) (SeqType T@@129)) (= (|MultiSet#Card| (|MultiSet#FromSeq| s@@35)) (|Seq#Length| s@@35))))
 :qid |DafnyPreludebpl.937:18|
 :skolemid |215|
 :pattern ( (|MultiSet#Card| (|MultiSet#FromSeq| s@@35)))
)))
(assert (forall ((m@@35 T@U) ) (! (let ((V@@49 (MapTypeInv1 (type m@@35))))
(let ((U@@49 (MapTypeInv0 (type m@@35))))
 (=> (= (type m@@35) (MapType U@@49 V@@49)) (= (|Set#Card| (|Map#Domain| m@@35)) (|Map#Card| m@@35)))))
 :qid |DafnyPreludebpl.1209:21|
 :skolemid |282|
 :pattern ( (|Set#Card| (|Map#Domain| m@@35)))
 :pattern ( (|Map#Card| m@@35))
)))
(assert (forall ((m@@36 T@U) ) (! (let ((V@@50 (MapTypeInv1 (type m@@36))))
(let ((U@@50 (MapTypeInv0 (type m@@36))))
 (=> (= (type m@@36) (MapType U@@50 V@@50)) (= (|Set#Card| (|Map#Items| m@@36)) (|Map#Card| m@@36)))))
 :qid |DafnyPreludebpl.1215:21|
 :skolemid |284|
 :pattern ( (|Set#Card| (|Map#Items| m@@36)))
 :pattern ( (|Map#Card| m@@36))
)))
(assert (forall ((m@@37 T@U) ) (! (let ((V@@51 (MapTypeInv1 (type m@@37))))
(let ((U@@51 (MapTypeInv0 (type m@@37))))
 (=> (= (type m@@37) (MapType U@@51 V@@51)) (<= (|Set#Card| (|Map#Values| m@@37)) (|Map#Card| m@@37)))))
 :qid |DafnyPreludebpl.1212:21|
 :skolemid |283|
 :pattern ( (|Set#Card| (|Map#Values| m@@37)))
 :pattern ( (|Map#Card| m@@37))
)))
(assert (forall ((s@@36 T@U) (n@@17 Int) (x@@41 T@U) ) (! (let ((T@@130 (type x@@41)))
 (=> (= (type s@@36) (SeqType T@@130)) (= (|Seq#Contains| (|Seq#Drop| s@@36 n@@17) x@@41) (exists ((i@@21 Int) ) (!  (and (and (and (<= 0 n@@17) (<= n@@17 i@@21)) (< i@@21 (|Seq#Length| s@@36))) (= (|Seq#Index| s@@36 i@@21) x@@41))
 :qid |DafnyPreludebpl.1059:13|
 :skolemid |243|
 :pattern ( (|Seq#Index| s@@36 i@@21))
)))))
 :qid |DafnyPreludebpl.1056:18|
 :skolemid |244|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@36 n@@17) x@@41))
)))
(assert (forall ((a@@67 Int) (b@@49 Int) ) (! (= (<= a@@67 b@@49) (= (|Math#min| a@@67 b@@49) a@@67))
 :qid |DafnyPreludebpl.827:15|
 :skolemid |177|
 :pattern ( (|Math#min| a@@67 b@@49))
)))
(assert (forall ((a@@68 Int) (b@@50 Int) ) (! (= (<= b@@50 a@@68) (= (|Math#min| a@@68 b@@50) b@@50))
 :qid |DafnyPreludebpl.828:15|
 :skolemid |178|
 :pattern ( (|Math#min| a@@68 b@@50))
)))
(assert (forall ((o@@33 T@U) (m@@38 Int) (n@@18 Int) ) (!  (=> (= (type o@@33) BoxType) (=> (and (and (<= 0 m@@38) (<= 0 n@@18)) (<= n@@18 (+ (|ORD#Offset| o@@33) m@@38))) (and (=> (<= 0 (- m@@38 n@@18)) (= (|ORD#Minus| (|ORD#Plus| o@@33 (|ORD#FromNat| m@@38)) (|ORD#FromNat| n@@18)) (|ORD#Plus| o@@33 (|ORD#FromNat| (- m@@38 n@@18))))) (=> (<= (- m@@38 n@@18) 0) (= (|ORD#Minus| (|ORD#Plus| o@@33 (|ORD#FromNat| m@@38)) (|ORD#FromNat| n@@18)) (|ORD#Minus| o@@33 (|ORD#FromNat| (- n@@18 m@@38))))))))
 :qid |DafnyPreludebpl.475:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Plus| o@@33 (|ORD#FromNat| m@@38)) (|ORD#FromNat| n@@18)))
)))
(assert (forall ((o@@34 T@U) (m@@39 Int) (n@@19 Int) ) (!  (=> (= (type o@@34) BoxType) (=> (and (and (<= 0 m@@39) (<= 0 n@@19)) (<= n@@19 (+ (|ORD#Offset| o@@34) m@@39))) (and (=> (<= 0 (- m@@39 n@@19)) (= (|ORD#Plus| (|ORD#Minus| o@@34 (|ORD#FromNat| m@@39)) (|ORD#FromNat| n@@19)) (|ORD#Minus| o@@34 (|ORD#FromNat| (- m@@39 n@@19))))) (=> (<= (- m@@39 n@@19) 0) (= (|ORD#Plus| (|ORD#Minus| o@@34 (|ORD#FromNat| m@@39)) (|ORD#FromNat| n@@19)) (|ORD#Plus| o@@34 (|ORD#FromNat| (- n@@19 m@@39))))))))
 :qid |DafnyPreludebpl.481:15|
 :skolemid |99|
 :pattern ( (|ORD#Plus| (|ORD#Minus| o@@34 (|ORD#FromNat| m@@39)) (|ORD#FromNat| n@@19)))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> (and (= (type bx@@20) BoxType) ($IsBox bx@@20 (TBitvector 0))) (and (= ($Box ($Unbox intType bx@@20)) bx@@20) ($Is ($Unbox (MapType0Type BoxType boolType) bx@@20) (TBitvector 0))))
 :qid |DafnyPreludebpl.194:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@20 (TBitvector 0)))
)))
(assert (forall ((bx@@21 T@U) (t@@27 T@U) ) (!  (=> (and (and (= (type bx@@21) BoxType) (= (type t@@27) TyType)) ($IsBox bx@@21 (TSet t@@27))) (and (= ($Box ($Unbox (MapType0Type BoxType boolType) bx@@21)) bx@@21) ($Is ($Unbox (MapType0Type BoxType boolType) bx@@21) (TSet t@@27))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |31|
 :pattern ( ($IsBox bx@@21 (TSet t@@27)))
)))
(assert (forall ((bx@@22 T@U) (t@@28 T@U) ) (!  (=> (and (and (= (type bx@@22) BoxType) (= (type t@@28) TyType)) ($IsBox bx@@22 (TISet t@@28))) (and (= ($Box ($Unbox (MapType0Type BoxType boolType) bx@@22)) bx@@22) ($Is ($Unbox (MapType0Type BoxType boolType) bx@@22) (TISet t@@28))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@22 (TISet t@@28)))
)))
(assert (forall ((bx@@23 T@U) (t@@29 T@U) ) (!  (=> (and (and (= (type bx@@23) BoxType) (= (type t@@29) TyType)) ($IsBox bx@@23 (TMultiSet t@@29))) (and (= ($Box ($Unbox (MapType0Type BoxType intType) bx@@23)) bx@@23) ($Is ($Unbox (MapType0Type BoxType intType) bx@@23) (TMultiSet t@@29))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |33|
 :pattern ( ($IsBox bx@@23 (TMultiSet t@@29)))
)))
(assert (forall ((bx@@24 T@U) (t@@30 T@U) ) (!  (=> (and (and (= (type bx@@24) BoxType) (= (type t@@30) TyType)) ($IsBox bx@@24 (TSeq t@@30))) (and (= ($Box ($Unbox (SeqType BoxType) bx@@24)) bx@@24) ($Is ($Unbox (SeqType BoxType) bx@@24) (TSeq t@@30))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |34|
 :pattern ( ($IsBox bx@@24 (TSeq t@@30)))
)))
(assert (forall ((s@@37 T@U) (v@@37 T@U) ) (! (let ((T@@131 (type v@@37)))
 (=> (= (type s@@37) (SeqType T@@131)) (= (|MultiSet#FromSeq| (|Seq#Build| s@@37 v@@37)) (|MultiSet#UnionOne| (|MultiSet#FromSeq| s@@37) v@@37))))
 :qid |DafnyPreludebpl.941:18|
 :skolemid |216|
 :pattern ( (|MultiSet#FromSeq| (|Seq#Build| s@@37 v@@37)))
)))
(assert (forall ((m@@40 T@U) (s@@38 T@U) ) (! (let ((V@@52 (MapTypeInv1 (type m@@40))))
(let ((U@@52 (MapTypeInv0 (type m@@40))))
 (=> (and (= (type m@@40) (MapType U@@52 V@@52)) (= (type s@@38) (MapType0Type U@@52 boolType))) (= (|Map#Domain| (|Map#Subtract| m@@40 s@@38)) (|Set#Difference| (|Map#Domain| m@@40) s@@38)))))
 :qid |DafnyPreludebpl.1303:21|
 :skolemid |298|
 :pattern ( (|Map#Domain| (|Map#Subtract| m@@40 s@@38)))
)))
(assert (forall ((m@@41 T@U) (s@@39 T@U) ) (! (let ((V@@53 (IMapTypeInv1 (type m@@41))))
(let ((U@@53 (IMapTypeInv0 (type m@@41))))
 (=> (and (= (type m@@41) (IMapType U@@53 V@@53)) (= (type s@@39) (MapType0Type U@@53 boolType))) (= (|IMap#Domain| (|IMap#Subtract| m@@41 s@@39)) (|Set#Difference| (|IMap#Domain| m@@41) s@@39)))))
 :qid |DafnyPreludebpl.1444:21|
 :skolemid |330|
 :pattern ( (|IMap#Domain| (|IMap#Subtract| m@@41 s@@39)))
)))
(assert (forall ((ch T@U) ) (!  (=> (= (type ch) charType) (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 65536))))
 :qid |DafnyPreludebpl.138:17|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((o@@35 T@U) ) (!  (=> (and (= (type o@@35) BoxType) (|ORD#IsNat| o@@35)) (= o@@35 (|ORD#FromNat| (|ORD#Offset| o@@35))))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |86|
 :pattern ( (|ORD#Offset| o@@35))
 :pattern ( (|ORD#IsNat| o@@35))
)))
(assert (forall ((s@@40 T@U) ) (! (let ((T@@132 (MapType0TypeInv0 (type s@@40))))
 (=> (= (type s@@40) (MapType0Type T@@132 boolType)) (and (= (= (|Set#Card| s@@40) 0) (= s@@40 (|Set#Empty| T@@132))) (=> (not (= (|Set#Card| s@@40) 0)) (exists ((x@@42 T@U) ) (!  (and (= (type x@@42) T@@132) (U_2_bool (MapType0Select s@@40 x@@42)))
 :qid |DafnyPreludebpl.672:33|
 :skolemid |125|
 :no-pattern (type x@@42)
 :no-pattern (U_2_int x@@42)
 :no-pattern (U_2_bool x@@42)
))))))
 :qid |DafnyPreludebpl.670:18|
 :skolemid |126|
 :pattern ( (|Set#Card| s@@40))
)))
(assert (forall ((h@@15 T@U) (r@@5 T@U) (f@@4 T@U) (x@@43 T@U) ) (! (let ((alpha@@3 (type x@@43)))
 (=> (and (and (and (= (type h@@15) (MapType0Type refType (MapType1Type BoxType))) (= (type r@@5) refType)) (= (type f@@4) (FieldType alpha@@3))) ($IsGoodHeap (MapType0Store h@@15 r@@5 (MapType1Store (MapType0Select h@@15 r@@5) f@@4 ($Box x@@43))))) ($HeapSucc h@@15 (MapType0Store h@@15 r@@5 (MapType1Store (MapType0Select h@@15 r@@5) f@@4 ($Box x@@43))))))
 :qid |DafnyPreludebpl.608:22|
 :skolemid |115|
 :pattern ( (MapType0Store h@@15 r@@5 (MapType1Store (MapType0Select h@@15 r@@5) f@@4 ($Box x@@43))))
)))
(assert (forall ((a@@69 T@U) (b@@51 T@U) ) (! (let ((T@@133 (MapType0TypeInv0 (type a@@69))))
 (=> (and (= (type a@@69) (MapType0Type T@@133 boolType)) (= (type b@@51) (MapType0Type T@@133 boolType))) (= (|Set#Subset| a@@69 b@@51) (forall ((o@@36 T@U) ) (!  (=> (and (= (type o@@36) T@@133) (U_2_bool (MapType0Select a@@69 o@@36))) (U_2_bool (MapType0Select b@@51 o@@36)))
 :qid |DafnyPreludebpl.739:32|
 :skolemid |148|
 :pattern ( (MapType0Select a@@69 o@@36))
 :pattern ( (MapType0Select b@@51 o@@36))
)))))
 :qid |DafnyPreludebpl.738:18|
 :skolemid |149|
 :pattern ( (|Set#Subset| a@@69 b@@51))
)))
(assert (forall ((a@@70 T@U) (b@@52 T@U) ) (! (let ((T@@134 (MapType0TypeInv0 (type a@@70))))
 (=> (and (= (type a@@70) (MapType0Type T@@134 boolType)) (= (type b@@52) (MapType0Type T@@134 boolType))) (= (|ISet#Subset| a@@70 b@@52) (forall ((o@@37 T@U) ) (!  (=> (and (= (type o@@37) T@@134) (U_2_bool (MapType0Select a@@70 o@@37))) (U_2_bool (MapType0Select b@@52 o@@37)))
 :qid |DafnyPreludebpl.810:33|
 :skolemid |170|
 :pattern ( (MapType0Select a@@70 o@@37))
 :pattern ( (MapType0Select b@@52 o@@37))
)))))
 :qid |DafnyPreludebpl.809:18|
 :skolemid |171|
 :pattern ( (|ISet#Subset| a@@70 b@@52))
)))
(assert (forall ((ty@@1 T@U) (heap@@0 T@U) (len@@0 Int) (init@@0 T@U) ) (!  (=> (and (and (and (= (type ty@@1) TyType) (= (type heap@@0) (MapType0Type refType (MapType1Type BoxType)))) (= (type init@@0) HandleTypeType)) (and ($IsGoodHeap heap@@0) (<= 0 len@@0))) (= (|Seq#Length| (|Seq#Create| ty@@1 heap@@0 len@@0 init@@0)) len@@0))
 :qid |DafnyPreludebpl.1007:15|
 :skolemid |229|
 :pattern ( (|Seq#Length| (|Seq#Create| ty@@1 heap@@0 len@@0 init@@0)))
)))
(assert (forall ((s@@41 T@U) (n@@20 Int) (k@@7 Int) ) (! (let ((T@@135 (SeqTypeInv0 (type s@@41))))
 (=> (= (type s@@41) (SeqType T@@135)) (=> (and (and (<= 0 n@@20) (<= n@@20 k@@7)) (< k@@7 (|Seq#Length| s@@41))) (= (|Seq#Index| (|Seq#Drop| s@@41 n@@20) (- k@@7 n@@20)) (|Seq#Index| s@@41 k@@7)))))
 :qid |DafnyPreludebpl.1095:18|
 :weight 25
 :skolemid |254|
 :pattern ( (|Seq#Index| s@@41 k@@7) (|Seq#Drop| s@@41 n@@20))
)))
(assert (forall ((v@@38 T@U) (t0@@12 T@U) (h@@16 T@U) ) (!  (=> (and (and (= (type v@@38) (MapType0Type BoxType intType)) (= (type t0@@12) TyType)) (= (type h@@16) (MapType0Type refType (MapType1Type BoxType)))) (= ($IsAlloc v@@38 (TMultiSet t0@@12) h@@16) (forall ((bx@@25 T@U) ) (!  (=> (and (= (type bx@@25) BoxType) (< 0 (U_2_int (MapType0Select v@@38 bx@@25)))) ($IsAllocBox bx@@25 t0@@12 h@@16))
 :qid |DafnyPreludebpl.310:15|
 :skolemid |70|
 :pattern ( (MapType0Select v@@38 bx@@25))
))))
 :qid |DafnyPreludebpl.308:19|
 :skolemid |71|
 :pattern ( ($IsAlloc v@@38 (TMultiSet t0@@12) h@@16))
)))
(assert (forall ((o@@38 T@U) (p@@6 T@U) ) (!  (=> (and (and (= (type o@@38) BoxType) (= (type p@@6) BoxType)) (and (|ORD#IsNat| p@@6) (<= (|ORD#Offset| p@@6) (|ORD#Offset| o@@38)))) (or (and (= p@@6 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@38 p@@6) o@@38)) (and (not (= p@@6 (|ORD#FromNat| 0))) (|ORD#Less| (|ORD#Minus| o@@38 p@@6) o@@38))))
 :qid |DafnyPreludebpl.459:15|
 :skolemid |95|
 :pattern ( (|ORD#Minus| o@@38 p@@6))
)))
(assert (forall ((a@@71 T@U) (x@@44 T@U) ) (! (let ((T@@136 (type x@@44)))
 (=> (and (= (type a@@71) (MapType0Type T@@136 boolType)) (not (U_2_bool (MapType0Select a@@71 x@@44)))) (= (|Set#Card| (|Set#UnionOne| a@@71 x@@44)) (+ (|Set#Card| a@@71) 1))))
 :qid |DafnyPreludebpl.691:18|
 :skolemid |134|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@71 x@@44)))
)))
(assert (= (type Tclass._System.object?) TyType))
(assert (forall ((s@@42 T@U) ) (!  (=> (= (type s@@42) (MapType0Type refType boolType)) ($Is (SetRef_to_SetBox s@@42) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.376:15|
 :skolemid |82|
 :pattern ( (SetRef_to_SetBox s@@42))
)))
(assert (forall ((s@@43 T@U) (m@@42 Int) (n@@21 Int) ) (! (let ((T@@137 (SeqTypeInv0 (type s@@43))))
 (=> (= (type s@@43) (SeqType T@@137)) (=> (and (and (<= 0 m@@42) (<= 0 n@@21)) (<= (+ m@@42 n@@21) (|Seq#Length| s@@43))) (= (|Seq#Drop| (|Seq#Drop| s@@43 m@@42) n@@21) (|Seq#Drop| s@@43 (+ m@@42 n@@21))))))
 :qid |DafnyPreludebpl.1175:18|
 :skolemid |273|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@43 m@@42) n@@21))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n@@22 Int) ) (! (let ((T@@138 (SeqTypeInv0 (type s0@@2))))
 (=> (and (= (type s0@@2) (SeqType T@@138)) (= (type s1@@2) (SeqType T@@138))) (= (|Seq#SameUntil| s0@@2 s1@@2 n@@22) (forall ((j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 n@@22)) (= (|Seq#Index| s0@@2 j@@3) (|Seq#Index| s1@@2 j@@3)))
 :qid |DafnyPreludebpl.1074:13|
 :skolemid |248|
 :pattern ( (|Seq#Index| s0@@2 j@@3))
 :pattern ( (|Seq#Index| s1@@2 j@@3))
)))))
 :qid |DafnyPreludebpl.1072:18|
 :skolemid |249|
 :pattern ( (|Seq#SameUntil| s0@@2 s1@@2 n@@22))
)))
(assert (forall ((a@@72 T@U) (b@@53 T@U) ) (! (let ((T@@139 (MapType0TypeInv0 (type a@@72))))
 (=> (and (= (type a@@72) (MapType0Type T@@139 boolType)) (= (type b@@53) (MapType0Type T@@139 boolType))) (= (|Set#Disjoint| a@@72 b@@53) (forall ((o@@39 T@U) ) (!  (=> (= (type o@@39) T@@139) (or (not (U_2_bool (MapType0Select a@@72 o@@39))) (not (U_2_bool (MapType0Select b@@53 o@@39)))))
 :qid |DafnyPreludebpl.753:34|
 :skolemid |153|
 :pattern ( (MapType0Select a@@72 o@@39))
 :pattern ( (MapType0Select b@@53 o@@39))
)))))
 :qid |DafnyPreludebpl.752:18|
 :skolemid |154|
 :pattern ( (|Set#Disjoint| a@@72 b@@53))
)))
(assert (forall ((a@@73 T@U) (b@@54 T@U) ) (! (let ((T@@140 (MapType0TypeInv0 (type a@@73))))
 (=> (and (= (type a@@73) (MapType0Type T@@140 boolType)) (= (type b@@54) (MapType0Type T@@140 boolType))) (= (|ISet#Disjoint| a@@73 b@@54) (forall ((o@@40 T@U) ) (!  (=> (= (type o@@40) T@@140) (or (not (U_2_bool (MapType0Select a@@73 o@@40))) (not (U_2_bool (MapType0Select b@@54 o@@40)))))
 :qid |DafnyPreludebpl.820:35|
 :skolemid |175|
 :pattern ( (MapType0Select a@@73 o@@40))
 :pattern ( (MapType0Select b@@54 o@@40))
)))))
 :qid |DafnyPreludebpl.819:18|
 :skolemid |176|
 :pattern ( (|ISet#Disjoint| a@@73 b@@54))
)))
(assert (forall ((a@@74 T@U) (x@@45 T@U) (y@@23 T@U) ) (! (let ((T@@141 (type x@@45)))
 (=> (and (and (= (type a@@74) (MapType0Type T@@141 intType)) (= (type y@@23) T@@141)) (not (= x@@45 y@@23))) (= (U_2_int (MapType0Select a@@74 y@@23)) (U_2_int (MapType0Select (|MultiSet#UnionOne| a@@74 x@@45) y@@23)))))
 :qid |DafnyPreludebpl.870:18|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@74 x@@45) (MapType0Select a@@74 y@@23))
)))
(assert (forall ((s0@@3 T@U) (s1@@3 T@U) (n@@23 Int) ) (! (let ((T@@142 (SeqTypeInv0 (type s0@@3))))
 (=> (and (= (type s0@@3) (SeqType T@@142)) (= (type s1@@3) (SeqType T@@142))) (and (=> (< n@@23 (|Seq#Length| s0@@3)) (= (|Seq#Index| (|Seq#Append| s0@@3 s1@@3) n@@23) (|Seq#Index| s0@@3 n@@23))) (=> (<= (|Seq#Length| s0@@3) n@@23) (= (|Seq#Index| (|Seq#Append| s0@@3 s1@@3) n@@23) (|Seq#Index| s1@@3 (- n@@23 (|Seq#Length| s0@@3))))))))
 :qid |DafnyPreludebpl.1022:18|
 :skolemid |233|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@3 s1@@3) n@@23))
)))
(assert (forall ((o@@41 T@U) (p@@7 T@U) ) (!  (=> (and (= (type o@@41) BoxType) (= (type p@@7) BoxType)) (and (=> (|ORD#IsNat| (|ORD#Plus| o@@41 p@@7)) (and (|ORD#IsNat| o@@41) (|ORD#IsNat| p@@7))) (=> (|ORD#IsNat| p@@7) (and (= (|ORD#IsNat| (|ORD#Plus| o@@41 p@@7)) (|ORD#IsNat| o@@41)) (= (|ORD#Offset| (|ORD#Plus| o@@41 p@@7)) (+ (|ORD#Offset| o@@41) (|ORD#Offset| p@@7)))))))
 :qid |DafnyPreludebpl.442:15|
 :skolemid |91|
 :pattern ( (|ORD#Plus| o@@41 p@@7))
)))
(assert (forall ((a@@75 Int) ) (!  (=> (< a@@75 0) (= (|Math#clip| a@@75) 0))
 :qid |DafnyPreludebpl.833:15|
 :skolemid |181|
 :pattern ( (|Math#clip| a@@75))
)))
(assert (forall ((x@@46 Int) ) (! (= ($Box (int_2_U (LitInt x@@46))) (Lit ($Box (int_2_U x@@46))))
 :qid |DafnyPreludebpl.109:17|
 :skolemid |17|
 :pattern ( ($Box (int_2_U (LitInt x@@46))))
)))
(assert (forall ((x@@47 Real) ) (! (= ($Box (real_2_U (LitReal x@@47))) (Lit ($Box (real_2_U x@@47))))
 :qid |DafnyPreludebpl.112:17|
 :skolemid |19|
 :pattern ( ($Box (real_2_U (LitReal x@@47))))
)))
(assert (forall ((x@@48 T@U) ) (! (= ($Box (Lit x@@48)) (Lit ($Box x@@48)))
 :qid |DafnyPreludebpl.102:20|
 :skolemid |15|
 :pattern ( ($Box (Lit x@@48)))
)))
(assert (forall ((a@@76 T@U) (b@@55 T@U) ) (! (let ((T@@143 (SeqTypeInv0 (type a@@76))))
 (=> (and (= (type a@@76) (SeqType T@@143)) (= (type b@@55) (SeqType T@@143))) (= (|MultiSet#FromSeq| (|Seq#Append| a@@76 b@@55)) (|MultiSet#Union| (|MultiSet#FromSeq| a@@76) (|MultiSet#FromSeq| b@@55)))))
 :qid |DafnyPreludebpl.947:18|
 :skolemid |217|
 :pattern ( (|MultiSet#FromSeq| (|Seq#Append| a@@76 b@@55)))
)))
(assert (forall ((m@@43 T@U) (n@@24 T@U) ) (! (let ((V@@54 (MapTypeInv1 (type m@@43))))
(let ((U@@54 (MapTypeInv0 (type m@@43))))
 (=> (and (= (type m@@43) (MapType U@@54 V@@54)) (= (type n@@24) (MapType U@@54 V@@54))) (= (|Map#Domain| (|Map#Merge| m@@43 n@@24)) (|Set#Union| (|Map#Domain| m@@43) (|Map#Domain| n@@24))))))
 :qid |DafnyPreludebpl.1293:21|
 :skolemid |296|
 :pattern ( (|Map#Domain| (|Map#Merge| m@@43 n@@24)))
)))
(assert (forall ((m@@44 T@U) (n@@25 T@U) ) (! (let ((V@@55 (IMapTypeInv1 (type m@@44))))
(let ((U@@55 (IMapTypeInv0 (type m@@44))))
 (=> (and (= (type m@@44) (IMapType U@@55 V@@55)) (= (type n@@25) (IMapType U@@55 V@@55))) (= (|IMap#Domain| (|IMap#Merge| m@@44 n@@25)) (|Set#Union| (|IMap#Domain| m@@44) (|IMap#Domain| n@@25))))))
 :qid |DafnyPreludebpl.1434:21|
 :skolemid |328|
 :pattern ( (|IMap#Domain| (|IMap#Merge| m@@44 n@@25)))
)))
(assert (forall ((s@@44 T@U) ) (! (let ((T@@144 (SeqTypeInv0 (type s@@44))))
 (=> (and (= (type s@@44) (SeqType T@@144)) (= (|Seq#Length| s@@44) 0)) (= s@@44 (|Seq#Empty| T@@144))))
 :qid |DafnyPreludebpl.972:18|
 :skolemid |223|
 :pattern ( (|Seq#Length| s@@44))
)))
(assert (forall ((s@@45 T@U) (n@@26 Int) ) (! (let ((T@@145 (SeqTypeInv0 (type s@@45))))
 (=> (and (= (type s@@45) (SeqType T@@145)) (= n@@26 0)) (= (|Seq#Take| s@@45 n@@26) (|Seq#Empty| T@@145))))
 :qid |DafnyPreludebpl.1173:18|
 :skolemid |272|
 :pattern ( (|Seq#Take| s@@45 n@@26))
)))
(assert (forall ((s@@46 T@U) (x@@49 T@U) (n@@27 T@U) ) (! (let ((T@@146 (type x@@49)))
 (=> (and (and (= (type s@@46) (MapType0Type T@@146 intType)) (= (type n@@27) intType)) (<= 0 (U_2_int n@@27))) (= (|MultiSet#Card| (MapType0Store s@@46 x@@49 n@@27)) (+ (- (|MultiSet#Card| s@@46) (U_2_int (MapType0Select s@@46 x@@49))) (U_2_int n@@27)))))
 :qid |DafnyPreludebpl.845:18|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| (MapType0Store s@@46 x@@49 n@@27)))
)))
(assert (forall ((a@@77 T@U) (b@@56 T@U) (o@@42 T@U) ) (! (let ((T@@147 (type o@@42)))
 (=> (and (= (type a@@77) (MapType0Type T@@147 boolType)) (= (type b@@56) (MapType0Type T@@147 boolType))) (= (U_2_bool (MapType0Select (|Set#Union| a@@77 b@@56) o@@42))  (or (U_2_bool (MapType0Select a@@77 o@@42)) (U_2_bool (MapType0Select b@@56 o@@42))))))
 :qid |DafnyPreludebpl.695:18|
 :skolemid |135|
 :pattern ( (MapType0Select (|Set#Union| a@@77 b@@56) o@@42))
)))
(assert (forall ((a@@78 T@U) (b@@57 T@U) (o@@43 T@U) ) (! (let ((T@@148 (type o@@43)))
 (=> (and (= (type a@@78) (MapType0Type T@@148 boolType)) (= (type b@@57) (MapType0Type T@@148 boolType))) (= (U_2_bool (MapType0Select (|ISet#Union| a@@78 b@@57) o@@43))  (or (U_2_bool (MapType0Select a@@78 o@@43)) (U_2_bool (MapType0Select b@@57 o@@43))))))
 :qid |DafnyPreludebpl.777:18|
 :skolemid |159|
 :pattern ( (MapType0Select (|ISet#Union| a@@78 b@@57) o@@43))
)))
(assert (forall ((h@@17 T@U) (v@@39 T@U) ) (!  (=> (and (= (type h@@17) (MapType0Type refType (MapType1Type BoxType))) (= (type v@@39) intType)) ($IsAlloc v@@39 TInt h@@17))
 :qid |DafnyPreludebpl.292:18|
 :skolemid |60|
 :pattern ( ($IsAlloc v@@39 TInt h@@17))
)))
(assert (forall ((h@@18 T@U) (v@@40 T@U) ) (!  (=> (and (= (type h@@18) (MapType0Type refType (MapType1Type BoxType))) (= (type v@@40) realType)) ($IsAlloc v@@40 TReal h@@18))
 :qid |DafnyPreludebpl.293:18|
 :skolemid |61|
 :pattern ( ($IsAlloc v@@40 TReal h@@18))
)))
(assert (forall ((h@@19 T@U) (v@@41 T@U) ) (!  (=> (and (= (type h@@19) (MapType0Type refType (MapType1Type BoxType))) (= (type v@@41) boolType)) ($IsAlloc v@@41 TBool h@@19))
 :qid |DafnyPreludebpl.294:18|
 :skolemid |62|
 :pattern ( ($IsAlloc v@@41 TBool h@@19))
)))
(assert (forall ((h@@20 T@U) (v@@42 T@U) ) (!  (=> (and (= (type h@@20) (MapType0Type refType (MapType1Type BoxType))) (= (type v@@42) charType)) ($IsAlloc v@@42 TChar h@@20))
 :qid |DafnyPreludebpl.295:18|
 :skolemid |63|
 :pattern ( ($IsAlloc v@@42 TChar h@@20))
)))
(assert (forall ((h@@21 T@U) (v@@43 T@U) ) (!  (=> (and (= (type h@@21) (MapType0Type refType (MapType1Type BoxType))) (= (type v@@43) BoxType)) ($IsAlloc v@@43 TORDINAL h@@21))
 :qid |DafnyPreludebpl.296:18|
 :skolemid |64|
 :pattern ( ($IsAlloc v@@43 TORDINAL h@@21))
)))
(assert (forall ((s@@47 T@U) (i@@22 Int) (v@@44 T@U) (n@@28 Int) ) (! (let ((T@@149 (type v@@44)))
 (=> (= (type s@@47) (SeqType T@@149)) (=> (and (and (<= 0 i@@22) (< i@@22 n@@28)) (<= n@@28 (|Seq#Length| s@@47))) (= (|Seq#Take| (|Seq#Update| s@@47 i@@22 v@@44) n@@28) (|Seq#Update| (|Seq#Take| s@@47 n@@28) i@@22 v@@44)))))
 :qid |DafnyPreludebpl.1135:18|
 :skolemid |261|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@47 i@@22 v@@44) n@@28))
)))
(assert (forall ((v@@45 T@U) (t0@@13 T@U) ) (!  (=> (and (= (type v@@45) (SeqType BoxType)) (= (type t0@@13) TyType)) (= ($Is v@@45 (TSeq t0@@13)) (forall ((i@@23 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length| v@@45))) ($IsBox (|Seq#Index| v@@45 i@@23) t0@@13))
 :qid |DafnyPreludebpl.257:15|
 :skolemid |52|
 :pattern ( (|Seq#Index| v@@45 i@@23))
))))
 :qid |DafnyPreludebpl.255:19|
 :skolemid |53|
 :pattern ( ($Is v@@45 (TSeq t0@@13)))
)))
(assert (forall ((s@@48 T@U) (i@@24 Int) ) (!  (=> (= (type s@@48) (SeqType BoxType)) (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length| s@@48))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@48 i@@24))) (|Seq#Rank| s@@48))))
 :qid |DafnyPreludebpl.1157:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@48 i@@24))))
)))
(assert (forall ((arg0@@108 T@U) (arg1@@52 T@U) ) (!  (=> (and (= (type arg0@@108) TyType) (= (type arg1@@52) TyType)) (= (type (Tclass._System.Tuple2 arg0@@108 arg1@@52)) TyType))
 :qid |funType:Tclass._System.Tuple2|
 :pattern ( (Tclass._System.Tuple2 arg0@@108 arg1@@52))
)))
(assert (forall ((v@@46 T@U) (t0@@14 T@U) (t1@@5 T@U) ) (!  (=> (and (and (and (= (type v@@46) (MapType BoxType BoxType)) (= (type t0@@14) TyType)) (= (type t1@@5) TyType)) ($Is v@@46 (TMap t0@@14 t1@@5))) (and (and ($Is (|Map#Domain| v@@46) (TSet t0@@14)) ($Is (|Map#Values| v@@46) (TSet t1@@5))) ($Is (|Map#Items| v@@46) (TSet (Tclass._System.Tuple2 t0@@14 t1@@5)))))
 :qid |DafnyPreludebpl.270:19|
 :skolemid |56|
 :pattern ( ($Is v@@46 (TMap t0@@14 t1@@5)))
)))
(assert (forall ((v@@47 T@U) (t0@@15 T@U) (t1@@6 T@U) ) (!  (=> (and (and (and (= (type v@@47) (IMapType BoxType BoxType)) (= (type t0@@15) TyType)) (= (type t1@@6) TyType)) ($Is v@@47 (TIMap t0@@15 t1@@6))) (and (and ($Is (|IMap#Domain| v@@47) (TISet t0@@15)) ($Is (|IMap#Values| v@@47) (TISet t1@@6))) ($Is (|IMap#Items| v@@47) (TISet (Tclass._System.Tuple2 t0@@15 t1@@6)))))
 :qid |DafnyPreludebpl.284:19|
 :skolemid |59|
 :pattern ( ($Is v@@47 (TIMap t0@@15 t1@@6)))
)))
(assert (forall ((v@@48 T@U) ) (!  (=> (= (type v@@48) intType) ($Is v@@48 TInt))
 :qid |DafnyPreludebpl.231:18|
 :skolemid |39|
 :pattern ( ($Is v@@48 TInt))
)))
(assert (forall ((v@@49 T@U) ) (!  (=> (= (type v@@49) realType) ($Is v@@49 TReal))
 :qid |DafnyPreludebpl.232:18|
 :skolemid |40|
 :pattern ( ($Is v@@49 TReal))
)))
(assert (forall ((v@@50 T@U) ) (!  (=> (= (type v@@50) boolType) ($Is v@@50 TBool))
 :qid |DafnyPreludebpl.233:18|
 :skolemid |41|
 :pattern ( ($Is v@@50 TBool))
)))
(assert (forall ((v@@51 T@U) ) (!  (=> (= (type v@@51) charType) ($Is v@@51 TChar))
 :qid |DafnyPreludebpl.234:18|
 :skolemid |42|
 :pattern ( ($Is v@@51 TChar))
)))
(assert (forall ((v@@52 T@U) ) (!  (=> (= (type v@@52) BoxType) ($Is v@@52 TORDINAL))
 :qid |DafnyPreludebpl.235:18|
 :skolemid |43|
 :pattern ( ($Is v@@52 TORDINAL))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(assert (= (type $Heap) (MapType0Type refType (MapType1Type BoxType))))
(set-info :boogie-vc-id should_not_prove)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= (ControlFlow 0 2) (- 0 1)) false)))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (= (ControlFlow 0 3) 2)) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(pop 1)
; Invalid
(get-info :rlimit)
