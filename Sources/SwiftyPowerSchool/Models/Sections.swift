//
//    Sections.swift
//
//    Copyright (c) 2018 Cooper Edmunds & Doug Penny – North Raleigh Christian Academy
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files (the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all
//    copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//    SOFTWARE.

public struct Sections: Codable {
    private let sectionsWrapper: SectionContainer?
    public var data: [Section]? {
        return sectionsWrapper?.sections
    }
    enum CodingKeys: String, CodingKey {
        case sectionsWrapper = "sections"
    }
}

private struct SectionContainer: Codable {
    public let sections: [Section]?

    enum CodingKeys: String, CodingKey {
        case sections = "section"
    }
}

public struct Section: Codable {
    public let courseID: Int?
    public let dcid: Int?
    public let expression: String
    public let gradebookType: String?
    public let sectionNumber: Int?
    public let period: String?
    public let schoolID: Int?
    public let staffID: Int?
    public let termID: Int?

    enum CodingKeys: String, CodingKey {
        case courseID = "course_id"
        case dcid = "id"
        case expression
        case gradebookType = "gradebooktype"
        case sectionNumber = "section_number"
        case period = "external_expression"
        case schoolID = "school_id"
        case staffID = "staff_id"
        case termID = "term_id"
    }
}
