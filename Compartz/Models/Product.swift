//
//  Product.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation

struct Product: Identifiable, Codable, Hashable {
    var id: Int
    var name: String
    var image: String
    var price: Int
    var descriptionImage: String?
    var description: String
    var createdDatetime: String
    var categoryId: Int
}

extension Product {
    static let MOCK_PRODUCT_0: Product = .init(id: 8,
                                               name: "[INTEL] 코어12세대 i5-12400F (엘더레이크/2.50GHz/18MB) 정품박스",
                                               image: "cpu-01", price: 175000,
                                               descriptionImage: "cpu-01-d",
                                               description: "인텔(소켓1700) / 10nm / 6코어 / 12쓰레드 / 기본 클럭: 2.5GHz / 최대 클럭: 4.4GHz / L3 캐시: 18MB / TDP: 65W /메모리 규격: DDR4 / 3200MHz /DDR5 / 4800MHz / 내장그래픽: 미지원 / 12세대 엘더레이크 / 코어 i5 / 헥사(6) 코어 / LGA 1700 / 박스 (쿨러포함) / 12MB 이상 / 내장그래픽 미포함",
                                               createdDatetime: "2024-03-02 18:03:24", categoryId: 1)
    static let MOCK_PRODUCT_1: Product = .init(id: 9,
                                               name: "[삼성전자] 삼성 DDR4 PC4-25600 [8GB] (3200)",
                                               image: "ram-01",
                                               price: 24500,
                                               descriptionImage: "ram-01-d",
                                               description: "DDR4 / PC용 / 8GB / 3200MHz (PC4-25600) / 방열판 무 / PC용",
                                               createdDatetime: "2024-03-02 18:08:21",
                                               categoryId: 2)
    static let MOCK_PRODUCT_2: Product = .init(id: 10,
                                               name: "[MSI] GeForce RTX 4060 Ti 벤투스 2X 블랙 OC D6 8GB",
                                               image: "vga-01",
                                               price: 559000,
                                               descriptionImage: "vga-01-d",
                                               description: "RTX 4060 Ti / 4nm / 부스트클럭: 2580MHz / 스트림 프로세서: 4352개 / PCIe4.0x16(at x8) / GDDR6(DDR6) / 출력단자: HDMI2.1 , DP1.4 / 부가기능: 제로팬(0-dB기술) , 8K 해상도 지원 , 4K 해상도 지원 , HDR 지원 , HDCP 2.3 / 사용전력: 160W / 정격파워 550W 이상 / 전원 포트: 8핀 x1개 / 2개 팬 / 가로(길이): 199mm / 두께: 42mm / / RTX4060Ti / PCI-Express4.0 / 8GB / DDR6 / 128bit / 일반 / 1개 / 3개 / DisplayPortx3개 / HDMIx1개 / 8Pin / VGA191~210mm / 히트파이프+팬 / 방열판+팬(일반) / 팬2개",
                                               createdDatetime: "2024-03-02 18:08:21",
                                               categoryId: 3)
    
    static let MOCK_PRODUCTS: [Product] = [
        .init(id: 0,
              name: "[INTEL] 코어12세대 i5-12400F (엘더레이크/2.50GHz/18MB) 정품박스",
              image: "cpu-01", price: 175000,
              descriptionImage: "cpu-01-d",
              description: "인텔(소켓1700) / 10nm / 6코어 / 12쓰레드 / 기본 클럭: 2.5GHz / 최대 클럭: 4.4GHz / L3 캐시: 18MB / TDP: 65W /메모리 규격: DDR4 / 3200MHz /DDR5 / 4800MHz / 내장그래픽: 미지원 / 12세대 엘더레이크 / 코어 i5 / 헥사(6) 코어 / LGA 1700 / 박스 (쿨러포함) / 12MB 이상 / 내장그래픽 미포함",
              createdDatetime: "2024-03-02 18:03:24", categoryId: 1),
        .init(id: 1,
              name: "[AMD] 라이젠 5 버미어 5600 (6코어/12스레드/3.5GHz/쿨러포함/대리점정품/멀티팩)",
              image: "cpu-02",
              price: 147000,
              descriptionImage: "cpu-02-d",
              description: "라이젠 버미어 / 라이젠5 / 헥사(6) 코어 / 12스레드 / 3.5 ~ 4.4GHz / AM4 / 내장그래픽 무 / 박스 (쿨러포함) / 35MB / 7nm / TDP 65W / DDR4",
              createdDatetime: "2024-03-02 18:04:21",
              categoryId: 1),
        .init(id: 2,
              name: "[INTEL] 코어 i7-14700K 정품박스 (랩터레이크 리프레시/3.4GHz/33MB/쿨러 미포함)",
              image: "cpu-03",
              price: 595000,
              descriptionImage: "cpu-03-d",
              description: "인텔(소켓1700) / 20코어 / 28쓰레드 / 기본 클럭: 3.4GHz / 최대 클럭: 5.6GHz / 캐시: 33MB / PBP: 125W / 메모리 규격: DDR4 / 3200MHz / DDR5 / 5600MHz / 내장그래픽: UHD 770 / 랩터레이크 리프레시 / 코어 i7 / 박스 (쿨러 미포함)",
              createdDatetime: "2024-03-02 18:08:21",
              categoryId: 1),
        .init(id: 3,
              name: "[삼성전자] 삼성 DDR4 PC4-25600 [8GB] (3200)",
              image: "ram-01",
              price: 24500,
              descriptionImage: "ram-01-d",
              description: "DDR4 / PC용 / 8GB / 3200MHz (PC4-25600) / 방열판 무 / PC용",
              createdDatetime: "2024-03-02 18:08:21",
              categoryId: 2),
        .init(id: 4,
              name: "[마이크론] 마이크론 Crucial DDR4 PC4-25600 CL22 대원씨티에스 [8GB (8GB*1)] (3200)",
              image: "ram-02",
              price: 22060,
              descriptionImage: "ram-02-d",
              description: "마이크론 / 8G / 25600(3200MHz) / 데스크탑용 / DDR4 / 8GB / 3200MHz (PC4-25600) / 방열판 무 / PC용",
              createdDatetime: "2024-03-02 18:08:21",
              categoryId: 2),
        .init(id: 5,
              name: "[에센코어] 에센코어 KLEVV DDR4 PC4-25600 CL22 파인인포 [8GB] (3200)",
              image: "ram-03",
              price: 21750,
              descriptionImage: "ram-03-d",
              description: "DDR4 / PC용 / 3200MHz (PC4-25600) / 램타이밍: CL22-22-22-52 / 1.20V / 히트싱크: 미포함 / 방열판 무 / 8GB",
              createdDatetime: "2024-03-02 18:08:21",
              categoryId: 2),
        .init(id: 6,
              name: "[MSI] GeForce RTX 4060 Ti 벤투스 2X 블랙 OC D6 8GB",
              image: "vga-01",
              price: 559000,
              descriptionImage: "vga-01-d",
              description: "RTX 4060 Ti / 4nm / 부스트클럭: 2580MHz / 스트림 프로세서: 4352개 / PCIe4.0x16(at x8) / GDDR6(DDR6) / 출력단자: HDMI2.1 , DP1.4 / 부가기능: 제로팬(0-dB기술) , 8K 해상도 지원 , 4K 해상도 지원 , HDR 지원 , HDCP 2.3 / 사용전력: 160W / 정격파워 550W 이상 / 전원 포트: 8핀 x1개 / 2개 팬 / 가로(길이): 199mm / 두께: 42mm / / RTX4060Ti / PCI-Express4.0 / 8GB / DDR6 / 128bit / 일반 / 1개 / 3개 / DisplayPortx3개 / HDMIx1개 / 8Pin / VGA191~210mm / 히트파이프+팬 / 방열판+팬(일반) / 팬2개",
              createdDatetime: "2024-03-02 18:08:21",
              categoryId: 3),
        .init(id: 7,
              name: "[GIGABYTE] 지포스 RTX 4070 Ti SUPER WINDFORCE OC D6X 16GB 제이씨현",
              image: "vga-02",
              price: 1258720,
              descriptionImage: "vga-02-d",
              description: "RTX 4070 Ti SUPER / 4nm / 부스트 2625MHz / 8448개 / PCIe4.0x16 / GDDR6X / 21000MHz / 16GB / 256-bit / HDMI / DP / 최대 모니터 4개 / 권장파워 750W 이상 / 3개 팬 / 261mm / RTX4070Ti SUPER / PCI-Express4.0 / DDR6X / 256bit / 일반 / 1개 / 3개 / DisplayPortx3개 / HDMIx1개 / 16Pin / VGA251~270mm / 히트파이프+팬 / 팬3개",
              createdDatetime: "2024-03-02 18:08:21",
              categoryId: 3),
        .init(id: 7,
              name: "[ZOTAC] GAMING GeForce RTX 4060 Ti TWIN Edge D6 8GB",
              image: "vga-03",
              price: 559000,
              descriptionImage: "vga-03-d",
              description: "RTX 4060 Ti / 4nm / 부스트클럭: 2535MHz / 스트림 프로세서: 4352개 / PCIe4.0x16(at x8) / GDDR6(DDR6) / 출력단자: HDMI2.1 , DP1.4 / 부가기능: 제로팬(0-dB기술) / 사용전력: 160W / 정격파워 500W 이상 / 전원 포트: 8핀 x1개 / 전원부: 5+1페이즈 / 2개 팬 / 가로(길이): 225.5mm / 두께: 40.1mm / 백플레이트 / LED 라이트 / A/S 3년 / RTX4060Ti / PCI-Express4.0 / 8GB / DDR6 / 128bit / 일반 / 1개 / 3개 / DisplayPortx3개 / HDMIx1개 / 8Pin / VGA211~230mm / 히트파이프+팬 / 팬2개",
              createdDatetime: "2024-03-02 18:08:21",
              categoryId: 3),
    ]
}
