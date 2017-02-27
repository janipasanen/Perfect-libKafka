import XCTest
@testable import ckafka
#if os(Linux)
import SwiftGlibc
#else
import Darwin
#endif

class ckafkaTests: XCTestCase {
    func testExample() {
        guard let conf = rd_kafka_conf_new() else {
          XCTFail("configuration fault")
          return
        }
        var cnt = 0
        rd_kafka_conf_dump(conf, &cnt)
        print(cnt)
        XCTAssertGreaterThan(cnt, 0)
        rd_kafka_conf_properties_show(stdout)
    }


    static var allTests : [(String, (ckafkaTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
