��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48��
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
random_rotation_2/StateVarVarHandleOp*
_output_shapes
: *+

debug_namerandom_rotation_2/StateVar/*
dtype0	*
shape:*+
shared_namerandom_rotation_2/StateVar
�
.random_rotation_2/StateVar/Read/ReadVariableOpReadVariableOprandom_rotation_2/StateVar*
_output_shapes
:*
dtype0	
�
random_flip_2/StateVarVarHandleOp*
_output_shapes
: *'

debug_namerandom_flip_2/StateVar/*
dtype0	*
shape:*'
shared_namerandom_flip_2/StateVar
}
*random_flip_2/StateVar/Read/ReadVariableOpReadVariableOprandom_flip_2/StateVar*
_output_shapes
:*
dtype0	
�
Adam/v/dense_8/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_8/bias/*
dtype0*
shape:*$
shared_nameAdam/v/dense_8/bias
w
'Adam/v/dense_8/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_8/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_8/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_8/bias/*
dtype0*
shape:*$
shared_nameAdam/m/dense_8/bias
w
'Adam/m/dense_8/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_8/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_8/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_8/kernel/*
dtype0*
shape:	�*&
shared_nameAdam/v/dense_8/kernel
�
)Adam/v/dense_8/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_8/kernel*
_output_shapes
:	�*
dtype0
�
Adam/m/dense_8/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_8/kernel/*
dtype0*
shape:	�*&
shared_nameAdam/m/dense_8/kernel
�
)Adam/m/dense_8/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_8/kernel*
_output_shapes
:	�*
dtype0
�
Adam/v/dense_7/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_7/bias/*
dtype0*
shape:�*$
shared_nameAdam/v/dense_7/bias
x
'Adam/v/dense_7/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_7/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_7/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_7/bias/*
dtype0*
shape:�*$
shared_nameAdam/m/dense_7/bias
x
'Adam/m/dense_7/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_7/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_7/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_7/kernel/*
dtype0*
shape:
��*&
shared_nameAdam/v/dense_7/kernel
�
)Adam/v/dense_7/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_7/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/dense_7/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_7/kernel/*
dtype0*
shape:
��*&
shared_nameAdam/m/dense_7/kernel
�
)Adam/m/dense_7/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_7/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/v/dense_6/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_6/bias/*
dtype0*
shape:�*$
shared_nameAdam/v/dense_6/bias
x
'Adam/v/dense_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_6/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_6/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_6/bias/*
dtype0*
shape:�*$
shared_nameAdam/m/dense_6/bias
x
'Adam/m/dense_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_6/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_6/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_6/kernel/*
dtype0*
shape:���*&
shared_nameAdam/v/dense_6/kernel
�
)Adam/v/dense_6/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_6/kernel*!
_output_shapes
:���*
dtype0
�
Adam/m/dense_6/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_6/kernel/*
dtype0*
shape:���*&
shared_nameAdam/m/dense_6/kernel
�
)Adam/m/dense_6/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_6/kernel*!
_output_shapes
:���*
dtype0
�
!Adam/v/batch_normalization_8/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_8/beta/*
dtype0*
shape: *2
shared_name#!Adam/v/batch_normalization_8/beta
�
5Adam/v/batch_normalization_8/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_8/beta*
_output_shapes
: *
dtype0
�
!Adam/m/batch_normalization_8/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_8/beta/*
dtype0*
shape: *2
shared_name#!Adam/m/batch_normalization_8/beta
�
5Adam/m/batch_normalization_8/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_8/beta*
_output_shapes
: *
dtype0
�
"Adam/v/batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_8/gamma/*
dtype0*
shape: *3
shared_name$"Adam/v/batch_normalization_8/gamma
�
6Adam/v/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_8/gamma*
_output_shapes
: *
dtype0
�
"Adam/m/batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_8/gamma/*
dtype0*
shape: *3
shared_name$"Adam/m/batch_normalization_8/gamma
�
6Adam/m/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_8/gamma*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_8/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_8/bias/*
dtype0*
shape: *%
shared_nameAdam/v/conv2d_8/bias
y
(Adam/v/conv2d_8/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_8/bias*
_output_shapes
: *
dtype0
�
Adam/m/conv2d_8/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_8/bias/*
dtype0*
shape: *%
shared_nameAdam/m/conv2d_8/bias
y
(Adam/m/conv2d_8/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_8/bias*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_8/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_8/kernel/*
dtype0*
shape: *'
shared_nameAdam/v/conv2d_8/kernel
�
*Adam/v/conv2d_8/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_8/kernel*&
_output_shapes
: *
dtype0
�
Adam/m/conv2d_8/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_8/kernel/*
dtype0*
shape: *'
shared_nameAdam/m/conv2d_8/kernel
�
*Adam/m/conv2d_8/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_8/kernel*&
_output_shapes
: *
dtype0
�
!Adam/v/batch_normalization_7/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_7/beta/*
dtype0*
shape:*2
shared_name#!Adam/v/batch_normalization_7/beta
�
5Adam/v/batch_normalization_7/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_7/beta*
_output_shapes
:*
dtype0
�
!Adam/m/batch_normalization_7/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_7/beta/*
dtype0*
shape:*2
shared_name#!Adam/m/batch_normalization_7/beta
�
5Adam/m/batch_normalization_7/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_7/beta*
_output_shapes
:*
dtype0
�
"Adam/v/batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_7/gamma/*
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_7/gamma
�
6Adam/v/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_7/gamma*
_output_shapes
:*
dtype0
�
"Adam/m/batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_7/gamma/*
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_7/gamma
�
6Adam/m/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_7/gamma*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_7/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_7/bias/*
dtype0*
shape:*%
shared_nameAdam/v/conv2d_7/bias
y
(Adam/v/conv2d_7/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_7/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_7/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_7/bias/*
dtype0*
shape:*%
shared_nameAdam/m/conv2d_7/bias
y
(Adam/m/conv2d_7/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_7/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_7/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_7/kernel/*
dtype0*
shape:*'
shared_nameAdam/v/conv2d_7/kernel
�
*Adam/v/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_7/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_7/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_7/kernel/*
dtype0*
shape:*'
shared_nameAdam/m/conv2d_7/kernel
�
*Adam/m/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_7/kernel*&
_output_shapes
:*
dtype0
�
!Adam/v/batch_normalization_6/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/v/batch_normalization_6/beta/*
dtype0*
shape:*2
shared_name#!Adam/v/batch_normalization_6/beta
�
5Adam/v/batch_normalization_6/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_6/beta*
_output_shapes
:*
dtype0
�
!Adam/m/batch_normalization_6/betaVarHandleOp*
_output_shapes
: *2

debug_name$"Adam/m/batch_normalization_6/beta/*
dtype0*
shape:*2
shared_name#!Adam/m/batch_normalization_6/beta
�
5Adam/m/batch_normalization_6/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_6/beta*
_output_shapes
:*
dtype0
�
"Adam/v/batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_6/gamma/*
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_6/gamma
�
6Adam/v/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_6/gamma*
_output_shapes
:*
dtype0
�
"Adam/m/batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_6/gamma/*
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_6/gamma
�
6Adam/m/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_6/gamma*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_6/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_6/bias/*
dtype0*
shape:*%
shared_nameAdam/v/conv2d_6/bias
y
(Adam/v/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_6/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_6/bias/*
dtype0*
shape:*%
shared_nameAdam/m/conv2d_6/bias
y
(Adam/m/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_6/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_6/kernel/*
dtype0*
shape:*'
shared_nameAdam/v/conv2d_6/kernel
�
*Adam/v/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_6/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_6/kernel/*
dtype0*
shape:*'
shared_nameAdam/m/conv2d_6/kernel
�
*Adam/m/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/kernel*&
_output_shapes
:*
dtype0
�
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
�
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
dense_8/biasVarHandleOp*
_output_shapes
: *

debug_namedense_8/bias/*
dtype0*
shape:*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:*
dtype0
�
dense_8/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_8/kernel/*
dtype0*
shape:	�*
shared_namedense_8/kernel
r
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes
:	�*
dtype0
�
dense_7/biasVarHandleOp*
_output_shapes
: *

debug_namedense_7/bias/*
dtype0*
shape:�*
shared_namedense_7/bias
j
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes	
:�*
dtype0
�
dense_7/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_7/kernel/*
dtype0*
shape:
��*
shared_namedense_7/kernel
s
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel* 
_output_shapes
:
��*
dtype0
�
dense_6/biasVarHandleOp*
_output_shapes
: *

debug_namedense_6/bias/*
dtype0*
shape:�*
shared_namedense_6/bias
j
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes	
:�*
dtype0
�
dense_6/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_6/kernel/*
dtype0*
shape:���*
shared_namedense_6/kernel
t
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*!
_output_shapes
:���*
dtype0
�
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_8/moving_variance/*
dtype0*
shape: *6
shared_name'%batch_normalization_8/moving_variance
�
9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes
: *
dtype0
�
!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_8/moving_mean/*
dtype0*
shape: *2
shared_name#!batch_normalization_8/moving_mean
�
5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes
: *
dtype0
�
batch_normalization_8/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_8/beta/*
dtype0*
shape: *+
shared_namebatch_normalization_8/beta
�
.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes
: *
dtype0
�
batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_8/gamma/*
dtype0*
shape: *,
shared_namebatch_normalization_8/gamma
�
/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes
: *
dtype0
�
conv2d_8/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_8/bias/*
dtype0*
shape: *
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
: *
dtype0
�
conv2d_8/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_8/kernel/*
dtype0*
shape: * 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
: *
dtype0
�
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_7/moving_variance/*
dtype0*
shape:*6
shared_name'%batch_normalization_7/moving_variance
�
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes
:*
dtype0
�
!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_7/moving_mean/*
dtype0*
shape:*2
shared_name#!batch_normalization_7/moving_mean
�
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_7/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_7/beta/*
dtype0*
shape:*+
shared_namebatch_normalization_7/beta
�
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes
:*
dtype0
�
batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_7/gamma/*
dtype0*
shape:*,
shared_namebatch_normalization_7/gamma
�
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes
:*
dtype0
�
conv2d_7/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_7/bias/*
dtype0*
shape:*
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:*
dtype0
�
conv2d_7/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_7/kernel/*
dtype0*
shape:* 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:*
dtype0
�
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_6/moving_variance/*
dtype0*
shape:*6
shared_name'%batch_normalization_6/moving_variance
�
9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes
:*
dtype0
�
!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_6/moving_mean/*
dtype0*
shape:*2
shared_name#!batch_normalization_6/moving_mean
�
5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_6/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_6/beta/*
dtype0*
shape:*+
shared_namebatch_normalization_6/beta
�
.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes
:*
dtype0
�
batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_6/gamma/*
dtype0*
shape:*,
shared_namebatch_normalization_6/gamma
�
/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes
:*
dtype0
�
conv2d_6/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_6/bias/*
dtype0*
shape:*
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:*
dtype0
�
conv2d_6/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_6/kernel/*
dtype0*
shape:* 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:*
dtype0
�
#serving_default_random_flip_2_inputPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCall#serving_default_random_flip_2_inputconv2d_6/kernelconv2d_6/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_7/kernelconv2d_7/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_8/kernelconv2d_8/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_variancedense_6/kerneldense_6/biasdense_7/kerneldense_7/biasdense_8/kerneldense_8/bias*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_302820

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
layer_with_weights-7
layer-17
layer_with_weights-8
layer-18
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#_random_generator*
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses
*_random_generator*
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias
 3_jit_compiled_convolution_op*
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:axis
	;gamma
<beta
=moving_mean
>moving_variance*
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses* 
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses* 
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias
 S_jit_compiled_convolution_op*
�
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Zaxis
	[gamma
\beta
]moving_mean
^moving_variance*
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses* 
�
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses* 
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

qkernel
rbias
 s_jit_compiled_convolution_op*
�
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses
zaxis
	{gamma
|beta
}moving_mean
~moving_variance*
�
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
10
21
;2
<3
=4
>5
Q6
R7
[8
\9
]10
^11
q12
r13
{14
|15
}16
~17
�18
�19
�20
�21
�22
�23*
�
10
21
;2
<3
Q4
R5
[6
\7
q8
r9
{10
|11
�12
�13
�14
�15
�16
�17*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla*

�serving_default* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*

10
21*

10
21*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
;0
<1
=2
>3*

;0
<1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_6/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_6/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_6/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_6/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

Q0
R1*

Q0
R1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
[0
\1
]2
^3*

[0
\1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_7/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_7/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_7/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_7/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

q0
r1*

q0
r1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
{0
|1
}2
~3*

{0
|1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_8/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_8/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_8/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_8/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_8/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_8/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
.
=0
>1
]2
^3
}4
~5*
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18*

�0
�1*
* 
* 
* 
* 
* 
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

�
_state_var*
* 
* 
* 
* 
* 
* 
* 

=0
>1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

]0
^1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

}0
~1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
a[
VARIABLE_VALUEAdam/m/conv2d_6/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_6/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_6/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_6/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/batch_normalization_6/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/batch_normalization_6/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/m/batch_normalization_6/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/v/batch_normalization_6/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_7/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_7/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_7/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_7/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_7/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_7/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_7/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_7/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_8/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_8/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_8/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_8/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_8/gamma2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_8/gamma2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_8/beta2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_8/beta2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_6/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_6/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_6/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_6/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_7/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_7/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_7/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_7/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_8/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_8/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_8/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_8/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUErandom_flip_2/StateVarJlayer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUErandom_rotation_2/StateVarJlayer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_6/kernelconv2d_6/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_7/kernelconv2d_7/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_8/kernelconv2d_8/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_variancedense_6/kerneldense_6/biasdense_7/kerneldense_7/biasdense_8/kerneldense_8/bias	iterationlearning_rateAdam/m/conv2d_6/kernelAdam/v/conv2d_6/kernelAdam/m/conv2d_6/biasAdam/v/conv2d_6/bias"Adam/m/batch_normalization_6/gamma"Adam/v/batch_normalization_6/gamma!Adam/m/batch_normalization_6/beta!Adam/v/batch_normalization_6/betaAdam/m/conv2d_7/kernelAdam/v/conv2d_7/kernelAdam/m/conv2d_7/biasAdam/v/conv2d_7/bias"Adam/m/batch_normalization_7/gamma"Adam/v/batch_normalization_7/gamma!Adam/m/batch_normalization_7/beta!Adam/v/batch_normalization_7/betaAdam/m/conv2d_8/kernelAdam/v/conv2d_8/kernelAdam/m/conv2d_8/biasAdam/v/conv2d_8/bias"Adam/m/batch_normalization_8/gamma"Adam/v/batch_normalization_8/gamma!Adam/m/batch_normalization_8/beta!Adam/v/batch_normalization_8/betaAdam/m/dense_6/kernelAdam/v/dense_6/kernelAdam/m/dense_6/biasAdam/v/dense_6/biasAdam/m/dense_7/kernelAdam/v/dense_7/kernelAdam/m/dense_7/biasAdam/v/dense_7/biasAdam/m/dense_8/kernelAdam/v/dense_8/kernelAdam/m/dense_8/biasAdam/v/dense_8/biasrandom_flip_2/StateVarrandom_rotation_2/StateVartotal_1count_1totalcountConst*Q
TinJ
H2F*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_303869
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_6/kernelconv2d_6/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_7/kernelconv2d_7/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_8/kernelconv2d_8/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_variancedense_6/kerneldense_6/biasdense_7/kerneldense_7/biasdense_8/kerneldense_8/bias	iterationlearning_rateAdam/m/conv2d_6/kernelAdam/v/conv2d_6/kernelAdam/m/conv2d_6/biasAdam/v/conv2d_6/bias"Adam/m/batch_normalization_6/gamma"Adam/v/batch_normalization_6/gamma!Adam/m/batch_normalization_6/beta!Adam/v/batch_normalization_6/betaAdam/m/conv2d_7/kernelAdam/v/conv2d_7/kernelAdam/m/conv2d_7/biasAdam/v/conv2d_7/bias"Adam/m/batch_normalization_7/gamma"Adam/v/batch_normalization_7/gamma!Adam/m/batch_normalization_7/beta!Adam/v/batch_normalization_7/betaAdam/m/conv2d_8/kernelAdam/v/conv2d_8/kernelAdam/m/conv2d_8/biasAdam/v/conv2d_8/bias"Adam/m/batch_normalization_8/gamma"Adam/v/batch_normalization_8/gamma!Adam/m/batch_normalization_8/beta!Adam/v/batch_normalization_8/betaAdam/m/dense_6/kernelAdam/v/dense_6/kernelAdam/m/dense_6/biasAdam/v/dense_6/biasAdam/m/dense_7/kernelAdam/v/dense_7/kernelAdam/m/dense_7/biasAdam/v/dense_7/biasAdam/m/dense_8/kernelAdam/v/dense_8/kernelAdam/m/dense_8/biasAdam/v/dense_8/biasrandom_flip_2/StateVarrandom_rotation_2/StateVartotal_1count_1totalcount*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_304082��
�
�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_301917

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

�
!__inference__wrapped_model_301899
random_flip_2_inputN
4sequential_2_conv2d_6_conv2d_readvariableop_resource:C
5sequential_2_conv2d_6_biasadd_readvariableop_resource:H
:sequential_2_batch_normalization_6_readvariableop_resource:J
<sequential_2_batch_normalization_6_readvariableop_1_resource:Y
Ksequential_2_batch_normalization_6_fusedbatchnormv3_readvariableop_resource:[
Msequential_2_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:N
4sequential_2_conv2d_7_conv2d_readvariableop_resource:C
5sequential_2_conv2d_7_biasadd_readvariableop_resource:H
:sequential_2_batch_normalization_7_readvariableop_resource:J
<sequential_2_batch_normalization_7_readvariableop_1_resource:Y
Ksequential_2_batch_normalization_7_fusedbatchnormv3_readvariableop_resource:[
Msequential_2_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:N
4sequential_2_conv2d_8_conv2d_readvariableop_resource: C
5sequential_2_conv2d_8_biasadd_readvariableop_resource: H
:sequential_2_batch_normalization_8_readvariableop_resource: J
<sequential_2_batch_normalization_8_readvariableop_1_resource: Y
Ksequential_2_batch_normalization_8_fusedbatchnormv3_readvariableop_resource: [
Msequential_2_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource: H
3sequential_2_dense_6_matmul_readvariableop_resource:���C
4sequential_2_dense_6_biasadd_readvariableop_resource:	�G
3sequential_2_dense_7_matmul_readvariableop_resource:
��C
4sequential_2_dense_7_biasadd_readvariableop_resource:	�F
3sequential_2_dense_8_matmul_readvariableop_resource:	�B
4sequential_2_dense_8_biasadd_readvariableop_resource:
identity��Bsequential_2/batch_normalization_6/FusedBatchNormV3/ReadVariableOp�Dsequential_2/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1�1sequential_2/batch_normalization_6/ReadVariableOp�3sequential_2/batch_normalization_6/ReadVariableOp_1�Bsequential_2/batch_normalization_7/FusedBatchNormV3/ReadVariableOp�Dsequential_2/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1�1sequential_2/batch_normalization_7/ReadVariableOp�3sequential_2/batch_normalization_7/ReadVariableOp_1�Bsequential_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp�Dsequential_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1�1sequential_2/batch_normalization_8/ReadVariableOp�3sequential_2/batch_normalization_8/ReadVariableOp_1�,sequential_2/conv2d_6/BiasAdd/ReadVariableOp�+sequential_2/conv2d_6/Conv2D/ReadVariableOp�,sequential_2/conv2d_7/BiasAdd/ReadVariableOp�+sequential_2/conv2d_7/Conv2D/ReadVariableOp�,sequential_2/conv2d_8/BiasAdd/ReadVariableOp�+sequential_2/conv2d_8/Conv2D/ReadVariableOp�+sequential_2/dense_6/BiasAdd/ReadVariableOp�*sequential_2/dense_6/MatMul/ReadVariableOp�+sequential_2/dense_7/BiasAdd/ReadVariableOp�*sequential_2/dense_7/MatMul/ReadVariableOp�+sequential_2/dense_8/BiasAdd/ReadVariableOp�*sequential_2/dense_8/MatMul/ReadVariableOp�
+sequential_2/conv2d_6/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_2/conv2d_6/Conv2DConv2Drandom_flip_2_input3sequential_2/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
,sequential_2/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2/conv2d_6/BiasAddBiasAdd%sequential_2/conv2d_6/Conv2D:output:04sequential_2/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
1sequential_2/batch_normalization_6/ReadVariableOpReadVariableOp:sequential_2_batch_normalization_6_readvariableop_resource*
_output_shapes
:*
dtype0�
3sequential_2/batch_normalization_6/ReadVariableOp_1ReadVariableOp<sequential_2_batch_normalization_6_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Bsequential_2/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_2_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Dsequential_2/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_2_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
3sequential_2/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3&sequential_2/conv2d_6/BiasAdd:output:09sequential_2/batch_normalization_6/ReadVariableOp:value:0;sequential_2/batch_normalization_6/ReadVariableOp_1:value:0Jsequential_2/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_2/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
sequential_2/re_lu_6/ReluRelu7sequential_2/batch_normalization_6/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:������������
$sequential_2/max_pooling2d_6/MaxPoolMaxPool'sequential_2/re_lu_6/Relu:activations:0*1
_output_shapes
:�����������*
ksize
*
paddingVALID*
strides
�
+sequential_2/conv2d_7/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_2/conv2d_7/Conv2DConv2D-sequential_2/max_pooling2d_6/MaxPool:output:03sequential_2/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
,sequential_2/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2/conv2d_7/BiasAddBiasAdd%sequential_2/conv2d_7/Conv2D:output:04sequential_2/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
1sequential_2/batch_normalization_7/ReadVariableOpReadVariableOp:sequential_2_batch_normalization_7_readvariableop_resource*
_output_shapes
:*
dtype0�
3sequential_2/batch_normalization_7/ReadVariableOp_1ReadVariableOp<sequential_2_batch_normalization_7_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Bsequential_2/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_2_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Dsequential_2/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_2_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
3sequential_2/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3&sequential_2/conv2d_7/BiasAdd:output:09sequential_2/batch_normalization_7/ReadVariableOp:value:0;sequential_2/batch_normalization_7/ReadVariableOp_1:value:0Jsequential_2/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_2/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
sequential_2/re_lu_7/ReluRelu7sequential_2/batch_normalization_7/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:������������
$sequential_2/max_pooling2d_7/MaxPoolMaxPool'sequential_2/re_lu_7/Relu:activations:0*/
_output_shapes
:���������@@*
ksize
*
paddingVALID*
strides
�
+sequential_2/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
sequential_2/conv2d_8/Conv2DConv2D-sequential_2/max_pooling2d_7/MaxPool:output:03sequential_2/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
,sequential_2/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_2/conv2d_8/BiasAddBiasAdd%sequential_2/conv2d_8/Conv2D:output:04sequential_2/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ �
1sequential_2/batch_normalization_8/ReadVariableOpReadVariableOp:sequential_2_batch_normalization_8_readvariableop_resource*
_output_shapes
: *
dtype0�
3sequential_2/batch_normalization_8/ReadVariableOp_1ReadVariableOp<sequential_2_batch_normalization_8_readvariableop_1_resource*
_output_shapes
: *
dtype0�
Bsequential_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_2_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
Dsequential_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_2_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
3sequential_2/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3&sequential_2/conv2d_8/BiasAdd:output:09sequential_2/batch_normalization_8/ReadVariableOp:value:0;sequential_2/batch_normalization_8/ReadVariableOp_1:value:0Jsequential_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@ : : : : :*
epsilon%o�:*
is_training( �
sequential_2/re_lu_8/ReluRelu7sequential_2/batch_normalization_8/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������@@ �
$sequential_2/max_pooling2d_8/MaxPoolMaxPool'sequential_2/re_lu_8/Relu:activations:0*/
_output_shapes
:���������   *
ksize
*
paddingVALID*
strides
m
sequential_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� �  �
sequential_2/flatten_2/ReshapeReshape-sequential_2/max_pooling2d_8/MaxPool:output:0%sequential_2/flatten_2/Const:output:0*
T0*)
_output_shapes
:������������
sequential_2/dropout_2/IdentityIdentity'sequential_2/flatten_2/Reshape:output:0*
T0*)
_output_shapes
:������������
*sequential_2/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_6_matmul_readvariableop_resource*!
_output_shapes
:���*
dtype0�
sequential_2/dense_6/MatMulMatMul(sequential_2/dropout_2/Identity:output:02sequential_2/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+sequential_2/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_2/dense_6/BiasAddBiasAdd%sequential_2/dense_6/MatMul:product:03sequential_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
sequential_2/dense_6/ReluRelu%sequential_2/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*sequential_2/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_7_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_2/dense_7/MatMulMatMul'sequential_2/dense_6/Relu:activations:02sequential_2/dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+sequential_2/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_2/dense_7/BiasAddBiasAdd%sequential_2/dense_7/MatMul:product:03sequential_2/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
sequential_2/dense_7/ReluRelu%sequential_2/dense_7/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*sequential_2/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_8_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
sequential_2/dense_8/MatMulMatMul'sequential_2/dense_7/Relu:activations:02sequential_2/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2/dense_8/BiasAddBiasAdd%sequential_2/dense_8/MatMul:product:03sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_2/dense_8/SoftmaxSoftmax%sequential_2/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:���������u
IdentityIdentity&sequential_2/dense_8/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOpC^sequential_2/batch_normalization_6/FusedBatchNormV3/ReadVariableOpE^sequential_2/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12^sequential_2/batch_normalization_6/ReadVariableOp4^sequential_2/batch_normalization_6/ReadVariableOp_1C^sequential_2/batch_normalization_7/FusedBatchNormV3/ReadVariableOpE^sequential_2/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12^sequential_2/batch_normalization_7/ReadVariableOp4^sequential_2/batch_normalization_7/ReadVariableOp_1C^sequential_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOpE^sequential_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12^sequential_2/batch_normalization_8/ReadVariableOp4^sequential_2/batch_normalization_8/ReadVariableOp_1-^sequential_2/conv2d_6/BiasAdd/ReadVariableOp,^sequential_2/conv2d_6/Conv2D/ReadVariableOp-^sequential_2/conv2d_7/BiasAdd/ReadVariableOp,^sequential_2/conv2d_7/Conv2D/ReadVariableOp-^sequential_2/conv2d_8/BiasAdd/ReadVariableOp,^sequential_2/conv2d_8/Conv2D/ReadVariableOp,^sequential_2/dense_6/BiasAdd/ReadVariableOp+^sequential_2/dense_6/MatMul/ReadVariableOp,^sequential_2/dense_7/BiasAdd/ReadVariableOp+^sequential_2/dense_7/MatMul/ReadVariableOp,^sequential_2/dense_8/BiasAdd/ReadVariableOp+^sequential_2/dense_8/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:�����������: : : : : : : : : : : : : : : : : : : : : : : : 2�
Bsequential_2/batch_normalization_6/FusedBatchNormV3/ReadVariableOpBsequential_2/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2�
Dsequential_2/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Dsequential_2/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12f
1sequential_2/batch_normalization_6/ReadVariableOp1sequential_2/batch_normalization_6/ReadVariableOp2j
3sequential_2/batch_normalization_6/ReadVariableOp_13sequential_2/batch_normalization_6/ReadVariableOp_12�
Bsequential_2/batch_normalization_7/FusedBatchNormV3/ReadVariableOpBsequential_2/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2�
Dsequential_2/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Dsequential_2/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12f
1sequential_2/batch_normalization_7/ReadVariableOp1sequential_2/batch_normalization_7/ReadVariableOp2j
3sequential_2/batch_normalization_7/ReadVariableOp_13sequential_2/batch_normalization_7/ReadVariableOp_12�
Bsequential_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOpBsequential_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2�
Dsequential_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Dsequential_2/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12f
1sequential_2/batch_normalization_8/ReadVariableOp1sequential_2/batch_normalization_8/ReadVariableOp2j
3sequential_2/batch_normalization_8/ReadVariableOp_13sequential_2/batch_normalization_8/ReadVariableOp_12\
,sequential_2/conv2d_6/BiasAdd/ReadVariableOp,sequential_2/conv2d_6/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_6/Conv2D/ReadVariableOp+sequential_2/conv2d_6/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_7/BiasAdd/ReadVariableOp,sequential_2/conv2d_7/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_7/Conv2D/ReadVariableOp+sequential_2/conv2d_7/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_8/BiasAdd/ReadVariableOp,sequential_2/conv2d_8/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_8/Conv2D/ReadVariableOp+sequential_2/conv2d_8/Conv2D/ReadVariableOp2Z
+sequential_2/dense_6/BiasAdd/ReadVariableOp+sequential_2/dense_6/BiasAdd/ReadVariableOp2X
*sequential_2/dense_6/MatMul/ReadVariableOp*sequential_2/dense_6/MatMul/ReadVariableOp2Z
+sequential_2/dense_7/BiasAdd/ReadVariableOp+sequential_2/dense_7/BiasAdd/ReadVariableOp2X
*sequential_2/dense_7/MatMul/ReadVariableOp*sequential_2/dense_7/MatMul/ReadVariableOp2Z
+sequential_2/dense_8/BiasAdd/ReadVariableOp+sequential_2/dense_8/BiasAdd/ReadVariableOp2X
*sequential_2/dense_8/MatMul/ReadVariableOp*sequential_2/dense_8/MatMul/ReadVariableOp:f b
1
_output_shapes
:�����������
-
_user_specified_namerandom_flip_2_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
C__inference_dense_8_layer_call_and_return_conditional_losses_302455

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
D
(__inference_re_lu_6_layer_call_fn_303114

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_6_layer_call_and_return_conditional_losses_302328j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
(__inference_dense_6_layer_call_fn_303378

inputs
unknown:���
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_302423p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:&"
 
_user_specified_name303372:&"
 
_user_specified_name303374
�
L
0__inference_max_pooling2d_8_layer_call_fn_303326

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_302110�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�M
�
I__inference_random_flip_2_layer_call_and_return_conditional_losses_302890

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity��(stateful_uniform_full_int/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:������������
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::��~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:���������y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:�����������k
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:������������
IdentityIdentity(stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:�����������M
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource
�

�
6__inference_batch_normalization_6_layer_call_fn_303060

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_301917�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name303050:&"
 
_user_specified_name303052:&"
 
_user_specified_name303054:&"
 
_user_specified_name303056
�
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_303369

inputs

identity_1P
IdentityIdentityinputs*
T0*)
_output_shapes
:�����������]

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:�����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:�����������:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�_
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_302462
random_flip_2_input"
random_flip_2_302176:	&
random_rotation_2_302297:	)
conv2d_6_302310:
conv2d_6_302312:*
batch_normalization_6_302315:*
batch_normalization_6_302317:*
batch_normalization_6_302319:*
batch_normalization_6_302321:)
conv2d_7_302341:
conv2d_7_302343:*
batch_normalization_7_302346:*
batch_normalization_7_302348:*
batch_normalization_7_302350:*
batch_normalization_7_302352:)
conv2d_8_302372: 
conv2d_8_302374: *
batch_normalization_8_302377: *
batch_normalization_8_302379: *
batch_normalization_8_302381: *
batch_normalization_8_302383: #
dense_6_302424:���
dense_6_302426:	�"
dense_7_302440:
��
dense_7_302442:	�!
dense_8_302456:	�
dense_8_302458:
identity��-batch_normalization_6/StatefulPartitionedCall�-batch_normalization_7/StatefulPartitionedCall�-batch_normalization_8/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�dense_8/StatefulPartitionedCall�!dropout_2/StatefulPartitionedCall�%random_flip_2/StatefulPartitionedCall�)random_rotation_2/StatefulPartitionedCall�
%random_flip_2/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_2_inputrandom_flip_2_302176*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_random_flip_2_layer_call_and_return_conditional_losses_302175�
)random_rotation_2/StatefulPartitionedCallStatefulPartitionedCall.random_flip_2/StatefulPartitionedCall:output:0random_rotation_2_302297*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_random_rotation_2_layer_call_and_return_conditional_losses_302296�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_2/StatefulPartitionedCall:output:0conv2d_6_302310conv2d_6_302312*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_302309�
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0batch_normalization_6_302315batch_normalization_6_302317batch_normalization_6_302319batch_normalization_6_302321*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_301917�
re_lu_6/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_6_layer_call_and_return_conditional_losses_302328�
max_pooling2d_6/PartitionedCallPartitionedCall re_lu_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_301966�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_302341conv2d_7_302343*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_302340�
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0batch_normalization_7_302346batch_normalization_7_302348batch_normalization_7_302350batch_normalization_7_302352*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_301989�
re_lu_7/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_7_layer_call_and_return_conditional_losses_302359�
max_pooling2d_7/PartitionedCallPartitionedCall re_lu_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_302038�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_8_302372conv2d_8_302374*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_302371�
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_8_302377batch_normalization_8_302379batch_normalization_8_302381batch_normalization_8_302383*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_302061�
re_lu_8/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_8_layer_call_and_return_conditional_losses_302390�
max_pooling2d_8/PartitionedCallPartitionedCall re_lu_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_302110�
flatten_2/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_302398�
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_302411�
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_6_302424dense_6_302426*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_302423�
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_302440dense_7_302442*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_302439�
dense_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0dense_8_302456dense_8_302458*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_302455w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall&^random_flip_2/StatefulPartitionedCall*^random_rotation_2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2N
%random_flip_2/StatefulPartitionedCall%random_flip_2/StatefulPartitionedCall2V
)random_rotation_2/StatefulPartitionedCall)random_rotation_2/StatefulPartitionedCall:f b
1
_output_shapes
:�����������
-
_user_specified_namerandom_flip_2_input:&"
 
_user_specified_name302176:&"
 
_user_specified_name302297:&"
 
_user_specified_name302310:&"
 
_user_specified_name302312:&"
 
_user_specified_name302315:&"
 
_user_specified_name302317:&"
 
_user_specified_name302319:&"
 
_user_specified_name302321:&	"
 
_user_specified_name302341:&
"
 
_user_specified_name302343:&"
 
_user_specified_name302346:&"
 
_user_specified_name302348:&"
 
_user_specified_name302350:&"
 
_user_specified_name302352:&"
 
_user_specified_name302372:&"
 
_user_specified_name302374:&"
 
_user_specified_name302377:&"
 
_user_specified_name302379:&"
 
_user_specified_name302381:&"
 
_user_specified_name302383:&"
 
_user_specified_name302424:&"
 
_user_specified_name302426:&"
 
_user_specified_name302440:&"
 
_user_specified_name302442:&"
 
_user_specified_name302456:&"
 
_user_specified_name302458
�

�
6__inference_batch_normalization_6_layer_call_fn_303073

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_301935�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name303063:&"
 
_user_specified_name303065:&"
 
_user_specified_name303067:&"
 
_user_specified_name303069
�
�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_302079

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
_
C__inference_re_lu_8_layer_call_and_return_conditional_losses_302390

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������@@ b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������@@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@ :W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameinputs
�
g
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_303230

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
Ȁ
�
M__inference_random_rotation_2_layer_call_and_return_conditional_losses_302296

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������g
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
::��m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������S
transform/ShapeShapeinputs*
T0*
_output_shapes
::��g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:�����������D
NoOpNoOp ^stateful_uniform/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource
چ
�@
__inference__traced_save_303869
file_prefix@
&read_disablecopyonread_conv2d_6_kernel:4
&read_1_disablecopyonread_conv2d_6_bias:B
4read_2_disablecopyonread_batch_normalization_6_gamma:A
3read_3_disablecopyonread_batch_normalization_6_beta:H
:read_4_disablecopyonread_batch_normalization_6_moving_mean:L
>read_5_disablecopyonread_batch_normalization_6_moving_variance:B
(read_6_disablecopyonread_conv2d_7_kernel:4
&read_7_disablecopyonread_conv2d_7_bias:B
4read_8_disablecopyonread_batch_normalization_7_gamma:A
3read_9_disablecopyonread_batch_normalization_7_beta:I
;read_10_disablecopyonread_batch_normalization_7_moving_mean:M
?read_11_disablecopyonread_batch_normalization_7_moving_variance:C
)read_12_disablecopyonread_conv2d_8_kernel: 5
'read_13_disablecopyonread_conv2d_8_bias: C
5read_14_disablecopyonread_batch_normalization_8_gamma: B
4read_15_disablecopyonread_batch_normalization_8_beta: I
;read_16_disablecopyonread_batch_normalization_8_moving_mean: M
?read_17_disablecopyonread_batch_normalization_8_moving_variance: =
(read_18_disablecopyonread_dense_6_kernel:���5
&read_19_disablecopyonread_dense_6_bias:	�<
(read_20_disablecopyonread_dense_7_kernel:
��5
&read_21_disablecopyonread_dense_7_bias:	�;
(read_22_disablecopyonread_dense_8_kernel:	�4
&read_23_disablecopyonread_dense_8_bias:-
#read_24_disablecopyonread_iteration:	 1
'read_25_disablecopyonread_learning_rate: J
0read_26_disablecopyonread_adam_m_conv2d_6_kernel:J
0read_27_disablecopyonread_adam_v_conv2d_6_kernel:<
.read_28_disablecopyonread_adam_m_conv2d_6_bias:<
.read_29_disablecopyonread_adam_v_conv2d_6_bias:J
<read_30_disablecopyonread_adam_m_batch_normalization_6_gamma:J
<read_31_disablecopyonread_adam_v_batch_normalization_6_gamma:I
;read_32_disablecopyonread_adam_m_batch_normalization_6_beta:I
;read_33_disablecopyonread_adam_v_batch_normalization_6_beta:J
0read_34_disablecopyonread_adam_m_conv2d_7_kernel:J
0read_35_disablecopyonread_adam_v_conv2d_7_kernel:<
.read_36_disablecopyonread_adam_m_conv2d_7_bias:<
.read_37_disablecopyonread_adam_v_conv2d_7_bias:J
<read_38_disablecopyonread_adam_m_batch_normalization_7_gamma:J
<read_39_disablecopyonread_adam_v_batch_normalization_7_gamma:I
;read_40_disablecopyonread_adam_m_batch_normalization_7_beta:I
;read_41_disablecopyonread_adam_v_batch_normalization_7_beta:J
0read_42_disablecopyonread_adam_m_conv2d_8_kernel: J
0read_43_disablecopyonread_adam_v_conv2d_8_kernel: <
.read_44_disablecopyonread_adam_m_conv2d_8_bias: <
.read_45_disablecopyonread_adam_v_conv2d_8_bias: J
<read_46_disablecopyonread_adam_m_batch_normalization_8_gamma: J
<read_47_disablecopyonread_adam_v_batch_normalization_8_gamma: I
;read_48_disablecopyonread_adam_m_batch_normalization_8_beta: I
;read_49_disablecopyonread_adam_v_batch_normalization_8_beta: D
/read_50_disablecopyonread_adam_m_dense_6_kernel:���D
/read_51_disablecopyonread_adam_v_dense_6_kernel:���<
-read_52_disablecopyonread_adam_m_dense_6_bias:	�<
-read_53_disablecopyonread_adam_v_dense_6_bias:	�C
/read_54_disablecopyonread_adam_m_dense_7_kernel:
��C
/read_55_disablecopyonread_adam_v_dense_7_kernel:
��<
-read_56_disablecopyonread_adam_m_dense_7_bias:	�<
-read_57_disablecopyonread_adam_v_dense_7_bias:	�B
/read_58_disablecopyonread_adam_m_dense_8_kernel:	�B
/read_59_disablecopyonread_adam_v_dense_8_kernel:	�;
-read_60_disablecopyonread_adam_m_dense_8_bias:;
-read_61_disablecopyonread_adam_v_dense_8_bias:>
0read_62_disablecopyonread_random_flip_2_statevar:	B
4read_63_disablecopyonread_random_rotation_2_statevar:	+
!read_64_disablecopyonread_total_1: +
!read_65_disablecopyonread_count_1: )
read_66_disablecopyonread_total: )
read_67_disablecopyonread_count: 
savev2_const
identity_137��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_conv2d_6_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_conv2d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_conv2d_6_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_2/DisableCopyOnReadDisableCopyOnRead4read_2_disablecopyonread_batch_normalization_6_gamma"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp4read_2_disablecopyonread_batch_normalization_6_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_3/DisableCopyOnReadDisableCopyOnRead3read_3_disablecopyonread_batch_normalization_6_beta"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp3read_3_disablecopyonread_batch_normalization_6_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_4/DisableCopyOnReadDisableCopyOnRead:read_4_disablecopyonread_batch_normalization_6_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp:read_4_disablecopyonread_batch_normalization_6_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_5/DisableCopyOnReadDisableCopyOnRead>read_5_disablecopyonread_batch_normalization_6_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp>read_5_disablecopyonread_batch_normalization_6_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv2d_7_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv2d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv2d_7_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_8/DisableCopyOnReadDisableCopyOnRead4read_8_disablecopyonread_batch_normalization_7_gamma"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp4read_8_disablecopyonread_batch_normalization_7_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_9/DisableCopyOnReadDisableCopyOnRead3read_9_disablecopyonread_batch_normalization_7_beta"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp3read_9_disablecopyonread_batch_normalization_7_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_10/DisableCopyOnReadDisableCopyOnRead;read_10_disablecopyonread_batch_normalization_7_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp;read_10_disablecopyonread_batch_normalization_7_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_11/DisableCopyOnReadDisableCopyOnRead?read_11_disablecopyonread_batch_normalization_7_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp?read_11_disablecopyonread_batch_normalization_7_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_12/DisableCopyOnReadDisableCopyOnRead)read_12_disablecopyonread_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp)read_12_disablecopyonread_conv2d_8_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
: |
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_conv2d_8_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_conv2d_8_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_14/DisableCopyOnReadDisableCopyOnRead5read_14_disablecopyonread_batch_normalization_8_gamma"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp5read_14_disablecopyonread_batch_normalization_8_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_15/DisableCopyOnReadDisableCopyOnRead4read_15_disablecopyonread_batch_normalization_8_beta"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp4read_15_disablecopyonread_batch_normalization_8_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_16/DisableCopyOnReadDisableCopyOnRead;read_16_disablecopyonread_batch_normalization_8_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp;read_16_disablecopyonread_batch_normalization_8_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_17/DisableCopyOnReadDisableCopyOnRead?read_17_disablecopyonread_batch_normalization_8_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp?read_17_disablecopyonread_batch_normalization_8_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_18/DisableCopyOnReadDisableCopyOnRead(read_18_disablecopyonread_dense_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp(read_18_disablecopyonread_dense_6_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:���*
dtype0r
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:���h
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*!
_output_shapes
:���{
Read_19/DisableCopyOnReadDisableCopyOnRead&read_19_disablecopyonread_dense_6_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp&read_19_disablecopyonread_dense_6_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_20/DisableCopyOnReadDisableCopyOnRead(read_20_disablecopyonread_dense_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp(read_20_disablecopyonread_dense_7_kernel^Read_20/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��{
Read_21/DisableCopyOnReadDisableCopyOnRead&read_21_disablecopyonread_dense_7_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp&read_21_disablecopyonread_dense_7_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_22/DisableCopyOnReadDisableCopyOnRead(read_22_disablecopyonread_dense_8_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp(read_22_disablecopyonread_dense_8_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:	�{
Read_23/DisableCopyOnReadDisableCopyOnRead&read_23_disablecopyonread_dense_8_bias"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp&read_23_disablecopyonread_dense_8_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_24/DisableCopyOnReadDisableCopyOnRead#read_24_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp#read_24_disablecopyonread_iteration^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_25/DisableCopyOnReadDisableCopyOnRead'read_25_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp'read_25_disablecopyonread_learning_rate^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_26/DisableCopyOnReadDisableCopyOnRead0read_26_disablecopyonread_adam_m_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp0read_26_disablecopyonread_adam_m_conv2d_6_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_27/DisableCopyOnReadDisableCopyOnRead0read_27_disablecopyonread_adam_v_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp0read_27_disablecopyonread_adam_v_conv2d_6_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_28/DisableCopyOnReadDisableCopyOnRead.read_28_disablecopyonread_adam_m_conv2d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp.read_28_disablecopyonread_adam_m_conv2d_6_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_29/DisableCopyOnReadDisableCopyOnRead.read_29_disablecopyonread_adam_v_conv2d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp.read_29_disablecopyonread_adam_v_conv2d_6_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_30/DisableCopyOnReadDisableCopyOnRead<read_30_disablecopyonread_adam_m_batch_normalization_6_gamma"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp<read_30_disablecopyonread_adam_m_batch_normalization_6_gamma^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_31/DisableCopyOnReadDisableCopyOnRead<read_31_disablecopyonread_adam_v_batch_normalization_6_gamma"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp<read_31_disablecopyonread_adam_v_batch_normalization_6_gamma^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_32/DisableCopyOnReadDisableCopyOnRead;read_32_disablecopyonread_adam_m_batch_normalization_6_beta"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp;read_32_disablecopyonread_adam_m_batch_normalization_6_beta^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_33/DisableCopyOnReadDisableCopyOnRead;read_33_disablecopyonread_adam_v_batch_normalization_6_beta"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp;read_33_disablecopyonread_adam_v_batch_normalization_6_beta^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_34/DisableCopyOnReadDisableCopyOnRead0read_34_disablecopyonread_adam_m_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp0read_34_disablecopyonread_adam_m_conv2d_7_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_35/DisableCopyOnReadDisableCopyOnRead0read_35_disablecopyonread_adam_v_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp0read_35_disablecopyonread_adam_v_conv2d_7_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_36/DisableCopyOnReadDisableCopyOnRead.read_36_disablecopyonread_adam_m_conv2d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp.read_36_disablecopyonread_adam_m_conv2d_7_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_37/DisableCopyOnReadDisableCopyOnRead.read_37_disablecopyonread_adam_v_conv2d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp.read_37_disablecopyonread_adam_v_conv2d_7_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_38/DisableCopyOnReadDisableCopyOnRead<read_38_disablecopyonread_adam_m_batch_normalization_7_gamma"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp<read_38_disablecopyonread_adam_m_batch_normalization_7_gamma^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_39/DisableCopyOnReadDisableCopyOnRead<read_39_disablecopyonread_adam_v_batch_normalization_7_gamma"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp<read_39_disablecopyonread_adam_v_batch_normalization_7_gamma^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_40/DisableCopyOnReadDisableCopyOnRead;read_40_disablecopyonread_adam_m_batch_normalization_7_beta"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp;read_40_disablecopyonread_adam_m_batch_normalization_7_beta^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_41/DisableCopyOnReadDisableCopyOnRead;read_41_disablecopyonread_adam_v_batch_normalization_7_beta"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp;read_41_disablecopyonread_adam_v_batch_normalization_7_beta^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_42/DisableCopyOnReadDisableCopyOnRead0read_42_disablecopyonread_adam_m_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp0read_42_disablecopyonread_adam_m_conv2d_8_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_43/DisableCopyOnReadDisableCopyOnRead0read_43_disablecopyonread_adam_v_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp0read_43_disablecopyonread_adam_v_conv2d_8_kernel^Read_43/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_44/DisableCopyOnReadDisableCopyOnRead.read_44_disablecopyonread_adam_m_conv2d_8_bias"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp.read_44_disablecopyonread_adam_m_conv2d_8_bias^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_45/DisableCopyOnReadDisableCopyOnRead.read_45_disablecopyonread_adam_v_conv2d_8_bias"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp.read_45_disablecopyonread_adam_v_conv2d_8_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_46/DisableCopyOnReadDisableCopyOnRead<read_46_disablecopyonread_adam_m_batch_normalization_8_gamma"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp<read_46_disablecopyonread_adam_m_batch_normalization_8_gamma^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_47/DisableCopyOnReadDisableCopyOnRead<read_47_disablecopyonread_adam_v_batch_normalization_8_gamma"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp<read_47_disablecopyonread_adam_v_batch_normalization_8_gamma^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_48/DisableCopyOnReadDisableCopyOnRead;read_48_disablecopyonread_adam_m_batch_normalization_8_beta"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp;read_48_disablecopyonread_adam_m_batch_normalization_8_beta^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_49/DisableCopyOnReadDisableCopyOnRead;read_49_disablecopyonread_adam_v_batch_normalization_8_beta"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp;read_49_disablecopyonread_adam_v_batch_normalization_8_beta^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_50/DisableCopyOnReadDisableCopyOnRead/read_50_disablecopyonread_adam_m_dense_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp/read_50_disablecopyonread_adam_m_dense_6_kernel^Read_50/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:���*
dtype0s
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:���j
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*!
_output_shapes
:����
Read_51/DisableCopyOnReadDisableCopyOnRead/read_51_disablecopyonread_adam_v_dense_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp/read_51_disablecopyonread_adam_v_dense_6_kernel^Read_51/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:���*
dtype0s
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:���j
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*!
_output_shapes
:����
Read_52/DisableCopyOnReadDisableCopyOnRead-read_52_disablecopyonread_adam_m_dense_6_bias"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp-read_52_disablecopyonread_adam_m_dense_6_bias^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_53/DisableCopyOnReadDisableCopyOnRead-read_53_disablecopyonread_adam_v_dense_6_bias"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp-read_53_disablecopyonread_adam_v_dense_6_bias^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_54/DisableCopyOnReadDisableCopyOnRead/read_54_disablecopyonread_adam_m_dense_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp/read_54_disablecopyonread_adam_m_dense_7_kernel^Read_54/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0r
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_55/DisableCopyOnReadDisableCopyOnRead/read_55_disablecopyonread_adam_v_dense_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp/read_55_disablecopyonread_adam_v_dense_7_kernel^Read_55/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0r
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_56/DisableCopyOnReadDisableCopyOnRead-read_56_disablecopyonread_adam_m_dense_7_bias"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp-read_56_disablecopyonread_adam_m_dense_7_bias^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_57/DisableCopyOnReadDisableCopyOnRead-read_57_disablecopyonread_adam_v_dense_7_bias"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp-read_57_disablecopyonread_adam_v_dense_7_bias^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_58/DisableCopyOnReadDisableCopyOnRead/read_58_disablecopyonread_adam_m_dense_8_kernel"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp/read_58_disablecopyonread_adam_m_dense_8_kernel^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0q
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_59/DisableCopyOnReadDisableCopyOnRead/read_59_disablecopyonread_adam_v_dense_8_kernel"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp/read_59_disablecopyonread_adam_v_dense_8_kernel^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0q
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_60/DisableCopyOnReadDisableCopyOnRead-read_60_disablecopyonread_adam_m_dense_8_bias"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp-read_60_disablecopyonread_adam_m_dense_8_bias^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_61/DisableCopyOnReadDisableCopyOnRead-read_61_disablecopyonread_adam_v_dense_8_bias"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp-read_61_disablecopyonread_adam_v_dense_8_bias^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_62/DisableCopyOnReadDisableCopyOnRead0read_62_disablecopyonread_random_flip_2_statevar"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp0read_62_disablecopyonread_random_flip_2_statevar^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	l
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:c
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0	*
_output_shapes
:�
Read_63/DisableCopyOnReadDisableCopyOnRead4read_63_disablecopyonread_random_rotation_2_statevar"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp4read_63_disablecopyonread_random_rotation_2_statevar^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0	*
_output_shapes
:v
Read_64/DisableCopyOnReadDisableCopyOnRead!read_64_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp!read_64_disablecopyonread_total_1^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_65/DisableCopyOnReadDisableCopyOnRead!read_65_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp!read_65_disablecopyonread_count_1^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_66/DisableCopyOnReadDisableCopyOnReadread_66_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOpread_66_disablecopyonread_total^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_67/DisableCopyOnReadDisableCopyOnReadread_67_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOpread_67_disablecopyonread_count^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*�
value�B�EB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEBJlayer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBJlayer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*�
value�B�EB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *S
dtypesI
G2E			�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_136Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_137IdentityIdentity_136:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_137Identity_137:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:/+
)
_user_specified_nameconv2d_6/kernel:-)
'
_user_specified_nameconv2d_6/bias:;7
5
_user_specified_namebatch_normalization_6/gamma::6
4
_user_specified_namebatch_normalization_6/beta:A=
;
_user_specified_name#!batch_normalization_6/moving_mean:EA
?
_user_specified_name'%batch_normalization_6/moving_variance:/+
)
_user_specified_nameconv2d_7/kernel:-)
'
_user_specified_nameconv2d_7/bias:;	7
5
_user_specified_namebatch_normalization_7/gamma::
6
4
_user_specified_namebatch_normalization_7/beta:A=
;
_user_specified_name#!batch_normalization_7/moving_mean:EA
?
_user_specified_name'%batch_normalization_7/moving_variance:/+
)
_user_specified_nameconv2d_8/kernel:-)
'
_user_specified_nameconv2d_8/bias:;7
5
_user_specified_namebatch_normalization_8/gamma::6
4
_user_specified_namebatch_normalization_8/beta:A=
;
_user_specified_name#!batch_normalization_8/moving_mean:EA
?
_user_specified_name'%batch_normalization_8/moving_variance:.*
(
_user_specified_namedense_6/kernel:,(
&
_user_specified_namedense_6/bias:.*
(
_user_specified_namedense_7/kernel:,(
&
_user_specified_namedense_7/bias:.*
(
_user_specified_namedense_8/kernel:,(
&
_user_specified_namedense_8/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:62
0
_user_specified_nameAdam/m/conv2d_6/kernel:62
0
_user_specified_nameAdam/v/conv2d_6/kernel:40
.
_user_specified_nameAdam/m/conv2d_6/bias:40
.
_user_specified_nameAdam/v/conv2d_6/bias:B>
<
_user_specified_name$"Adam/m/batch_normalization_6/gamma:B >
<
_user_specified_name$"Adam/v/batch_normalization_6/gamma:A!=
;
_user_specified_name#!Adam/m/batch_normalization_6/beta:A"=
;
_user_specified_name#!Adam/v/batch_normalization_6/beta:6#2
0
_user_specified_nameAdam/m/conv2d_7/kernel:6$2
0
_user_specified_nameAdam/v/conv2d_7/kernel:4%0
.
_user_specified_nameAdam/m/conv2d_7/bias:4&0
.
_user_specified_nameAdam/v/conv2d_7/bias:B'>
<
_user_specified_name$"Adam/m/batch_normalization_7/gamma:B(>
<
_user_specified_name$"Adam/v/batch_normalization_7/gamma:A)=
;
_user_specified_name#!Adam/m/batch_normalization_7/beta:A*=
;
_user_specified_name#!Adam/v/batch_normalization_7/beta:6+2
0
_user_specified_nameAdam/m/conv2d_8/kernel:6,2
0
_user_specified_nameAdam/v/conv2d_8/kernel:4-0
.
_user_specified_nameAdam/m/conv2d_8/bias:4.0
.
_user_specified_nameAdam/v/conv2d_8/bias:B/>
<
_user_specified_name$"Adam/m/batch_normalization_8/gamma:B0>
<
_user_specified_name$"Adam/v/batch_normalization_8/gamma:A1=
;
_user_specified_name#!Adam/m/batch_normalization_8/beta:A2=
;
_user_specified_name#!Adam/v/batch_normalization_8/beta:531
/
_user_specified_nameAdam/m/dense_6/kernel:541
/
_user_specified_nameAdam/v/dense_6/kernel:35/
-
_user_specified_nameAdam/m/dense_6/bias:36/
-
_user_specified_nameAdam/v/dense_6/bias:571
/
_user_specified_nameAdam/m/dense_7/kernel:581
/
_user_specified_nameAdam/v/dense_7/kernel:39/
-
_user_specified_nameAdam/m/dense_7/bias:3:/
-
_user_specified_nameAdam/v/dense_7/bias:5;1
/
_user_specified_nameAdam/m/dense_8/kernel:5<1
/
_user_specified_nameAdam/v/dense_8/kernel:3=/
-
_user_specified_nameAdam/m/dense_8/bias:3>/
-
_user_specified_nameAdam/v/dense_8/bias:6?2
0
_user_specified_namerandom_flip_2/StateVar::@6
4
_user_specified_namerandom_rotation_2/StateVar:'A#
!
_user_specified_name	total_1:'B#
!
_user_specified_name	count_1:%C!

_user_specified_nametotal:%D!

_user_specified_namecount:=E9

_output_shapes
: 

_user_specified_nameConst
�
�
(__inference_dense_8_layer_call_fn_303418

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_302455o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name303412:&"
 
_user_specified_name303414
�

�
C__inference_dense_6_layer_call_and_return_conditional_losses_303389

inputs3
matmul_readvariableop_resource:���.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:���*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
D__inference_conv2d_7_layer_call_and_return_conditional_losses_302340

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_303293

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_302007

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
L
0__inference_max_pooling2d_6_layer_call_fn_303124

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_301966�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�Z
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_302546
random_flip_2_input)
conv2d_6_302475:
conv2d_6_302477:*
batch_normalization_6_302480:*
batch_normalization_6_302482:*
batch_normalization_6_302484:*
batch_normalization_6_302486:)
conv2d_7_302491:
conv2d_7_302493:*
batch_normalization_7_302496:*
batch_normalization_7_302498:*
batch_normalization_7_302500:*
batch_normalization_7_302502:)
conv2d_8_302507: 
conv2d_8_302509: *
batch_normalization_8_302512: *
batch_normalization_8_302514: *
batch_normalization_8_302516: *
batch_normalization_8_302518: #
dense_6_302530:���
dense_6_302532:	�"
dense_7_302535:
��
dense_7_302537:	�!
dense_8_302540:	�
dense_8_302542:
identity��-batch_normalization_6/StatefulPartitionedCall�-batch_normalization_7/StatefulPartitionedCall�-batch_normalization_8/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall� conv2d_8/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�dense_8/StatefulPartitionedCall�
random_flip_2/PartitionedCallPartitionedCallrandom_flip_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_random_flip_2_layer_call_and_return_conditional_losses_302468�
!random_rotation_2/PartitionedCallPartitionedCall&random_flip_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_random_rotation_2_layer_call_and_return_conditional_losses_302473�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall*random_rotation_2/PartitionedCall:output:0conv2d_6_302475conv2d_6_302477*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_302309�
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0batch_normalization_6_302480batch_normalization_6_302482batch_normalization_6_302484batch_normalization_6_302486*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_301935�
re_lu_6/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_6_layer_call_and_return_conditional_losses_302328�
max_pooling2d_6/PartitionedCallPartitionedCall re_lu_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_301966�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_302491conv2d_7_302493*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_302340�
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0batch_normalization_7_302496batch_normalization_7_302498batch_normalization_7_302500batch_normalization_7_302502*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_302007�
re_lu_7/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_7_layer_call_and_return_conditional_losses_302359�
max_pooling2d_7/PartitionedCallPartitionedCall re_lu_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_302038�
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_8_302507conv2d_8_302509*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_302371�
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0batch_normalization_8_302512batch_normalization_8_302514batch_normalization_8_302516batch_normalization_8_302518*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_302079�
re_lu_8/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_8_layer_call_and_return_conditional_losses_302390�
max_pooling2d_8/PartitionedCallPartitionedCall re_lu_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_302110�
flatten_2/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_302398�
dropout_2/PartitionedCallPartitionedCall"flatten_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_302528�
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_6_302530dense_6_302532*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_302423�
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_302535dense_7_302537*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_302439�
dense_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0dense_8_302540dense_8_302542*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_302455w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:�����������: : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall:f b
1
_output_shapes
:�����������
-
_user_specified_namerandom_flip_2_input:&"
 
_user_specified_name302475:&"
 
_user_specified_name302477:&"
 
_user_specified_name302480:&"
 
_user_specified_name302482:&"
 
_user_specified_name302484:&"
 
_user_specified_name302486:&"
 
_user_specified_name302491:&"
 
_user_specified_name302493:&	"
 
_user_specified_name302496:&
"
 
_user_specified_name302498:&"
 
_user_specified_name302500:&"
 
_user_specified_name302502:&"
 
_user_specified_name302507:&"
 
_user_specified_name302509:&"
 
_user_specified_name302512:&"
 
_user_specified_name302514:&"
 
_user_specified_name302516:&"
 
_user_specified_name302518:&"
 
_user_specified_name302530:&"
 
_user_specified_name302532:&"
 
_user_specified_name302535:&"
 
_user_specified_name302537:&"
 
_user_specified_name302540:&"
 
_user_specified_name302542
�
�
$__inference_signature_wrapper_302820
random_flip_2_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17:���

unknown_18:	�

unknown_19:
��

unknown_20:	�

unknown_21:	�

unknown_22:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_301899o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:�����������: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:�����������
-
_user_specified_namerandom_flip_2_input:&"
 
_user_specified_name302770:&"
 
_user_specified_name302772:&"
 
_user_specified_name302774:&"
 
_user_specified_name302776:&"
 
_user_specified_name302778:&"
 
_user_specified_name302780:&"
 
_user_specified_name302782:&"
 
_user_specified_name302784:&	"
 
_user_specified_name302786:&
"
 
_user_specified_name302788:&"
 
_user_specified_name302790:&"
 
_user_specified_name302792:&"
 
_user_specified_name302794:&"
 
_user_specified_name302796:&"
 
_user_specified_name302798:&"
 
_user_specified_name302800:&"
 
_user_specified_name302802:&"
 
_user_specified_name302804:&"
 
_user_specified_name302806:&"
 
_user_specified_name302808:&"
 
_user_specified_name302810:&"
 
_user_specified_name302812:&"
 
_user_specified_name302814:&"
 
_user_specified_name302816
�
�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_302061

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
_
C__inference_re_lu_7_layer_call_and_return_conditional_losses_302359

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:�����������d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
F
*__inference_dropout_2_layer_call_fn_303352

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_302528b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:�����������:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�M
�
I__inference_random_flip_2_layer_call_and_return_conditional_losses_302175

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity��(stateful_uniform_full_int/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:������������
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::��~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:���������y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:�����������k
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:������������
IdentityIdentity(stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:�����������M
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource
�
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_302398

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� �  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������   :W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�

�
C__inference_dense_7_layer_call_and_return_conditional_losses_302439

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
_
C__inference_re_lu_6_layer_call_and_return_conditional_losses_303119

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:�����������d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
i
M__inference_random_rotation_2_layer_call_and_return_conditional_losses_303028

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_6_layer_call_fn_303037

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_302309y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:&"
 
_user_specified_name303031:&"
 
_user_specified_name303033
�

�
D__inference_conv2d_7_layer_call_and_return_conditional_losses_303148

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
C__inference_dense_6_layer_call_and_return_conditional_losses_302423

inputs3
matmul_readvariableop_resource:���.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:���*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
6__inference_batch_normalization_7_layer_call_fn_303161

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_301989�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name303151:&"
 
_user_specified_name303153:&"
 
_user_specified_name303155:&"
 
_user_specified_name303157
�
�
-__inference_sequential_2_layer_call_fn_302656
random_flip_2_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17:���

unknown_18:	�

unknown_19:
��

unknown_20:	�

unknown_21:	�

unknown_22:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_302546o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:�����������: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:�����������
-
_user_specified_namerandom_flip_2_input:&"
 
_user_specified_name302606:&"
 
_user_specified_name302608:&"
 
_user_specified_name302610:&"
 
_user_specified_name302612:&"
 
_user_specified_name302614:&"
 
_user_specified_name302616:&"
 
_user_specified_name302618:&"
 
_user_specified_name302620:&	"
 
_user_specified_name302622:&
"
 
_user_specified_name302624:&"
 
_user_specified_name302626:&"
 
_user_specified_name302628:&"
 
_user_specified_name302630:&"
 
_user_specified_name302632:&"
 
_user_specified_name302634:&"
 
_user_specified_name302636:&"
 
_user_specified_name302638:&"
 
_user_specified_name302640:&"
 
_user_specified_name302642:&"
 
_user_specified_name302644:&"
 
_user_specified_name302646:&"
 
_user_specified_name302648:&"
 
_user_specified_name302650:&"
 
_user_specified_name302652
�

�
D__inference_conv2d_6_layer_call_and_return_conditional_losses_303047

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_303210

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
D
(__inference_re_lu_8_layer_call_fn_303316

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_8_layer_call_and_return_conditional_losses_302390h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@ :W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_8_layer_call_fn_303275

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_302079�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:&"
 
_user_specified_name303265:&"
 
_user_specified_name303267:&"
 
_user_specified_name303269:&"
 
_user_specified_name303271
�
J
.__inference_random_flip_2_layer_call_fn_302832

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_random_flip_2_layer_call_and_return_conditional_losses_302468j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_8_layer_call_fn_303262

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_302061�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:&"
 
_user_specified_name303252:&"
 
_user_specified_name303254:&"
 
_user_specified_name303256:&"
 
_user_specified_name303258
�

�
D__inference_conv2d_6_layer_call_and_return_conditional_losses_302309

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
g
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_302110

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
C__inference_dense_8_layer_call_and_return_conditional_losses_303429

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_301935

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
e
I__inference_random_flip_2_layer_call_and_return_conditional_losses_302468

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
N
2__inference_random_rotation_2_layer_call_fn_302906

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_random_rotation_2_layer_call_and_return_conditional_losses_302473j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
(__inference_dense_7_layer_call_fn_303398

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_302439p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name303392:&"
 
_user_specified_name303394
�

�
D__inference_conv2d_8_layer_call_and_return_conditional_losses_302371

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@@ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
g
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_303331

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
g
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_302038

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_303091

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�,
"__inference__traced_restore_304082
file_prefix:
 assignvariableop_conv2d_6_kernel:.
 assignvariableop_1_conv2d_6_bias:<
.assignvariableop_2_batch_normalization_6_gamma:;
-assignvariableop_3_batch_normalization_6_beta:B
4assignvariableop_4_batch_normalization_6_moving_mean:F
8assignvariableop_5_batch_normalization_6_moving_variance:<
"assignvariableop_6_conv2d_7_kernel:.
 assignvariableop_7_conv2d_7_bias:<
.assignvariableop_8_batch_normalization_7_gamma:;
-assignvariableop_9_batch_normalization_7_beta:C
5assignvariableop_10_batch_normalization_7_moving_mean:G
9assignvariableop_11_batch_normalization_7_moving_variance:=
#assignvariableop_12_conv2d_8_kernel: /
!assignvariableop_13_conv2d_8_bias: =
/assignvariableop_14_batch_normalization_8_gamma: <
.assignvariableop_15_batch_normalization_8_beta: C
5assignvariableop_16_batch_normalization_8_moving_mean: G
9assignvariableop_17_batch_normalization_8_moving_variance: 7
"assignvariableop_18_dense_6_kernel:���/
 assignvariableop_19_dense_6_bias:	�6
"assignvariableop_20_dense_7_kernel:
��/
 assignvariableop_21_dense_7_bias:	�5
"assignvariableop_22_dense_8_kernel:	�.
 assignvariableop_23_dense_8_bias:'
assignvariableop_24_iteration:	 +
!assignvariableop_25_learning_rate: D
*assignvariableop_26_adam_m_conv2d_6_kernel:D
*assignvariableop_27_adam_v_conv2d_6_kernel:6
(assignvariableop_28_adam_m_conv2d_6_bias:6
(assignvariableop_29_adam_v_conv2d_6_bias:D
6assignvariableop_30_adam_m_batch_normalization_6_gamma:D
6assignvariableop_31_adam_v_batch_normalization_6_gamma:C
5assignvariableop_32_adam_m_batch_normalization_6_beta:C
5assignvariableop_33_adam_v_batch_normalization_6_beta:D
*assignvariableop_34_adam_m_conv2d_7_kernel:D
*assignvariableop_35_adam_v_conv2d_7_kernel:6
(assignvariableop_36_adam_m_conv2d_7_bias:6
(assignvariableop_37_adam_v_conv2d_7_bias:D
6assignvariableop_38_adam_m_batch_normalization_7_gamma:D
6assignvariableop_39_adam_v_batch_normalization_7_gamma:C
5assignvariableop_40_adam_m_batch_normalization_7_beta:C
5assignvariableop_41_adam_v_batch_normalization_7_beta:D
*assignvariableop_42_adam_m_conv2d_8_kernel: D
*assignvariableop_43_adam_v_conv2d_8_kernel: 6
(assignvariableop_44_adam_m_conv2d_8_bias: 6
(assignvariableop_45_adam_v_conv2d_8_bias: D
6assignvariableop_46_adam_m_batch_normalization_8_gamma: D
6assignvariableop_47_adam_v_batch_normalization_8_gamma: C
5assignvariableop_48_adam_m_batch_normalization_8_beta: C
5assignvariableop_49_adam_v_batch_normalization_8_beta: >
)assignvariableop_50_adam_m_dense_6_kernel:���>
)assignvariableop_51_adam_v_dense_6_kernel:���6
'assignvariableop_52_adam_m_dense_6_bias:	�6
'assignvariableop_53_adam_v_dense_6_bias:	�=
)assignvariableop_54_adam_m_dense_7_kernel:
��=
)assignvariableop_55_adam_v_dense_7_kernel:
��6
'assignvariableop_56_adam_m_dense_7_bias:	�6
'assignvariableop_57_adam_v_dense_7_bias:	�<
)assignvariableop_58_adam_m_dense_8_kernel:	�<
)assignvariableop_59_adam_v_dense_8_kernel:	�5
'assignvariableop_60_adam_m_dense_8_bias:5
'assignvariableop_61_adam_v_dense_8_bias:8
*assignvariableop_62_random_flip_2_statevar:	<
.assignvariableop_63_random_rotation_2_statevar:	%
assignvariableop_64_total_1: %
assignvariableop_65_count_1: #
assignvariableop_66_total: #
assignvariableop_67_count: 
identity_69��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*�
value�B�EB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEBJlayer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBJlayer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*�
value�B�EB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*S
dtypesI
G2E			[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_conv2d_6_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_6_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_6_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp-assignvariableop_3_batch_normalization_6_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_6_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp8assignvariableop_5_batch_normalization_6_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_7_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_7_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_7_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_7_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_7_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_7_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_8_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv2d_8_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp/assignvariableop_14_batch_normalization_8_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp.assignvariableop_15_batch_normalization_8_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp5assignvariableop_16_batch_normalization_8_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp9assignvariableop_17_batch_normalization_8_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp"assignvariableop_18_dense_6_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp assignvariableop_19_dense_6_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp"assignvariableop_20_dense_7_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp assignvariableop_21_dense_7_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp"assignvariableop_22_dense_8_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp assignvariableop_23_dense_8_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_iterationIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp!assignvariableop_25_learning_rateIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_m_conv2d_6_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_v_conv2d_6_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_m_conv2d_6_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_v_conv2d_6_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adam_m_batch_normalization_6_gammaIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_v_batch_normalization_6_gammaIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp5assignvariableop_32_adam_m_batch_normalization_6_betaIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp5assignvariableop_33_adam_v_batch_normalization_6_betaIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_m_conv2d_7_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_v_conv2d_7_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_m_conv2d_7_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_v_conv2d_7_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp6assignvariableop_38_adam_m_batch_normalization_7_gammaIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_v_batch_normalization_7_gammaIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp5assignvariableop_40_adam_m_batch_normalization_7_betaIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp5assignvariableop_41_adam_v_batch_normalization_7_betaIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_m_conv2d_8_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_v_conv2d_8_kernelIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_m_conv2d_8_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp(assignvariableop_45_adam_v_conv2d_8_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_m_batch_normalization_8_gammaIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp6assignvariableop_47_adam_v_batch_normalization_8_gammaIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp5assignvariableop_48_adam_m_batch_normalization_8_betaIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp5assignvariableop_49_adam_v_batch_normalization_8_betaIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_m_dense_6_kernelIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_v_dense_6_kernelIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_m_dense_6_biasIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp'assignvariableop_53_adam_v_dense_6_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_m_dense_7_kernelIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_v_dense_7_kernelIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp'assignvariableop_56_adam_m_dense_7_biasIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp'assignvariableop_57_adam_v_dense_7_biasIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_m_dense_8_kernelIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp)assignvariableop_59_adam_v_dense_8_kernelIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp'assignvariableop_60_adam_m_dense_8_biasIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp'assignvariableop_61_adam_v_dense_8_biasIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp*assignvariableop_62_random_flip_2_statevarIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp.assignvariableop_63_random_rotation_2_statevarIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOpassignvariableop_64_total_1Identity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOpassignvariableop_65_count_1Identity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOpassignvariableop_66_totalIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOpassignvariableop_67_countIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_68Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_69IdentityIdentity_68:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_69Identity_69:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:/+
)
_user_specified_nameconv2d_6/kernel:-)
'
_user_specified_nameconv2d_6/bias:;7
5
_user_specified_namebatch_normalization_6/gamma::6
4
_user_specified_namebatch_normalization_6/beta:A=
;
_user_specified_name#!batch_normalization_6/moving_mean:EA
?
_user_specified_name'%batch_normalization_6/moving_variance:/+
)
_user_specified_nameconv2d_7/kernel:-)
'
_user_specified_nameconv2d_7/bias:;	7
5
_user_specified_namebatch_normalization_7/gamma::
6
4
_user_specified_namebatch_normalization_7/beta:A=
;
_user_specified_name#!batch_normalization_7/moving_mean:EA
?
_user_specified_name'%batch_normalization_7/moving_variance:/+
)
_user_specified_nameconv2d_8/kernel:-)
'
_user_specified_nameconv2d_8/bias:;7
5
_user_specified_namebatch_normalization_8/gamma::6
4
_user_specified_namebatch_normalization_8/beta:A=
;
_user_specified_name#!batch_normalization_8/moving_mean:EA
?
_user_specified_name'%batch_normalization_8/moving_variance:.*
(
_user_specified_namedense_6/kernel:,(
&
_user_specified_namedense_6/bias:.*
(
_user_specified_namedense_7/kernel:,(
&
_user_specified_namedense_7/bias:.*
(
_user_specified_namedense_8/kernel:,(
&
_user_specified_namedense_8/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:62
0
_user_specified_nameAdam/m/conv2d_6/kernel:62
0
_user_specified_nameAdam/v/conv2d_6/kernel:40
.
_user_specified_nameAdam/m/conv2d_6/bias:40
.
_user_specified_nameAdam/v/conv2d_6/bias:B>
<
_user_specified_name$"Adam/m/batch_normalization_6/gamma:B >
<
_user_specified_name$"Adam/v/batch_normalization_6/gamma:A!=
;
_user_specified_name#!Adam/m/batch_normalization_6/beta:A"=
;
_user_specified_name#!Adam/v/batch_normalization_6/beta:6#2
0
_user_specified_nameAdam/m/conv2d_7/kernel:6$2
0
_user_specified_nameAdam/v/conv2d_7/kernel:4%0
.
_user_specified_nameAdam/m/conv2d_7/bias:4&0
.
_user_specified_nameAdam/v/conv2d_7/bias:B'>
<
_user_specified_name$"Adam/m/batch_normalization_7/gamma:B(>
<
_user_specified_name$"Adam/v/batch_normalization_7/gamma:A)=
;
_user_specified_name#!Adam/m/batch_normalization_7/beta:A*=
;
_user_specified_name#!Adam/v/batch_normalization_7/beta:6+2
0
_user_specified_nameAdam/m/conv2d_8/kernel:6,2
0
_user_specified_nameAdam/v/conv2d_8/kernel:4-0
.
_user_specified_nameAdam/m/conv2d_8/bias:4.0
.
_user_specified_nameAdam/v/conv2d_8/bias:B/>
<
_user_specified_name$"Adam/m/batch_normalization_8/gamma:B0>
<
_user_specified_name$"Adam/v/batch_normalization_8/gamma:A1=
;
_user_specified_name#!Adam/m/batch_normalization_8/beta:A2=
;
_user_specified_name#!Adam/v/batch_normalization_8/beta:531
/
_user_specified_nameAdam/m/dense_6/kernel:541
/
_user_specified_nameAdam/v/dense_6/kernel:35/
-
_user_specified_nameAdam/m/dense_6/bias:36/
-
_user_specified_nameAdam/v/dense_6/bias:571
/
_user_specified_nameAdam/m/dense_7/kernel:581
/
_user_specified_nameAdam/v/dense_7/kernel:39/
-
_user_specified_nameAdam/m/dense_7/bias:3:/
-
_user_specified_nameAdam/v/dense_7/bias:5;1
/
_user_specified_nameAdam/m/dense_8/kernel:5<1
/
_user_specified_nameAdam/v/dense_8/kernel:3=/
-
_user_specified_nameAdam/m/dense_8/bias:3>/
-
_user_specified_nameAdam/v/dense_8/bias:6?2
0
_user_specified_namerandom_flip_2/StateVar::@6
4
_user_specified_namerandom_rotation_2/StateVar:'A#
!
_user_specified_name	total_1:'B#
!
_user_specified_name	count_1:%C!

_user_specified_nametotal:%D!

_user_specified_namecount
�
g
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_303129

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_303109

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

d
E__inference_dropout_2_layer_call_and_return_conditional_losses_303364

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:�����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:�����������*
dtype0*
seed���)*
seed2[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:�����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*)
_output_shapes
:�����������c
IdentityIdentitydropout/SelectV2:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:�����������:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
C__inference_dense_7_layer_call_and_return_conditional_losses_303409

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
g
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_301966

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
_
C__inference_re_lu_8_layer_call_and_return_conditional_losses_303321

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������@@ b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������@@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@ :W S
/
_output_shapes
:���������@@ 
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_303192

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
_
C__inference_re_lu_7_layer_call_and_return_conditional_losses_303220

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:�����������d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_301989

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
c
*__inference_dropout_2_layer_call_fn_303347

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_302411q
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*)
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_8_layer_call_fn_303239

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_8_layer_call_and_return_conditional_losses_302371w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs:&"
 
_user_specified_name303233:&"
 
_user_specified_name303235
�
_
C__inference_re_lu_6_layer_call_and_return_conditional_losses_302328

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:�����������d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
-__inference_sequential_2_layer_call_fn_302603
random_flip_2_input
unknown:	
	unknown_0:	#
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:$

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: 

unknown_19:���

unknown_20:	�

unknown_21:
��

unknown_22:	�

unknown_23:	�

unknown_24:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_302462o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:�����������
-
_user_specified_namerandom_flip_2_input:&"
 
_user_specified_name302549:&"
 
_user_specified_name302551:&"
 
_user_specified_name302553:&"
 
_user_specified_name302555:&"
 
_user_specified_name302557:&"
 
_user_specified_name302559:&"
 
_user_specified_name302561:&"
 
_user_specified_name302563:&	"
 
_user_specified_name302565:&
"
 
_user_specified_name302567:&"
 
_user_specified_name302569:&"
 
_user_specified_name302571:&"
 
_user_specified_name302573:&"
 
_user_specified_name302575:&"
 
_user_specified_name302577:&"
 
_user_specified_name302579:&"
 
_user_specified_name302581:&"
 
_user_specified_name302583:&"
 
_user_specified_name302585:&"
 
_user_specified_name302587:&"
 
_user_specified_name302589:&"
 
_user_specified_name302591:&"
 
_user_specified_name302593:&"
 
_user_specified_name302595:&"
 
_user_specified_name302597:&"
 
_user_specified_name302599
�
�
2__inference_random_rotation_2_layer_call_fn_302901

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_random_rotation_2_layer_call_and_return_conditional_losses_302296y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:&"
 
_user_specified_name302897
�
e
I__inference_random_flip_2_layer_call_and_return_conditional_losses_302894

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_303342

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� �  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������   :W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
D
(__inference_re_lu_7_layer_call_fn_303215

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_7_layer_call_and_return_conditional_losses_302359j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_7_layer_call_fn_303138

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_302340y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:&"
 
_user_specified_name303132:&"
 
_user_specified_name303134
�
~
.__inference_random_flip_2_layer_call_fn_302827

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_random_flip_2_layer_call_and_return_conditional_losses_302175y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:&"
 
_user_specified_name302823
�
�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_303311

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

d
E__inference_dropout_2_layer_call_and_return_conditional_losses_302411

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?f
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:�����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:�����������*
dtype0*
seed���)*
seed2[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:�����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*)
_output_shapes
:�����������c
IdentityIdentitydropout/SelectV2:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:�����������:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
Ȁ
�
M__inference_random_rotation_2_layer_call_and_return_conditional_losses_303024

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������g
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
::��m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������S
transform/ShapeShapeinputs*
T0*
_output_shapes
::��g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:�����������D
NoOpNoOp ^stateful_uniform/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource
�

�
D__inference_conv2d_8_layer_call_and_return_conditional_losses_303249

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@@ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
L
0__inference_max_pooling2d_7_layer_call_fn_303225

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_302038�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_302528

inputs

identity_1P
IdentityIdentityinputs*
T0*)
_output_shapes
:�����������]

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:�����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:�����������:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
6__inference_batch_normalization_7_layer_call_fn_303174

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_302007�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name303164:&"
 
_user_specified_name303166:&"
 
_user_specified_name303168:&"
 
_user_specified_name303170
�
i
M__inference_random_rotation_2_layer_call_and_return_conditional_losses_302473

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
F
*__inference_flatten_2_layer_call_fn_303336

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_302398b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������   :W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
]
random_flip_2_inputF
%serving_default_random_flip_2_input:0�����������;
dense_80
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
layer_with_weights-7
layer-17
layer_with_weights-8
layer-18
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#_random_generator"
_tf_keras_layer
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses
*_random_generator"
_tf_keras_layer
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias
 3_jit_compiled_convolution_op"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:axis
	;gamma
<beta
=moving_mean
>moving_variance"
_tf_keras_layer
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias
 S_jit_compiled_convolution_op"
_tf_keras_layer
�
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Zaxis
	[gamma
\beta
]moving_mean
^moving_variance"
_tf_keras_layer
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_layer
�
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

qkernel
rbias
 s_jit_compiled_convolution_op"
_tf_keras_layer
�
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses
zaxis
	{gamma
|beta
}moving_mean
~moving_variance"
_tf_keras_layer
�
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
10
21
;2
<3
=4
>5
Q6
R7
[8
\9
]10
^11
q12
r13
{14
|15
}16
~17
�18
�19
�20
�21
�22
�23"
trackable_list_wrapper
�
10
21
;2
<3
Q4
R5
[6
\7
q8
r9
{10
|11
�12
�13
�14
�15
�16
�17"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
-__inference_sequential_2_layer_call_fn_302603
-__inference_sequential_2_layer_call_fn_302656�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
H__inference_sequential_2_layer_call_and_return_conditional_losses_302462
H__inference_sequential_2_layer_call_and_return_conditional_losses_302546�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�B�
!__inference__wrapped_model_301899random_flip_2_input"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla"
experimentalOptimizer
-
�serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
.__inference_random_flip_2_layer_call_fn_302827
.__inference_random_flip_2_layer_call_fn_302832�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
I__inference_random_flip_2_layer_call_and_return_conditional_losses_302890
I__inference_random_flip_2_layer_call_and_return_conditional_losses_302894�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
2__inference_random_rotation_2_layer_call_fn_302901
2__inference_random_rotation_2_layer_call_fn_302906�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
M__inference_random_rotation_2_layer_call_and_return_conditional_losses_303024
M__inference_random_rotation_2_layer_call_and_return_conditional_losses_303028�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_6_layer_call_fn_303037�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_6_layer_call_and_return_conditional_losses_303047�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
):'2conv2d_6/kernel
:2conv2d_6/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
;0
<1
=2
>3"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_6_layer_call_fn_303060
6__inference_batch_normalization_6_layer_call_fn_303073�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_303091
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_303109�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'2batch_normalization_6/gamma
(:&2batch_normalization_6/beta
1:/ (2!batch_normalization_6/moving_mean
5:3 (2%batch_normalization_6/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_re_lu_6_layer_call_fn_303114�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_re_lu_6_layer_call_and_return_conditional_losses_303119�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_max_pooling2d_6_layer_call_fn_303124�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_303129�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_7_layer_call_fn_303138�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_7_layer_call_and_return_conditional_losses_303148�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
):'2conv2d_7/kernel
:2conv2d_7/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
[0
\1
]2
^3"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_7_layer_call_fn_303161
6__inference_batch_normalization_7_layer_call_fn_303174�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_303192
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_303210�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'2batch_normalization_7/gamma
(:&2batch_normalization_7/beta
1:/ (2!batch_normalization_7/moving_mean
5:3 (2%batch_normalization_7/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_re_lu_7_layer_call_fn_303215�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_re_lu_7_layer_call_and_return_conditional_losses_303220�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_max_pooling2d_7_layer_call_fn_303225�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_303230�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
q0
r1"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_8_layer_call_fn_303239�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_8_layer_call_and_return_conditional_losses_303249�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
):' 2conv2d_8/kernel
: 2conv2d_8/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
{0
|1
}2
~3"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_8_layer_call_fn_303262
6__inference_batch_normalization_8_layer_call_fn_303275�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_303293
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_303311�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):' 2batch_normalization_8/gamma
(:& 2batch_normalization_8/beta
1:/  (2!batch_normalization_8/moving_mean
5:3  (2%batch_normalization_8/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_re_lu_8_layer_call_fn_303316�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_re_lu_8_layer_call_and_return_conditional_losses_303321�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_max_pooling2d_8_layer_call_fn_303326�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_303331�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_flatten_2_layer_call_fn_303336�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_flatten_2_layer_call_and_return_conditional_losses_303342�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
*__inference_dropout_2_layer_call_fn_303347
*__inference_dropout_2_layer_call_fn_303352�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
E__inference_dropout_2_layer_call_and_return_conditional_losses_303364
E__inference_dropout_2_layer_call_and_return_conditional_losses_303369�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_6_layer_call_fn_303378�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_dense_6_layer_call_and_return_conditional_losses_303389�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
#:!���2dense_6/kernel
:�2dense_6/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_7_layer_call_fn_303398�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_dense_7_layer_call_and_return_conditional_losses_303409�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 
��2dense_7/kernel
:�2dense_7/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_8_layer_call_fn_303418�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_dense_8_layer_call_and_return_conditional_losses_303429�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:	�2dense_8/kernel
:2dense_8/bias
J
=0
>1
]2
^3
}4
~5"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_sequential_2_layer_call_fn_302603random_flip_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_sequential_2_layer_call_fn_302656random_flip_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_2_layer_call_and_return_conditional_losses_302462random_flip_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_2_layer_call_and_return_conditional_losses_302546random_flip_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
$__inference_signature_wrapper_302820random_flip_2_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 (

kwonlyargs�
jrandom_flip_2_input
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_random_flip_2_layer_call_fn_302827inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_random_flip_2_layer_call_fn_302832inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_random_flip_2_layer_call_and_return_conditional_losses_302890inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_random_flip_2_layer_call_and_return_conditional_losses_302894inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
/
�
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_random_rotation_2_layer_call_fn_302901inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
2__inference_random_rotation_2_layer_call_fn_302906inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_random_rotation_2_layer_call_and_return_conditional_losses_303024inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_random_rotation_2_layer_call_and_return_conditional_losses_303028inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
/
�
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_6_layer_call_fn_303037inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_6_layer_call_and_return_conditional_losses_303047inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_6_layer_call_fn_303060inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_6_layer_call_fn_303073inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_303091inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_303109inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_re_lu_6_layer_call_fn_303114inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_re_lu_6_layer_call_and_return_conditional_losses_303119inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_max_pooling2d_6_layer_call_fn_303124inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_303129inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_7_layer_call_fn_303138inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_7_layer_call_and_return_conditional_losses_303148inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_7_layer_call_fn_303161inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_7_layer_call_fn_303174inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_303192inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_303210inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_re_lu_7_layer_call_fn_303215inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_re_lu_7_layer_call_and_return_conditional_losses_303220inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_max_pooling2d_7_layer_call_fn_303225inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_303230inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_8_layer_call_fn_303239inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_8_layer_call_and_return_conditional_losses_303249inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
}0
~1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_8_layer_call_fn_303262inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_8_layer_call_fn_303275inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_303293inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_303311inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_re_lu_8_layer_call_fn_303316inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_re_lu_8_layer_call_and_return_conditional_losses_303321inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_max_pooling2d_8_layer_call_fn_303326inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_303331inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_flatten_2_layer_call_fn_303336inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_flatten_2_layer_call_and_return_conditional_losses_303342inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dropout_2_layer_call_fn_303347inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_dropout_2_layer_call_fn_303352inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dropout_2_layer_call_and_return_conditional_losses_303364inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dropout_2_layer_call_and_return_conditional_losses_303369inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_6_layer_call_fn_303378inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_6_layer_call_and_return_conditional_losses_303389inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_7_layer_call_fn_303398inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_7_layer_call_and_return_conditional_losses_303409inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_8_layer_call_fn_303418inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_8_layer_call_and_return_conditional_losses_303429inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
.:,2Adam/m/conv2d_6/kernel
.:,2Adam/v/conv2d_6/kernel
 :2Adam/m/conv2d_6/bias
 :2Adam/v/conv2d_6/bias
.:,2"Adam/m/batch_normalization_6/gamma
.:,2"Adam/v/batch_normalization_6/gamma
-:+2!Adam/m/batch_normalization_6/beta
-:+2!Adam/v/batch_normalization_6/beta
.:,2Adam/m/conv2d_7/kernel
.:,2Adam/v/conv2d_7/kernel
 :2Adam/m/conv2d_7/bias
 :2Adam/v/conv2d_7/bias
.:,2"Adam/m/batch_normalization_7/gamma
.:,2"Adam/v/batch_normalization_7/gamma
-:+2!Adam/m/batch_normalization_7/beta
-:+2!Adam/v/batch_normalization_7/beta
.:, 2Adam/m/conv2d_8/kernel
.:, 2Adam/v/conv2d_8/kernel
 : 2Adam/m/conv2d_8/bias
 : 2Adam/v/conv2d_8/bias
.:, 2"Adam/m/batch_normalization_8/gamma
.:, 2"Adam/v/batch_normalization_8/gamma
-:+ 2!Adam/m/batch_normalization_8/beta
-:+ 2!Adam/v/batch_normalization_8/beta
(:&���2Adam/m/dense_6/kernel
(:&���2Adam/v/dense_6/kernel
 :�2Adam/m/dense_6/bias
 :�2Adam/v/dense_6/bias
':%
��2Adam/m/dense_7/kernel
':%
��2Adam/v/dense_7/kernel
 :�2Adam/m/dense_7/bias
 :�2Adam/v/dense_7/bias
&:$	�2Adam/m/dense_8/kernel
&:$	�2Adam/v/dense_8/kernel
:2Adam/m/dense_8/bias
:2Adam/v/dense_8/bias
": 	2random_flip_2/StateVar
&:$	2random_rotation_2/StateVar
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
!__inference__wrapped_model_301899�12;<=>QR[\]^qr{|}~������F�C
<�9
7�4
random_flip_2_input�����������
� "1�.
,
dense_8!�
dense_8����������
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_303091�;<=>Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_303109�;<=>Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
6__inference_batch_normalization_6_layer_call_fn_303060�;<=>Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
6__inference_batch_normalization_6_layer_call_fn_303073�;<=>Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_303192�[\]^Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_303210�[\]^Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
6__inference_batch_normalization_7_layer_call_fn_303161�[\]^Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
6__inference_batch_normalization_7_layer_call_fn_303174�[\]^Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_303293�{|}~Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_303311�{|}~Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
6__inference_batch_normalization_8_layer_call_fn_303262�{|}~Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� ";�8
unknown+��������������������������� �
6__inference_batch_normalization_8_layer_call_fn_303275�{|}~Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� ";�8
unknown+��������������������������� �
D__inference_conv2d_6_layer_call_and_return_conditional_losses_303047w129�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
)__inference_conv2d_6_layer_call_fn_303037l129�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
D__inference_conv2d_7_layer_call_and_return_conditional_losses_303148wQR9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
)__inference_conv2d_7_layer_call_fn_303138lQR9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
D__inference_conv2d_8_layer_call_and_return_conditional_losses_303249sqr7�4
-�*
(�%
inputs���������@@
� "4�1
*�'
tensor_0���������@@ 
� �
)__inference_conv2d_8_layer_call_fn_303239hqr7�4
-�*
(�%
inputs���������@@
� ")�&
unknown���������@@ �
C__inference_dense_6_layer_call_and_return_conditional_losses_303389h��1�.
'�$
"�
inputs�����������
� "-�*
#� 
tensor_0����������
� �
(__inference_dense_6_layer_call_fn_303378]��1�.
'�$
"�
inputs�����������
� ""�
unknown�����������
C__inference_dense_7_layer_call_and_return_conditional_losses_303409g��0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
(__inference_dense_7_layer_call_fn_303398\��0�-
&�#
!�
inputs����������
� ""�
unknown�����������
C__inference_dense_8_layer_call_and_return_conditional_losses_303429f��0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
(__inference_dense_8_layer_call_fn_303418[��0�-
&�#
!�
inputs����������
� "!�
unknown����������
E__inference_dropout_2_layer_call_and_return_conditional_losses_303364g5�2
+�(
"�
inputs�����������
p
� ".�+
$�!
tensor_0�����������
� �
E__inference_dropout_2_layer_call_and_return_conditional_losses_303369g5�2
+�(
"�
inputs�����������
p 
� ".�+
$�!
tensor_0�����������
� �
*__inference_dropout_2_layer_call_fn_303347\5�2
+�(
"�
inputs�����������
p
� "#� 
unknown������������
*__inference_dropout_2_layer_call_fn_303352\5�2
+�(
"�
inputs�����������
p 
� "#� 
unknown������������
E__inference_flatten_2_layer_call_and_return_conditional_losses_303342i7�4
-�*
(�%
inputs���������   
� ".�+
$�!
tensor_0�����������
� �
*__inference_flatten_2_layer_call_fn_303336^7�4
-�*
(�%
inputs���������   
� "#� 
unknown������������
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_303129�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
0__inference_max_pooling2d_6_layer_call_fn_303124�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_303230�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
0__inference_max_pooling2d_7_layer_call_fn_303225�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_303331�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
0__inference_max_pooling2d_8_layer_call_fn_303326�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
I__inference_random_flip_2_layer_call_and_return_conditional_losses_302890{�=�:
3�0
*�'
inputs�����������
p
� "6�3
,�)
tensor_0�����������
� �
I__inference_random_flip_2_layer_call_and_return_conditional_losses_302894w=�:
3�0
*�'
inputs�����������
p 
� "6�3
,�)
tensor_0�����������
� �
.__inference_random_flip_2_layer_call_fn_302827p�=�:
3�0
*�'
inputs�����������
p
� "+�(
unknown������������
.__inference_random_flip_2_layer_call_fn_302832l=�:
3�0
*�'
inputs�����������
p 
� "+�(
unknown������������
M__inference_random_rotation_2_layer_call_and_return_conditional_losses_303024{�=�:
3�0
*�'
inputs�����������
p
� "6�3
,�)
tensor_0�����������
� �
M__inference_random_rotation_2_layer_call_and_return_conditional_losses_303028w=�:
3�0
*�'
inputs�����������
p 
� "6�3
,�)
tensor_0�����������
� �
2__inference_random_rotation_2_layer_call_fn_302901p�=�:
3�0
*�'
inputs�����������
p
� "+�(
unknown������������
2__inference_random_rotation_2_layer_call_fn_302906l=�:
3�0
*�'
inputs�����������
p 
� "+�(
unknown������������
C__inference_re_lu_6_layer_call_and_return_conditional_losses_303119s9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
(__inference_re_lu_6_layer_call_fn_303114h9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
C__inference_re_lu_7_layer_call_and_return_conditional_losses_303220s9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
(__inference_re_lu_7_layer_call_fn_303215h9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
C__inference_re_lu_8_layer_call_and_return_conditional_losses_303321o7�4
-�*
(�%
inputs���������@@ 
� "4�1
*�'
tensor_0���������@@ 
� �
(__inference_re_lu_8_layer_call_fn_303316d7�4
-�*
(�%
inputs���������@@ 
� ")�&
unknown���������@@ �
H__inference_sequential_2_layer_call_and_return_conditional_losses_302462�"��12;<=>QR[\]^qr{|}~������N�K
D�A
7�4
random_flip_2_input�����������
p

 
� ",�)
"�
tensor_0���������
� �
H__inference_sequential_2_layer_call_and_return_conditional_losses_302546�12;<=>QR[\]^qr{|}~������N�K
D�A
7�4
random_flip_2_input�����������
p 

 
� ",�)
"�
tensor_0���������
� �
-__inference_sequential_2_layer_call_fn_302603�"��12;<=>QR[\]^qr{|}~������N�K
D�A
7�4
random_flip_2_input�����������
p

 
� "!�
unknown����������
-__inference_sequential_2_layer_call_fn_302656�12;<=>QR[\]^qr{|}~������N�K
D�A
7�4
random_flip_2_input�����������
p 

 
� "!�
unknown����������
$__inference_signature_wrapper_302820�12;<=>QR[\]^qr{|}~������]�Z
� 
S�P
N
random_flip_2_input7�4
random_flip_2_input�����������"1�.
,
dense_8!�
dense_8���������