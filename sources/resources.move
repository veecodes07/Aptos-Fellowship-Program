module MyAddr::Colln{
    use std::vector;
    use std::signer;
    use std::debug;

struct Item has store, drop{}

struct Collection has store, key {
 items: vector<Item>,
 }

public fun start_collection(account:&signer)
 {
move_to<Collection>(account, Collection{items: vector::empty<Item>()})
 }
//presence/absence
public fun exists_at(at: address):bool{
exists<Collection>(at)
 }

 #[test(col = @0x1)]
 public entry  fun  script_fn_2(account: signer)
 {
    MyAddr::Colln::start_collection(&account);
       let addr = signer::address_of(&account);
          let is = MyAddr::Colln::exists_at(addr);
            debug::print(&is);
 }
}