class-pool .
*"* class pool for class ZCL_GCTS_POC

*"* local type definitions
include ZCL_GCTS_POC==================ccdef.

*"* class ZCL_GCTS_POC definition
*"* public declarations
  include ZCL_GCTS_POC==================cu.
*"* protected declarations
  include ZCL_GCTS_POC==================co.
*"* private declarations
  include ZCL_GCTS_POC==================ci.
endclass. "ZCL_GCTS_POC definition

*"* macro definitions
include ZCL_GCTS_POC==================ccmac.
*"* local class implementation
include ZCL_GCTS_POC==================ccimp.

*"* test class
include ZCL_GCTS_POC==================ccau.

class ZCL_GCTS_POC implementation.
*"* method's implementations
  include methods.
endclass. "ZCL_GCTS_POC implementation
