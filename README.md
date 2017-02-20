# nat-network-transfer

## Installation
```
weexpack plugin add nat-network-transfer
```

```
npm install weex-nat --save
```

## Usage

Use in weex file (.we)

```html
<script>
import 'Nat' from 'weex-nat'

Nat.download({
    url: 'http://domain.com/file'
})

Nat.upload({
    url: 'http://domain.com/upload',
    path: 'filepath'
})

</script>
```

See the Nat [Documentation](http://natjs.com/) for more details.
