class Data {
  late String cityName;
  late String cityImage;

  late String cityInfo;
late String link;
  Data({
    required this.cityName,
    required this.cityImage,
    required this.cityInfo,
    required this.link,

  });
}List<Data> datalist = [
  Data(
      cityName: "Annaba",
      cityImage: "https://images.unsplash.com/photo-1570383189213-aaedaeada5ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=873&q=80",
      cityInfo: "Annaba is tourist city of algeria , with a population of just over 1 million.",
    link: 'https://www.google.com/maps/place/%D8%B3%D8%B1%D8%A7%D9%8A%D8%AF%D9%8A%D8%8C+%D8%A7%D9%84%D8%AC%D8%B2%D8%A7%D8%A6%D8%B1%E2%80%AD/@36.9318022,7.7652171,11z/data=!4m5!3m4!1s0x12f005ced23f67d9:0x378b445cf505692e!8m2!3d36.9114501!4d7.6770263',
    ),
  Data(
      cityName: "Algiers",
      cityImage: "https://images.unsplash.com/photo-1577871450676-6159315fba89?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
      cityInfo:
      "Algiers is the capital and most populous city of algeria, with an estimated population of 2,165,423 residents in 2019 in an area of more than 105 km².",
    link: 'https://www.google.com/maps/place/%D8%A7%D9%84%D8%AC%D8%B2%D8%A7%D8%A6%D8%B1%E2%80%AD/@36.7386901,3.4195175,10z/data=!3m1!4b1!4m5!3m4!1s0x128fb26977ea659f:0x4231102d38a36f49!8m2!3d36.753768!4d3.0587561',
      ),
  Data(
      cityName: "Oran",
      cityImage: "https://upload.wikimedia.org/wikipedia/commons/2/2b/Oran_algeria.jpg",
      cityInfo: "Oran, often called Oran City (NYC) to distinguish it from the State of Oran, is the most populous city in the algeria.",
    link: 'https://www.google.com/maps/place/%D9%88%D9%87%D8%B1%D8%A7%D9%86%D8%8C+%D8%A7%D9%84%D8%AC%D8%B2%D8%A7%D8%A6%D8%B1%E2%80%AD/@35.7110961,-0.5681518,12z/data=!3m1!4b1!4m5!3m4!1s0xd7e8854841f537d:0x4187f63762f7290f!8m2!3d35.6987388!4d-0.6349319',
      ),
  Data(
      cityName: "constantina",
      cityImage:
      "https://images.unsplash.com/photo-1549145177-238518f1ec1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      cityInfo: "constantina, city-state located at the southern tip of the Malay Peninsula, about 85 miles (137 kilometres) north east .",
    link: 'https://www.google.com/maps/place/%D9%82%D8%B3%D9%86%D8%B7%D9%8A%D9%86%D8%A9%D8%8C+%D8%A7%D9%84%D8%AC%D8%B2%D8%A7%D8%A6%D8%B1%E2%80%AD/@36.3544457,6.7854815,11z/data=!3m1!4b1!4m5!3m4!1s0x12f17717c4785627:0x25fb307fd08801a!8m2!3d36.3570052!4d6.6390282',
     ),
  Data(
    cityName: "Ghardaia",
    cityImage:'https://img.freepik.com/premium-photo/view-ghardaia-city-mzab-valley_261932-3053.jpg?w=740',
    cityInfo: "Ghardaia, city-state located at the southern tip of the Malay Peninsula, about 85 miles (137 kilometres) south algeria.",
    link: 'https://www.google.com/maps/place/%D9%88%D9%84%D8%A7%D9%8A%D8%A9+%D8%BA%D8%B1%D8%AF%D8%A7%D9%8A%D8%A9%D8%8C+%D8%A7%D9%84%D8%AC%D8%B2%D8%A7%D8%A6%D8%B1%E2%80%AD/@29.5059837,7.7036451,5.83z/data=!4m5!3m4!1s0x126725c4e5a8c0d9:0x300899927a8f1d29!8m2!3d30.8589222!4d3.097702',
  ),
  Data(
    cityName: "Tamanrasset",
    cityImage:
    "https://images.unsplash.com/photo-1632659895656-1e4c368afd9a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=855&q=80",
    cityInfo: "Tamanrasset, city-state located at the southern tip of the Malay Peninsula, about 85 miles (137 kilometres) south of the Algeria.",
    link: 'https://www.google.com/maps/place/%D8%AA%D8%A7%D9%85%D9%86%D8%B1%D8%A7%D8%B3%D8%AA%D8%8C+%D8%A7%D9%84%D8%AC%D8%B2%D8%A7%D8%A6%D8%B1%E2%80%AD/@22.2684702,6.8185821,8z/data=!3m1!4b1!4m5!3m4!1s0x12206f20039a4af5:0xd524cbdec5d293e4!8m2!3d22.7902972!4d5.5193268',
  ),
];