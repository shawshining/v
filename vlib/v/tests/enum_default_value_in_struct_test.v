pub enum MyEnum {
	first = 20
	second
	third
}

pub struct MyStruct {
mut:
	e MyEnum = .second
}

fn test_enum_first_value() {
	assert MyEnum.first == 20
}

fn test_enum_default_value() {
	d := MyStruct{}
	assert int(d.e) == 21
	assert 'd.e: $d.e | int(d.e): ${int(d.e).str()}' == 'd.e: second | int(d.e): 21'
}

fn test_enum_non_default_value() {
	t := MyStruct{
		e: .third
	}
	assert int(t.e) == 22
	assert 't.e: $t.e | int(t.e): ${int(t.e).str()}' == 't.e: third | int(t.e): 22'
}