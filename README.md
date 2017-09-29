# _Ekin Shoestore_

#### _Though lesser-known, Ekin can make reasonable shoes. This app will maintain databases of stores and brands, allowing the user to see stores containing certain brands, and the stores where a brand is carried._

#### By _**Aaron Rohrbacher**_

## Setup/Installation Requirements

* _Clone this repository_
* _run your favorite SQL server and run the following command line within the project directory (macOS): `$ rake db:create` followed by $rake `$rake db:migrate`_
* _Run "app.rb" on your favorite Ruby-enabled server, and visit the root directory from your favorite web browser._


| Specification                                      | Input                               | Expected Output                                             |
|----------------------------------------------------|-------------------------------------|-------------------------------------------------------------|
| Add, update, delete, and list shoe stores          | Ekin Store                          | Ekin Store                                                  |
| Add new shoe brands                                | Nonelite                            | Nonelite                                                    |
| Add a new shoe brand to a store                    | Nike => Nonelite                    | Nike => Nonelite                                            |
| Display associated shoe brands on a store page     | Visit the Ekin store page           | Nonelite                                                    |
| Display associated store names on a brand page     | Visit the Nonelite brand page       | Ekin store                                                  |
| Associate multiple brands and stores to each other | Ekin store => Nonelite, Footcrusher | Nonelite => Ekin store. Ekin store => Nonelite, Footcrusher |
| Capitalizes entries before saving to database      | ekin store                          | Ekin Store                                                  |
