# RAILS DEMO

## Models
**user**
```
id, name, country
has_many :orders
has_many :items, through: :orders
```

**order**

```
id, user_id, item_id, status
belongs_to :user
belongs_to :item
```

**item**

```
id, name, price
has_many :orders
has_many :users, through: :orders
```