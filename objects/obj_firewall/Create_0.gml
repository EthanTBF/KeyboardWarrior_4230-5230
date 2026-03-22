// adjust speed as needed, 3 seemed fine enough but we can make it faster
// if we want it to be harder to collect (we could potentially add scaling?)
path_start(path_firewall, 3, path_action_stop, true)
word = "FIREWALL"
typed_index = 0 // keeps track of how many letters have been typed
_typed_letter = ""