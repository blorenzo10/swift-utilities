
var date = Date.now
var dateString = ""

// 7/25/2021, 12:55 AM
dateString = date.formatted()

// The current day of the year
dateString = date.formatted(
    .dateTime
        .dayOfYear()
)


// The second Wed in July will return 2
dateString = date.formatted(
    .dateTime
        .day(.ordinalOfDayInMonth)
)

// 1
dateString = date.formatted(
    .dateTime
        .day(.twoDigits)
)

// 01 AM
dateString = date.formatted(
    .dateTime
        .hour(.twoDigits(amPM: .abbreviated))
)


// Jul 3, 2021
dateString = date.formatted(
    .dateTime
        .year()
        .day()
        .month()
)

// July 3, 2021
dateString = date.formatted(
    .dateTime
        .year()
        .month(.wide)
        .day()
)

// July 03, 21
dateString = date.formatted(
    .dateTime
        .year(.twoDigits)
        .month(.wide)
        .day(.twoDigits)
)

// Q3
dateString = date.formatted(
    .dateTime
        .quarter(.abbreviated)
)

// 03
dateString = date.formatted(
    .dateTime
        .quarter(.twoDigits)
)

// 3rd quarter
dateString = date.formatted(
    .dateTime
        .quarter(.wide)
)

// Sunday, July 25, 2021
dateString = date.formatted(
    .dateTime
        .day()
        .month()
        .year()
        .weekday(.wide)
)

// 2021-07-17
dateString = date.formatted(
    .iso8601
        .day()
        .month()
        .year()
        .dateSeparator(.dash)
)

// 25 de julio de 2021
dateString = date.formatted(
    .dateTime
        .day()
        .month(.wide)
        .year()
        .locale(
            Locale(identifier: "es_UY")
        )
)

// -----------------------------------------------------------------------

// Sunday, July 25, 2021
dateString = date.formatted(date: .complete, time: .omitted)

// Jul 25, 2021
dateString = date.formatted(date: .abbreviated, time: .omitted)

// July 25, 2021
dateString = date.formatted(date: .long, time: .omitted)

// 7/25/2021
dateString = date.formatted(date: .numeric, time: .omitted)

// 7/25/2021, 1:18:14 AM GMT-3
dateString = date.formatted(date: .numeric, time: .complete)

// 7/25/2021, 1:18 AM
dateString = date.formatted(date: .numeric, time: .shortened)

// Sunday, July 25, 2021, 1:19:11 AM
dateString = date.formatted(date: .complete, time: .standard)

// -----------------------------------------------------------------------

var dateFormat =
    Date.FormatStyle()
        .day(.twoDigits)
        .month(.wide)
        .year()
        .locale(
            Locale(identifier: "es_UY")
        )

// 25 de julio de 2021
dateString = date.formatted(dateFormat)

dateFormat = Date.FormatStyle(date: .numeric, time: .omitted)

// 7/25/2021
dateString = date.formatted(dateFormat)

var serverDate = try? Date("01/08/2021", strategy: dateFormat)

// 2021-01-08
dateString = serverDate!.formatted(
    .iso8601
        .day()
        .month()
        .year()
        .dateSeparator(.dash)
)


let formatStrategy = Date.ParseStrategy(
    format: "\(day: .twoDigits)-\(month: .twoDigits)-\(year: .defaultDigits)",
    locale: Locale(identifier: "es_UY"),
    timeZone: .current
)
serverDate = try? Date("01-08-2021", strategy: formatStrategy)
