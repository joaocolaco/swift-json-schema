public struct JSONPropertyValue {
  let key: String
  let value: JSONValueRepresentable

  public init(key: String, @JSONValueBuilder builder: () -> JSONValueRepresentable) {
    self.key = key
    self.value = builder()
  }

  public init(key: String, value: JSONValueRepresentable) {
    self.key = key
    self.value = value
  }
}
