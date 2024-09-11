module API

using Catalyst_jll
export Catalyst_jll

using CEnum

const ptrdiff_t = Cptrdiff_t
const FILE = Libc.FILE
const SHRT_MAX = 32767
const USHRT_MAX = 65535
const CHAR_BIT = 8
const INT_MAX = typemax(Cint)
const INT_MIN = typemin(Cint)
const UINT_MAX = typemax(Cuint)
const UINT_MIN = typemin(Cuint)
const LONG_MAX = typemax(Clong)
const LONG_MIN = typemin(Clong)
const ULONG_MAX = typemax(Culong)

mutable struct conduit_node_impl end

const conduit_node = conduit_node_impl

function catalyst_conduit_about(cnode)
    ccall((:catalyst_conduit_about, libcatalyst), Cvoid, (Ptr{conduit_node},), cnode)
end

mutable struct conduit_datatype_impl end

const conduit_datatype = conduit_datatype_impl

const conduit_signed_long = Clong

const conduit_int64 = conduit_signed_long

const conduit_index64_t = conduit_int64

const conduit_index_t = conduit_index64_t

function catalyst_conduit_datatype_element_bytes(cdatatype)
    ccall((:catalyst_conduit_datatype_element_bytes, libcatalyst), conduit_index_t, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_element_index(cdatatype, idx)
    ccall((:catalyst_conduit_datatype_element_index, libcatalyst), conduit_index_t, (Ptr{conduit_datatype}, conduit_index_t), cdatatype, idx)
end

function catalyst_conduit_datatype_endianness(cdatatype)
    ccall((:catalyst_conduit_datatype_endianness, libcatalyst), conduit_index_t, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_endianness_matches_machine(cdatatype)
    ccall((:catalyst_conduit_datatype_endianness_matches_machine, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_id(cdatatype)
    ccall((:catalyst_conduit_datatype_id, libcatalyst), conduit_index_t, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_big_endian(cdatatype)
    ccall((:catalyst_conduit_datatype_is_big_endian, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_char(cdatatype)
    ccall((:catalyst_conduit_datatype_is_char, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_char8_str(cdatatype)
    ccall((:catalyst_conduit_datatype_is_char8_str, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_double(cdatatype)
    ccall((:catalyst_conduit_datatype_is_double, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_empty(cdatatype)
    ccall((:catalyst_conduit_datatype_is_empty, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_float(cdatatype)
    ccall((:catalyst_conduit_datatype_is_float, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_float32(cdatatype)
    ccall((:catalyst_conduit_datatype_is_float32, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_float64(cdatatype)
    ccall((:catalyst_conduit_datatype_is_float64, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_floating_point(cdatatype)
    ccall((:catalyst_conduit_datatype_is_floating_point, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_int(cdatatype)
    ccall((:catalyst_conduit_datatype_is_int, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_int16(cdatatype)
    ccall((:catalyst_conduit_datatype_is_int16, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_int32(cdatatype)
    ccall((:catalyst_conduit_datatype_is_int32, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_int64(cdatatype)
    ccall((:catalyst_conduit_datatype_is_int64, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_int8(cdatatype)
    ccall((:catalyst_conduit_datatype_is_int8, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_integer(cdatatype)
    ccall((:catalyst_conduit_datatype_is_integer, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_list(cdatatype)
    ccall((:catalyst_conduit_datatype_is_list, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_little_endian(cdatatype)
    ccall((:catalyst_conduit_datatype_is_little_endian, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_long(cdatatype)
    ccall((:catalyst_conduit_datatype_is_long, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_number(cdatatype)
    ccall((:catalyst_conduit_datatype_is_number, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_object(cdatatype)
    ccall((:catalyst_conduit_datatype_is_object, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_short(cdatatype)
    ccall((:catalyst_conduit_datatype_is_short, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_signed_integer(cdatatype)
    ccall((:catalyst_conduit_datatype_is_signed_integer, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_string(cdatatype)
    ccall((:catalyst_conduit_datatype_is_string, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_uint16(cdatatype)
    ccall((:catalyst_conduit_datatype_is_uint16, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_uint32(cdatatype)
    ccall((:catalyst_conduit_datatype_is_uint32, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_uint64(cdatatype)
    ccall((:catalyst_conduit_datatype_is_uint64, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_uint8(cdatatype)
    ccall((:catalyst_conduit_datatype_is_uint8, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_unsigned_char(cdatatype)
    ccall((:catalyst_conduit_datatype_is_unsigned_char, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_unsigned_int(cdatatype)
    ccall((:catalyst_conduit_datatype_is_unsigned_int, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_unsigned_integer(cdatatype)
    ccall((:catalyst_conduit_datatype_is_unsigned_integer, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_unsigned_long(cdatatype)
    ccall((:catalyst_conduit_datatype_is_unsigned_long, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_is_unsigned_short(cdatatype)
    ccall((:catalyst_conduit_datatype_is_unsigned_short, libcatalyst), Cint, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_name(cdatatype)
    ccall((:catalyst_conduit_datatype_name, libcatalyst), Ptr{Cchar}, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_name_destroy(name)
    ccall((:catalyst_conduit_datatype_name_destroy, libcatalyst), Cvoid, (Ptr{Cchar},), name)
end

function catalyst_conduit_datatype_number_of_elements(cdatatype)
    ccall((:catalyst_conduit_datatype_number_of_elements, libcatalyst), conduit_index_t, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_datatype_offset(cdatatype)
    ccall((:catalyst_conduit_datatype_offset, libcatalyst), conduit_index_t, (Ptr{conduit_datatype},), cdatatype)
end

# no prototype is found for this function at conduit_datatype.h:36:19, please use with caution
function catalyst_conduit_datatype_sizeof_index_t()
    ccall((:catalyst_conduit_datatype_sizeof_index_t, libcatalyst), Cint, ())
end

function catalyst_conduit_datatype_stride(cdatatype)
    ccall((:catalyst_conduit_datatype_stride, libcatalyst), conduit_index_t, (Ptr{conduit_datatype},), cdatatype)
end

function catalyst_conduit_node_add_child(cnode, name)
    ccall((:catalyst_conduit_node_add_child, libcatalyst), Ptr{conduit_node}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, name)
end

function catalyst_conduit_node_append(cnode)
    ccall((:catalyst_conduit_node_append, libcatalyst), Ptr{conduit_node}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_char(cnode)
    ccall((:catalyst_conduit_node_as_char, libcatalyst), Cchar, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_char8_str(cnode)
    ccall((:catalyst_conduit_node_as_char8_str, libcatalyst), Ptr{Cchar}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_char_ptr(cnode)
    ccall((:catalyst_conduit_node_as_char_ptr, libcatalyst), Ptr{Cchar}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_double(cnode)
    ccall((:catalyst_conduit_node_as_double, libcatalyst), Cdouble, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_double_ptr(cnode)
    ccall((:catalyst_conduit_node_as_double_ptr, libcatalyst), Ptr{Cdouble}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_float(cnode)
    ccall((:catalyst_conduit_node_as_float, libcatalyst), Cfloat, (Ptr{conduit_node},), cnode)
end

const conduit_float = Cfloat

const conduit_float32 = conduit_float

function catalyst_conduit_node_as_float32(cnode)
    ccall((:catalyst_conduit_node_as_float32, libcatalyst), conduit_float32, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_float32_ptr(cnode)
    ccall((:catalyst_conduit_node_as_float32_ptr, libcatalyst), Ptr{conduit_float32}, (Ptr{conduit_node},), cnode)
end

const conduit_double = Cdouble

const conduit_float64 = conduit_double

function catalyst_conduit_node_as_float64(cnode)
    ccall((:catalyst_conduit_node_as_float64, libcatalyst), conduit_float64, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_float64_ptr(cnode)
    ccall((:catalyst_conduit_node_as_float64_ptr, libcatalyst), Ptr{conduit_float64}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_float_ptr(cnode)
    ccall((:catalyst_conduit_node_as_float_ptr, libcatalyst), Ptr{Cfloat}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_int(cnode)
    ccall((:catalyst_conduit_node_as_int, libcatalyst), Cint, (Ptr{conduit_node},), cnode)
end

const conduit_signed_short = Cshort

const conduit_int16 = conduit_signed_short

function catalyst_conduit_node_as_int16(cnode)
    ccall((:catalyst_conduit_node_as_int16, libcatalyst), conduit_int16, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_int16_ptr(cnode)
    ccall((:catalyst_conduit_node_as_int16_ptr, libcatalyst), Ptr{conduit_int16}, (Ptr{conduit_node},), cnode)
end

const conduit_signed_int = Cint

const conduit_int32 = conduit_signed_int

function catalyst_conduit_node_as_int32(cnode)
    ccall((:catalyst_conduit_node_as_int32, libcatalyst), conduit_int32, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_int32_ptr(cnode)
    ccall((:catalyst_conduit_node_as_int32_ptr, libcatalyst), Ptr{conduit_int32}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_int64(cnode)
    ccall((:catalyst_conduit_node_as_int64, libcatalyst), conduit_int64, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_int64_ptr(cnode)
    ccall((:catalyst_conduit_node_as_int64_ptr, libcatalyst), Ptr{conduit_int64}, (Ptr{conduit_node},), cnode)
end

const conduit_signed_char = Int8

const conduit_int8 = conduit_signed_char

function catalyst_conduit_node_as_int8(cnode)
    ccall((:catalyst_conduit_node_as_int8, libcatalyst), conduit_int8, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_int8_ptr(cnode)
    ccall((:catalyst_conduit_node_as_int8_ptr, libcatalyst), Ptr{conduit_int8}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_int_ptr(cnode)
    ccall((:catalyst_conduit_node_as_int_ptr, libcatalyst), Ptr{Cint}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_long(cnode)
    ccall((:catalyst_conduit_node_as_long, libcatalyst), Clong, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_long_ptr(cnode)
    ccall((:catalyst_conduit_node_as_long_ptr, libcatalyst), Ptr{Clong}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_short(cnode)
    ccall((:catalyst_conduit_node_as_short, libcatalyst), Cshort, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_short_ptr(cnode)
    ccall((:catalyst_conduit_node_as_short_ptr, libcatalyst), Ptr{Cshort}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_signed_char(cnode)
    ccall((:catalyst_conduit_node_as_signed_char, libcatalyst), Int8, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_signed_char_ptr(cnode)
    ccall((:catalyst_conduit_node_as_signed_char_ptr, libcatalyst), Ptr{Int8}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_signed_int(cnode)
    ccall((:catalyst_conduit_node_as_signed_int, libcatalyst), Cint, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_signed_int_ptr(cnode)
    ccall((:catalyst_conduit_node_as_signed_int_ptr, libcatalyst), Ptr{Cint}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_signed_long(cnode)
    ccall((:catalyst_conduit_node_as_signed_long, libcatalyst), Clong, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_signed_long_ptr(cnode)
    ccall((:catalyst_conduit_node_as_signed_long_ptr, libcatalyst), Ptr{Clong}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_signed_short(cnode)
    ccall((:catalyst_conduit_node_as_signed_short, libcatalyst), Cshort, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_signed_short_ptr(cnode)
    ccall((:catalyst_conduit_node_as_signed_short_ptr, libcatalyst), Ptr{Cshort}, (Ptr{conduit_node},), cnode)
end

const conduit_unsigned_short = Cushort

const conduit_uint16 = conduit_unsigned_short

function catalyst_conduit_node_as_uint16(cnode)
    ccall((:catalyst_conduit_node_as_uint16, libcatalyst), conduit_uint16, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_uint16_ptr(cnode)
    ccall((:catalyst_conduit_node_as_uint16_ptr, libcatalyst), Ptr{conduit_uint16}, (Ptr{conduit_node},), cnode)
end

const conduit_unsigned_int = Cuint

const conduit_uint32 = conduit_unsigned_int

function catalyst_conduit_node_as_uint32(cnode)
    ccall((:catalyst_conduit_node_as_uint32, libcatalyst), conduit_uint32, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_uint32_ptr(cnode)
    ccall((:catalyst_conduit_node_as_uint32_ptr, libcatalyst), Ptr{conduit_uint32}, (Ptr{conduit_node},), cnode)
end

const conduit_unsigned_long = Culong

const conduit_uint64 = conduit_unsigned_long

function catalyst_conduit_node_as_uint64(cnode)
    ccall((:catalyst_conduit_node_as_uint64, libcatalyst), conduit_uint64, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_uint64_ptr(cnode)
    ccall((:catalyst_conduit_node_as_uint64_ptr, libcatalyst), Ptr{conduit_uint64}, (Ptr{conduit_node},), cnode)
end

const conduit_unsigned_char = Cuchar

const conduit_uint8 = conduit_unsigned_char

function catalyst_conduit_node_as_uint8(cnode)
    ccall((:catalyst_conduit_node_as_uint8, libcatalyst), conduit_uint8, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_uint8_ptr(cnode)
    ccall((:catalyst_conduit_node_as_uint8_ptr, libcatalyst), Ptr{conduit_uint8}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_unsigned_char(cnode)
    ccall((:catalyst_conduit_node_as_unsigned_char, libcatalyst), Cuchar, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_unsigned_char_ptr(cnode)
    ccall((:catalyst_conduit_node_as_unsigned_char_ptr, libcatalyst), Ptr{Cuchar}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_unsigned_int(cnode)
    ccall((:catalyst_conduit_node_as_unsigned_int, libcatalyst), Cuint, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_unsigned_int_ptr(cnode)
    ccall((:catalyst_conduit_node_as_unsigned_int_ptr, libcatalyst), Ptr{Cuint}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_unsigned_long(cnode)
    ccall((:catalyst_conduit_node_as_unsigned_long, libcatalyst), Culong, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_unsigned_long_ptr(cnode)
    ccall((:catalyst_conduit_node_as_unsigned_long_ptr, libcatalyst), Ptr{Culong}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_unsigned_short(cnode)
    ccall((:catalyst_conduit_node_as_unsigned_short, libcatalyst), Cushort, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_as_unsigned_short_ptr(cnode)
    ccall((:catalyst_conduit_node_as_unsigned_short_ptr, libcatalyst), Ptr{Cushort}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_child(cnode, idx)
    ccall((:catalyst_conduit_node_child, libcatalyst), Ptr{conduit_node}, (Ptr{conduit_node}, conduit_index_t), cnode, idx)
end

function catalyst_conduit_node_child_by_name(cnode, name)
    ccall((:catalyst_conduit_node_child_by_name, libcatalyst), Ptr{conduit_node}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, name)
end

function catalyst_conduit_node_compact_to(cnode, cnres)
    ccall((:catalyst_conduit_node_compact_to, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, cnres)
end

function catalyst_conduit_node_compatible(cnode, cother)
    ccall((:catalyst_conduit_node_compatible, libcatalyst), Cint, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, cother)
end

function catalyst_conduit_node_contiguous_with_address(cnode, address)
    ccall((:catalyst_conduit_node_contiguous_with_address, libcatalyst), Cint, (Ptr{conduit_node}, Ptr{Cvoid}), cnode, address)
end

function catalyst_conduit_node_contiguous_with_node(cnode, cother)
    ccall((:catalyst_conduit_node_contiguous_with_node, libcatalyst), Cint, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, cother)
end

# no prototype is found for this function at conduit_node.h:42:29, please use with caution
function catalyst_conduit_node_create()
    ccall((:catalyst_conduit_node_create, libcatalyst), Ptr{conduit_node}, ())
end

function catalyst_conduit_node_data_ptr(cnode)
    ccall((:catalyst_conduit_node_data_ptr, libcatalyst), Ptr{Cvoid}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_destroy(cnode)
    ccall((:catalyst_conduit_node_destroy, libcatalyst), Cvoid, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_diff(cnode, cother, cinfo, epsilon)
    ccall((:catalyst_conduit_node_diff, libcatalyst), Cint, (Ptr{conduit_node}, Ptr{conduit_node}, Ptr{conduit_node}, conduit_float64), cnode, cother, cinfo, epsilon)
end

function catalyst_conduit_node_diff_compatible(cnode, cother, cinfo, epsilon)
    ccall((:catalyst_conduit_node_diff_compatible, libcatalyst), Cint, (Ptr{conduit_node}, Ptr{conduit_node}, Ptr{conduit_node}, conduit_float64), cnode, cother, cinfo, epsilon)
end

function catalyst_conduit_node_dtype(cnode)
    ccall((:catalyst_conduit_node_dtype, libcatalyst), Ptr{conduit_datatype}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_element_ptr(cnode, idx)
    ccall((:catalyst_conduit_node_element_ptr, libcatalyst), Ptr{Cvoid}, (Ptr{conduit_node}, conduit_index_t), cnode, idx)
end

function catalyst_conduit_node_fetch(cnode, path)
    ccall((:catalyst_conduit_node_fetch, libcatalyst), Ptr{conduit_node}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_existing(cnode, path)
    ccall((:catalyst_conduit_node_fetch_existing, libcatalyst), Ptr{conduit_node}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_char(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_char, libcatalyst), Cchar, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_char8_str(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_char8_str, libcatalyst), Ptr{Cchar}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_char_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_char_ptr, libcatalyst), Ptr{Cchar}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_double(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_double, libcatalyst), Cdouble, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_double_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_double_ptr, libcatalyst), Ptr{Cdouble}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_float(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_float, libcatalyst), Cfloat, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_float32(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_float32, libcatalyst), conduit_float32, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_float32_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_float32_ptr, libcatalyst), Ptr{conduit_float32}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_float64(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_float64, libcatalyst), conduit_float64, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_float64_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_float64_ptr, libcatalyst), Ptr{conduit_float64}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_float_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_float_ptr, libcatalyst), Ptr{Cfloat}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_int(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_int, libcatalyst), Cint, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_int16(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_int16, libcatalyst), conduit_int16, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_int16_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_int16_ptr, libcatalyst), Ptr{conduit_int16}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_int32(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_int32, libcatalyst), conduit_int32, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_int32_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_int32_ptr, libcatalyst), Ptr{conduit_int32}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_int64(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_int64, libcatalyst), conduit_int64, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_int64_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_int64_ptr, libcatalyst), Ptr{conduit_int64}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_int8(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_int8, libcatalyst), conduit_int8, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_int8_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_int8_ptr, libcatalyst), Ptr{conduit_int8}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_int_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_int_ptr, libcatalyst), Ptr{Cint}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_long(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_long, libcatalyst), Clong, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_long_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_long_ptr, libcatalyst), Ptr{Clong}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_short(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_short, libcatalyst), Cshort, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_short_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_short_ptr, libcatalyst), Ptr{Cshort}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_signed_char(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_signed_char, libcatalyst), Int8, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_signed_char_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_signed_char_ptr, libcatalyst), Ptr{Int8}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_signed_int(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_signed_int, libcatalyst), Cint, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_signed_int_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_signed_int_ptr, libcatalyst), Ptr{Cint}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_signed_long(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_signed_long, libcatalyst), Clong, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_signed_long_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_signed_long_ptr, libcatalyst), Ptr{Clong}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_signed_short(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_signed_short, libcatalyst), Cshort, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_signed_short_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_signed_short_ptr, libcatalyst), Ptr{Cshort}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_uint16(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_uint16, libcatalyst), conduit_uint16, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_uint16_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_uint16_ptr, libcatalyst), Ptr{conduit_uint16}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_uint32(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_uint32, libcatalyst), conduit_uint32, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_uint32_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_uint32_ptr, libcatalyst), Ptr{conduit_uint32}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_uint64(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_uint64, libcatalyst), conduit_uint64, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_uint64_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_uint64_ptr, libcatalyst), Ptr{conduit_uint64}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_uint8(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_uint8, libcatalyst), conduit_uint8, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_uint8_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_uint8_ptr, libcatalyst), Ptr{conduit_uint8}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_unsigned_char(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_unsigned_char, libcatalyst), Cuchar, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_unsigned_char_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_unsigned_char_ptr, libcatalyst), Ptr{Cuchar}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_unsigned_int(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_unsigned_int, libcatalyst), Cuint, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_unsigned_int_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_unsigned_int_ptr, libcatalyst), Ptr{Cuint}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_unsigned_long(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_unsigned_long, libcatalyst), Culong, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_unsigned_long_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_unsigned_long_ptr, libcatalyst), Ptr{Culong}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_unsigned_short(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_unsigned_short, libcatalyst), Cushort, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_as_unsigned_short_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_as_unsigned_short_ptr, libcatalyst), Ptr{Cushort}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_data_ptr(cnode, path)
    ccall((:catalyst_conduit_node_fetch_path_data_ptr, libcatalyst), Ptr{Cvoid}, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_fetch_path_element_ptr(cnode, path, idx)
    ccall((:catalyst_conduit_node_fetch_path_element_ptr, libcatalyst), Ptr{Cvoid}, (Ptr{conduit_node}, Ptr{Cchar}, conduit_index_t), cnode, path, idx)
end

function catalyst_conduit_node_generate(cnode, schema, protocol, data)
    ccall((:catalyst_conduit_node_generate, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cchar}, Ptr{Cvoid}), cnode, schema, protocol, data)
end

function catalyst_conduit_node_generate_external(cnode, schema, protocol, data)
    ccall((:catalyst_conduit_node_generate_external, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cchar}, Ptr{Cvoid}), cnode, schema, protocol, data)
end

function catalyst_conduit_node_has_child(cnode, name)
    ccall((:catalyst_conduit_node_has_child, libcatalyst), Cint, (Ptr{conduit_node}, Ptr{Cchar}), cnode, name)
end

function catalyst_conduit_node_has_path(cnode, path)
    ccall((:catalyst_conduit_node_has_path, libcatalyst), Cint, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_info(cnode, cnres)
    ccall((:catalyst_conduit_node_info, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, cnres)
end

function catalyst_conduit_node_is_compact(cnode)
    ccall((:catalyst_conduit_node_is_compact, libcatalyst), Cint, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_is_contiguous(cnode)
    ccall((:catalyst_conduit_node_is_contiguous, libcatalyst), Cint, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_is_data_external(cnode)
    ccall((:catalyst_conduit_node_is_data_external, libcatalyst), Cint, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_is_root(cnode)
    ccall((:catalyst_conduit_node_is_root, libcatalyst), Cint, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_load(cnode, path, protocol)
    ccall((:catalyst_conduit_node_load, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cchar}), cnode, path, protocol)
end

function catalyst_conduit_node_move(cnode_a, cnode_b)
    ccall((:catalyst_conduit_node_move, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_node}), cnode_a, cnode_b)
end

function catalyst_conduit_node_name(cnode)
    ccall((:catalyst_conduit_node_name, libcatalyst), Ptr{Cchar}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_number_of_children(cnode)
    ccall((:catalyst_conduit_node_number_of_children, libcatalyst), conduit_index_t, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_number_of_elements(cnode)
    ccall((:catalyst_conduit_node_number_of_elements, libcatalyst), conduit_index_t, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_parent(cnode)
    ccall((:catalyst_conduit_node_parent, libcatalyst), Ptr{conduit_node}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_parse(cnode, schema, protocol)
    ccall((:catalyst_conduit_node_parse, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cchar}), cnode, schema, protocol)
end

function catalyst_conduit_node_path(cnode)
    ccall((:catalyst_conduit_node_path, libcatalyst), Ptr{Cchar}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_print(cnode)
    ccall((:catalyst_conduit_node_print, libcatalyst), Cvoid, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_print_detailed(cnode)
    ccall((:catalyst_conduit_node_print_detailed, libcatalyst), Cvoid, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_remove_child(cnode, idx)
    ccall((:catalyst_conduit_node_remove_child, libcatalyst), Cvoid, (Ptr{conduit_node}, conduit_index_t), cnode, idx)
end

function catalyst_conduit_node_remove_child_by_name(cnode, name)
    ccall((:catalyst_conduit_node_remove_child_by_name, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}), cnode, name)
end

function catalyst_conduit_node_remove_path(cnode, path)
    ccall((:catalyst_conduit_node_remove_path, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}), cnode, path)
end

function catalyst_conduit_node_rename_child(cnode, current_name, new_name)
    ccall((:catalyst_conduit_node_rename_child, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cchar}), cnode, current_name, new_name)
end

function catalyst_conduit_node_reset(cnode)
    ccall((:catalyst_conduit_node_reset, libcatalyst), Cvoid, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_save(cnode, path, protocol)
    ccall((:catalyst_conduit_node_save, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cchar}), cnode, path, protocol)
end

function catalyst_conduit_node_set_char(cnode, value)
    ccall((:catalyst_conduit_node_set_char, libcatalyst), Cvoid, (Ptr{conduit_node}, Cchar), cnode, value)
end

function catalyst_conduit_node_set_char8_str(cnode, value)
    ccall((:catalyst_conduit_node_set_char8_str, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}), cnode, value)
end

function catalyst_conduit_node_set_char_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_char_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_char_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_char_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_double(cnode, value)
    ccall((:catalyst_conduit_node_set_double, libcatalyst), Cvoid, (Ptr{conduit_node}, Cdouble), cnode, value)
end

function catalyst_conduit_node_set_double_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_double_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cdouble}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_double_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_double_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cdouble}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_char8_str(cnode, value)
    ccall((:catalyst_conduit_node_set_external_char8_str, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}), cnode, value)
end

function catalyst_conduit_node_set_external_char_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_char_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_char_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_char_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_double_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_double_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cdouble}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_double_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_double_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cdouble}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_float32_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_float32_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_float32}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_float32_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_float32_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_float32}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_float64_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_float64_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_float64}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_float64_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_float64_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_float64}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_float_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_float_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cfloat}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_float_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_float_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cfloat}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_int16_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_int16_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_int16}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_int16_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_int16_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_int16}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_int32_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_int32_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_int32}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_int32_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_int32_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_int32}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_int64_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_int64_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_int64}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_int64_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_int64_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_int64}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_int8_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_int8_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_int8}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_int8_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_int8_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_int8}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_int_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_int_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cint}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_int_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_int_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cint}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_long_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_long_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Clong}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_long_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_long_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Clong}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_node(cnode, data)
    ccall((:catalyst_conduit_node_set_external_node, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, data)
end

function catalyst_conduit_node_set_external_short_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_short_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cshort}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_short_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_short_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cshort}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_signed_char_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_signed_char_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Int8}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_signed_char_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_signed_char_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Int8}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_signed_int_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_signed_int_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cint}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_signed_int_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_signed_int_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cint}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_signed_long_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_signed_long_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Clong}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_signed_long_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_signed_long_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Clong}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_signed_short_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_signed_short_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cshort}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_signed_short_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_signed_short_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cshort}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_uint16_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_uint16_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_uint16}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_uint16_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_uint16_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_uint16}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_uint32_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_uint32_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_uint32}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_uint32_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_uint32_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_uint32}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_uint64_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_uint64_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_uint64}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_uint64_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_uint64_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_uint64}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_uint8_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_uint8_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_uint8}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_uint8_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_uint8_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_uint8}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_unsigned_char_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_unsigned_char_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cuchar}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_unsigned_char_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_unsigned_char_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cuchar}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_unsigned_int_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_unsigned_int_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cuint}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_unsigned_int_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_unsigned_int_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cuint}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_unsigned_long_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_unsigned_long_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Culong}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_unsigned_long_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_unsigned_long_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Culong}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_external_unsigned_short_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_external_unsigned_short_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cushort}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_external_unsigned_short_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_external_unsigned_short_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cushort}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_float(cnode, value)
    ccall((:catalyst_conduit_node_set_float, libcatalyst), Cvoid, (Ptr{conduit_node}, Cfloat), cnode, value)
end

function catalyst_conduit_node_set_float32(cnode, value)
    ccall((:catalyst_conduit_node_set_float32, libcatalyst), Cvoid, (Ptr{conduit_node}, conduit_float32), cnode, value)
end

function catalyst_conduit_node_set_float32_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_float32_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_float32}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_float32_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_float32_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_float32}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_float64(cnode, value)
    ccall((:catalyst_conduit_node_set_float64, libcatalyst), Cvoid, (Ptr{conduit_node}, conduit_float64), cnode, value)
end

function catalyst_conduit_node_set_float64_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_float64_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_float64}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_float64_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_float64_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_float64}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_float_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_float_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cfloat}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_float_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_float_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cfloat}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_int(cnode, value)
    ccall((:catalyst_conduit_node_set_int, libcatalyst), Cvoid, (Ptr{conduit_node}, Cint), cnode, value)
end

function catalyst_conduit_node_set_int16(cnode, value)
    ccall((:catalyst_conduit_node_set_int16, libcatalyst), Cvoid, (Ptr{conduit_node}, conduit_int16), cnode, value)
end

function catalyst_conduit_node_set_int16_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_int16_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_int16}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_int16_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_int16_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_int16}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_int32(cnode, value)
    ccall((:catalyst_conduit_node_set_int32, libcatalyst), Cvoid, (Ptr{conduit_node}, conduit_int32), cnode, value)
end

function catalyst_conduit_node_set_int32_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_int32_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_int32}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_int32_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_int32_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_int32}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_int64(cnode, value)
    ccall((:catalyst_conduit_node_set_int64, libcatalyst), Cvoid, (Ptr{conduit_node}, conduit_int64), cnode, value)
end

function catalyst_conduit_node_set_int64_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_int64_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_int64}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_int64_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_int64_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_int64}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_int8(cnode, value)
    ccall((:catalyst_conduit_node_set_int8, libcatalyst), Cvoid, (Ptr{conduit_node}, conduit_int8), cnode, value)
end

function catalyst_conduit_node_set_int8_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_int8_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_int8}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_int8_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_int8_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_int8}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_int_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_int_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cint}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_int_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_int_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cint}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_long(cnode, value)
    ccall((:catalyst_conduit_node_set_long, libcatalyst), Cvoid, (Ptr{conduit_node}, Clong), cnode, value)
end

function catalyst_conduit_node_set_long_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_long_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Clong}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_long_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_long_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Clong}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_node(cnode, data)
    ccall((:catalyst_conduit_node_set_node, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, data)
end

function catalyst_conduit_node_set_path_char(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_char, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Cchar), cnode, path, value)
end

function catalyst_conduit_node_set_path_char8_str(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_char8_str, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cchar}), cnode, path, value)
end

function catalyst_conduit_node_set_path_char_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_char_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cchar}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_char_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_char_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cchar}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_double(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_double, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Cdouble), cnode, path, value)
end

function catalyst_conduit_node_set_path_double_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_double_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cdouble}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_double_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_double_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cdouble}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_char8_str(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_external_char8_str, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cchar}), cnode, path, value)
end

function catalyst_conduit_node_set_path_external_char_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_char_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cchar}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_char_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_char_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cchar}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_double_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_double_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cdouble}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_double_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_double_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cdouble}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_float32_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_float32_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_float32}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_float32_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_float32_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_float32}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_float64_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_float64_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_float64}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_float64_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_float64_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_float64}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_float_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_float_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cfloat}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_float_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_float_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cfloat}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_int16_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_int16_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_int16}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_int16_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_int16_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_int16}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_int32_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_int32_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_int32}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_int32_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_int32_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_int32}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_int64_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_int64_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_int64}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_int64_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_int64_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_int64}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_int8_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_int8_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_int8}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_int8_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_int8_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_int8}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_int_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_int_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cint}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_int_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_int_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cint}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_long_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_long_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Clong}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_long_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_long_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Clong}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_node(cnode, path, data)
    ccall((:catalyst_conduit_node_set_path_external_node, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_node}), cnode, path, data)
end

function catalyst_conduit_node_set_path_external_short_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_short_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cshort}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_short_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_short_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cshort}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_signed_char_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_signed_char_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Int8}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_signed_char_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_signed_char_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Int8}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_signed_int_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_signed_int_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cint}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_signed_int_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_signed_int_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cint}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_signed_long_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_signed_long_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Clong}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_signed_long_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_signed_long_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Clong}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_signed_short_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_signed_short_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cshort}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_signed_short_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_signed_short_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cshort}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_uint16_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_uint16_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_uint16}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_uint16_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_uint16_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_uint16}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_uint32_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_uint32_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_uint32}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_uint32_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_uint32_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_uint32}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_uint64_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_uint64_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_uint64}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_uint64_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_uint64_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_uint64}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_uint8_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_uint8_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_uint8}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_uint8_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_uint8_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_uint8}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_unsigned_char_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_unsigned_char_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cuchar}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_unsigned_char_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_unsigned_char_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cuchar}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_unsigned_int_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_unsigned_int_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cuint}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_unsigned_int_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_unsigned_int_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cuint}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_unsigned_long_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_unsigned_long_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Culong}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_unsigned_long_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_unsigned_long_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Culong}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_external_unsigned_short_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_external_unsigned_short_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cushort}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_external_unsigned_short_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_external_unsigned_short_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cushort}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_float(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_float, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Cfloat), cnode, path, value)
end

function catalyst_conduit_node_set_path_float32(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_float32, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, conduit_float32), cnode, path, value)
end

function catalyst_conduit_node_set_path_float32_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_float32_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_float32}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_float32_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_float32_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_float32}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_float64(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_float64, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, conduit_float64), cnode, path, value)
end

function catalyst_conduit_node_set_path_float64_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_float64_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_float64}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_float64_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_float64_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_float64}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_float_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_float_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cfloat}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_float_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_float_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cfloat}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_int(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_int, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Cint), cnode, path, value)
end

function catalyst_conduit_node_set_path_int16(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_int16, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, conduit_int16), cnode, path, value)
end

function catalyst_conduit_node_set_path_int16_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_int16_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_int16}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_int16_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_int16_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_int16}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_int32(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_int32, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, conduit_int32), cnode, path, value)
end

function catalyst_conduit_node_set_path_int32_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_int32_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_int32}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_int32_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_int32_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_int32}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_int64(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_int64, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, conduit_int64), cnode, path, value)
end

function catalyst_conduit_node_set_path_int64_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_int64_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_int64}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_int64_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_int64_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_int64}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_int8(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_int8, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, conduit_int8), cnode, path, value)
end

function catalyst_conduit_node_set_path_int8_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_int8_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_int8}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_int8_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_int8_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_int8}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_int_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_int_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cint}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_int_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_int_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cint}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_long(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_long, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Clong), cnode, path, value)
end

function catalyst_conduit_node_set_path_long_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_long_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Clong}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_long_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_long_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Clong}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_node(cnode, path, data)
    ccall((:catalyst_conduit_node_set_path_node, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_node}), cnode, path, data)
end

function catalyst_conduit_node_set_path_short(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_short, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Cshort), cnode, path, value)
end

function catalyst_conduit_node_set_path_short_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_short_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cshort}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_short_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_short_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cshort}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_signed_char(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_signed_char, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Int8), cnode, path, value)
end

function catalyst_conduit_node_set_path_signed_char_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_signed_char_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Int8}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_signed_char_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_signed_char_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Int8}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_signed_int(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_signed_int, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Cint), cnode, path, value)
end

function catalyst_conduit_node_set_path_signed_int_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_signed_int_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cint}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_signed_int_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_signed_int_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cint}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_signed_long(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_signed_long, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Clong), cnode, path, value)
end

function catalyst_conduit_node_set_path_signed_long_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_signed_long_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Clong}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_signed_long_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_signed_long_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Clong}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_signed_short(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_signed_short, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Cshort), cnode, path, value)
end

function catalyst_conduit_node_set_path_signed_short_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_signed_short_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cshort}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_signed_short_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_signed_short_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cshort}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_uint16(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_uint16, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, conduit_uint16), cnode, path, value)
end

function catalyst_conduit_node_set_path_uint16_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_uint16_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_uint16}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_uint16_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_uint16_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_uint16}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_uint32(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_uint32, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, conduit_uint32), cnode, path, value)
end

function catalyst_conduit_node_set_path_uint32_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_uint32_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_uint32}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_uint32_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_uint32_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_uint32}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_uint64(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_uint64, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, conduit_uint64), cnode, path, value)
end

function catalyst_conduit_node_set_path_uint64_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_uint64_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_uint64}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_uint64_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_uint64_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_uint64}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_uint8(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_uint8, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, conduit_uint8), cnode, path, value)
end

function catalyst_conduit_node_set_path_uint8_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_uint8_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_uint8}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_uint8_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_uint8_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{conduit_uint8}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_unsigned_char(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_unsigned_char, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Cuchar), cnode, path, value)
end

function catalyst_conduit_node_set_path_unsigned_char_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_unsigned_char_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cuchar}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_unsigned_char_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_unsigned_char_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cuchar}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_unsigned_int(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_unsigned_int, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Cuint), cnode, path, value)
end

function catalyst_conduit_node_set_path_unsigned_int_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_unsigned_int_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cuint}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_unsigned_int_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_unsigned_int_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cuint}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_unsigned_long(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_unsigned_long, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Culong), cnode, path, value)
end

function catalyst_conduit_node_set_path_unsigned_long_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_unsigned_long_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Culong}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_unsigned_long_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_unsigned_long_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Culong}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_path_unsigned_short(cnode, path, value)
    ccall((:catalyst_conduit_node_set_path_unsigned_short, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Cushort), cnode, path, value)
end

function catalyst_conduit_node_set_path_unsigned_short_ptr(cnode, path, data, num_elements)
    ccall((:catalyst_conduit_node_set_path_unsigned_short_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cushort}, conduit_index_t), cnode, path, data, num_elements)
end

function catalyst_conduit_node_set_path_unsigned_short_ptr_detailed(cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_path_unsigned_short_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, Ptr{Cushort}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, path, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_short(cnode, value)
    ccall((:catalyst_conduit_node_set_short, libcatalyst), Cvoid, (Ptr{conduit_node}, Cshort), cnode, value)
end

function catalyst_conduit_node_set_short_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_short_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cshort}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_short_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_short_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cshort}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_signed_char(cnode, value)
    ccall((:catalyst_conduit_node_set_signed_char, libcatalyst), Cvoid, (Ptr{conduit_node}, Int8), cnode, value)
end

function catalyst_conduit_node_set_signed_char_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_signed_char_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Int8}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_signed_char_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_signed_char_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Int8}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_signed_int(cnode, value)
    ccall((:catalyst_conduit_node_set_signed_int, libcatalyst), Cvoid, (Ptr{conduit_node}, Cint), cnode, value)
end

function catalyst_conduit_node_set_signed_int_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_signed_int_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cint}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_signed_int_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_signed_int_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cint}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_signed_long(cnode, value)
    ccall((:catalyst_conduit_node_set_signed_long, libcatalyst), Cvoid, (Ptr{conduit_node}, Clong), cnode, value)
end

function catalyst_conduit_node_set_signed_long_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_signed_long_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Clong}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_signed_long_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_signed_long_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Clong}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_signed_short(cnode, value)
    ccall((:catalyst_conduit_node_set_signed_short, libcatalyst), Cvoid, (Ptr{conduit_node}, Cshort), cnode, value)
end

function catalyst_conduit_node_set_signed_short_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_signed_short_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cshort}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_signed_short_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_signed_short_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cshort}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_uint16(cnode, value)
    ccall((:catalyst_conduit_node_set_uint16, libcatalyst), Cvoid, (Ptr{conduit_node}, conduit_uint16), cnode, value)
end

function catalyst_conduit_node_set_uint16_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_uint16_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_uint16}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_uint16_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_uint16_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_uint16}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_uint32(cnode, value)
    ccall((:catalyst_conduit_node_set_uint32, libcatalyst), Cvoid, (Ptr{conduit_node}, conduit_uint32), cnode, value)
end

function catalyst_conduit_node_set_uint32_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_uint32_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_uint32}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_uint32_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_uint32_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_uint32}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_uint64(cnode, value)
    ccall((:catalyst_conduit_node_set_uint64, libcatalyst), Cvoid, (Ptr{conduit_node}, conduit_uint64), cnode, value)
end

function catalyst_conduit_node_set_uint64_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_uint64_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_uint64}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_uint64_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_uint64_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_uint64}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_uint8(cnode, value)
    ccall((:catalyst_conduit_node_set_uint8, libcatalyst), Cvoid, (Ptr{conduit_node}, conduit_uint8), cnode, value)
end

function catalyst_conduit_node_set_uint8_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_uint8_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_uint8}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_uint8_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_uint8_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_uint8}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_unsigned_char(cnode, value)
    ccall((:catalyst_conduit_node_set_unsigned_char, libcatalyst), Cvoid, (Ptr{conduit_node}, Cuchar), cnode, value)
end

function catalyst_conduit_node_set_unsigned_char_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_unsigned_char_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cuchar}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_unsigned_char_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_unsigned_char_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cuchar}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_unsigned_int(cnode, value)
    ccall((:catalyst_conduit_node_set_unsigned_int, libcatalyst), Cvoid, (Ptr{conduit_node}, Cuint), cnode, value)
end

function catalyst_conduit_node_set_unsigned_int_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_unsigned_int_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cuint}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_unsigned_int_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_unsigned_int_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cuint}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_unsigned_long(cnode, value)
    ccall((:catalyst_conduit_node_set_unsigned_long, libcatalyst), Cvoid, (Ptr{conduit_node}, Culong), cnode, value)
end

function catalyst_conduit_node_set_unsigned_long_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_unsigned_long_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Culong}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_unsigned_long_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_unsigned_long_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Culong}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_set_unsigned_short(cnode, value)
    ccall((:catalyst_conduit_node_set_unsigned_short, libcatalyst), Cvoid, (Ptr{conduit_node}, Cushort), cnode, value)
end

function catalyst_conduit_node_set_unsigned_short_ptr(cnode, data, num_elements)
    ccall((:catalyst_conduit_node_set_unsigned_short_ptr, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cushort}, conduit_index_t), cnode, data, num_elements)
end

function catalyst_conduit_node_set_unsigned_short_ptr_detailed(cnode, data, num_elements, offset, stride, element_bytes, endianness)
    ccall((:catalyst_conduit_node_set_unsigned_short_ptr_detailed, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cushort}, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t, conduit_index_t), cnode, data, num_elements, offset, stride, element_bytes, endianness)
end

function catalyst_conduit_node_swap(cnode_a, cnode_b)
    ccall((:catalyst_conduit_node_swap, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_node}), cnode_a, cnode_b)
end

function catalyst_conduit_node_to_json(cnode)
    ccall((:catalyst_conduit_node_to_json, libcatalyst), Ptr{Cchar}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_to_json_with_options(cnode, copts)
    ccall((:catalyst_conduit_node_to_json_with_options, libcatalyst), Ptr{Cchar}, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, copts)
end

function catalyst_conduit_node_to_string(cnode)
    ccall((:catalyst_conduit_node_to_string, libcatalyst), Ptr{Cchar}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_to_string_with_options(cnode, copts)
    ccall((:catalyst_conduit_node_to_string_with_options, libcatalyst), Ptr{Cchar}, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, copts)
end

function catalyst_conduit_node_to_summary_string(cnode)
    ccall((:catalyst_conduit_node_to_summary_string, libcatalyst), Ptr{Cchar}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_to_summary_string_with_options(cnode, copts)
    ccall((:catalyst_conduit_node_to_summary_string_with_options, libcatalyst), Ptr{Cchar}, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, copts)
end

function catalyst_conduit_node_to_yaml(cnode)
    ccall((:catalyst_conduit_node_to_yaml, libcatalyst), Ptr{Cchar}, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_to_yaml_with_options(cnode, copts)
    ccall((:catalyst_conduit_node_to_yaml_with_options, libcatalyst), Ptr{Cchar}, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, copts)
end

function catalyst_conduit_node_total_bytes_allocated(cnode)
    ccall((:catalyst_conduit_node_total_bytes_allocated, libcatalyst), conduit_index_t, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_total_bytes_compact(cnode)
    ccall((:catalyst_conduit_node_total_bytes_compact, libcatalyst), conduit_index_t, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_total_strided_bytes(cnode)
    ccall((:catalyst_conduit_node_total_strided_bytes, libcatalyst), conduit_index_t, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_node_update(cnode, cother)
    ccall((:catalyst_conduit_node_update, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, cother)
end

function catalyst_conduit_node_update_compatible(cnode, cother)
    ccall((:catalyst_conduit_node_update_compatible, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, cother)
end

function catalyst_conduit_node_update_external(cnode, cother)
    ccall((:catalyst_conduit_node_update_external, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, cother)
end

function catalyst_conduit_utils_set_error_handler(on_error)
    ccall((:catalyst_conduit_utils_set_error_handler, libcatalyst), Cvoid, (Ptr{Cvoid},), on_error)
end

function catalyst_conduit_utils_set_info_handler(on_info)
    ccall((:catalyst_conduit_utils_set_info_handler, libcatalyst), Cvoid, (Ptr{Cvoid},), on_info)
end

function catalyst_conduit_utils_set_warning_handler(on_warning)
    ccall((:catalyst_conduit_utils_set_warning_handler, libcatalyst), Cvoid, (Ptr{Cvoid},), on_warning)
end

const conduit_unsigned_long_long = Culonglong

const conduit_signed_long_long = Clonglong

const conduit_long_double = Float64

const conduit_char = conduit_signed_char

const conduit_short = conduit_signed_short

const conduit_int = conduit_signed_int

const conduit_long = conduit_signed_long

const conduit_long_long = conduit_signed_long_long

@cenum conduit_datatype_type_id::UInt32 begin
    CONDUIT_EMPTY_ID = 0
    CONDUIT_OBJECT_ID = 1
    CONDUIT_LIST_ID = 2
    CONDUIT_INT8_ID = 3
    CONDUIT_INT16_ID = 4
    CONDUIT_INT32_ID = 5
    CONDUIT_INT64_ID = 6
    CONDUIT_UINT8_ID = 7
    CONDUIT_UINT16_ID = 8
    CONDUIT_UINT32_ID = 9
    CONDUIT_UINT64_ID = 10
    CONDUIT_FLOAT32_ID = 11
    CONDUIT_FLOAT64_ID = 12
    CONDUIT_CHAR8_STR_ID = 13
end

const conduit_index32_t = conduit_int32

@cenum conduit_endianness_type_id::UInt32 begin
    CONDUIT_ENDIANNESS_DEFAULT_ID = 0
    CONDUIT_ENDIANNESS_BIG_ID = 1
    CONDUIT_ENDIANNESS_LITTLE_ID = 2
end

@cenum catalyst_status::UInt32 begin
    catalyst_status_ok = 0
    catalyst_status_error_no_implementation = 1
    catalyst_status_error_already_loaded = 2
    catalyst_status_error_not_found = 3
    catalyst_status_error_not_catalyst = 4
    catalyst_status_error_incomplete = 5
    catalyst_status_error_unsupported_version = 6
    catalyst_status_error_conduit_mismatch = 7
end

function catalyst_initialize(params)
    ccall((:catalyst_initialize, libcatalyst), catalyst_status, (Ptr{conduit_node},), params)
end

function catalyst_execute(params)
    ccall((:catalyst_execute, libcatalyst), catalyst_status, (Ptr{conduit_node},), params)
end

function catalyst_finalize(params)
    ccall((:catalyst_finalize, libcatalyst), catalyst_status, (Ptr{conduit_node},), params)
end

function catalyst_about(params)
    ccall((:catalyst_about, libcatalyst), catalyst_status, (Ptr{conduit_node},), params)
end

function catalyst_results(params)
    ccall((:catalyst_results, libcatalyst), catalyst_status, (Ptr{conduit_node},), params)
end

function catalyst_conduit_blueprint_about(cnode)
    ccall((:catalyst_conduit_blueprint_about, libcatalyst), Cvoid, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_blueprint_mcarray_is_interleaved(cnode)
    ccall((:catalyst_conduit_blueprint_mcarray_is_interleaved, libcatalyst), Cint, (Ptr{conduit_node},), cnode)
end

function catalyst_conduit_blueprint_mcarray_to_contiguous(cnode, cdest)
    ccall((:catalyst_conduit_blueprint_mcarray_to_contiguous, libcatalyst), Cint, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, cdest)
end

function catalyst_conduit_blueprint_mcarray_to_interleaved(cnode, cdest)
    ccall((:catalyst_conduit_blueprint_mcarray_to_interleaved, libcatalyst), Cint, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, cdest)
end

function catalyst_conduit_blueprint_mcarray_verify(cnode, cinfo)
    ccall((:catalyst_conduit_blueprint_mcarray_verify, libcatalyst), Cint, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, cinfo)
end

function catalyst_conduit_blueprint_mcarray_verify_sub_protocol(protocol, cnode, cinfo)
    ccall((:catalyst_conduit_blueprint_mcarray_verify_sub_protocol, libcatalyst), Cint, (Ptr{Cchar}, Ptr{conduit_node}, Ptr{conduit_node}), protocol, cnode, cinfo)
end

function catalyst_conduit_blueprint_mesh_flatten(cmesh, coptions, coutput)
    ccall((:catalyst_conduit_blueprint_mesh_flatten, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_node}, Ptr{conduit_node}), cmesh, coptions, coutput)
end

function catalyst_conduit_blueprint_mesh_generate_index(cmesh, ref_path, num_domains, cindex_out)
    ccall((:catalyst_conduit_blueprint_mesh_generate_index, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{Cchar}, conduit_index_t, Ptr{conduit_node}), cmesh, ref_path, num_domains, cindex_out)
end

function catalyst_conduit_blueprint_mesh_partition(cmesh, coptions, coutput)
    ccall((:catalyst_conduit_blueprint_mesh_partition, libcatalyst), Cvoid, (Ptr{conduit_node}, Ptr{conduit_node}, Ptr{conduit_node}), cmesh, coptions, coutput)
end

function catalyst_conduit_blueprint_mesh_verify(cnode, cinfo)
    ccall((:catalyst_conduit_blueprint_mesh_verify, libcatalyst), Cint, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, cinfo)
end

function catalyst_conduit_blueprint_mesh_verify_sub_protocol(protocol, cnode, cinfo)
    ccall((:catalyst_conduit_blueprint_mesh_verify_sub_protocol, libcatalyst), Cint, (Ptr{Cchar}, Ptr{conduit_node}, Ptr{conduit_node}), protocol, cnode, cinfo)
end

function catalyst_conduit_blueprint_table_verify(cnode, cinfo)
    ccall((:catalyst_conduit_blueprint_table_verify, libcatalyst), Cint, (Ptr{conduit_node}, Ptr{conduit_node}), cnode, cinfo)
end

function catalyst_conduit_blueprint_table_verify_sub_protocol(protocol, cnode, cinfo)
    ccall((:catalyst_conduit_blueprint_table_verify_sub_protocol, libcatalyst), Cint, (Ptr{Cchar}, Ptr{conduit_node}, Ptr{conduit_node}), protocol, cnode, cinfo)
end

function catalyst_conduit_blueprint_verify(protocol, cnode, cinfo)
    ccall((:catalyst_conduit_blueprint_verify, libcatalyst), Cint, (Ptr{Cchar}, Ptr{conduit_node}, Ptr{conduit_node}), protocol, cnode, cinfo)
end

const conduit_about = catalyst_conduit_about

const conduit_datatype_element_bytes = catalyst_conduit_datatype_element_bytes

const conduit_datatype_element_index = catalyst_conduit_datatype_element_index

const conduit_datatype_endianness = catalyst_conduit_datatype_endianness

const conduit_datatype_endianness_matches_machine = catalyst_conduit_datatype_endianness_matches_machine

const conduit_datatype_id = catalyst_conduit_datatype_id

const conduit_datatype_is_big_endian = catalyst_conduit_datatype_is_big_endian

const conduit_datatype_is_char = catalyst_conduit_datatype_is_char

const conduit_datatype_is_char8_str = catalyst_conduit_datatype_is_char8_str

const conduit_datatype_is_double = catalyst_conduit_datatype_is_double

const conduit_datatype_is_empty = catalyst_conduit_datatype_is_empty

const conduit_datatype_is_float = catalyst_conduit_datatype_is_float

const conduit_datatype_is_float32 = catalyst_conduit_datatype_is_float32

const conduit_datatype_is_float64 = catalyst_conduit_datatype_is_float64

const conduit_datatype_is_floating_point = catalyst_conduit_datatype_is_floating_point

const conduit_datatype_is_int = catalyst_conduit_datatype_is_int

const conduit_datatype_is_int16 = catalyst_conduit_datatype_is_int16

const conduit_datatype_is_int32 = catalyst_conduit_datatype_is_int32

const conduit_datatype_is_int64 = catalyst_conduit_datatype_is_int64

const conduit_datatype_is_int8 = catalyst_conduit_datatype_is_int8

const conduit_datatype_is_integer = catalyst_conduit_datatype_is_integer

const conduit_datatype_is_list = catalyst_conduit_datatype_is_list

const conduit_datatype_is_little_endian = catalyst_conduit_datatype_is_little_endian

const conduit_datatype_is_long = catalyst_conduit_datatype_is_long

const conduit_datatype_is_number = catalyst_conduit_datatype_is_number

const conduit_datatype_is_object = catalyst_conduit_datatype_is_object

const conduit_datatype_is_short = catalyst_conduit_datatype_is_short

const conduit_datatype_is_signed_integer = catalyst_conduit_datatype_is_signed_integer

const conduit_datatype_is_string = catalyst_conduit_datatype_is_string

const conduit_datatype_is_uint16 = catalyst_conduit_datatype_is_uint16

const conduit_datatype_is_uint32 = catalyst_conduit_datatype_is_uint32

const conduit_datatype_is_uint64 = catalyst_conduit_datatype_is_uint64

const conduit_datatype_is_uint8 = catalyst_conduit_datatype_is_uint8

const conduit_datatype_is_unsigned_char = catalyst_conduit_datatype_is_unsigned_char

const conduit_datatype_is_unsigned_int = catalyst_conduit_datatype_is_unsigned_int

const conduit_datatype_is_unsigned_integer = catalyst_conduit_datatype_is_unsigned_integer

const conduit_datatype_is_unsigned_long = catalyst_conduit_datatype_is_unsigned_long

const conduit_datatype_is_unsigned_short = catalyst_conduit_datatype_is_unsigned_short

const conduit_datatype_name = catalyst_conduit_datatype_name

const conduit_datatype_name_destroy = catalyst_conduit_datatype_name_destroy

const conduit_datatype_number_of_elements = catalyst_conduit_datatype_number_of_elements

const conduit_datatype_offset = catalyst_conduit_datatype_offset

const conduit_datatype_sizeof_index_t = catalyst_conduit_datatype_sizeof_index_t

const conduit_datatype_stride = catalyst_conduit_datatype_stride

const conduit_node_add_child = catalyst_conduit_node_add_child

const conduit_node_append = catalyst_conduit_node_append

const conduit_node_as_char = catalyst_conduit_node_as_char

const conduit_node_as_char8_str = catalyst_conduit_node_as_char8_str

const conduit_node_as_char_ptr = catalyst_conduit_node_as_char_ptr

const conduit_node_as_double = catalyst_conduit_node_as_double

const conduit_node_as_double_ptr = catalyst_conduit_node_as_double_ptr

const conduit_node_as_float = catalyst_conduit_node_as_float

const conduit_node_as_float32 = catalyst_conduit_node_as_float32

const conduit_node_as_float32_ptr = catalyst_conduit_node_as_float32_ptr

const conduit_node_as_float64 = catalyst_conduit_node_as_float64

const conduit_node_as_float64_ptr = catalyst_conduit_node_as_float64_ptr

const conduit_node_as_float_ptr = catalyst_conduit_node_as_float_ptr

const conduit_node_as_int = catalyst_conduit_node_as_int

const conduit_node_as_int16 = catalyst_conduit_node_as_int16

const conduit_node_as_int16_ptr = catalyst_conduit_node_as_int16_ptr

const conduit_node_as_int32 = catalyst_conduit_node_as_int32

const conduit_node_as_int32_ptr = catalyst_conduit_node_as_int32_ptr

const conduit_node_as_int64 = catalyst_conduit_node_as_int64

const conduit_node_as_int64_ptr = catalyst_conduit_node_as_int64_ptr

const conduit_node_as_int8 = catalyst_conduit_node_as_int8

const conduit_node_as_int8_ptr = catalyst_conduit_node_as_int8_ptr

const conduit_node_as_int_ptr = catalyst_conduit_node_as_int_ptr

const conduit_node_as_long = catalyst_conduit_node_as_long

const conduit_node_as_long_ptr = catalyst_conduit_node_as_long_ptr

const conduit_node_as_short = catalyst_conduit_node_as_short

const conduit_node_as_short_ptr = catalyst_conduit_node_as_short_ptr

const conduit_node_as_signed_char = catalyst_conduit_node_as_signed_char

const conduit_node_as_signed_char_ptr = catalyst_conduit_node_as_signed_char_ptr

const conduit_node_as_signed_int = catalyst_conduit_node_as_signed_int

const conduit_node_as_signed_int_ptr = catalyst_conduit_node_as_signed_int_ptr

const conduit_node_as_signed_long = catalyst_conduit_node_as_signed_long

const conduit_node_as_signed_long_ptr = catalyst_conduit_node_as_signed_long_ptr

const conduit_node_as_signed_short = catalyst_conduit_node_as_signed_short

const conduit_node_as_signed_short_ptr = catalyst_conduit_node_as_signed_short_ptr

const conduit_node_as_uint16 = catalyst_conduit_node_as_uint16

const conduit_node_as_uint16_ptr = catalyst_conduit_node_as_uint16_ptr

const conduit_node_as_uint32 = catalyst_conduit_node_as_uint32

const conduit_node_as_uint32_ptr = catalyst_conduit_node_as_uint32_ptr

const conduit_node_as_uint64 = catalyst_conduit_node_as_uint64

const conduit_node_as_uint64_ptr = catalyst_conduit_node_as_uint64_ptr

const conduit_node_as_uint8 = catalyst_conduit_node_as_uint8

const conduit_node_as_uint8_ptr = catalyst_conduit_node_as_uint8_ptr

const conduit_node_as_unsigned_char = catalyst_conduit_node_as_unsigned_char

const conduit_node_as_unsigned_char_ptr = catalyst_conduit_node_as_unsigned_char_ptr

const conduit_node_as_unsigned_int = catalyst_conduit_node_as_unsigned_int

const conduit_node_as_unsigned_int_ptr = catalyst_conduit_node_as_unsigned_int_ptr

const conduit_node_as_unsigned_long = catalyst_conduit_node_as_unsigned_long

const conduit_node_as_unsigned_long_ptr = catalyst_conduit_node_as_unsigned_long_ptr

const conduit_node_as_unsigned_short = catalyst_conduit_node_as_unsigned_short

const conduit_node_as_unsigned_short_ptr = catalyst_conduit_node_as_unsigned_short_ptr

const conduit_node_child = catalyst_conduit_node_child

const conduit_node_child_by_name = catalyst_conduit_node_child_by_name

const conduit_node_compact_to = catalyst_conduit_node_compact_to

const conduit_node_compatible = catalyst_conduit_node_compatible

const conduit_node_contiguous_with_address = catalyst_conduit_node_contiguous_with_address

const conduit_node_contiguous_with_node = catalyst_conduit_node_contiguous_with_node

const conduit_node_create = catalyst_conduit_node_create

const conduit_node_data_ptr = catalyst_conduit_node_data_ptr

const conduit_node_destroy = catalyst_conduit_node_destroy

const conduit_node_diff = catalyst_conduit_node_diff

const conduit_node_diff_compatible = catalyst_conduit_node_diff_compatible

const conduit_node_dtype = catalyst_conduit_node_dtype

const conduit_node_element_ptr = catalyst_conduit_node_element_ptr

const conduit_node_fetch = catalyst_conduit_node_fetch

const conduit_node_fetch_existing = catalyst_conduit_node_fetch_existing

const conduit_node_fetch_path_as_char = catalyst_conduit_node_fetch_path_as_char

const conduit_node_fetch_path_as_char8_str = catalyst_conduit_node_fetch_path_as_char8_str

const conduit_node_fetch_path_as_char_ptr = catalyst_conduit_node_fetch_path_as_char_ptr

const conduit_node_fetch_path_as_double = catalyst_conduit_node_fetch_path_as_double

const conduit_node_fetch_path_as_double_ptr = catalyst_conduit_node_fetch_path_as_double_ptr

const conduit_node_fetch_path_as_float = catalyst_conduit_node_fetch_path_as_float

const conduit_node_fetch_path_as_float32 = catalyst_conduit_node_fetch_path_as_float32

const conduit_node_fetch_path_as_float32_ptr = catalyst_conduit_node_fetch_path_as_float32_ptr

const conduit_node_fetch_path_as_float64 = catalyst_conduit_node_fetch_path_as_float64

const conduit_node_fetch_path_as_float64_ptr = catalyst_conduit_node_fetch_path_as_float64_ptr

const conduit_node_fetch_path_as_float_ptr = catalyst_conduit_node_fetch_path_as_float_ptr

const conduit_node_fetch_path_as_int = catalyst_conduit_node_fetch_path_as_int

const conduit_node_fetch_path_as_int16 = catalyst_conduit_node_fetch_path_as_int16

const conduit_node_fetch_path_as_int16_ptr = catalyst_conduit_node_fetch_path_as_int16_ptr

const conduit_node_fetch_path_as_int32 = catalyst_conduit_node_fetch_path_as_int32

const conduit_node_fetch_path_as_int32_ptr = catalyst_conduit_node_fetch_path_as_int32_ptr

const conduit_node_fetch_path_as_int64 = catalyst_conduit_node_fetch_path_as_int64

const conduit_node_fetch_path_as_int64_ptr = catalyst_conduit_node_fetch_path_as_int64_ptr

const conduit_node_fetch_path_as_int8 = catalyst_conduit_node_fetch_path_as_int8

const conduit_node_fetch_path_as_int8_ptr = catalyst_conduit_node_fetch_path_as_int8_ptr

const conduit_node_fetch_path_as_int_ptr = catalyst_conduit_node_fetch_path_as_int_ptr

const conduit_node_fetch_path_as_long = catalyst_conduit_node_fetch_path_as_long

const conduit_node_fetch_path_as_long_ptr = catalyst_conduit_node_fetch_path_as_long_ptr

const conduit_node_fetch_path_as_short = catalyst_conduit_node_fetch_path_as_short

const conduit_node_fetch_path_as_short_ptr = catalyst_conduit_node_fetch_path_as_short_ptr

const conduit_node_fetch_path_as_signed_char = catalyst_conduit_node_fetch_path_as_signed_char

const conduit_node_fetch_path_as_signed_char_ptr = catalyst_conduit_node_fetch_path_as_signed_char_ptr

const conduit_node_fetch_path_as_signed_int = catalyst_conduit_node_fetch_path_as_signed_int

const conduit_node_fetch_path_as_signed_int_ptr = catalyst_conduit_node_fetch_path_as_signed_int_ptr

const conduit_node_fetch_path_as_signed_long = catalyst_conduit_node_fetch_path_as_signed_long

const conduit_node_fetch_path_as_signed_long_ptr = catalyst_conduit_node_fetch_path_as_signed_long_ptr

const conduit_node_fetch_path_as_signed_short = catalyst_conduit_node_fetch_path_as_signed_short

const conduit_node_fetch_path_as_signed_short_ptr = catalyst_conduit_node_fetch_path_as_signed_short_ptr

const conduit_node_fetch_path_as_uint16 = catalyst_conduit_node_fetch_path_as_uint16

const conduit_node_fetch_path_as_uint16_ptr = catalyst_conduit_node_fetch_path_as_uint16_ptr

const conduit_node_fetch_path_as_uint32 = catalyst_conduit_node_fetch_path_as_uint32

const conduit_node_fetch_path_as_uint32_ptr = catalyst_conduit_node_fetch_path_as_uint32_ptr

const conduit_node_fetch_path_as_uint64 = catalyst_conduit_node_fetch_path_as_uint64

const conduit_node_fetch_path_as_uint64_ptr = catalyst_conduit_node_fetch_path_as_uint64_ptr

const conduit_node_fetch_path_as_uint8 = catalyst_conduit_node_fetch_path_as_uint8

const conduit_node_fetch_path_as_uint8_ptr = catalyst_conduit_node_fetch_path_as_uint8_ptr

const conduit_node_fetch_path_as_unsigned_char = catalyst_conduit_node_fetch_path_as_unsigned_char

const conduit_node_fetch_path_as_unsigned_char_ptr = catalyst_conduit_node_fetch_path_as_unsigned_char_ptr

const conduit_node_fetch_path_as_unsigned_int = catalyst_conduit_node_fetch_path_as_unsigned_int

const conduit_node_fetch_path_as_unsigned_int_ptr = catalyst_conduit_node_fetch_path_as_unsigned_int_ptr

const conduit_node_fetch_path_as_unsigned_long = catalyst_conduit_node_fetch_path_as_unsigned_long

const conduit_node_fetch_path_as_unsigned_long_ptr = catalyst_conduit_node_fetch_path_as_unsigned_long_ptr

const conduit_node_fetch_path_as_unsigned_short = catalyst_conduit_node_fetch_path_as_unsigned_short

const conduit_node_fetch_path_as_unsigned_short_ptr = catalyst_conduit_node_fetch_path_as_unsigned_short_ptr

const conduit_node_fetch_path_data_ptr = catalyst_conduit_node_fetch_path_data_ptr

const conduit_node_fetch_path_element_ptr = catalyst_conduit_node_fetch_path_element_ptr

const conduit_node_generate = catalyst_conduit_node_generate

const conduit_node_generate_external = catalyst_conduit_node_generate_external

const conduit_node_has_child = catalyst_conduit_node_has_child

const conduit_node_has_path = catalyst_conduit_node_has_path

const conduit_node_info = catalyst_conduit_node_info

const conduit_node_is_compact = catalyst_conduit_node_is_compact

const conduit_node_is_contiguous = catalyst_conduit_node_is_contiguous

const conduit_node_is_data_external = catalyst_conduit_node_is_data_external

const conduit_node_is_root = catalyst_conduit_node_is_root

const conduit_node_load = catalyst_conduit_node_load

const conduit_node_move = catalyst_conduit_node_move

const conduit_node_name = catalyst_conduit_node_name

const conduit_node_number_of_children = catalyst_conduit_node_number_of_children

const conduit_node_number_of_elements = catalyst_conduit_node_number_of_elements

const conduit_node_parent = catalyst_conduit_node_parent

const conduit_node_parse = catalyst_conduit_node_parse

const conduit_node_path = catalyst_conduit_node_path

const conduit_node_print = catalyst_conduit_node_print

const conduit_node_print_detailed = catalyst_conduit_node_print_detailed

const conduit_node_remove_child = catalyst_conduit_node_remove_child

const conduit_node_remove_child_by_name = catalyst_conduit_node_remove_child_by_name

const conduit_node_remove_path = catalyst_conduit_node_remove_path

const conduit_node_rename_child = catalyst_conduit_node_rename_child

const conduit_node_reset = catalyst_conduit_node_reset

const conduit_node_save = catalyst_conduit_node_save

const conduit_node_set_char = catalyst_conduit_node_set_char

const conduit_node_set_char8_str = catalyst_conduit_node_set_char8_str

const conduit_node_set_char_ptr = catalyst_conduit_node_set_char_ptr

const conduit_node_set_char_ptr_detailed = catalyst_conduit_node_set_char_ptr_detailed

const conduit_node_set_double = catalyst_conduit_node_set_double

const conduit_node_set_double_ptr = catalyst_conduit_node_set_double_ptr

const conduit_node_set_double_ptr_detailed = catalyst_conduit_node_set_double_ptr_detailed

const conduit_node_set_external_char8_str = catalyst_conduit_node_set_external_char8_str

const conduit_node_set_external_char_ptr = catalyst_conduit_node_set_external_char_ptr

const conduit_node_set_external_char_ptr_detailed = catalyst_conduit_node_set_external_char_ptr_detailed

const conduit_node_set_external_double_ptr = catalyst_conduit_node_set_external_double_ptr

const conduit_node_set_external_double_ptr_detailed = catalyst_conduit_node_set_external_double_ptr_detailed

const conduit_node_set_external_float32_ptr = catalyst_conduit_node_set_external_float32_ptr

const conduit_node_set_external_float32_ptr_detailed = catalyst_conduit_node_set_external_float32_ptr_detailed

const conduit_node_set_external_float64_ptr = catalyst_conduit_node_set_external_float64_ptr

const conduit_node_set_external_float64_ptr_detailed = catalyst_conduit_node_set_external_float64_ptr_detailed

const conduit_node_set_external_float_ptr = catalyst_conduit_node_set_external_float_ptr

const conduit_node_set_external_float_ptr_detailed = catalyst_conduit_node_set_external_float_ptr_detailed

const conduit_node_set_external_int16_ptr = catalyst_conduit_node_set_external_int16_ptr

const conduit_node_set_external_int16_ptr_detailed = catalyst_conduit_node_set_external_int16_ptr_detailed

const conduit_node_set_external_int32_ptr = catalyst_conduit_node_set_external_int32_ptr

const conduit_node_set_external_int32_ptr_detailed = catalyst_conduit_node_set_external_int32_ptr_detailed

const conduit_node_set_external_int64_ptr = catalyst_conduit_node_set_external_int64_ptr

const conduit_node_set_external_int64_ptr_detailed = catalyst_conduit_node_set_external_int64_ptr_detailed

const conduit_node_set_external_int8_ptr = catalyst_conduit_node_set_external_int8_ptr

const conduit_node_set_external_int8_ptr_detailed = catalyst_conduit_node_set_external_int8_ptr_detailed

const conduit_node_set_external_int_ptr = catalyst_conduit_node_set_external_int_ptr

const conduit_node_set_external_int_ptr_detailed = catalyst_conduit_node_set_external_int_ptr_detailed

const conduit_node_set_external_long_ptr = catalyst_conduit_node_set_external_long_ptr

const conduit_node_set_external_long_ptr_detailed = catalyst_conduit_node_set_external_long_ptr_detailed

const conduit_node_set_external_node = catalyst_conduit_node_set_external_node

const conduit_node_set_external_short_ptr = catalyst_conduit_node_set_external_short_ptr

const conduit_node_set_external_short_ptr_detailed = catalyst_conduit_node_set_external_short_ptr_detailed

const conduit_node_set_external_signed_char_ptr = catalyst_conduit_node_set_external_signed_char_ptr

const conduit_node_set_external_signed_char_ptr_detailed = catalyst_conduit_node_set_external_signed_char_ptr_detailed

const conduit_node_set_external_signed_int_ptr = catalyst_conduit_node_set_external_signed_int_ptr

const conduit_node_set_external_signed_int_ptr_detailed = catalyst_conduit_node_set_external_signed_int_ptr_detailed

const conduit_node_set_external_signed_long_ptr = catalyst_conduit_node_set_external_signed_long_ptr

const conduit_node_set_external_signed_long_ptr_detailed = catalyst_conduit_node_set_external_signed_long_ptr_detailed

const conduit_node_set_external_signed_short_ptr = catalyst_conduit_node_set_external_signed_short_ptr

const conduit_node_set_external_signed_short_ptr_detailed = catalyst_conduit_node_set_external_signed_short_ptr_detailed

const conduit_node_set_external_uint16_ptr = catalyst_conduit_node_set_external_uint16_ptr

const conduit_node_set_external_uint16_ptr_detailed = catalyst_conduit_node_set_external_uint16_ptr_detailed

const conduit_node_set_external_uint32_ptr = catalyst_conduit_node_set_external_uint32_ptr

const conduit_node_set_external_uint32_ptr_detailed = catalyst_conduit_node_set_external_uint32_ptr_detailed

const conduit_node_set_external_uint64_ptr = catalyst_conduit_node_set_external_uint64_ptr

const conduit_node_set_external_uint64_ptr_detailed = catalyst_conduit_node_set_external_uint64_ptr_detailed

const conduit_node_set_external_uint8_ptr = catalyst_conduit_node_set_external_uint8_ptr

const conduit_node_set_external_uint8_ptr_detailed = catalyst_conduit_node_set_external_uint8_ptr_detailed

const conduit_node_set_external_unsigned_char_ptr = catalyst_conduit_node_set_external_unsigned_char_ptr

const conduit_node_set_external_unsigned_char_ptr_detailed = catalyst_conduit_node_set_external_unsigned_char_ptr_detailed

const conduit_node_set_external_unsigned_int_ptr = catalyst_conduit_node_set_external_unsigned_int_ptr

const conduit_node_set_external_unsigned_int_ptr_detailed = catalyst_conduit_node_set_external_unsigned_int_ptr_detailed

const conduit_node_set_external_unsigned_long_ptr = catalyst_conduit_node_set_external_unsigned_long_ptr

const conduit_node_set_external_unsigned_long_ptr_detailed = catalyst_conduit_node_set_external_unsigned_long_ptr_detailed

const conduit_node_set_external_unsigned_short_ptr = catalyst_conduit_node_set_external_unsigned_short_ptr

const conduit_node_set_external_unsigned_short_ptr_detailed = catalyst_conduit_node_set_external_unsigned_short_ptr_detailed

const conduit_node_set_float = catalyst_conduit_node_set_float

const conduit_node_set_float32 = catalyst_conduit_node_set_float32

const conduit_node_set_float32_ptr = catalyst_conduit_node_set_float32_ptr

const conduit_node_set_float32_ptr_detailed = catalyst_conduit_node_set_float32_ptr_detailed

const conduit_node_set_float64 = catalyst_conduit_node_set_float64

const conduit_node_set_float64_ptr = catalyst_conduit_node_set_float64_ptr

const conduit_node_set_float64_ptr_detailed = catalyst_conduit_node_set_float64_ptr_detailed

const conduit_node_set_float_ptr = catalyst_conduit_node_set_float_ptr

const conduit_node_set_float_ptr_detailed = catalyst_conduit_node_set_float_ptr_detailed

const conduit_node_set_int = catalyst_conduit_node_set_int

const conduit_node_set_int16 = catalyst_conduit_node_set_int16

const conduit_node_set_int16_ptr = catalyst_conduit_node_set_int16_ptr

const conduit_node_set_int16_ptr_detailed = catalyst_conduit_node_set_int16_ptr_detailed

const conduit_node_set_int32 = catalyst_conduit_node_set_int32

const conduit_node_set_int32_ptr = catalyst_conduit_node_set_int32_ptr

const conduit_node_set_int32_ptr_detailed = catalyst_conduit_node_set_int32_ptr_detailed

const conduit_node_set_int64 = catalyst_conduit_node_set_int64

const conduit_node_set_int64_ptr = catalyst_conduit_node_set_int64_ptr

const conduit_node_set_int64_ptr_detailed = catalyst_conduit_node_set_int64_ptr_detailed

const conduit_node_set_int8 = catalyst_conduit_node_set_int8

const conduit_node_set_int8_ptr = catalyst_conduit_node_set_int8_ptr

const conduit_node_set_int8_ptr_detailed = catalyst_conduit_node_set_int8_ptr_detailed

const conduit_node_set_int_ptr = catalyst_conduit_node_set_int_ptr

const conduit_node_set_int_ptr_detailed = catalyst_conduit_node_set_int_ptr_detailed

const conduit_node_set_long = catalyst_conduit_node_set_long

const conduit_node_set_long_ptr = catalyst_conduit_node_set_long_ptr

const conduit_node_set_long_ptr_detailed = catalyst_conduit_node_set_long_ptr_detailed

const conduit_node_set_node = catalyst_conduit_node_set_node

const conduit_node_set_path_char = catalyst_conduit_node_set_path_char

const conduit_node_set_path_char8_str = catalyst_conduit_node_set_path_char8_str

const conduit_node_set_path_char_ptr = catalyst_conduit_node_set_path_char_ptr

const conduit_node_set_path_char_ptr_detailed = catalyst_conduit_node_set_path_char_ptr_detailed

const conduit_node_set_path_double = catalyst_conduit_node_set_path_double

const conduit_node_set_path_double_ptr = catalyst_conduit_node_set_path_double_ptr

const conduit_node_set_path_double_ptr_detailed = catalyst_conduit_node_set_path_double_ptr_detailed

const conduit_node_set_path_external_char8_str = catalyst_conduit_node_set_path_external_char8_str

const conduit_node_set_path_external_char_ptr = catalyst_conduit_node_set_path_external_char_ptr

const conduit_node_set_path_external_char_ptr_detailed = catalyst_conduit_node_set_path_external_char_ptr_detailed

const conduit_node_set_path_external_double_ptr = catalyst_conduit_node_set_path_external_double_ptr

const conduit_node_set_path_external_double_ptr_detailed = catalyst_conduit_node_set_path_external_double_ptr_detailed

const conduit_node_set_path_external_float32_ptr = catalyst_conduit_node_set_path_external_float32_ptr

const conduit_node_set_path_external_float32_ptr_detailed = catalyst_conduit_node_set_path_external_float32_ptr_detailed

const conduit_node_set_path_external_float64_ptr = catalyst_conduit_node_set_path_external_float64_ptr

const conduit_node_set_path_external_float64_ptr_detailed = catalyst_conduit_node_set_path_external_float64_ptr_detailed

const conduit_node_set_path_external_float_ptr = catalyst_conduit_node_set_path_external_float_ptr

const conduit_node_set_path_external_float_ptr_detailed = catalyst_conduit_node_set_path_external_float_ptr_detailed

const conduit_node_set_path_external_int16_ptr = catalyst_conduit_node_set_path_external_int16_ptr

const conduit_node_set_path_external_int16_ptr_detailed = catalyst_conduit_node_set_path_external_int16_ptr_detailed

const conduit_node_set_path_external_int32_ptr = catalyst_conduit_node_set_path_external_int32_ptr

const conduit_node_set_path_external_int32_ptr_detailed = catalyst_conduit_node_set_path_external_int32_ptr_detailed

const conduit_node_set_path_external_int64_ptr = catalyst_conduit_node_set_path_external_int64_ptr

const conduit_node_set_path_external_int64_ptr_detailed = catalyst_conduit_node_set_path_external_int64_ptr_detailed

const conduit_node_set_path_external_int8_ptr = catalyst_conduit_node_set_path_external_int8_ptr

const conduit_node_set_path_external_int8_ptr_detailed = catalyst_conduit_node_set_path_external_int8_ptr_detailed

const conduit_node_set_path_external_int_ptr = catalyst_conduit_node_set_path_external_int_ptr

const conduit_node_set_path_external_int_ptr_detailed = catalyst_conduit_node_set_path_external_int_ptr_detailed

const conduit_node_set_path_external_long_ptr = catalyst_conduit_node_set_path_external_long_ptr

const conduit_node_set_path_external_long_ptr_detailed = catalyst_conduit_node_set_path_external_long_ptr_detailed

const conduit_node_set_path_external_node = catalyst_conduit_node_set_path_external_node

const conduit_node_set_path_external_short_ptr = catalyst_conduit_node_set_path_external_short_ptr

const conduit_node_set_path_external_short_ptr_detailed = catalyst_conduit_node_set_path_external_short_ptr_detailed

const conduit_node_set_path_external_signed_char_ptr = catalyst_conduit_node_set_path_external_signed_char_ptr

const conduit_node_set_path_external_signed_char_ptr_detailed = catalyst_conduit_node_set_path_external_signed_char_ptr_detailed

const conduit_node_set_path_external_signed_int_ptr = catalyst_conduit_node_set_path_external_signed_int_ptr

const conduit_node_set_path_external_signed_int_ptr_detailed = catalyst_conduit_node_set_path_external_signed_int_ptr_detailed

const conduit_node_set_path_external_signed_long_ptr = catalyst_conduit_node_set_path_external_signed_long_ptr

const conduit_node_set_path_external_signed_long_ptr_detailed = catalyst_conduit_node_set_path_external_signed_long_ptr_detailed

const conduit_node_set_path_external_signed_short_ptr = catalyst_conduit_node_set_path_external_signed_short_ptr

const conduit_node_set_path_external_signed_short_ptr_detailed = catalyst_conduit_node_set_path_external_signed_short_ptr_detailed

const conduit_node_set_path_external_uint16_ptr = catalyst_conduit_node_set_path_external_uint16_ptr

const conduit_node_set_path_external_uint16_ptr_detailed = catalyst_conduit_node_set_path_external_uint16_ptr_detailed

const conduit_node_set_path_external_uint32_ptr = catalyst_conduit_node_set_path_external_uint32_ptr

const conduit_node_set_path_external_uint32_ptr_detailed = catalyst_conduit_node_set_path_external_uint32_ptr_detailed

const conduit_node_set_path_external_uint64_ptr = catalyst_conduit_node_set_path_external_uint64_ptr

const conduit_node_set_path_external_uint64_ptr_detailed = catalyst_conduit_node_set_path_external_uint64_ptr_detailed

const conduit_node_set_path_external_uint8_ptr = catalyst_conduit_node_set_path_external_uint8_ptr

const conduit_node_set_path_external_uint8_ptr_detailed = catalyst_conduit_node_set_path_external_uint8_ptr_detailed

const conduit_node_set_path_external_unsigned_char_ptr = catalyst_conduit_node_set_path_external_unsigned_char_ptr

const conduit_node_set_path_external_unsigned_char_ptr_detailed = catalyst_conduit_node_set_path_external_unsigned_char_ptr_detailed

const conduit_node_set_path_external_unsigned_int_ptr = catalyst_conduit_node_set_path_external_unsigned_int_ptr

const conduit_node_set_path_external_unsigned_int_ptr_detailed = catalyst_conduit_node_set_path_external_unsigned_int_ptr_detailed

const conduit_node_set_path_external_unsigned_long_ptr = catalyst_conduit_node_set_path_external_unsigned_long_ptr

const conduit_node_set_path_external_unsigned_long_ptr_detailed = catalyst_conduit_node_set_path_external_unsigned_long_ptr_detailed

const conduit_node_set_path_external_unsigned_short_ptr = catalyst_conduit_node_set_path_external_unsigned_short_ptr

const conduit_node_set_path_external_unsigned_short_ptr_detailed = catalyst_conduit_node_set_path_external_unsigned_short_ptr_detailed

const conduit_node_set_path_float = catalyst_conduit_node_set_path_float

const conduit_node_set_path_float32 = catalyst_conduit_node_set_path_float32

const conduit_node_set_path_float32_ptr = catalyst_conduit_node_set_path_float32_ptr

const conduit_node_set_path_float32_ptr_detailed = catalyst_conduit_node_set_path_float32_ptr_detailed

const conduit_node_set_path_float64 = catalyst_conduit_node_set_path_float64

const conduit_node_set_path_float64_ptr = catalyst_conduit_node_set_path_float64_ptr

const conduit_node_set_path_float64_ptr_detailed = catalyst_conduit_node_set_path_float64_ptr_detailed

const conduit_node_set_path_float_ptr = catalyst_conduit_node_set_path_float_ptr

const conduit_node_set_path_float_ptr_detailed = catalyst_conduit_node_set_path_float_ptr_detailed

const conduit_node_set_path_int = catalyst_conduit_node_set_path_int

const conduit_node_set_path_int16 = catalyst_conduit_node_set_path_int16

const conduit_node_set_path_int16_ptr = catalyst_conduit_node_set_path_int16_ptr

const conduit_node_set_path_int16_ptr_detailed = catalyst_conduit_node_set_path_int16_ptr_detailed

const conduit_node_set_path_int32 = catalyst_conduit_node_set_path_int32

const conduit_node_set_path_int32_ptr = catalyst_conduit_node_set_path_int32_ptr

const conduit_node_set_path_int32_ptr_detailed = catalyst_conduit_node_set_path_int32_ptr_detailed

const conduit_node_set_path_int64 = catalyst_conduit_node_set_path_int64

const conduit_node_set_path_int64_ptr = catalyst_conduit_node_set_path_int64_ptr

const conduit_node_set_path_int64_ptr_detailed = catalyst_conduit_node_set_path_int64_ptr_detailed

const conduit_node_set_path_int8 = catalyst_conduit_node_set_path_int8

const conduit_node_set_path_int8_ptr = catalyst_conduit_node_set_path_int8_ptr

const conduit_node_set_path_int8_ptr_detailed = catalyst_conduit_node_set_path_int8_ptr_detailed

const conduit_node_set_path_int_ptr = catalyst_conduit_node_set_path_int_ptr

const conduit_node_set_path_int_ptr_detailed = catalyst_conduit_node_set_path_int_ptr_detailed

const conduit_node_set_path_long = catalyst_conduit_node_set_path_long

const conduit_node_set_path_long_ptr = catalyst_conduit_node_set_path_long_ptr

const conduit_node_set_path_long_ptr_detailed = catalyst_conduit_node_set_path_long_ptr_detailed

const conduit_node_set_path_node = catalyst_conduit_node_set_path_node

const conduit_node_set_path_short = catalyst_conduit_node_set_path_short

const conduit_node_set_path_short_ptr = catalyst_conduit_node_set_path_short_ptr

const conduit_node_set_path_short_ptr_detailed = catalyst_conduit_node_set_path_short_ptr_detailed

const conduit_node_set_path_signed_char = catalyst_conduit_node_set_path_signed_char

const conduit_node_set_path_signed_char_ptr = catalyst_conduit_node_set_path_signed_char_ptr

const conduit_node_set_path_signed_char_ptr_detailed = catalyst_conduit_node_set_path_signed_char_ptr_detailed

const conduit_node_set_path_signed_int = catalyst_conduit_node_set_path_signed_int

const conduit_node_set_path_signed_int_ptr = catalyst_conduit_node_set_path_signed_int_ptr

const conduit_node_set_path_signed_int_ptr_detailed = catalyst_conduit_node_set_path_signed_int_ptr_detailed

const conduit_node_set_path_signed_long = catalyst_conduit_node_set_path_signed_long

const conduit_node_set_path_signed_long_ptr = catalyst_conduit_node_set_path_signed_long_ptr

const conduit_node_set_path_signed_long_ptr_detailed = catalyst_conduit_node_set_path_signed_long_ptr_detailed

const conduit_node_set_path_signed_short = catalyst_conduit_node_set_path_signed_short

const conduit_node_set_path_signed_short_ptr = catalyst_conduit_node_set_path_signed_short_ptr

const conduit_node_set_path_signed_short_ptr_detailed = catalyst_conduit_node_set_path_signed_short_ptr_detailed

const conduit_node_set_path_uint16 = catalyst_conduit_node_set_path_uint16

const conduit_node_set_path_uint16_ptr = catalyst_conduit_node_set_path_uint16_ptr

const conduit_node_set_path_uint16_ptr_detailed = catalyst_conduit_node_set_path_uint16_ptr_detailed

const conduit_node_set_path_uint32 = catalyst_conduit_node_set_path_uint32

const conduit_node_set_path_uint32_ptr = catalyst_conduit_node_set_path_uint32_ptr

const conduit_node_set_path_uint32_ptr_detailed = catalyst_conduit_node_set_path_uint32_ptr_detailed

const conduit_node_set_path_uint64 = catalyst_conduit_node_set_path_uint64

const conduit_node_set_path_uint64_ptr = catalyst_conduit_node_set_path_uint64_ptr

const conduit_node_set_path_uint64_ptr_detailed = catalyst_conduit_node_set_path_uint64_ptr_detailed

const conduit_node_set_path_uint8 = catalyst_conduit_node_set_path_uint8

const conduit_node_set_path_uint8_ptr = catalyst_conduit_node_set_path_uint8_ptr

const conduit_node_set_path_uint8_ptr_detailed = catalyst_conduit_node_set_path_uint8_ptr_detailed

const conduit_node_set_path_unsigned_char = catalyst_conduit_node_set_path_unsigned_char

const conduit_node_set_path_unsigned_char_ptr = catalyst_conduit_node_set_path_unsigned_char_ptr

const conduit_node_set_path_unsigned_char_ptr_detailed = catalyst_conduit_node_set_path_unsigned_char_ptr_detailed

const conduit_node_set_path_unsigned_int = catalyst_conduit_node_set_path_unsigned_int

const conduit_node_set_path_unsigned_int_ptr = catalyst_conduit_node_set_path_unsigned_int_ptr

const conduit_node_set_path_unsigned_int_ptr_detailed = catalyst_conduit_node_set_path_unsigned_int_ptr_detailed

const conduit_node_set_path_unsigned_long = catalyst_conduit_node_set_path_unsigned_long

const conduit_node_set_path_unsigned_long_ptr = catalyst_conduit_node_set_path_unsigned_long_ptr

const conduit_node_set_path_unsigned_long_ptr_detailed = catalyst_conduit_node_set_path_unsigned_long_ptr_detailed

const conduit_node_set_path_unsigned_short = catalyst_conduit_node_set_path_unsigned_short

const conduit_node_set_path_unsigned_short_ptr = catalyst_conduit_node_set_path_unsigned_short_ptr

const conduit_node_set_path_unsigned_short_ptr_detailed = catalyst_conduit_node_set_path_unsigned_short_ptr_detailed

const conduit_node_set_short = catalyst_conduit_node_set_short

const conduit_node_set_short_ptr = catalyst_conduit_node_set_short_ptr

const conduit_node_set_short_ptr_detailed = catalyst_conduit_node_set_short_ptr_detailed

const conduit_node_set_signed_char = catalyst_conduit_node_set_signed_char

const conduit_node_set_signed_char_ptr = catalyst_conduit_node_set_signed_char_ptr

const conduit_node_set_signed_char_ptr_detailed = catalyst_conduit_node_set_signed_char_ptr_detailed

const conduit_node_set_signed_int = catalyst_conduit_node_set_signed_int

const conduit_node_set_signed_int_ptr = catalyst_conduit_node_set_signed_int_ptr

const conduit_node_set_signed_int_ptr_detailed = catalyst_conduit_node_set_signed_int_ptr_detailed

const conduit_node_set_signed_long = catalyst_conduit_node_set_signed_long

const conduit_node_set_signed_long_ptr = catalyst_conduit_node_set_signed_long_ptr

const conduit_node_set_signed_long_ptr_detailed = catalyst_conduit_node_set_signed_long_ptr_detailed

const conduit_node_set_signed_short = catalyst_conduit_node_set_signed_short

const conduit_node_set_signed_short_ptr = catalyst_conduit_node_set_signed_short_ptr

const conduit_node_set_signed_short_ptr_detailed = catalyst_conduit_node_set_signed_short_ptr_detailed

const conduit_node_set_uint16 = catalyst_conduit_node_set_uint16

const conduit_node_set_uint16_ptr = catalyst_conduit_node_set_uint16_ptr

const conduit_node_set_uint16_ptr_detailed = catalyst_conduit_node_set_uint16_ptr_detailed

const conduit_node_set_uint32 = catalyst_conduit_node_set_uint32

const conduit_node_set_uint32_ptr = catalyst_conduit_node_set_uint32_ptr

const conduit_node_set_uint32_ptr_detailed = catalyst_conduit_node_set_uint32_ptr_detailed

const conduit_node_set_uint64 = catalyst_conduit_node_set_uint64

const conduit_node_set_uint64_ptr = catalyst_conduit_node_set_uint64_ptr

const conduit_node_set_uint64_ptr_detailed = catalyst_conduit_node_set_uint64_ptr_detailed

const conduit_node_set_uint8 = catalyst_conduit_node_set_uint8

const conduit_node_set_uint8_ptr = catalyst_conduit_node_set_uint8_ptr

const conduit_node_set_uint8_ptr_detailed = catalyst_conduit_node_set_uint8_ptr_detailed

const conduit_node_set_unsigned_char = catalyst_conduit_node_set_unsigned_char

const conduit_node_set_unsigned_char_ptr = catalyst_conduit_node_set_unsigned_char_ptr

const conduit_node_set_unsigned_char_ptr_detailed = catalyst_conduit_node_set_unsigned_char_ptr_detailed

const conduit_node_set_unsigned_int = catalyst_conduit_node_set_unsigned_int

const conduit_node_set_unsigned_int_ptr = catalyst_conduit_node_set_unsigned_int_ptr

const conduit_node_set_unsigned_int_ptr_detailed = catalyst_conduit_node_set_unsigned_int_ptr_detailed

const conduit_node_set_unsigned_long = catalyst_conduit_node_set_unsigned_long

const conduit_node_set_unsigned_long_ptr = catalyst_conduit_node_set_unsigned_long_ptr

const conduit_node_set_unsigned_long_ptr_detailed = catalyst_conduit_node_set_unsigned_long_ptr_detailed

const conduit_node_set_unsigned_short = catalyst_conduit_node_set_unsigned_short

const conduit_node_set_unsigned_short_ptr = catalyst_conduit_node_set_unsigned_short_ptr

const conduit_node_set_unsigned_short_ptr_detailed = catalyst_conduit_node_set_unsigned_short_ptr_detailed

const conduit_node_swap = catalyst_conduit_node_swap

const conduit_node_to_json = catalyst_conduit_node_to_json

const conduit_node_to_json_with_options = catalyst_conduit_node_to_json_with_options

const conduit_node_to_string = catalyst_conduit_node_to_string

const conduit_node_to_string_with_options = catalyst_conduit_node_to_string_with_options

const conduit_node_to_summary_string = catalyst_conduit_node_to_summary_string

const conduit_node_to_summary_string_with_options = catalyst_conduit_node_to_summary_string_with_options

const conduit_node_to_yaml = catalyst_conduit_node_to_yaml

const conduit_node_to_yaml_with_options = catalyst_conduit_node_to_yaml_with_options

const conduit_node_total_bytes_allocated = catalyst_conduit_node_total_bytes_allocated

const conduit_node_total_bytes_compact = catalyst_conduit_node_total_bytes_compact

const conduit_node_total_strided_bytes = catalyst_conduit_node_total_strided_bytes

const conduit_node_update = catalyst_conduit_node_update

const conduit_node_update_compatible = catalyst_conduit_node_update_compatible

const conduit_node_update_external = catalyst_conduit_node_update_external

const conduit_utils_set_error_handler = catalyst_conduit_utils_set_error_handler

const conduit_utils_set_info_handler = catalyst_conduit_utils_set_info_handler

const conduit_utils_set_warning_handler = catalyst_conduit_utils_set_warning_handler

const CONDUIT_VERSION = "0.8.3"

const CONDUIT_VERSION_MAJOR = 0

const CONDUIT_VERSION_MINOR = 8

const CONDUIT_VERSION_PATCH = 3

const CONDUIT_GIT_SHA1 = "d8000c2d46b8ea968c2b7551cd0ce2af5b75b6da"

const CONDUIT_SIZEOF_BYTE = 1

const CONDUIT_SIZEOF_CHAR = 1

const CONDUIT_SIZEOF_SHORT = 2

const CONDUIT_SIZEOF_INT = 4

const CONDUIT_SIZEOF_LONG = 8

const CONDUIT_SIZEOF_LONG_LONG = 8

const CONDUIT_SIZEOF_FLOAT = 4

const CONDUIT_SIZEOF_DOUBLE = 8

const CONDUIT_SIZEOF_LONG_DOUBLE = 16

const CONDUIT_SIZEOF_VOID_P = 8

const CONDUIT_HAS_LONG_LONG = 1

const CONDUIT_HAS_LONG_DOUBLE = 1

const CONDUIT_USE_CHAR = 1

const CONDUIT_USE_SHORT = 1

const CONDUIT_USE_INT = 1

const CONDUIT_USE_LONG = 1

const CONDUIT_USE_FLOAT = 1

const CONDUIT_USE_DOUBLE = 1

const CONDUIT_INT8_NATIVE_NAME = "signed char"

const CONDUIT_INT16_NATIVE_NAME = "signed short"

const CONDUIT_INT32_NATIVE_NAME = "signed int"

const CONDUIT_INT64_NATIVE_NAME = "signed long"

const CONDUIT_UINT8_NATIVE_NAME = "unsigned char"

const CONDUIT_UINT16_NATIVE_NAME = "unsigned short"

const CONDUIT_UINT32_NATIVE_NAME = "unsigned int"

const CONDUIT_UINT64_NATIVE_NAME = "unsigned long"

const CONDUIT_FLOAT32_NATIVE_NAME = "float"

const CONDUIT_FLOAT64_NATIVE_NAME = "double"

const CONDUIT_NATIVE_SIGNED_CHAR = conduit_int8

const CONDUIT_NATIVE_SIGNED_SHORT = conduit_int16

const CONDUIT_NATIVE_SIGNED_INT = conduit_int32

const CONDUIT_NATIVE_SIGNED_LONG = conduit_int64

const CONDUIT_NATIVE_SIGNED_LONG_LONG = conduit_int64

const CONDUIT_NATIVE_SIGNED_CHAR_ID = 3

const CONDUIT_NATIVE_SIGNED_SHORT_ID = 4

const CONDUIT_NATIVE_SIGNED_INT_ID = 5

const CONDUIT_NATIVE_SIGNED_LONG_ID = 6

const CONDUIT_NATIVE_SIGNED_LONG_LONG_ID = 6

const CONDUIT_NATIVE_UNSIGNED_CHAR = conduit_uint8

const CONDUIT_NATIVE_UNSIGNED_SHORT = conduit_uint16

const CONDUIT_NATIVE_UNSIGNED_INT = conduit_uint32

const CONDUIT_NATIVE_UNSIGNED_LONG = conduit_uint64

const CONDUIT_NATIVE_UNSIGNED_LONG_LONG = conduit_uint64

const CONDUIT_NATIVE_UNSIGNED_CHAR_ID = 7

const CONDUIT_NATIVE_UNSIGNED_SHORT_ID = 8

const CONDUIT_NATIVE_UNSIGNED_INT_ID = 9

const CONDUIT_NATIVE_UNSIGNED_LONG_ID = 10

const CONDUIT_NATIVE_UNSIGNED_LONG_LONG_ID = 10

const CONDUIT_NATIVE_CHAR = CONDUIT_NATIVE_SIGNED_CHAR

const CONDUIT_NATIVE_SHORT = CONDUIT_NATIVE_SIGNED_SHORT

const CONDUIT_NATIVE_INT = CONDUIT_NATIVE_SIGNED_INT

const CONDUIT_NATIVE_LONG = CONDUIT_NATIVE_SIGNED_LONG

const CONDUIT_NATIVE_LONG_LONG = CONDUIT_NATIVE_SIGNED_LONG_LONG

const CONDUIT_NATIVE_CHAR_ID = CONDUIT_NATIVE_SIGNED_CHAR_ID

const CONDUIT_NATIVE_SHORT_ID = CONDUIT_NATIVE_SIGNED_SHORT_ID

const CONDUIT_NATIVE_INT_ID = CONDUIT_NATIVE_SIGNED_INT_ID

const CONDUIT_NATIVE_LONG_ID = CONDUIT_NATIVE_SIGNED_LONG_ID

const CONDUIT_NATIVE_LONG_LONG_ID = 6

const CONDUIT_NATIVE_FLOAT = conduit_float32

const CONDUIT_NATIVE_DOUBLE = conduit_float64

const CONDUIT_NATIVE_FLOAT_ID = 11

const CONDUIT_NATIVE_DOUBLE_ID = 12

const CONDUIT_SIZEOF_INDEX_T = 8

const conduit_blueprint_about = catalyst_conduit_blueprint_about

const conduit_blueprint_mcarray_is_interleaved = catalyst_conduit_blueprint_mcarray_is_interleaved

const conduit_blueprint_mcarray_to_contiguous = catalyst_conduit_blueprint_mcarray_to_contiguous

const conduit_blueprint_mcarray_to_interleaved = catalyst_conduit_blueprint_mcarray_to_interleaved

const conduit_blueprint_mcarray_verify = catalyst_conduit_blueprint_mcarray_verify

const conduit_blueprint_mcarray_verify_sub_protocol = catalyst_conduit_blueprint_mcarray_verify_sub_protocol

const conduit_blueprint_mesh_flatten = catalyst_conduit_blueprint_mesh_flatten

const conduit_blueprint_mesh_generate_index = catalyst_conduit_blueprint_mesh_generate_index

const conduit_blueprint_mesh_partition = catalyst_conduit_blueprint_mesh_partition

const conduit_blueprint_mesh_verify = catalyst_conduit_blueprint_mesh_verify

const conduit_blueprint_mesh_verify_sub_protocol = catalyst_conduit_blueprint_mesh_verify_sub_protocol

const conduit_blueprint_table_verify = catalyst_conduit_blueprint_table_verify

const conduit_blueprint_table_verify_sub_protocol = catalyst_conduit_blueprint_table_verify_sub_protocol

const conduit_blueprint_verify = catalyst_conduit_blueprint_verify

end # module
