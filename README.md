
# Duydun Mu?

Bitcoin haberlerini alabileceğiniz bir telefon uygulamasıdır. 


## Ekran Görüntüleri
Haber Akışı|Haber Detayı|
:-:|:-:|
![](https://github.com/flyboy12/duydunmu_app/blob/main/github-image/Screenshot_1633203013.png?raw=true)|![](https://github.com/flyboy12/duydunmu_app/blob/main/github-image/Screenshot_1633203019.png?raw=true)
## Bilgisayarınızda Çalıştırın

Projeyi klonlayın

```bash
  git clone https://github.com/flyboy12/duydunmu_app.git
```

Gerekli paketleri yükleyin

```bash
flutter pub get  
```


  
## Özellikler

- En güncel haberlere erişim
- Haberlerin kaynağına ulaşım


  
## Kütüphaneler & Kullanılan Araçlar

`http`

`url_launcher`


  
## API Kullanımı

#### Tüm öğeleri getir

```http
  GET /api/items
```

| Parametre | Tip     | Açıklama                |
| :-------- | :------- | :------------------------- |
| `api_key` | `string` | 7b468a18233e4cd8952d83f92e40c10f |

#### Öğeyi getir

```http
  GET newsapi.org/v2/everything
```

| Parametre | Tip     | Açıklama                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | bitcoin |
| `language`| `string` | en |


  
