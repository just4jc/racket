ü“
Ä$$
:
Add
x"T
y"T
z"T"
Ttype:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
¹
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
©
ResourceApplyRMSProp
var
ms
mom
lr"T
rho"T
momentum"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
1
Square
x"T
y"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
"serve*1.11.02v1.11.0-rc2-4-gc19e29306cļ
n
dense_inputPlaceholder*
dtype0*'
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’

,dense/kernel/Initializer/random_normal/shapeConst*
_class
loc:@dense/kernel*
valueB"      *
dtype0*
_output_shapes
:

+dense/kernel/Initializer/random_normal/meanConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

-dense/kernel/Initializer/random_normal/stddevConst*
_class
loc:@dense/kernel*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
ń
;dense/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal,dense/kernel/Initializer/random_normal/shape*
dtype0*
_output_shapes

:*

seed *
T0*
_class
loc:@dense/kernel*
seed2 
ē
*dense/kernel/Initializer/random_normal/mulMul;dense/kernel/Initializer/random_normal/RandomStandardNormal-dense/kernel/Initializer/random_normal/stddev*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
Š
&dense/kernel/Initializer/random_normalAdd*dense/kernel/Initializer/random_normal/mul+dense/kernel/Initializer/random_normal/mean*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
¦
dense/kernelVarHandleOp*
shared_namedense/kernel*
_class
loc:@dense/kernel*
	container *
shape
:*
dtype0*
_output_shapes
: 
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 

dense/kernel/AssignAssignVariableOpdense/kernel&dense/kernel/Initializer/random_normal*
_class
loc:@dense/kernel*
dtype0

 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:

dense/bias/Initializer/zerosConst*
_class
loc:@dense/bias*
valueB*    *
dtype0*
_output_shapes
:


dense/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_name
dense/bias*
_class
loc:@dense/bias*
	container *
shape:
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
{
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
_class
loc:@dense/bias*
dtype0

dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
h
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:

dense/MatMulMatMuldense_inputdense/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( *
T0
c
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:

dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
S

dense/ReluReludense/BiasAdd*'
_output_shapes
:’’’’’’’’’*
T0
¢
.dense_1/kernel/Initializer/random_normal/shapeConst*
dtype0*
_output_shapes
:*!
_class
loc:@dense_1/kernel*
valueB"   0   

-dense_1/kernel/Initializer/random_normal/meanConst*
dtype0*
_output_shapes
: *!
_class
loc:@dense_1/kernel*
valueB
 *    

/dense_1/kernel/Initializer/random_normal/stddevConst*!
_class
loc:@dense_1/kernel*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
÷
=dense_1/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal.dense_1/kernel/Initializer/random_normal/shape*
T0*!
_class
loc:@dense_1/kernel*
seed2 *
dtype0*
_output_shapes

:0*

seed 
ļ
,dense_1/kernel/Initializer/random_normal/mulMul=dense_1/kernel/Initializer/random_normal/RandomStandardNormal/dense_1/kernel/Initializer/random_normal/stddev*
_output_shapes

:0*
T0*!
_class
loc:@dense_1/kernel
Ų
(dense_1/kernel/Initializer/random_normalAdd,dense_1/kernel/Initializer/random_normal/mul-dense_1/kernel/Initializer/random_normal/mean*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:0
¬
dense_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel*
	container *
shape
:0
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 

dense_1/kernel/AssignAssignVariableOpdense_1/kernel(dense_1/kernel/Initializer/random_normal*!
_class
loc:@dense_1/kernel*
dtype0

"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes

:0

dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB0*    *
dtype0*
_output_shapes
:0
¢
dense_1/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
	container *
shape:0
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 

dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0

 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:0
l
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:0

dense_1/MatMulMatMul
dense/Reludense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’0*
transpose_a( *
transpose_b( 
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:0

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’0
W
dense_1/ReluReludense_1/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’0
¢
.dense_2/kernel/Initializer/random_normal/shapeConst*!
_class
loc:@dense_2/kernel*
valueB"0      *
dtype0*
_output_shapes
:

-dense_2/kernel/Initializer/random_normal/meanConst*!
_class
loc:@dense_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

/dense_2/kernel/Initializer/random_normal/stddevConst*!
_class
loc:@dense_2/kernel*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
÷
=dense_2/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal.dense_2/kernel/Initializer/random_normal/shape*
T0*!
_class
loc:@dense_2/kernel*
seed2 *
dtype0*
_output_shapes

:0*

seed 
ļ
,dense_2/kernel/Initializer/random_normal/mulMul=dense_2/kernel/Initializer/random_normal/RandomStandardNormal/dense_2/kernel/Initializer/random_normal/stddev*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:0
Ų
(dense_2/kernel/Initializer/random_normalAdd,dense_2/kernel/Initializer/random_normal/mul-dense_2/kernel/Initializer/random_normal/mean*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:0
¬
dense_2/kernelVarHandleOp*
shared_namedense_2/kernel*!
_class
loc:@dense_2/kernel*
	container *
shape
:0*
dtype0*
_output_shapes
: 
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 

dense_2/kernel/AssignAssignVariableOpdense_2/kernel(dense_2/kernel/Initializer/random_normal*!
_class
loc:@dense_2/kernel*
dtype0

"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes

:0

dense_2/bias/Initializer/zerosConst*
_class
loc:@dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
¢
dense_2/biasVarHandleOp*
shared_namedense_2/bias*
_class
loc:@dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 

dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/bias/Initializer/zeros*
dtype0*
_class
loc:@dense_2/bias

 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:
l
dense_2/MatMul/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes

:0

dense_2/MatMulMatMuldense_1/Reludense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
g
dense_2/BiasAdd/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:

dense_2/BiasAddBiasAdddense_2/MatMuldense_2/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’*
T0
r
0TFOptimizer/iterations/Initializer/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 

TFOptimizer/iterationsVarHandleOp*
shape: *'
shared_nameTFOptimizer/iterations*
dtype0	*
_output_shapes
: *
	container 
}
7TFOptimizer/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpTFOptimizer/iterations*
_output_shapes
: 
³
TFOptimizer/iterations/AssignAssignVariableOpTFOptimizer/iterations0TFOptimizer/iterations/Initializer/initial_value*)
_class
loc:@TFOptimizer/iterations*
dtype0	
¤
*TFOptimizer/iterations/Read/ReadVariableOpReadVariableOpTFOptimizer/iterations*)
_class
loc:@TFOptimizer/iterations*
dtype0	*
_output_shapes
: 

dense_2_targetPlaceholder*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*%
shape:’’’’’’’’’’’’’’’’’’
R
ConstConst*
valueB*  ?*
dtype0*
_output_shapes
:

dense_2_sample_weightsPlaceholderWithDefaultConst*
shape:’’’’’’’’’*
dtype0*#
_output_shapes
:’’’’’’’’’
x
loss/dense_2_loss/subSubdense_2/BiasAdddense_2_target*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
t
loss/dense_2_loss/SquareSquareloss/dense_2_loss/sub*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
s
(loss/dense_2_loss/Mean/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
­
loss/dense_2_loss/MeanMeanloss/dense_2_loss/Square(loss/dense_2_loss/Mean/reduction_indices*#
_output_shapes
:’’’’’’’’’*
	keep_dims( *

Tidx0*
T0

Floss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shapeShapedense_2_sample_weights*
T0*
out_type0*
_output_shapes
:

Eloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Eloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/dense_2_loss/Mean*
T0*
out_type0*
_output_shapes
:

Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
ł
Bloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalarEqualDloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar/xEloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 

Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalarBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0

Ļ
Ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityPloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
Ķ
Ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityNloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
Ą
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
é
Ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalarOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*U
_classK
IGloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 

nloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualuloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchwloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 

uloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchDloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rankOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*W
_classM
KIloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : 

wloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchEloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rankOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0*X
_classN
LJloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rank
õ
hloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchnloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_ranknloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 

jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityjloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
_output_shapes
: *
T0


jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityhloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 

iloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentitynloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: *
T0

ŗ
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
Ļ
}loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
¬
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchEloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shapeOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*X
_classN
LJloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::

loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchiloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*X
_classN
LJloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
Į
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
:*
valueB"      
²
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
É
|loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapeloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
­
~loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Ą
yloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2}loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims|loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like~loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
¼
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
Õ
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
_output_shapes

:*

Tdim0*
T0
°
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchFloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shapeOloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*Y
_classO
MKloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::

loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchiloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*Y
_classO
MKloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::

loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1yloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’:*
set_operationa-b*
validate_indices(*
T0
Ķ
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
_output_shapes
: *
T0*
out_type0
£
tloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstk^loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 

rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualtloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
ö
jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchnloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankiloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_classw
usloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 
ü
gloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergejloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
N*
_output_shapes
: : *
T0

æ
Mloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergegloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeRloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
¦
>loss/dense_2_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_2Const*)
value B Bdense_2_sample_weights:0*
dtype0*
_output_shapes
: 

@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_3Const*
dtype0*
_output_shapes
: *
valueB Bvalues.shape=

@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_4Const*)
value B Bloss/dense_2_loss/Mean:0*
dtype0*
_output_shapes
: 

@loss/dense_2_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

Kloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchMloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
É
Mloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityMloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
_output_shapes
: *
T0

Ē
Mloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityKloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
Č
Lloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityMloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: *
T0

”
Iloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t

Wloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityMloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tJ^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
T0
*`
_classV
TRloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 

Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.
ń
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
ū
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *)
value B Bdense_2_sample_weights:0
š
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB Bvalues.shape=
ū
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*)
value B Bloss/dense_2_loss/Mean:0*
dtype0*
_output_shapes
: 
ķ
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstN^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Č
Kloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertRloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchRloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
ž
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchMloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeLloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
_output_shapes
: : *
T0
*`
_classV
TRloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge
ś
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchFloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shapeLloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Y
_classO
MKloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
ų
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchEloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shapeLloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*X
_classN
LJloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
ź
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchBloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalarLloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*U
_classK
IGloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 

Yloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityMloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fL^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*`
_classV
TRloc:@loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
³
Jloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergeYloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Wloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
Ö
3loss/dense_2_loss/broadcast_weights/ones_like/ShapeShapeloss/dense_2_loss/MeanK^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
_output_shapes
:*
T0*
out_type0
Å
3loss/dense_2_loss/broadcast_weights/ones_like/ConstConstK^loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ß
-loss/dense_2_loss/broadcast_weights/ones_likeFill3loss/dense_2_loss/broadcast_weights/ones_like/Shape3loss/dense_2_loss/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:’’’’’’’’’

#loss/dense_2_loss/broadcast_weightsMuldense_2_sample_weights-loss/dense_2_loss/broadcast_weights/ones_like*#
_output_shapes
:’’’’’’’’’*
T0

loss/dense_2_loss/MulMulloss/dense_2_loss/Mean#loss/dense_2_loss/broadcast_weights*
T0*#
_output_shapes
:’’’’’’’’’
a
loss/dense_2_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:

loss/dense_2_loss/SumSumloss/dense_2_loss/Mulloss/dense_2_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
c
loss/dense_2_loss/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

loss/dense_2_loss/Sum_1Sum#loss/dense_2_loss/broadcast_weightsloss/dense_2_loss/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
u
loss/dense_2_loss/truedivRealDivloss/dense_2_loss/Sumloss/dense_2_loss/Sum_1*
T0*
_output_shapes
: 
a
loss/dense_2_loss/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
|
loss/dense_2_loss/GreaterGreaterloss/dense_2_loss/Sum_1loss/dense_2_loss/zeros_like*
T0*
_output_shapes
: 

loss/dense_2_loss/SelectSelectloss/dense_2_loss/Greaterloss/dense_2_loss/truedivloss/dense_2_loss/zeros_like*
_output_shapes
: *
T0
\
loss/dense_2_loss/Const_2Const*
dtype0*
_output_shapes
: *
valueB 

loss/dense_2_loss/Mean_1Meanloss/dense_2_loss/Selectloss/dense_2_loss/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_2_loss/Mean_1*
T0*
_output_shapes
: 

metrics/mean_squared_error/subSubdense_2/BiasAdddense_2_target*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0

!metrics/mean_squared_error/SquareSquaremetrics/mean_squared_error/sub*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
|
1metrics/mean_squared_error/Mean/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
Č
metrics/mean_squared_error/MeanMean!metrics/mean_squared_error/Square1metrics/mean_squared_error/Mean/reduction_indices*#
_output_shapes
:’’’’’’’’’*
	keep_dims( *

Tidx0*
T0
j
 metrics/mean_squared_error/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ŗ
!metrics/mean_squared_error/Mean_1Meanmetrics/mean_squared_error/Mean metrics/mean_squared_error/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
g
$training/TFOptimizer/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
m
(training/TFOptimizer/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
®
#training/TFOptimizer/gradients/FillFill$training/TFOptimizer/gradients/Shape(training/TFOptimizer/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 

0training/TFOptimizer/gradients/loss/mul_grad/MulMul#training/TFOptimizer/gradients/Fillloss/dense_2_loss/Mean_1*
_output_shapes
: *
T0

2training/TFOptimizer/gradients/loss/mul_grad/Mul_1Mul#training/TFOptimizer/gradients/Fill
loss/mul/x*
_output_shapes
: *
T0
­
=training/TFOptimizer/gradients/loss/mul_grad/tuple/group_depsNoOp1^training/TFOptimizer/gradients/loss/mul_grad/Mul3^training/TFOptimizer/gradients/loss/mul_grad/Mul_1
©
Etraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependencyIdentity0training/TFOptimizer/gradients/loss/mul_grad/Mul>^training/TFOptimizer/gradients/loss/mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@training/TFOptimizer/gradients/loss/mul_grad/Mul*
_output_shapes
: 
Æ
Gtraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependency_1Identity2training/TFOptimizer/gradients/loss/mul_grad/Mul_1>^training/TFOptimizer/gradients/loss/mul_grad/tuple/group_deps*
_output_shapes
: *
T0*E
_class;
97loc:@training/TFOptimizer/gradients/loss/mul_grad/Mul_1

Jtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Dtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_1_grad/ReshapeReshapeGtraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependency_1Jtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 

Btraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 

Atraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_1_grad/TileTileDtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_1_grad/ReshapeBtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_1_grad/Const*
T0*
_output_shapes
: *

Tmultiples0

Dtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_1_grad/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *  ?
ł
Dtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_1_grad/truedivRealDivAtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_1_grad/TileDtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_1_grad/Const_1*
T0*
_output_shapes
: 

Gtraining/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/zeros_likeConst*
dtype0*
_output_shapes
: *
valueB
 *    

Ctraining/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/SelectSelectloss/dense_2_loss/GreaterDtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_1_grad/truedivGtraining/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/zeros_like*
_output_shapes
: *
T0

Etraining/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/Select_1Selectloss/dense_2_loss/GreaterGtraining/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/zeros_likeDtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_1_grad/truediv*
_output_shapes
: *
T0
ć
Mtraining/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/tuple/group_depsNoOpD^training/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/SelectF^training/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/Select_1
ļ
Utraining/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/tuple/control_dependencyIdentityCtraining/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/SelectN^training/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/tuple/group_deps*
T0*V
_classL
JHloc:@training/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/Select*
_output_shapes
: 
õ
Wtraining/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/tuple/control_dependency_1IdentityEtraining/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/Select_1N^training/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/tuple/group_deps*
T0*X
_classN
LJloc:@training/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/Select_1*
_output_shapes
: 

Ctraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

Etraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
µ
Straining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsCtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/ShapeEtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
į
Etraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/RealDivRealDivUtraining/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/tuple/control_dependencyloss/dense_2_loss/Sum_1*
_output_shapes
: *
T0
¢
Atraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/SumSumEtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/RealDivStraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

Etraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/ReshapeReshapeAtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/SumCtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/Shape*
T0*
Tshape0*
_output_shapes
: 

Atraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/NegNegloss/dense_2_loss/Sum*
_output_shapes
: *
T0
Ļ
Gtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1RealDivAtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/Negloss/dense_2_loss/Sum_1*
T0*
_output_shapes
: 
Õ
Gtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2RealDivGtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1loss/dense_2_loss/Sum_1*
T0*
_output_shapes
: 

Atraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/mulMulUtraining/TFOptimizer/gradients/loss/dense_2_loss/Select_grad/tuple/control_dependencyGtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2*
T0*
_output_shapes
: 
¢
Ctraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/Sum_1SumAtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/mulUtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

Gtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/Reshape_1ReshapeCtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/Sum_1Etraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
č
Ntraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/tuple/group_depsNoOpF^training/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/ReshapeH^training/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/Reshape_1
õ
Vtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/tuple/control_dependencyIdentityEtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/ReshapeO^training/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/tuple/group_deps*
T0*X
_classN
LJloc:@training/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/Reshape*
_output_shapes
: 
ū
Xtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/tuple/control_dependency_1IdentityGtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/Reshape_1O^training/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@training/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/Reshape_1*
_output_shapes
: 

Gtraining/TFOptimizer/gradients/loss/dense_2_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
 
Atraining/TFOptimizer/gradients/loss/dense_2_loss/Sum_grad/ReshapeReshapeVtraining/TFOptimizer/gradients/loss/dense_2_loss/truediv_grad/tuple/control_dependencyGtraining/TFOptimizer/gradients/loss/dense_2_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

?training/TFOptimizer/gradients/loss/dense_2_loss/Sum_grad/ShapeShapeloss/dense_2_loss/Mul*
T0*
out_type0*
_output_shapes
:

>training/TFOptimizer/gradients/loss/dense_2_loss/Sum_grad/TileTileAtraining/TFOptimizer/gradients/loss/dense_2_loss/Sum_grad/Reshape?training/TFOptimizer/gradients/loss/dense_2_loss/Sum_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:’’’’’’’’’

?training/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/ShapeShapeloss/dense_2_loss/Mean*
_output_shapes
:*
T0*
out_type0
¤
Atraining/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/Shape_1Shape#loss/dense_2_loss/broadcast_weights*
_output_shapes
:*
T0*
out_type0
©
Otraining/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs?training/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/ShapeAtraining/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
×
=training/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/MulMul>training/TFOptimizer/gradients/loss/dense_2_loss/Sum_grad/Tile#loss/dense_2_loss/broadcast_weights*
T0*#
_output_shapes
:’’’’’’’’’

=training/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/SumSum=training/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/MulOtraining/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

Atraining/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/ReshapeReshape=training/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/Sum?training/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
Ģ
?training/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/Mul_1Mulloss/dense_2_loss/Mean>training/TFOptimizer/gradients/loss/dense_2_loss/Sum_grad/Tile*
T0*#
_output_shapes
:’’’’’’’’’

?training/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/Sum_1Sum?training/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/Mul_1Qtraining/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

Ctraining/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/Reshape_1Reshape?training/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/Sum_1Atraining/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
Ü
Jtraining/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/tuple/group_depsNoOpB^training/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/ReshapeD^training/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/Reshape_1
ņ
Rtraining/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/tuple/control_dependencyIdentityAtraining/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/ReshapeK^training/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@training/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/Reshape*#
_output_shapes
:’’’’’’’’’
ų
Ttraining/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/tuple/control_dependency_1IdentityCtraining/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/Reshape_1K^training/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/tuple/group_deps*
T0*V
_classL
JHloc:@training/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/Reshape_1*#
_output_shapes
:’’’’’’’’’

@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/ShapeShapeloss/dense_2_loss/Square*
_output_shapes
:*
T0*
out_type0
Ö
?training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/SizeConst*S
_classI
GEloc:@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
¦
>training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/addAdd(loss/dense_2_loss/Mean/reduction_indices?training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Size*
T0*S
_classI
GEloc:@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape*
_output_shapes
: 
Į
>training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/modFloorMod>training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/add?training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Size*
T0*S
_classI
GEloc:@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape*
_output_shapes
: 
Ś
Btraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape_1Const*S
_classI
GEloc:@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape*
valueB *
dtype0*
_output_shapes
: 
Ż
Ftraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/range/startConst*S
_classI
GEloc:@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape*
value	B : *
dtype0*
_output_shapes
: 
Ż
Ftraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/range/deltaConst*S
_classI
GEloc:@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 

@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/rangeRangeFtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/range/start?training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/SizeFtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/range/delta*S
_classI
GEloc:@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape*
_output_shapes
:*

Tidx0
Ü
Etraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Fill/valueConst*S
_classI
GEloc:@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
Ś
?training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/FillFillBtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape_1Etraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Fill/value*
_output_shapes
: *
T0*S
_classI
GEloc:@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape*

index_type0
į
Htraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchDynamicStitch@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/range>training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/mod@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape?training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Fill*
T0*S
_classI
GEloc:@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape*
N*
_output_shapes
:
Ū
Dtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Maximum/yConst*S
_classI
GEloc:@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
×
Btraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/MaximumMaximumHtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchDtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Maximum/y*
T0*S
_classI
GEloc:@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape*
_output_shapes
:
Ļ
Ctraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/floordivFloorDiv@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/ShapeBtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Maximum*
_output_shapes
:*
T0*S
_classI
GEloc:@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape
“
Btraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/ReshapeReshapeRtraining/TFOptimizer/gradients/loss/dense_2_loss/Mul_grad/tuple/control_dependencyHtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

?training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/TileTileBtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/ReshapeCtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/floordiv*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*

Tmultiples0*
T0

Btraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape_2Shapeloss/dense_2_loss/Square*
T0*
out_type0*
_output_shapes
:

Btraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape_3Shapeloss/dense_2_loss/Mean*
T0*
out_type0*
_output_shapes
:

@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

?training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/ProdProdBtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape_2@training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

Btraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

Atraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Prod_1ProdBtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Shape_3Btraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

Ftraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :
ū
Dtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Maximum_1MaximumAtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Prod_1Ftraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/y*
_output_shapes
: *
T0
ł
Etraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/floordiv_1FloorDiv?training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/ProdDtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Maximum_1*
_output_shapes
: *
T0
Ī
?training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/CastCastEtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/floordiv_1*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

Btraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/truedivRealDiv?training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Tile?training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/Cast*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Ģ
Btraining/TFOptimizer/gradients/loss/dense_2_loss/Square_grad/ConstConstC^training/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
Ż
@training/TFOptimizer/gradients/loss/dense_2_loss/Square_grad/MulMulloss/dense_2_loss/subBtraining/TFOptimizer/gradients/loss/dense_2_loss/Square_grad/Const*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0

Btraining/TFOptimizer/gradients/loss/dense_2_loss/Square_grad/Mul_1MulBtraining/TFOptimizer/gradients/loss/dense_2_loss/Mean_grad/truediv@training/TFOptimizer/gradients/loss/dense_2_loss/Square_grad/Mul*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

?training/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/ShapeShapedense_2/BiasAdd*
_output_shapes
:*
T0*
out_type0

Atraining/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/Shape_1Shapedense_2_target*
T0*
out_type0*
_output_shapes
:
©
Otraining/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgs?training/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/ShapeAtraining/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

=training/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/SumSumBtraining/TFOptimizer/gradients/loss/dense_2_loss/Square_grad/Mul_1Otraining/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

Atraining/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/ReshapeReshape=training/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/Sum?training/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/Shape*'
_output_shapes
:’’’’’’’’’*
T0*
Tshape0

?training/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/Sum_1SumBtraining/TFOptimizer/gradients/loss/dense_2_loss/Square_grad/Mul_1Qtraining/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ø
=training/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/NegNeg?training/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/Sum_1*
T0*
_output_shapes
:

Ctraining/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/Reshape_1Reshape=training/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/NegAtraining/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/Shape_1*
T0*
Tshape0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Ü
Jtraining/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/tuple/group_depsNoOpB^training/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/ReshapeD^training/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/Reshape_1
ö
Rtraining/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/tuple/control_dependencyIdentityAtraining/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/ReshapeK^training/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@training/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/Reshape*'
_output_shapes
:’’’’’’’’’

Ttraining/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/tuple/control_dependency_1IdentityCtraining/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/Reshape_1K^training/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/tuple/group_deps*
T0*V
_classL
JHloc:@training/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/Reshape_1*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Ž
?training/TFOptimizer/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGradRtraining/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/tuple/control_dependency*
T0*
data_formatNHWC*
_output_shapes
:
ć
Dtraining/TFOptimizer/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp@^training/TFOptimizer/gradients/dense_2/BiasAdd_grad/BiasAddGradS^training/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/tuple/control_dependency
ū
Ltraining/TFOptimizer/gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentityRtraining/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/tuple/control_dependencyE^training/TFOptimizer/gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@training/TFOptimizer/gradients/loss/dense_2_loss/sub_grad/Reshape*'
_output_shapes
:’’’’’’’’’
Ū
Ntraining/TFOptimizer/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity?training/TFOptimizer/gradients/dense_2/BiasAdd_grad/BiasAddGradE^training/TFOptimizer/gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*R
_classH
FDloc:@training/TFOptimizer/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:

9training/TFOptimizer/gradients/dense_2/MatMul_grad/MatMulMatMulLtraining/TFOptimizer/gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_2/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’0*
transpose_a( *
transpose_b(*
T0
š
;training/TFOptimizer/gradients/dense_2/MatMul_grad/MatMul_1MatMuldense_1/ReluLtraining/TFOptimizer/gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:0*
transpose_a(*
transpose_b( 
Å
Ctraining/TFOptimizer/gradients/dense_2/MatMul_grad/tuple/group_depsNoOp:^training/TFOptimizer/gradients/dense_2/MatMul_grad/MatMul<^training/TFOptimizer/gradients/dense_2/MatMul_grad/MatMul_1
Ų
Ktraining/TFOptimizer/gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity9training/TFOptimizer/gradients/dense_2/MatMul_grad/MatMulD^training/TFOptimizer/gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@training/TFOptimizer/gradients/dense_2/MatMul_grad/MatMul*'
_output_shapes
:’’’’’’’’’0
Õ
Mtraining/TFOptimizer/gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity;training/TFOptimizer/gradients/dense_2/MatMul_grad/MatMul_1D^training/TFOptimizer/gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@training/TFOptimizer/gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes

:0
Ņ
9training/TFOptimizer/gradients/dense_1/Relu_grad/ReluGradReluGradKtraining/TFOptimizer/gradients/dense_2/MatMul_grad/tuple/control_dependencydense_1/Relu*
T0*'
_output_shapes
:’’’’’’’’’0
Å
?training/TFOptimizer/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad9training/TFOptimizer/gradients/dense_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:0
Ź
Dtraining/TFOptimizer/gradients/dense_1/BiasAdd_grad/tuple/group_depsNoOp@^training/TFOptimizer/gradients/dense_1/BiasAdd_grad/BiasAddGrad:^training/TFOptimizer/gradients/dense_1/Relu_grad/ReluGrad
Ś
Ltraining/TFOptimizer/gradients/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity9training/TFOptimizer/gradients/dense_1/Relu_grad/ReluGradE^training/TFOptimizer/gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*L
_classB
@>loc:@training/TFOptimizer/gradients/dense_1/Relu_grad/ReluGrad*'
_output_shapes
:’’’’’’’’’0
Ū
Ntraining/TFOptimizer/gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity?training/TFOptimizer/gradients/dense_1/BiasAdd_grad/BiasAddGradE^training/TFOptimizer/gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*R
_classH
FDloc:@training/TFOptimizer/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:0

9training/TFOptimizer/gradients/dense_1/MatMul_grad/MatMulMatMulLtraining/TFOptimizer/gradients/dense_1/BiasAdd_grad/tuple/control_dependencydense_1/MatMul/ReadVariableOp*
transpose_b(*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( 
ī
;training/TFOptimizer/gradients/dense_1/MatMul_grad/MatMul_1MatMul
dense/ReluLtraining/TFOptimizer/gradients/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:0*
transpose_a(*
transpose_b( 
Å
Ctraining/TFOptimizer/gradients/dense_1/MatMul_grad/tuple/group_depsNoOp:^training/TFOptimizer/gradients/dense_1/MatMul_grad/MatMul<^training/TFOptimizer/gradients/dense_1/MatMul_grad/MatMul_1
Ų
Ktraining/TFOptimizer/gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity9training/TFOptimizer/gradients/dense_1/MatMul_grad/MatMulD^training/TFOptimizer/gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@training/TFOptimizer/gradients/dense_1/MatMul_grad/MatMul*'
_output_shapes
:’’’’’’’’’
Õ
Mtraining/TFOptimizer/gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity;training/TFOptimizer/gradients/dense_1/MatMul_grad/MatMul_1D^training/TFOptimizer/gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@training/TFOptimizer/gradients/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:0
Ī
7training/TFOptimizer/gradients/dense/Relu_grad/ReluGradReluGradKtraining/TFOptimizer/gradients/dense_1/MatMul_grad/tuple/control_dependency
dense/Relu*
T0*'
_output_shapes
:’’’’’’’’’
Į
=training/TFOptimizer/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad7training/TFOptimizer/gradients/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
Ä
Btraining/TFOptimizer/gradients/dense/BiasAdd_grad/tuple/group_depsNoOp>^training/TFOptimizer/gradients/dense/BiasAdd_grad/BiasAddGrad8^training/TFOptimizer/gradients/dense/Relu_grad/ReluGrad
Ņ
Jtraining/TFOptimizer/gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity7training/TFOptimizer/gradients/dense/Relu_grad/ReluGradC^training/TFOptimizer/gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*J
_class@
><loc:@training/TFOptimizer/gradients/dense/Relu_grad/ReluGrad*'
_output_shapes
:’’’’’’’’’
Ó
Ltraining/TFOptimizer/gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity=training/TFOptimizer/gradients/dense/BiasAdd_grad/BiasAddGradC^training/TFOptimizer/gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*P
_classF
DBloc:@training/TFOptimizer/gradients/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:

7training/TFOptimizer/gradients/dense/MatMul_grad/MatMulMatMulJtraining/TFOptimizer/gradients/dense/BiasAdd_grad/tuple/control_dependencydense/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(*
T0
ė
9training/TFOptimizer/gradients/dense/MatMul_grad/MatMul_1MatMuldense_inputJtraining/TFOptimizer/gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:*
transpose_a(
æ
Atraining/TFOptimizer/gradients/dense/MatMul_grad/tuple/group_depsNoOp8^training/TFOptimizer/gradients/dense/MatMul_grad/MatMul:^training/TFOptimizer/gradients/dense/MatMul_grad/MatMul_1
Š
Itraining/TFOptimizer/gradients/dense/MatMul_grad/tuple/control_dependencyIdentity7training/TFOptimizer/gradients/dense/MatMul_grad/MatMulB^training/TFOptimizer/gradients/dense/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@training/TFOptimizer/gradients/dense/MatMul_grad/MatMul*'
_output_shapes
:’’’’’’’’’
Ķ
Ktraining/TFOptimizer/gradients/dense/MatMul_grad/tuple/control_dependency_1Identity9training/TFOptimizer/gradients/dense/MatMul_grad/MatMul_1B^training/TFOptimizer/gradients/dense/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@training/TFOptimizer/gradients/dense/MatMul_grad/MatMul_1*
_output_shapes

:

=training/TFOptimizer/dense/kernel/RMSProp/Read/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:
¦
2training/TFOptimizer/dense/kernel/RMSProp/IdentityIdentity=training/TFOptimizer/dense/kernel/RMSProp/Read/ReadVariableOp*
T0*
_output_shapes

:
Ģ
%dense/kernel/RMSProp/Initializer/onesConst*P
_classF
DBloc:@training/TFOptimizer/dense/kernel/RMSProp/Read/ReadVariableOp*
valueB*  ?*
dtype0*
_output_shapes

:
ē
dense/kernel/RMSPropVarHandleOp*P
_classF
DBloc:@training/TFOptimizer/dense/kernel/RMSProp/Read/ReadVariableOp*
	container *
shape
:*
dtype0*
_output_shapes
: *%
shared_namedense/kernel/RMSProp
Ė
5dense/kernel/RMSProp/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel/RMSProp*P
_classF
DBloc:@training/TFOptimizer/dense/kernel/RMSProp/Read/ReadVariableOp*
_output_shapes
: 
Ė
dense/kernel/RMSProp/AssignAssignVariableOpdense/kernel/RMSProp%dense/kernel/RMSProp/Initializer/ones*P
_classF
DBloc:@training/TFOptimizer/dense/kernel/RMSProp/Read/ReadVariableOp*
dtype0
Ļ
(dense/kernel/RMSProp/Read/ReadVariableOpReadVariableOpdense/kernel/RMSProp*
dtype0*
_output_shapes

:*P
_classF
DBloc:@training/TFOptimizer/dense/kernel/RMSProp/Read/ReadVariableOp

?training/TFOptimizer/dense/kernel/RMSProp_1/Read/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:
Ŗ
4training/TFOptimizer/dense/kernel/RMSProp_1/IdentityIdentity?training/TFOptimizer/dense/kernel/RMSProp_1/Read/ReadVariableOp*
T0*
_output_shapes

:
Ń
(dense/kernel/RMSProp_1/Initializer/zerosConst*R
_classH
FDloc:@training/TFOptimizer/dense/kernel/RMSProp_1/Read/ReadVariableOp*
valueB*    *
dtype0*
_output_shapes

:
ķ
dense/kernel/RMSProp_1VarHandleOp*
	container *
shape
:*
dtype0*
_output_shapes
: *'
shared_namedense/kernel/RMSProp_1*R
_classH
FDloc:@training/TFOptimizer/dense/kernel/RMSProp_1/Read/ReadVariableOp
Ń
7dense/kernel/RMSProp_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel/RMSProp_1*R
_classH
FDloc:@training/TFOptimizer/dense/kernel/RMSProp_1/Read/ReadVariableOp*
_output_shapes
: 
Ō
dense/kernel/RMSProp_1/AssignAssignVariableOpdense/kernel/RMSProp_1(dense/kernel/RMSProp_1/Initializer/zeros*R
_classH
FDloc:@training/TFOptimizer/dense/kernel/RMSProp_1/Read/ReadVariableOp*
dtype0
Õ
*dense/kernel/RMSProp_1/Read/ReadVariableOpReadVariableOpdense/kernel/RMSProp_1*
dtype0*
_output_shapes

:*R
_classH
FDloc:@training/TFOptimizer/dense/kernel/RMSProp_1/Read/ReadVariableOp

;training/TFOptimizer/dense/bias/RMSProp/Read/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:

0training/TFOptimizer/dense/bias/RMSProp/IdentityIdentity;training/TFOptimizer/dense/bias/RMSProp/Read/ReadVariableOp*
T0*
_output_shapes
:
Ą
#dense/bias/RMSProp/Initializer/onesConst*N
_classD
B@loc:@training/TFOptimizer/dense/bias/RMSProp/Read/ReadVariableOp*
valueB*  ?*
dtype0*
_output_shapes
:
Ż
dense/bias/RMSPropVarHandleOp*N
_classD
B@loc:@training/TFOptimizer/dense/bias/RMSProp/Read/ReadVariableOp*
	container *
shape:*
dtype0*
_output_shapes
: *#
shared_namedense/bias/RMSProp
Å
3dense/bias/RMSProp/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/bias/RMSProp*
_output_shapes
: *N
_classD
B@loc:@training/TFOptimizer/dense/bias/RMSProp/Read/ReadVariableOp
Ć
dense/bias/RMSProp/AssignAssignVariableOpdense/bias/RMSProp#dense/bias/RMSProp/Initializer/ones*N
_classD
B@loc:@training/TFOptimizer/dense/bias/RMSProp/Read/ReadVariableOp*
dtype0
Å
&dense/bias/RMSProp/Read/ReadVariableOpReadVariableOpdense/bias/RMSProp*
dtype0*
_output_shapes
:*N
_classD
B@loc:@training/TFOptimizer/dense/bias/RMSProp/Read/ReadVariableOp

=training/TFOptimizer/dense/bias/RMSProp_1/Read/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
¢
2training/TFOptimizer/dense/bias/RMSProp_1/IdentityIdentity=training/TFOptimizer/dense/bias/RMSProp_1/Read/ReadVariableOp*
T0*
_output_shapes
:
Å
&dense/bias/RMSProp_1/Initializer/zerosConst*P
_classF
DBloc:@training/TFOptimizer/dense/bias/RMSProp_1/Read/ReadVariableOp*
valueB*    *
dtype0*
_output_shapes
:
ć
dense/bias/RMSProp_1VarHandleOp*
dtype0*
_output_shapes
: *%
shared_namedense/bias/RMSProp_1*P
_classF
DBloc:@training/TFOptimizer/dense/bias/RMSProp_1/Read/ReadVariableOp*
	container *
shape:
Ė
5dense/bias/RMSProp_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/bias/RMSProp_1*
_output_shapes
: *P
_classF
DBloc:@training/TFOptimizer/dense/bias/RMSProp_1/Read/ReadVariableOp
Ģ
dense/bias/RMSProp_1/AssignAssignVariableOpdense/bias/RMSProp_1&dense/bias/RMSProp_1/Initializer/zeros*P
_classF
DBloc:@training/TFOptimizer/dense/bias/RMSProp_1/Read/ReadVariableOp*
dtype0
Ė
(dense/bias/RMSProp_1/Read/ReadVariableOpReadVariableOpdense/bias/RMSProp_1*P
_classF
DBloc:@training/TFOptimizer/dense/bias/RMSProp_1/Read/ReadVariableOp*
dtype0*
_output_shapes
:

?training/TFOptimizer/dense_1/kernel/RMSProp/Read/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:0
Ŗ
4training/TFOptimizer/dense_1/kernel/RMSProp/IdentityIdentity?training/TFOptimizer/dense_1/kernel/RMSProp/Read/ReadVariableOp*
_output_shapes

:0*
T0
Ü
7dense_1/kernel/RMSProp/Initializer/ones/shape_as_tensorConst*R
_classH
FDloc:@training/TFOptimizer/dense_1/kernel/RMSProp/Read/ReadVariableOp*
valueB"   0   *
dtype0*
_output_shapes
:
Ę
-dense_1/kernel/RMSProp/Initializer/ones/ConstConst*
dtype0*
_output_shapes
: *R
_classH
FDloc:@training/TFOptimizer/dense_1/kernel/RMSProp/Read/ReadVariableOp*
valueB
 *  ?
¦
'dense_1/kernel/RMSProp/Initializer/onesFill7dense_1/kernel/RMSProp/Initializer/ones/shape_as_tensor-dense_1/kernel/RMSProp/Initializer/ones/Const*
T0*R
_classH
FDloc:@training/TFOptimizer/dense_1/kernel/RMSProp/Read/ReadVariableOp*

index_type0*
_output_shapes

:0
ķ
dense_1/kernel/RMSPropVarHandleOp*R
_classH
FDloc:@training/TFOptimizer/dense_1/kernel/RMSProp/Read/ReadVariableOp*
	container *
shape
:0*
dtype0*
_output_shapes
: *'
shared_namedense_1/kernel/RMSProp
Ń
7dense_1/kernel/RMSProp/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel/RMSProp*
_output_shapes
: *R
_classH
FDloc:@training/TFOptimizer/dense_1/kernel/RMSProp/Read/ReadVariableOp
Ó
dense_1/kernel/RMSProp/AssignAssignVariableOpdense_1/kernel/RMSProp'dense_1/kernel/RMSProp/Initializer/ones*R
_classH
FDloc:@training/TFOptimizer/dense_1/kernel/RMSProp/Read/ReadVariableOp*
dtype0
Õ
*dense_1/kernel/RMSProp/Read/ReadVariableOpReadVariableOpdense_1/kernel/RMSProp*R
_classH
FDloc:@training/TFOptimizer/dense_1/kernel/RMSProp/Read/ReadVariableOp*
dtype0*
_output_shapes

:0

Atraining/TFOptimizer/dense_1/kernel/RMSProp_1/Read/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:0
®
6training/TFOptimizer/dense_1/kernel/RMSProp_1/IdentityIdentityAtraining/TFOptimizer/dense_1/kernel/RMSProp_1/Read/ReadVariableOp*
T0*
_output_shapes

:0
į
:dense_1/kernel/RMSProp_1/Initializer/zeros/shape_as_tensorConst*T
_classJ
HFloc:@training/TFOptimizer/dense_1/kernel/RMSProp_1/Read/ReadVariableOp*
valueB"   0   *
dtype0*
_output_shapes
:
Ė
0dense_1/kernel/RMSProp_1/Initializer/zeros/ConstConst*T
_classJ
HFloc:@training/TFOptimizer/dense_1/kernel/RMSProp_1/Read/ReadVariableOp*
valueB
 *    *
dtype0*
_output_shapes
: 
±
*dense_1/kernel/RMSProp_1/Initializer/zerosFill:dense_1/kernel/RMSProp_1/Initializer/zeros/shape_as_tensor0dense_1/kernel/RMSProp_1/Initializer/zeros/Const*
T0*T
_classJ
HFloc:@training/TFOptimizer/dense_1/kernel/RMSProp_1/Read/ReadVariableOp*

index_type0*
_output_shapes

:0
ó
dense_1/kernel/RMSProp_1VarHandleOp*
	container *
shape
:0*
dtype0*
_output_shapes
: *)
shared_namedense_1/kernel/RMSProp_1*T
_classJ
HFloc:@training/TFOptimizer/dense_1/kernel/RMSProp_1/Read/ReadVariableOp
×
9dense_1/kernel/RMSProp_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel/RMSProp_1*
_output_shapes
: *T
_classJ
HFloc:@training/TFOptimizer/dense_1/kernel/RMSProp_1/Read/ReadVariableOp
Ü
dense_1/kernel/RMSProp_1/AssignAssignVariableOpdense_1/kernel/RMSProp_1*dense_1/kernel/RMSProp_1/Initializer/zeros*T
_classJ
HFloc:@training/TFOptimizer/dense_1/kernel/RMSProp_1/Read/ReadVariableOp*
dtype0
Ū
,dense_1/kernel/RMSProp_1/Read/ReadVariableOpReadVariableOpdense_1/kernel/RMSProp_1*T
_classJ
HFloc:@training/TFOptimizer/dense_1/kernel/RMSProp_1/Read/ReadVariableOp*
dtype0*
_output_shapes

:0

=training/TFOptimizer/dense_1/bias/RMSProp/Read/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:0
¢
2training/TFOptimizer/dense_1/bias/RMSProp/IdentityIdentity=training/TFOptimizer/dense_1/bias/RMSProp/Read/ReadVariableOp*
_output_shapes
:0*
T0
Ä
%dense_1/bias/RMSProp/Initializer/onesConst*P
_classF
DBloc:@training/TFOptimizer/dense_1/bias/RMSProp/Read/ReadVariableOp*
valueB0*  ?*
dtype0*
_output_shapes
:0
ć
dense_1/bias/RMSPropVarHandleOp*%
shared_namedense_1/bias/RMSProp*P
_classF
DBloc:@training/TFOptimizer/dense_1/bias/RMSProp/Read/ReadVariableOp*
	container *
shape:0*
dtype0*
_output_shapes
: 
Ė
5dense_1/bias/RMSProp/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias/RMSProp*
_output_shapes
: *P
_classF
DBloc:@training/TFOptimizer/dense_1/bias/RMSProp/Read/ReadVariableOp
Ė
dense_1/bias/RMSProp/AssignAssignVariableOpdense_1/bias/RMSProp%dense_1/bias/RMSProp/Initializer/ones*P
_classF
DBloc:@training/TFOptimizer/dense_1/bias/RMSProp/Read/ReadVariableOp*
dtype0
Ė
(dense_1/bias/RMSProp/Read/ReadVariableOpReadVariableOpdense_1/bias/RMSProp*P
_classF
DBloc:@training/TFOptimizer/dense_1/bias/RMSProp/Read/ReadVariableOp*
dtype0*
_output_shapes
:0

?training/TFOptimizer/dense_1/bias/RMSProp_1/Read/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:0
¦
4training/TFOptimizer/dense_1/bias/RMSProp_1/IdentityIdentity?training/TFOptimizer/dense_1/bias/RMSProp_1/Read/ReadVariableOp*
T0*
_output_shapes
:0
É
(dense_1/bias/RMSProp_1/Initializer/zerosConst*R
_classH
FDloc:@training/TFOptimizer/dense_1/bias/RMSProp_1/Read/ReadVariableOp*
valueB0*    *
dtype0*
_output_shapes
:0
é
dense_1/bias/RMSProp_1VarHandleOp*R
_classH
FDloc:@training/TFOptimizer/dense_1/bias/RMSProp_1/Read/ReadVariableOp*
	container *
shape:0*
dtype0*
_output_shapes
: *'
shared_namedense_1/bias/RMSProp_1
Ń
7dense_1/bias/RMSProp_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias/RMSProp_1*R
_classH
FDloc:@training/TFOptimizer/dense_1/bias/RMSProp_1/Read/ReadVariableOp*
_output_shapes
: 
Ō
dense_1/bias/RMSProp_1/AssignAssignVariableOpdense_1/bias/RMSProp_1(dense_1/bias/RMSProp_1/Initializer/zeros*R
_classH
FDloc:@training/TFOptimizer/dense_1/bias/RMSProp_1/Read/ReadVariableOp*
dtype0
Ń
*dense_1/bias/RMSProp_1/Read/ReadVariableOpReadVariableOpdense_1/bias/RMSProp_1*R
_classH
FDloc:@training/TFOptimizer/dense_1/bias/RMSProp_1/Read/ReadVariableOp*
dtype0*
_output_shapes
:0

?training/TFOptimizer/dense_2/kernel/RMSProp/Read/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes

:0
Ŗ
4training/TFOptimizer/dense_2/kernel/RMSProp/IdentityIdentity?training/TFOptimizer/dense_2/kernel/RMSProp/Read/ReadVariableOp*
T0*
_output_shapes

:0
Š
'dense_2/kernel/RMSProp/Initializer/onesConst*R
_classH
FDloc:@training/TFOptimizer/dense_2/kernel/RMSProp/Read/ReadVariableOp*
valueB0*  ?*
dtype0*
_output_shapes

:0
ķ
dense_2/kernel/RMSPropVarHandleOp*'
shared_namedense_2/kernel/RMSProp*R
_classH
FDloc:@training/TFOptimizer/dense_2/kernel/RMSProp/Read/ReadVariableOp*
	container *
shape
:0*
dtype0*
_output_shapes
: 
Ń
7dense_2/kernel/RMSProp/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel/RMSProp*R
_classH
FDloc:@training/TFOptimizer/dense_2/kernel/RMSProp/Read/ReadVariableOp*
_output_shapes
: 
Ó
dense_2/kernel/RMSProp/AssignAssignVariableOpdense_2/kernel/RMSProp'dense_2/kernel/RMSProp/Initializer/ones*R
_classH
FDloc:@training/TFOptimizer/dense_2/kernel/RMSProp/Read/ReadVariableOp*
dtype0
Õ
*dense_2/kernel/RMSProp/Read/ReadVariableOpReadVariableOpdense_2/kernel/RMSProp*R
_classH
FDloc:@training/TFOptimizer/dense_2/kernel/RMSProp/Read/ReadVariableOp*
dtype0*
_output_shapes

:0

Atraining/TFOptimizer/dense_2/kernel/RMSProp_1/Read/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes

:0
®
6training/TFOptimizer/dense_2/kernel/RMSProp_1/IdentityIdentityAtraining/TFOptimizer/dense_2/kernel/RMSProp_1/Read/ReadVariableOp*
_output_shapes

:0*
T0
Õ
*dense_2/kernel/RMSProp_1/Initializer/zerosConst*
dtype0*
_output_shapes

:0*T
_classJ
HFloc:@training/TFOptimizer/dense_2/kernel/RMSProp_1/Read/ReadVariableOp*
valueB0*    
ó
dense_2/kernel/RMSProp_1VarHandleOp*)
shared_namedense_2/kernel/RMSProp_1*T
_classJ
HFloc:@training/TFOptimizer/dense_2/kernel/RMSProp_1/Read/ReadVariableOp*
	container *
shape
:0*
dtype0*
_output_shapes
: 
×
9dense_2/kernel/RMSProp_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel/RMSProp_1*T
_classJ
HFloc:@training/TFOptimizer/dense_2/kernel/RMSProp_1/Read/ReadVariableOp*
_output_shapes
: 
Ü
dense_2/kernel/RMSProp_1/AssignAssignVariableOpdense_2/kernel/RMSProp_1*dense_2/kernel/RMSProp_1/Initializer/zeros*T
_classJ
HFloc:@training/TFOptimizer/dense_2/kernel/RMSProp_1/Read/ReadVariableOp*
dtype0
Ū
,dense_2/kernel/RMSProp_1/Read/ReadVariableOpReadVariableOpdense_2/kernel/RMSProp_1*T
_classJ
HFloc:@training/TFOptimizer/dense_2/kernel/RMSProp_1/Read/ReadVariableOp*
dtype0*
_output_shapes

:0

=training/TFOptimizer/dense_2/bias/RMSProp/Read/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:
¢
2training/TFOptimizer/dense_2/bias/RMSProp/IdentityIdentity=training/TFOptimizer/dense_2/bias/RMSProp/Read/ReadVariableOp*
T0*
_output_shapes
:
Ä
%dense_2/bias/RMSProp/Initializer/onesConst*
dtype0*
_output_shapes
:*P
_classF
DBloc:@training/TFOptimizer/dense_2/bias/RMSProp/Read/ReadVariableOp*
valueB*  ?
ć
dense_2/bias/RMSPropVarHandleOp*
dtype0*
_output_shapes
: *%
shared_namedense_2/bias/RMSProp*P
_classF
DBloc:@training/TFOptimizer/dense_2/bias/RMSProp/Read/ReadVariableOp*
	container *
shape:
Ė
5dense_2/bias/RMSProp/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias/RMSProp*P
_classF
DBloc:@training/TFOptimizer/dense_2/bias/RMSProp/Read/ReadVariableOp*
_output_shapes
: 
Ė
dense_2/bias/RMSProp/AssignAssignVariableOpdense_2/bias/RMSProp%dense_2/bias/RMSProp/Initializer/ones*
dtype0*P
_classF
DBloc:@training/TFOptimizer/dense_2/bias/RMSProp/Read/ReadVariableOp
Ė
(dense_2/bias/RMSProp/Read/ReadVariableOpReadVariableOpdense_2/bias/RMSProp*P
_classF
DBloc:@training/TFOptimizer/dense_2/bias/RMSProp/Read/ReadVariableOp*
dtype0*
_output_shapes
:

?training/TFOptimizer/dense_2/bias/RMSProp_1/Read/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:
¦
4training/TFOptimizer/dense_2/bias/RMSProp_1/IdentityIdentity?training/TFOptimizer/dense_2/bias/RMSProp_1/Read/ReadVariableOp*
T0*
_output_shapes
:
É
(dense_2/bias/RMSProp_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*R
_classH
FDloc:@training/TFOptimizer/dense_2/bias/RMSProp_1/Read/ReadVariableOp*
valueB*    
é
dense_2/bias/RMSProp_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_namedense_2/bias/RMSProp_1*R
_classH
FDloc:@training/TFOptimizer/dense_2/bias/RMSProp_1/Read/ReadVariableOp
Ń
7dense_2/bias/RMSProp_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias/RMSProp_1*
_output_shapes
: *R
_classH
FDloc:@training/TFOptimizer/dense_2/bias/RMSProp_1/Read/ReadVariableOp
Ō
dense_2/bias/RMSProp_1/AssignAssignVariableOpdense_2/bias/RMSProp_1(dense_2/bias/RMSProp_1/Initializer/zeros*R
_classH
FDloc:@training/TFOptimizer/dense_2/bias/RMSProp_1/Read/ReadVariableOp*
dtype0
Ń
*dense_2/bias/RMSProp_1/Read/ReadVariableOpReadVariableOpdense_2/bias/RMSProp_1*R
_classH
FDloc:@training/TFOptimizer/dense_2/bias/RMSProp_1/Read/ReadVariableOp*
dtype0*
_output_shapes
:
o
*training/TFOptimizer/RMSProp/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
g
"training/TFOptimizer/RMSProp/decayConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
j
%training/TFOptimizer/RMSProp/momentumConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$training/TFOptimizer/RMSProp/epsilonConst*
valueB
 *’ęŪ.*
dtype0*
_output_shapes
: 

Dtraining/TFOptimizer/RMSProp/update_dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:
“
9training/TFOptimizer/RMSProp/update_dense/kernel/IdentityIdentityDtraining/TFOptimizer/RMSProp/update_dense/kernel/Read/ReadVariableOp*
T0*
_output_shapes

:
ų
Etraining/TFOptimizer/RMSProp/update_dense/kernel/ResourceApplyRMSPropResourceApplyRMSPropdense/kerneldense/kernel/RMSPropdense/kernel/RMSProp_1*training/TFOptimizer/RMSProp/learning_rate"training/TFOptimizer/RMSProp/decay%training/TFOptimizer/RMSProp/momentum$training/TFOptimizer/RMSProp/epsilonKtraining/TFOptimizer/gradients/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*W
_classM
KIloc:@training/TFOptimizer/RMSProp/update_dense/kernel/Read/ReadVariableOp

Btraining/TFOptimizer/RMSProp/update_dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
¬
7training/TFOptimizer/RMSProp/update_dense/bias/IdentityIdentityBtraining/TFOptimizer/RMSProp/update_dense/bias/Read/ReadVariableOp*
_output_shapes
:*
T0
ļ
Ctraining/TFOptimizer/RMSProp/update_dense/bias/ResourceApplyRMSPropResourceApplyRMSProp
dense/biasdense/bias/RMSPropdense/bias/RMSProp_1*training/TFOptimizer/RMSProp/learning_rate"training/TFOptimizer/RMSProp/decay%training/TFOptimizer/RMSProp/momentum$training/TFOptimizer/RMSProp/epsilonLtraining/TFOptimizer/gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*U
_classK
IGloc:@training/TFOptimizer/RMSProp/update_dense/bias/Read/ReadVariableOp*
use_locking( 

Ftraining/TFOptimizer/RMSProp/update_dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:0
ø
;training/TFOptimizer/RMSProp/update_dense_1/kernel/IdentityIdentityFtraining/TFOptimizer/RMSProp/update_dense_1/kernel/Read/ReadVariableOp*
T0*
_output_shapes

:0

Gtraining/TFOptimizer/RMSProp/update_dense_1/kernel/ResourceApplyRMSPropResourceApplyRMSPropdense_1/kerneldense_1/kernel/RMSPropdense_1/kernel/RMSProp_1*training/TFOptimizer/RMSProp/learning_rate"training/TFOptimizer/RMSProp/decay%training/TFOptimizer/RMSProp/momentum$training/TFOptimizer/RMSProp/epsilonMtraining/TFOptimizer/gradients/dense_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*Y
_classO
MKloc:@training/TFOptimizer/RMSProp/update_dense_1/kernel/Read/ReadVariableOp

Dtraining/TFOptimizer/RMSProp/update_dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:0
°
9training/TFOptimizer/RMSProp/update_dense_1/bias/IdentityIdentityDtraining/TFOptimizer/RMSProp/update_dense_1/bias/Read/ReadVariableOp*
T0*
_output_shapes
:0
ū
Etraining/TFOptimizer/RMSProp/update_dense_1/bias/ResourceApplyRMSPropResourceApplyRMSPropdense_1/biasdense_1/bias/RMSPropdense_1/bias/RMSProp_1*training/TFOptimizer/RMSProp/learning_rate"training/TFOptimizer/RMSProp/decay%training/TFOptimizer/RMSProp/momentum$training/TFOptimizer/RMSProp/epsilonNtraining/TFOptimizer/gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*W
_classM
KIloc:@training/TFOptimizer/RMSProp/update_dense_1/bias/Read/ReadVariableOp

Ftraining/TFOptimizer/RMSProp/update_dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes

:0
ø
;training/TFOptimizer/RMSProp/update_dense_2/kernel/IdentityIdentityFtraining/TFOptimizer/RMSProp/update_dense_2/kernel/Read/ReadVariableOp*
T0*
_output_shapes

:0

Gtraining/TFOptimizer/RMSProp/update_dense_2/kernel/ResourceApplyRMSPropResourceApplyRMSPropdense_2/kerneldense_2/kernel/RMSPropdense_2/kernel/RMSProp_1*training/TFOptimizer/RMSProp/learning_rate"training/TFOptimizer/RMSProp/decay%training/TFOptimizer/RMSProp/momentum$training/TFOptimizer/RMSProp/epsilonMtraining/TFOptimizer/gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*Y
_classO
MKloc:@training/TFOptimizer/RMSProp/update_dense_2/kernel/Read/ReadVariableOp

Dtraining/TFOptimizer/RMSProp/update_dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:
°
9training/TFOptimizer/RMSProp/update_dense_2/bias/IdentityIdentityDtraining/TFOptimizer/RMSProp/update_dense_2/bias/Read/ReadVariableOp*
T0*
_output_shapes
:
ū
Etraining/TFOptimizer/RMSProp/update_dense_2/bias/ResourceApplyRMSPropResourceApplyRMSPropdense_2/biasdense_2/bias/RMSPropdense_2/bias/RMSProp_1*training/TFOptimizer/RMSProp/learning_rate"training/TFOptimizer/RMSProp/decay%training/TFOptimizer/RMSProp/momentum$training/TFOptimizer/RMSProp/epsilonNtraining/TFOptimizer/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
T0*W
_classM
KIloc:@training/TFOptimizer/RMSProp/update_dense_2/bias/Read/ReadVariableOp*
use_locking( 
Ż
#training/TFOptimizer/RMSProp/updateNoOpD^training/TFOptimizer/RMSProp/update_dense/bias/ResourceApplyRMSPropF^training/TFOptimizer/RMSProp/update_dense/kernel/ResourceApplyRMSPropF^training/TFOptimizer/RMSProp/update_dense_1/bias/ResourceApplyRMSPropH^training/TFOptimizer/RMSProp/update_dense_1/kernel/ResourceApplyRMSPropF^training/TFOptimizer/RMSProp/update_dense_2/bias/ResourceApplyRMSPropH^training/TFOptimizer/RMSProp/update_dense_2/kernel/ResourceApplyRMSProp
„
0training/TFOptimizer/RMSProp/Read/ReadVariableOpReadVariableOpTFOptimizer/iterations$^training/TFOptimizer/RMSProp/update*
dtype0	*
_output_shapes
: 

%training/TFOptimizer/RMSProp/IdentityIdentity0training/TFOptimizer/RMSProp/Read/ReadVariableOp*
_output_shapes
: *
T0	
Ļ
"training/TFOptimizer/RMSProp/ConstConst$^training/TFOptimizer/RMSProp/update*C
_class9
75loc:@training/TFOptimizer/RMSProp/Read/ReadVariableOp*
value	B	 R*
dtype0	*
_output_shapes
: 
Į
training/TFOptimizer/RMSPropAssignAddVariableOpTFOptimizer/iterations"training/TFOptimizer/RMSProp/Const*C
_class9
75loc:@training/TFOptimizer/RMSProp/Read/ReadVariableOp*
dtype0	
i
training/group_depsNoOp	^loss/mul"^metrics/mean_squared_error/Mean_1^training/TFOptimizer/RMSProp
A

group_depsNoOp	^loss/mul"^metrics/mean_squared_error/Mean_1
X
VarIsInitializedOpVarIsInitializedOpdense_2/bias/RMSProp_1*
_output_shapes
: 
X
VarIsInitializedOp_1VarIsInitializedOpdense/bias/RMSProp_1*
_output_shapes
: 
N
VarIsInitializedOp_2VarIsInitializedOp
dense/bias*
_output_shapes
: 
X
VarIsInitializedOp_3VarIsInitializedOpdense_1/bias/RMSProp*
_output_shapes
: 
Z
VarIsInitializedOp_4VarIsInitializedOpdense_1/bias/RMSProp_1*
_output_shapes
: 
X
VarIsInitializedOp_5VarIsInitializedOpdense/kernel/RMSProp*
_output_shapes
: 
Z
VarIsInitializedOp_6VarIsInitializedOpdense_1/kernel/RMSProp*
_output_shapes
: 
\
VarIsInitializedOp_7VarIsInitializedOpdense_1/kernel/RMSProp_1*
_output_shapes
: 
R
VarIsInitializedOp_8VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
X
VarIsInitializedOp_9VarIsInitializedOpdense_2/bias/RMSProp*
_output_shapes
: 
S
VarIsInitializedOp_10VarIsInitializedOpdense_2/kernel*
_output_shapes
: 
[
VarIsInitializedOp_11VarIsInitializedOpdense_2/kernel/RMSProp*
_output_shapes
: 
Q
VarIsInitializedOp_12VarIsInitializedOpdense/kernel*
_output_shapes
: 
[
VarIsInitializedOp_13VarIsInitializedOpdense/kernel/RMSProp_1*
_output_shapes
: 
W
VarIsInitializedOp_14VarIsInitializedOpdense/bias/RMSProp*
_output_shapes
: 
[
VarIsInitializedOp_15VarIsInitializedOpTFOptimizer/iterations*
_output_shapes
: 
Q
VarIsInitializedOp_16VarIsInitializedOpdense_1/bias*
_output_shapes
: 
Q
VarIsInitializedOp_17VarIsInitializedOpdense_2/bias*
_output_shapes
: 
]
VarIsInitializedOp_18VarIsInitializedOpdense_2/kernel/RMSProp_1*
_output_shapes
: 
Ŗ
initNoOp^TFOptimizer/iterations/Assign^dense/bias/Assign^dense/bias/RMSProp/Assign^dense/bias/RMSProp_1/Assign^dense/kernel/Assign^dense/kernel/RMSProp/Assign^dense/kernel/RMSProp_1/Assign^dense_1/bias/Assign^dense_1/bias/RMSProp/Assign^dense_1/bias/RMSProp_1/Assign^dense_1/kernel/Assign^dense_1/kernel/RMSProp/Assign ^dense_1/kernel/RMSProp_1/Assign^dense_2/bias/Assign^dense_2/bias/RMSProp/Assign^dense_2/bias/RMSProp_1/Assign^dense_2/kernel/Assign^dense_2/kernel/RMSProp/Assign ^dense_2/kernel/RMSProp_1/Assign
p
dense_input_1Placeholder*
shape:’’’’’’’’’*
dtype0*'
_output_shapes
:’’’’’’’’’
¢
.dense_3/kernel/Initializer/random_normal/shapeConst*
dtype0*
_output_shapes
:*!
_class
loc:@dense_3/kernel*
valueB"      

-dense_3/kernel/Initializer/random_normal/meanConst*!
_class
loc:@dense_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

/dense_3/kernel/Initializer/random_normal/stddevConst*!
_class
loc:@dense_3/kernel*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
÷
=dense_3/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal.dense_3/kernel/Initializer/random_normal/shape*
dtype0*
_output_shapes

:*

seed *
T0*!
_class
loc:@dense_3/kernel*
seed2 
ļ
,dense_3/kernel/Initializer/random_normal/mulMul=dense_3/kernel/Initializer/random_normal/RandomStandardNormal/dense_3/kernel/Initializer/random_normal/stddev*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:
Ų
(dense_3/kernel/Initializer/random_normalAdd,dense_3/kernel/Initializer/random_normal/mul-dense_3/kernel/Initializer/random_normal/mean*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:
¬
dense_3/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_3/kernel*!
_class
loc:@dense_3/kernel*
	container *
shape
:
m
/dense_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/kernel*
_output_shapes
: 

dense_3/kernel/AssignAssignVariableOpdense_3/kernel(dense_3/kernel/Initializer/random_normal*!
_class
loc:@dense_3/kernel*
dtype0

"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
dtype0*
_output_shapes

:*!
_class
loc:@dense_3/kernel

dense_3/bias/Initializer/zerosConst*
_class
loc:@dense_3/bias*
valueB*    *
dtype0*
_output_shapes
:
¢
dense_3/biasVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_namedense_3/bias*
_class
loc:@dense_3/bias
i
-dense_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/bias*
_output_shapes
: 

dense_3/bias/AssignAssignVariableOpdense_3/biasdense_3/bias/Initializer/zeros*
dtype0*
_class
loc:@dense_3/bias

 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:
l
dense_3/MatMul/ReadVariableOpReadVariableOpdense_3/kernel*
dtype0*
_output_shapes

:

dense_3/MatMulMatMuldense_input_1dense_3/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( *
T0
g
dense_3/BiasAdd/ReadVariableOpReadVariableOpdense_3/bias*
dtype0*
_output_shapes
:

dense_3/BiasAddBiasAdddense_3/MatMuldense_3/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’*
T0
W
dense_3/ReluReludense_3/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
¦
0dense_1_1/kernel/Initializer/random_normal/shapeConst*#
_class
loc:@dense_1_1/kernel*
valueB"   0   *
dtype0*
_output_shapes
:

/dense_1_1/kernel/Initializer/random_normal/meanConst*#
_class
loc:@dense_1_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1dense_1_1/kernel/Initializer/random_normal/stddevConst*#
_class
loc:@dense_1_1/kernel*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
ż
?dense_1_1/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal0dense_1_1/kernel/Initializer/random_normal/shape*

seed *
T0*#
_class
loc:@dense_1_1/kernel*
seed2 *
dtype0*
_output_shapes

:0
÷
.dense_1_1/kernel/Initializer/random_normal/mulMul?dense_1_1/kernel/Initializer/random_normal/RandomStandardNormal1dense_1_1/kernel/Initializer/random_normal/stddev*
T0*#
_class
loc:@dense_1_1/kernel*
_output_shapes

:0
ą
*dense_1_1/kernel/Initializer/random_normalAdd.dense_1_1/kernel/Initializer/random_normal/mul/dense_1_1/kernel/Initializer/random_normal/mean*
T0*#
_class
loc:@dense_1_1/kernel*
_output_shapes

:0
²
dense_1_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namedense_1_1/kernel*#
_class
loc:@dense_1_1/kernel*
	container *
shape
:0
q
1dense_1_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1_1/kernel*
_output_shapes
: 

dense_1_1/kernel/AssignAssignVariableOpdense_1_1/kernel*dense_1_1/kernel/Initializer/random_normal*#
_class
loc:@dense_1_1/kernel*
dtype0

$dense_1_1/kernel/Read/ReadVariableOpReadVariableOpdense_1_1/kernel*#
_class
loc:@dense_1_1/kernel*
dtype0*
_output_shapes

:0

 dense_1_1/bias/Initializer/zerosConst*!
_class
loc:@dense_1_1/bias*
valueB0*    *
dtype0*
_output_shapes
:0
Ø
dense_1_1/biasVarHandleOp*
shared_namedense_1_1/bias*!
_class
loc:@dense_1_1/bias*
	container *
shape:0*
dtype0*
_output_shapes
: 
m
/dense_1_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1_1/bias*
_output_shapes
: 

dense_1_1/bias/AssignAssignVariableOpdense_1_1/bias dense_1_1/bias/Initializer/zeros*!
_class
loc:@dense_1_1/bias*
dtype0

"dense_1_1/bias/Read/ReadVariableOpReadVariableOpdense_1_1/bias*
dtype0*
_output_shapes
:0*!
_class
loc:@dense_1_1/bias
p
dense_1_1/MatMul/ReadVariableOpReadVariableOpdense_1_1/kernel*
dtype0*
_output_shapes

:0
”
dense_1_1/MatMulMatMuldense_3/Reludense_1_1/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:’’’’’’’’’0*
transpose_a( 
k
 dense_1_1/BiasAdd/ReadVariableOpReadVariableOpdense_1_1/bias*
dtype0*
_output_shapes
:0

dense_1_1/BiasAddBiasAdddense_1_1/MatMul dense_1_1/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’0*
T0
[
dense_1_1/ReluReludense_1_1/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’0
¦
0dense_2_1/kernel/Initializer/random_normal/shapeConst*
dtype0*
_output_shapes
:*#
_class
loc:@dense_2_1/kernel*
valueB"0      

/dense_2_1/kernel/Initializer/random_normal/meanConst*#
_class
loc:@dense_2_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1dense_2_1/kernel/Initializer/random_normal/stddevConst*#
_class
loc:@dense_2_1/kernel*
valueB
 *ĶĢL=*
dtype0*
_output_shapes
: 
ż
?dense_2_1/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal0dense_2_1/kernel/Initializer/random_normal/shape*
dtype0*
_output_shapes

:0*

seed *
T0*#
_class
loc:@dense_2_1/kernel*
seed2 
÷
.dense_2_1/kernel/Initializer/random_normal/mulMul?dense_2_1/kernel/Initializer/random_normal/RandomStandardNormal1dense_2_1/kernel/Initializer/random_normal/stddev*
T0*#
_class
loc:@dense_2_1/kernel*
_output_shapes

:0
ą
*dense_2_1/kernel/Initializer/random_normalAdd.dense_2_1/kernel/Initializer/random_normal/mul/dense_2_1/kernel/Initializer/random_normal/mean*
T0*#
_class
loc:@dense_2_1/kernel*
_output_shapes

:0
²
dense_2_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namedense_2_1/kernel*#
_class
loc:@dense_2_1/kernel*
	container *
shape
:0
q
1dense_2_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2_1/kernel*
_output_shapes
: 

dense_2_1/kernel/AssignAssignVariableOpdense_2_1/kernel*dense_2_1/kernel/Initializer/random_normal*#
_class
loc:@dense_2_1/kernel*
dtype0

$dense_2_1/kernel/Read/ReadVariableOpReadVariableOpdense_2_1/kernel*#
_class
loc:@dense_2_1/kernel*
dtype0*
_output_shapes

:0

 dense_2_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*!
_class
loc:@dense_2_1/bias*
valueB*    
Ø
dense_2_1/biasVarHandleOp*!
_class
loc:@dense_2_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_namedense_2_1/bias
m
/dense_2_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2_1/bias*
_output_shapes
: 

dense_2_1/bias/AssignAssignVariableOpdense_2_1/bias dense_2_1/bias/Initializer/zeros*!
_class
loc:@dense_2_1/bias*
dtype0

"dense_2_1/bias/Read/ReadVariableOpReadVariableOpdense_2_1/bias*
dtype0*
_output_shapes
:*!
_class
loc:@dense_2_1/bias
p
dense_2_1/MatMul/ReadVariableOpReadVariableOpdense_2_1/kernel*
dtype0*
_output_shapes

:0
£
dense_2_1/MatMulMatMuldense_1_1/Reludense_2_1/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( 
k
 dense_2_1/BiasAdd/ReadVariableOpReadVariableOpdense_2_1/bias*
dtype0*
_output_shapes
:

dense_2_1/BiasAddBiasAdddense_2_1/MatMul dense_2_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
\
PlaceholderPlaceholder*
dtype0*
_output_shapes

:*
shape
:
N
AssignVariableOpAssignVariableOpdense_3/kernelPlaceholder*
dtype0
p
ReadVariableOpReadVariableOpdense_3/kernel^AssignVariableOp*
dtype0*
_output_shapes

:
V
Placeholder_1Placeholder*
dtype0*
_output_shapes
:*
shape:
P
AssignVariableOp_1AssignVariableOpdense_3/biasPlaceholder_1*
dtype0
n
ReadVariableOp_1ReadVariableOpdense_3/bias^AssignVariableOp_1*
dtype0*
_output_shapes
:
^
Placeholder_2Placeholder*
dtype0*
_output_shapes

:0*
shape
:0
T
AssignVariableOp_2AssignVariableOpdense_1_1/kernelPlaceholder_2*
dtype0
v
ReadVariableOp_2ReadVariableOpdense_1_1/kernel^AssignVariableOp_2*
dtype0*
_output_shapes

:0
V
Placeholder_3Placeholder*
dtype0*
_output_shapes
:0*
shape:0
R
AssignVariableOp_3AssignVariableOpdense_1_1/biasPlaceholder_3*
dtype0
p
ReadVariableOp_3ReadVariableOpdense_1_1/bias^AssignVariableOp_3*
dtype0*
_output_shapes
:0
^
Placeholder_4Placeholder*
dtype0*
_output_shapes

:0*
shape
:0
T
AssignVariableOp_4AssignVariableOpdense_2_1/kernelPlaceholder_4*
dtype0
v
ReadVariableOp_4ReadVariableOpdense_2_1/kernel^AssignVariableOp_4*
dtype0*
_output_shapes

:0
V
Placeholder_5Placeholder*
dtype0*
_output_shapes
:*
shape:
R
AssignVariableOp_5AssignVariableOpdense_2_1/biasPlaceholder_5*
dtype0
p
ReadVariableOp_5ReadVariableOpdense_2_1/bias^AssignVariableOp_5*
dtype0*
_output_shapes
:
U
VarIsInitializedOp_19VarIsInitializedOpdense_2_1/kernel*
_output_shapes
: 
S
VarIsInitializedOp_20VarIsInitializedOpdense_2_1/bias*
_output_shapes
: 
Q
VarIsInitializedOp_21VarIsInitializedOpdense_3/bias*
_output_shapes
: 
S
VarIsInitializedOp_22VarIsInitializedOpdense_3/kernel*
_output_shapes
: 
U
VarIsInitializedOp_23VarIsInitializedOpdense_1_1/kernel*
_output_shapes
: 
S
VarIsInitializedOp_24VarIsInitializedOpdense_1_1/bias*
_output_shapes
: 
 
init_1NoOp^dense_1_1/bias/Assign^dense_1_1/kernel/Assign^dense_2_1/bias/Assign^dense_2_1/kernel/Assign^dense_3/bias/Assign^dense_3/kernel/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_bb34f840bbce4a848e9aa259670bff04/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Ł
save/SaveV2/tensor_namesConst"/device:CPU:0*ż
valueóBšBTFOptimizer/iterationsB
dense/biasBdense/bias/RMSPropBdense/bias/RMSProp_1Bdense/kernelBdense/kernel/RMSPropBdense/kernel/RMSProp_1Bdense_1/biasBdense_1/bias/RMSPropBdense_1/bias/RMSProp_1Bdense_1/kernelBdense_1/kernel/RMSPropBdense_1/kernel/RMSProp_1Bdense_1_1/biasBdense_1_1/kernelBdense_2/biasBdense_2/bias/RMSPropBdense_2/bias/RMSProp_1Bdense_2/kernelBdense_2/kernel/RMSPropBdense_2/kernel/RMSProp_1Bdense_2_1/biasBdense_2_1/kernelBdense_3/biasBdense_3/kernel*
dtype0*
_output_shapes
:
¤
save/SaveV2/shape_and_slicesConst"/device:CPU:0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
÷
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices*TFOptimizer/iterations/Read/ReadVariableOpdense/bias/Read/ReadVariableOp&dense/bias/RMSProp/Read/ReadVariableOp(dense/bias/RMSProp_1/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp(dense/kernel/RMSProp/Read/ReadVariableOp*dense/kernel/RMSProp_1/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp(dense_1/bias/RMSProp/Read/ReadVariableOp*dense_1/bias/RMSProp_1/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp*dense_1/kernel/RMSProp/Read/ReadVariableOp,dense_1/kernel/RMSProp_1/Read/ReadVariableOp"dense_1_1/bias/Read/ReadVariableOp$dense_1_1/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp(dense_2/bias/RMSProp/Read/ReadVariableOp*dense_2/bias/RMSProp_1/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp*dense_2/kernel/RMSProp/Read/ReadVariableOp,dense_2/kernel/RMSProp_1/Read/ReadVariableOp"dense_2_1/bias/Read/ReadVariableOp$dense_2_1/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp"/device:CPU:0*'
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
¬
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
Ü
save/RestoreV2/tensor_namesConst"/device:CPU:0*ż
valueóBšBTFOptimizer/iterationsB
dense/biasBdense/bias/RMSPropBdense/bias/RMSProp_1Bdense/kernelBdense/kernel/RMSPropBdense/kernel/RMSProp_1Bdense_1/biasBdense_1/bias/RMSPropBdense_1/bias/RMSProp_1Bdense_1/kernelBdense_1/kernel/RMSPropBdense_1/kernel/RMSProp_1Bdense_1_1/biasBdense_1_1/kernelBdense_2/biasBdense_2/bias/RMSPropBdense_2/bias/RMSProp_1Bdense_2/kernelBdense_2/kernel/RMSPropBdense_2/kernel/RMSProp_1Bdense_2_1/biasBdense_2_1/kernelBdense_3/biasBdense_3/kernel*
dtype0*
_output_shapes
:
§
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	
N
save/Identity_1Identitysave/RestoreV2*
T0	*
_output_shapes
:
_
save/AssignVariableOpAssignVariableOpTFOptimizer/iterationssave/Identity_1*
dtype0	
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
U
save/AssignVariableOp_1AssignVariableOp
dense/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
]
save/AssignVariableOp_2AssignVariableOpdense/bias/RMSPropsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
_output_shapes
:*
T0
_
save/AssignVariableOp_3AssignVariableOpdense/bias/RMSProp_1save/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
W
save/AssignVariableOp_4AssignVariableOpdense/kernelsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
_
save/AssignVariableOp_5AssignVariableOpdense/kernel/RMSPropsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
a
save/AssignVariableOp_6AssignVariableOpdense/kernel/RMSProp_1save/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
_output_shapes
:*
T0
W
save/AssignVariableOp_7AssignVariableOpdense_1/biassave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
_
save/AssignVariableOp_8AssignVariableOpdense_1/bias/RMSPropsave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
_output_shapes
:*
T0
b
save/AssignVariableOp_9AssignVariableOpdense_1/bias/RMSProp_1save/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
[
save/AssignVariableOp_10AssignVariableOpdense_1/kernelsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
c
save/AssignVariableOp_11AssignVariableOpdense_1/kernel/RMSPropsave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
e
save/AssignVariableOp_12AssignVariableOpdense_1/kernel/RMSProp_1save/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
[
save/AssignVariableOp_13AssignVariableOpdense_1_1/biassave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
]
save/AssignVariableOp_14AssignVariableOpdense_1_1/kernelsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
Y
save/AssignVariableOp_15AssignVariableOpdense_2/biassave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
a
save/AssignVariableOp_16AssignVariableOpdense_2/bias/RMSPropsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
c
save/AssignVariableOp_17AssignVariableOpdense_2/bias/RMSProp_1save/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
[
save/AssignVariableOp_18AssignVariableOpdense_2/kernelsave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
c
save/AssignVariableOp_19AssignVariableOpdense_2/kernel/RMSPropsave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
e
save/AssignVariableOp_20AssignVariableOpdense_2/kernel/RMSProp_1save/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
_output_shapes
:*
T0
[
save/AssignVariableOp_21AssignVariableOpdense_2_1/biassave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
_output_shapes
:*
T0
]
save/AssignVariableOp_22AssignVariableOpdense_2_1/kernelsave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
Y
save/AssignVariableOp_23AssignVariableOpdense_3/biassave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
[
save/AssignVariableOp_24AssignVariableOpdense_3/kernelsave/Identity_25*
dtype0
±
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"ū
trainable_variablesćą
w
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2(dense/kernel/Initializer/random_normal:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2*dense_1/kernel/Initializer/random_normal:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08

dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2*dense_2/kernel/Initializer/random_normal:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08

TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08

dense_3/kernel:0dense_3/kernel/Assign$dense_3/kernel/Read/ReadVariableOp:0(2*dense_3/kernel/Initializer/random_normal:08
o
dense_3/bias:0dense_3/bias/Assign"dense_3/bias/Read/ReadVariableOp:0(2 dense_3/bias/Initializer/zeros:08

dense_1_1/kernel:0dense_1_1/kernel/Assign&dense_1_1/kernel/Read/ReadVariableOp:0(2,dense_1_1/kernel/Initializer/random_normal:08
w
dense_1_1/bias:0dense_1_1/bias/Assign$dense_1_1/bias/Read/ReadVariableOp:0(2"dense_1_1/bias/Initializer/zeros:08

dense_2_1/kernel:0dense_2_1/kernel/Assign&dense_2_1/kernel/Read/ReadVariableOp:0(2,dense_2_1/kernel/Initializer/random_normal:08
w
dense_2_1/bias:0dense_2_1/bias/Assign$dense_2_1/bias/Read/ReadVariableOp:0(2"dense_2_1/bias/Initializer/zeros:08",
train_op 

training/TFOptimizer/RMSProp"±w
cond_context ww
Ś
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textQloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *Ū
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0¦
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar:0Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
ėV
Sloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*Ą'
iloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
iloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
jloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
~loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
vloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
tloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
wloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
yloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Rloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Floss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rank:0
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rank:0
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0Õ
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Į
Floss/dense_2_loss/broadcast_weights/assert_broadcastable/values/rank:0wloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0Ņ
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ä
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/rank:0yloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0¦
Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:02ķ"
ź"
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textkloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 * 
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
~loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
vloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
tloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0×
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ō
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0loss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ś
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02¹

¶

mloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*é
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0Ś
kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ą
ploss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0lloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0

Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textNloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *
Yloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
·
Ploss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*Į
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
[loss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0¢
Hloss/dense_2_loss/broadcast_weights/assert_broadcastable/weights/shape:0Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0 
Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0”
Gloss/dense_2_loss/broadcast_weights/assert_broadcastable/values/shape:0Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Dloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_scalar:0Vloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0§
Oloss/dense_2_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Tloss/dense_2_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0"ė
	variablesŻŚ
w
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2(dense/kernel/Initializer/random_normal:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2*dense_1/kernel/Initializer/random_normal:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08

dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2*dense_2/kernel/Initializer/random_normal:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08

TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08

dense/kernel/RMSProp:0dense/kernel/RMSProp/Assign*dense/kernel/RMSProp/Read/ReadVariableOp:0(2'dense/kernel/RMSProp/Initializer/ones:0

dense/kernel/RMSProp_1:0dense/kernel/RMSProp_1/Assign,dense/kernel/RMSProp_1/Read/ReadVariableOp:0(2*dense/kernel/RMSProp_1/Initializer/zeros:0

dense/bias/RMSProp:0dense/bias/RMSProp/Assign(dense/bias/RMSProp/Read/ReadVariableOp:0(2%dense/bias/RMSProp/Initializer/ones:0

dense/bias/RMSProp_1:0dense/bias/RMSProp_1/Assign*dense/bias/RMSProp_1/Read/ReadVariableOp:0(2(dense/bias/RMSProp_1/Initializer/zeros:0

dense_1/kernel/RMSProp:0dense_1/kernel/RMSProp/Assign,dense_1/kernel/RMSProp/Read/ReadVariableOp:0(2)dense_1/kernel/RMSProp/Initializer/ones:0

dense_1/kernel/RMSProp_1:0dense_1/kernel/RMSProp_1/Assign.dense_1/kernel/RMSProp_1/Read/ReadVariableOp:0(2,dense_1/kernel/RMSProp_1/Initializer/zeros:0

dense_1/bias/RMSProp:0dense_1/bias/RMSProp/Assign*dense_1/bias/RMSProp/Read/ReadVariableOp:0(2'dense_1/bias/RMSProp/Initializer/ones:0

dense_1/bias/RMSProp_1:0dense_1/bias/RMSProp_1/Assign,dense_1/bias/RMSProp_1/Read/ReadVariableOp:0(2*dense_1/bias/RMSProp_1/Initializer/zeros:0

dense_2/kernel/RMSProp:0dense_2/kernel/RMSProp/Assign,dense_2/kernel/RMSProp/Read/ReadVariableOp:0(2)dense_2/kernel/RMSProp/Initializer/ones:0

dense_2/kernel/RMSProp_1:0dense_2/kernel/RMSProp_1/Assign.dense_2/kernel/RMSProp_1/Read/ReadVariableOp:0(2,dense_2/kernel/RMSProp_1/Initializer/zeros:0

dense_2/bias/RMSProp:0dense_2/bias/RMSProp/Assign*dense_2/bias/RMSProp/Read/ReadVariableOp:0(2'dense_2/bias/RMSProp/Initializer/ones:0

dense_2/bias/RMSProp_1:0dense_2/bias/RMSProp_1/Assign,dense_2/bias/RMSProp_1/Read/ReadVariableOp:0(2*dense_2/bias/RMSProp_1/Initializer/zeros:0

dense_3/kernel:0dense_3/kernel/Assign$dense_3/kernel/Read/ReadVariableOp:0(2*dense_3/kernel/Initializer/random_normal:08
o
dense_3/bias:0dense_3/bias/Assign"dense_3/bias/Read/ReadVariableOp:0(2 dense_3/bias/Initializer/zeros:08

dense_1_1/kernel:0dense_1_1/kernel/Assign&dense_1_1/kernel/Read/ReadVariableOp:0(2,dense_1_1/kernel/Initializer/random_normal:08
w
dense_1_1/bias:0dense_1_1/bias/Assign$dense_1_1/bias/Read/ReadVariableOp:0(2"dense_1_1/bias/Initializer/zeros:08

dense_2_1/kernel:0dense_2_1/kernel/Assign&dense_2_1/kernel/Read/ReadVariableOp:0(2,dense_2_1/kernel/Initializer/random_normal:08
w
dense_2_1/bias:0dense_2_1/bias/Assign$dense_2_1/bias/Read/ReadVariableOp:0(2"dense_2_1/bias/Initializer/zeros:08*
helpersz
+
x&
dense_input_1:0’’’’’’’’’/
y*
dense_2_1/BiasAdd:0’’’’’’’’’tensorflow/serving/predict