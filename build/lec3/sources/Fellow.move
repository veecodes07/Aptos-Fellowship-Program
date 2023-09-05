module MyAddr::Fellow {
    use std::debug;
    struct Empty{}
//struct can copy, drop, key , store

    struct Fellow has drop {
        id:u64,
        age: u8,
        build_in_bear:bool
    }

    //generic struct
    
    struct MyClass<t1, t2> has drop{
        quality: t1,
        learning:t2

    }

    //public constructor
    public fun new_fellow(id:u64, age:u8, bib:bool):Fellow
    {
        return Fellow{id, age,  build_in_bear:bib}
    }

    //function to get id basic
    public fun get_id(f: Fellow): u64{
        return f.id
    }

   // #[test(account = @0x1)]
   // public entry fun script_fn(){
   //     f = MyAddr::Fellow::new_fellow(5000,23,false);
    //    let id = f.id;
     //   debug::print(&id);
   // }
}
