import "FactoryData"


access(all) fun main(manager: Address): &FactoryData.BuildingParticulars? {
    return FactoryData.buildings[manager]!
}