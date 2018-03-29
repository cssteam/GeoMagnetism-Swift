// https://github.com/Quick/Quick

import Quick
import Nimble
import GeoMagnetism

class GeomagneticFieldTests: QuickSpec {
    override func spec() {
        describe("GeomagneticField") {
            
            let gregorianCalendar = Calendar(identifier: .gregorian)

            it("can calculate declination in Vienna for march 2018") {
                // Given
                var march2018dateComponents = DateComponents()
                march2018dateComponents.year = 2018
                march2018dateComponents.month = 3
                march2018dateComponents.day = 1
                let march2018 = gregorianCalendar.date(from: march2018dateComponents)!
                
                let latitude = 48.2
                let longitude = 16.4
                let altitude = 100.0
                
                // When
                let magneticField = GeomagneticField(gdLatitudeDeg: latitude, gdLongitudeDeg: longitude, altitudeMeters: altitude, time: march2018)
                
                // Then
                expect(magneticField.declination).to(beCloseTo(4.252, within: 0.001))
            }
        }
    }
}
