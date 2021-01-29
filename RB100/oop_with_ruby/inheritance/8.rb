# This error message is trying to access a private method hi which
# can't be accessed outside the class directly.  We can change the
# method to no longer be private or not call it on bob or create
# a seperate method that is not private that can have the private method
# information passed in to it.
