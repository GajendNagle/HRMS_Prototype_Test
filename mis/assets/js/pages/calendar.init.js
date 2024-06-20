var start_date = document.getElementById("event-start-date")
    , timepicker1 = document.getElementById("timepicker1")
    , timepicker2 = document.getElementById("timepicker2")
    , date_range = null
    , T_check = null;
function flatPickrInit() {
    var e = {
        enableTime: !0,
        noCalendar: !0
    };
    flatpickr(start_date, {
        enableTime: !1,
        mode: "range",
        minDate: "today",
        onChange: function (e, t, n) {
            1 < t.split("to").length ? document.getElementById("event-time").setAttribute("hidden", !0) : (document.getElementById("timepicker1").parentNode.classList.remove("d-none"),
                document.getElementById("timepicker1").classList.replace("d-none", "d-block"),
                document.getElementById("timepicker2").parentNode.classList.remove("d-none"),
                document.getElementById("timepicker2").classList.replace("d-none", "d-block"),
                document.getElementById("event-time").removeAttribute("hidden"))
        }
    });
    flatpickr(timepicker1, e),
        flatpickr(timepicker2, e)
}
function flatpicekrValueClear() {
    start_date.flatpickr().clear(),
        timepicker1.flatpickr().clear(),
        timepicker2.flatpickr().clear()
}
function eventClicked() {
    document.getElementById("form1").classList.add("view-event"),
        document.getElementById("event-title").classList.replace("d-none", "d-block"),
        document.getElementById("event-category").classList.replace("d-block", "d-none"),
        document.getElementById("event-start-date").parentNode.classList.add("d-none"),
        document.getElementById("event-start-date").classList.replace("d-block", "d-none"),
        document.getElementById("event-time").setAttribute("hidden", !0),
        document.getElementById("timepicker1").parentNode.classList.add("d-none"),
        document.getElementById("timepicker1").classList.replace("d-block", "d-none"),
        document.getElementById("timepicker2").parentNode.classList.add("d-none"),
        document.getElementById("timepicker2").classList.replace("d-block", "d-none"),
        document.getElementById("event-location").classList.replace("d-block", "d-none"),
        document.getElementById("event-description").classList.replace("d-block", "d-none"),
        document.getElementById("event-start-date-tag").classList.replace("d-none", "d-block"),
        document.getElementById("event-timepicker1-tag").classList.replace("d-none", "d-block"),
        document.getElementById("event-timepicker2-tag").classList.replace("d-none", "d-block"),
        document.getElementById("event-location-tag").classList.replace("d-none", "d-block"),
        document.getElementById("event-description-tag").classList.replace("d-none", "d-block"),
        document.getElementById("btn-save-event").setAttribute("hidden", !0)
}
function editEvent(e) {
    document.getElementById("event-details").style.display = 'none';
    document.getElementById("event-form").style.display = 'block';
    var t = e.getAttribute("data-id");
    (
        "new-event" == t ?
            (
                document.getElementById("modal-title").innerHTML = "",
                document.getElementById("modal-title").innerHTML = "Add Event",
                document.getElementById("btn-save-event").innerHTML = "Add Event",
                eventTyped
            )
            : "edit-event" == t ?
                (
                    e.innerHTML = "Cancel",
                    e.setAttribute("data-id", "cancel-event"),
                    document.getElementById("btn-save-event").innerHTML = "Update Event",
                    e.removeAttribute("hidden"),
                    eventTyped
                )
                : (
                    e.innerHTML = "Edit",
                    e.setAttribute("data-id", "edit-event"),
                    eventClicked
                )
    )
        ()
}
function eventTyped() {
    document.getElementById("form1").classList.remove("view-event"),


        document.getElementById("event-title").classList.replace("d-none", "d-block"),
        document.getElementById("event-category").classList.replace("d-none", "d-block"),
        document.getElementById("event-start-date").parentNode.classList.remove("d-none"),
        document.getElementById("event-start-date").classList.replace("d-none", "d-block"),
        document.getElementById("timepicker1").parentNode.classList.remove("d-none"),
        document.getElementById("timepicker1").classList.replace("d-none", "d-block"),
        document.getElementById("timepicker2").parentNode.classList.remove("d-none"),
        document.getElementById("timepicker2").classList.replace("d-none", "d-block"),
        document.getElementById("event-location").classList.replace("d-none", "d-block"),
        document.getElementById("event-description").classList.replace("d-none", "d-block"),
        document.getElementById("event-start-date-tag").classList.replace("d-block", "d-none"),
        document.getElementById("event-timepicker1-tag").classList.replace("d-block", "d-none"),
        document.getElementById("event-timepicker2-tag").classList.replace("d-block", "d-none"),
        document.getElementById("event-location-tag").classList.replace("d-block", "d-none"),
        document.getElementById("event-description-tag").classList.replace("d-block", "d-none"),
        document.getElementById("btn-save-event").removeAttribute("hidden")
}
function upcomingEvent(e) {
    let today = new Date();  // Current date
    e = e.filter(event => new Date(event.start) >= today);
    e.sort(function (e, t) {
        return new Date(e.start) - new Date(t.start)
    }),
        document.getElementById("upcoming-event-list").innerHTML = null,
        Array.from(e).forEach(function (e) {
            var t = e.title
                , n = (l = e.end ? (endUpdatedDay = new Date(e.end)).setDate(endUpdatedDay.getDate() - 1) : l) || void 0;
            n = "Invalid Date" == n || null == n ? null : (a = new Date(n).toLocaleDateString("en", {
                year: "numeric",
                month: "numeric",
                day: "numeric"
            }),
                new Date(a).toLocaleDateString("en-GB", {
                    day: "numeric",
                    month: "short",
                    year: "numeric"
                }).split(" ").join(" "));
            (e.start ? str_dt(e.start) : null) === (l ? str_dt(l) : null) && (n = null);
            var a = e.start
                , d = (a = "Invalid Date" === a || void 0 === a ? null : (d = new Date(a).toLocaleDateString("en", {
                    year: "numeric",
                    month: "numeric",
                    day: "numeric"
                }),
                    new Date(d).toLocaleDateString("en-GB", {
                        day: "numeric",
                        month: "short",
                        year: "numeric"
                    }).split(" ").join(" ")),
                    n ? " to " + n : "")
                , n = e.className.split("-")
                , i = e.description || ""
                , e = tConvert(getTime(e.start))
                , l = (e == (l = tConvert(getTime(l))) && (e = "Full day event",
                    l = null),
                    l ? " to " + l : "");
            u_event = "<div class='card card-border-primary mb-3'>                        <div class='card-body'>                            <div class='d-flex mb-3'>                                <div class='flex-grow-1'><i class='mdi mdi-checkbox-blank-circle me-2 text-" + n[1] + "'></i><span class='fw-medium'>" + a + d + " </span></div>                                <div class='flex-shrink-0'><small class='badge bg-primary-subtle text-primary ms-auto'>" + e + l + "</small></div>                            </div>                            <h6 class='card-title fs-16'> " + t + "</h6>                            <p class='text-muted text-truncate-two-lines mb-0'> " + i + "</p>                        </div>                    </div>",
                document.getElementById("upcoming-event-list").innerHTML += u_event
        })
}
//function upcomingEvent(events) {
//    // Filter events that start after today
//    let today = new Date();  // Current date
//    let upcomingEvents = events.filter(event => new Date(event.start) >= today);

//    // Sort the filtered events by start date
//    upcomingEvents.sort((a, b) => new Date(a.start) - new Date(b.start));

//    // Clear the upcoming events list
//    document.getElementById("upcoming-event-list").innerHTML = "";

//    // Iterate over the sorted events and render each one
//    upcomingEvents.forEach(event => {
//        let title = event.title;
//        let startDate = new Date(event.start);
//        let endDate = event.end ? new Date(event.end) : null;

//        // Format the end date to one day before if available
//        if (endDate) {
//            endDate.setDate(endDate.getDate() - 1);
//        }

//        // Convert start and end dates to the desired format
//        let formattedStartDate = startDate.toLocaleDateString("en-GB", {
//            day: "numeric",
//            month: "short",
//            year: "numeric"
//        }).split(" ").join(" ");

//        let formattedEndDate = endDate ? endDate.toLocaleDateString("en-GB", {
//            day: "numeric",
//            month: "short",
//            year: "numeric"
//        }).split(" ").join(" ") : null;

//        // Check if start and end dates are the same
//        if (formattedStartDate === formattedEndDate) {
//            formattedEndDate = null;
//        }

//        let dateRange = formattedStartDate;
//        if (formattedEndDate) {
//            dateRange += " to " + formattedEndDate;
//        }

//        // Event time formatting
//        let startTime = tConvert(getTime(event.start));
//        let endTime = endDate ? tConvert(getTime(endDate)) : null;

//        if (startTime === endTime) {
//            startTime = "Full day event";
//            endTime = null;
//        }

//        let timeRange = startTime;
//        if (endTime) {
//            timeRange += " to " + endTime;
//        }

//        // Generate class name for the event
//        let className = event.className.split("-")[1];

//        // Event description
//        let description = event.description || "";

//        // Create the event HTML
//        let eventHtml = `
//            <div class='card card-border-primary mb-3'>
//                <div class='card-body'>
//                    <div class='d-flex mb-3'>
//                        <div class='flex-grow-1'>
//                            <i class='mdi mdi-checkbox-blank-circle me-2 text-${className}'></i>
//                            <span class='fw-medium'>${dateRange}</span>
//                        </div>
//                        <div class='flex-shrink-0'>
//                            <small class='badge bg-primary-subtle text-primary ms-auto'>${timeRange}</small>
//                        </div>
//                    </div>
//                    <h6 class='card-title fs-16'>${title}</h6>
//                    <p class='text-muted text-truncate-two-lines mb-0'>${description}</p>
//                </div>
//            </div>
//        `;

//        // Append the event to the upcoming event list
//        document.getElementById("upcoming-event-list").innerHTML += eventHtml;
//    });
//}

// Helper functions (unchanged)
function tConvert(time) {
    let [hours, minutes] = time.split(':');
    let ampm = hours >= 12 ? 'PM' : 'AM';
    hours = hours % 12 || 12;
    return `${hours}:${minutes} ${ampm}`;
}

function getTime(dateString) {
    let date = new Date(dateString);
    return date.toTimeString().slice(0, 5);
}


// Helper functions
function tConvert(time) {
    // Convert 24-hour time format to 12-hour format with AM/PM
    let [hours, minutes] = time.split(':');
    let ampm = hours >= 12 ? 'PM' : 'AM';
    hours = hours % 12 || 12; // Convert hour '0' to '12'
    return `${hours}:${minutes} ${ampm}`;
}

function getTime(dateString) {
    // Extract time from a date string
    let date = new Date(dateString);
    return date.toTimeString().slice(0, 5);
}

function getTime(e) {
    if (null != (e = new Date(e)).getHours())
        return e.getHours() + ":" + (e.getMinutes() ? e.getMinutes() : 0)
}
function tConvert(e) {
    var e = e.split(":")
        , t = e[0]
        , e = e[1]
        , n = 12 <= t ? "PM" : "AM";
    return (t = (t %= 12) || 12) + ":" + (e < 10 ? "0" + e : e) + " " + n
}
document.addEventListener("DOMContentLoaded", function () {
    flatPickrInit();
    var g = new bootstrap.Modal(document.getElementById("event-modal"), {
        keyboard: !1
    })
        , i = (document.getElementById("event-modal"),
            document.getElementById("modal-title"))
        , l = document.getElementById("form1")
        , v = null
        , p = document.getElementsByClassName("needs-validation")
        , e = new Date
        , t = e.getDate()
        , n = e.getMonth()
        , e = e.getFullYear()
        , a = FullCalendar.Draggable
        , d = document.getElementById("external-events")
        , y = [
            {
                id: 1,
                title: "New Year's Day",
                start: "2024-01-01",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 2,
                title: "Pongal",
                start: "2024-01-15",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 3,
                title: "Republic Day",
                start: "2024-01-26",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 4,
                title: "Maha Shivaratri",
                start: "2024-03-08",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 5,
                title: "Holi",
                start: "2024-03-25",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 6,
                title: "Good Friday",
                start: "2024-03-29",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 7,
                title: "Eid al-Fitr",
                start: "2024-04-10",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 8,
                title: "Buddha Purnima",
                start: "2024-05-23",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 9,
                title: "Independence Day",
                start: "2024-08-15",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 10,
                title: "Raksha Bandhan",
                start: "2024-08-19",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 11,
                title: "Krishna Janmashtami",
                start: "2024-08-26",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 12,
                title: "Ganesh Chaturthi",
                start: "2024-09-07",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 13,
                title: "Gandhi Jayanti",
                start: "2024-10-02",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 14,
                title: "Dussehra",
                start: "2024-10-12",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 15,
                title: "Diwali",
                start: "2024-11-01",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 16,
                title: "Guru Nanak Jayanti",
                start: "2024-11-15",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 17,
                title: "Christmas",
                start: "2024-12-25",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 18,
                title: "Makar Sankranti",
                start: "2024-01-14",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 19,
                title: "Baisakhi",
                start: "2024-04-13",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 20,
                title: "Mahavir Jayanti",
                start: "2024-04-21",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 21,
                title: "Eid al-Adha",
                start: "2024-06-17",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 22,
                title: "Onam",
                start: "2024-09-15",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 23,
                title: "Karva Chauth",
                start: "2024-10-17",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 24,
                title: "Bhai Dooj",
                start: "2024-11-03",
                className: "bg-info-subtle",
                allDay: true
            },
            {
                id: 25,
                title: "Christmas Eve",
                start: "2024-12-24",
                className: "bg-info-subtle",
                allDay: true
            }
        ]

        , e = (new a(d, {
            itemSelector: ".external-event",
            eventData: function (e) {
                return {
                    id: Math.floor(11e3 * Math.random()),
                    title: e.innerText,
                    allDay: !0,
                    start: new Date,
                    className: e.getAttribute("data-class")
                }
            }
        }),
            document.getElementById("calendar"));
    function o(e) {
        document.getElementById("event-details").style.display = 'none';
        document.getElementById("event-form").style.display = 'block';
        document.getElementById("form1").reset(),
            document.getElementById("btn-delete-event").setAttribute("hidden", !0),
            g.show(),
            l.classList.remove("was-validated"),
            l.reset(),
            v = null,
            i.innerText = "Add Event",
            newEventData = e,
            document.getElementById("edit-event-btn").setAttribute("data-id", "new-event"),
            document.getElementById("edit-event-btn").click(),
            document.getElementById("edit-event-btn").setAttribute("hidden", !0)
    }
    function r() {
        return 768 <= window.innerWidth && window.innerWidth < 1200 ? "timeGridWeek" : window.innerWidth <= 768 ? "listMonth" : "dayGridMonth"
    }
    var c = new Choices("#event-category", {
        searchEnabled: !1
    })
        , b = new FullCalendar.Calendar(e, {
            timeZone: "local",
            editable: !0,
            droppable: !0,
            selectable: !0,
            navLinks: !0,
            initialView: r(),
            themeSystem: "bootstrap",
            headerToolbar: {
                left: "prev,next today",
                center: "title",
                right: "dayGridMonth,timeGridWeek,timeGridDay,listMonth"
            },
            windowResize: function (e) {
                var t = r();
                b.changeView(t)
            },
            eventResize: function (t) {
                var e = y.findIndex(function (e) {
                    return e.id == t.event.id
                });
                y[e] && (y[e].title = t.event.title,
                    y[e].start = t.event.start,
                    y[e].end = t.event.end || null,
                    y[e].allDay = t.event.allDay,
                    y[e].className = t.event.classNames[0],
                    y[e].description = t.event._def.extendedProps.description || "",
                    y[e].location = t.event._def.extendedProps.location || ""),
                    upcomingEvent(y)
            },
            eventClick: function (e) {
                document.getElementById("event-form").style.display = 'none',
                    document.getElementById("event-details").style.display = 'block',
                    document.getElementById("edit-event-btn").removeAttribute("hidden"),
                    document.getElementById("btn-save-event").setAttribute("hidden", !0),
                    document.getElementById("edit-event-btn").setAttribute("data-id", "edit-event"),
                    document.getElementById("edit-event-btn").innerHTML = "Edit",
                    eventClicked(),
                    flatPickrInit(),
                    flatpicekrValueClear(),
                    g.show(),
                    l.reset(),
                    v = e.event,
                    document.getElementById("modal-title").innerHTML = v.title,
                    document.getElementById("event-location-tag").innerHTML = void 0 === v.extendedProps.location ? "No Location" : v.extendedProps.location,
                    document.getElementById("event-description-tag").innerHTML = void 0 === v.extendedProps.description ? "No Description" : v.extendedProps.description,
                    document.getElementById("event-title").value = v.title,
                    document.getElementById("event-location").value = void 0 === v.extendedProps.location ? "No Location" : v.extendedProps.location,
                    document.getElementById("event-description").value = void 0 === v.extendedProps.description ? "No Description" : v.extendedProps.description,
                    document.getElementById("eventid").value = v.id,
                    v.classNames[0] && (c.destroy(),
                        (c = new Choices("#event-category", {
                            searchEnabled: !1
                        })).setChoiceByValue(v.classNames[0]));
                function t(e) {
                    var t = "" + ((e = new Date(e)).getMonth() + 1)
                        , n = "" + e.getDate();
                    return [e.getFullYear(), t = t.length < 2 ? "0" + t : t, n = n.length < 2 ? "0" + n : n].join("-")
                }
                var e = v.start
                    , n = v.end
                    , a = null
                    , d = (null != n && (a = (d = new Date(n)).setDate(d.getDate() - 1)),
                        null == n ? str_dt(e) : str_dt(e) + " to " + str_dt(a))
                    , n = null == n ? t(e) : t(e) + " to " + t(a)
                    , e = (flatpickr(start_date, {
                        defaultDate: n,
                        altInput: !0,
                        altFormat: "j F Y",
                        dateFormat: "Y-m-d",
                        mode: "range",
                        onChange: function (e, t, n) {
                            1 < t.split("to").length ? document.getElementById("event-time").setAttribute("hidden", !0) : (document.getElementById("timepicker1").parentNode.classList.remove("d-none"),
                                document.getElementById("timepicker1").classList.replace("d-none", "d-block"),
                                document.getElementById("timepicker2").parentNode.classList.remove("d-none"),
                                document.getElementById("timepicker2").classList.replace("d-none", "d-block"),
                                document.getElementById("event-time").removeAttribute("hidden"))
                        }
                    }),
                        document.getElementById("event-start-date-tag").innerHTML = d,
                        getTime(v.start))
                    , a = getTime(v.end);
                e == a ? (document.getElementById("event-time").setAttribute("hidden", !0),
                    flatpickr(document.getElementById("timepicker1"), {
                        enableTime: !0,
                        noCalendar: !0,
                        dateFormat: "H:i"
                    }),
                    flatpickr(document.getElementById("timepicker2"), {
                        enableTime: !0,
                        noCalendar: !0,
                        dateFormat: "H:i"
                    })) : (document.getElementById("event-time").removeAttribute("hidden"),
                        flatpickr(document.getElementById("timepicker1"), {
                            enableTime: !0,
                            noCalendar: !0,
                            dateFormat: "H:i",
                            defaultDate: e
                        }),
                        flatpickr(document.getElementById("timepicker2"), {
                            enableTime: !0,
                            noCalendar: !0,
                            dateFormat: "H:i",
                            defaultDate: a
                        }),
                        document.getElementById("event-timepicker1-tag").innerHTML = tConvert(e),
                        document.getElementById("event-timepicker2-tag").innerHTML = tConvert(a)),
                    newEventData = null,
                    i.innerText = v.title,
                    document.getElementById("btn-delete-event").removeAttribute("hidden")
            },
            dateClick: function (e) {
                o(e)
            },
            events: y,
            eventReceive: function (e) {
                e = {
                    id: parseInt(e.event.id),
                    title: e.event.title,
                    start: e.event.start,
                    allDay: e.event.allDay,
                    className: e.event.classNames[0]
                };
                y.push(e),
                    upcomingEvent(y)
            },
            eventDrop: function (t) {
                var e = y.findIndex(function (e) {
                    return e.id == t.event.id
                });
                y[e] && (y[e].title = t.event.title,
                    y[e].start = t.event.start,
                    y[e].end = t.event.end || null,
                    y[e].allDay = t.event.allDay,
                    y[e].className = t.event.classNames[0],
                    y[e].description = t.event._def.extendedProps.description || "",
                    y[e].location = t.event._def.extendedProps.location || ""),
                    upcomingEvent(y)
            }
        });
    b.render(),
        upcomingEvent(y),
        l.addEventListener("submit", function (e) {
            e.preventDefault();
            var t, n, e = document.getElementById("event-title").value, a = document.getElementById("event-category").value, d = document.getElementById("event-start-date").value.split("to"), i = new Date(d[0].trim()), l = new Date(d[1]), l = (l.setDate(l.getDate() + 1),
                d[1] ? l : ""), o = null, r = document.getElementById("event-location").value, c = document.getElementById("event-description").value, s = document.getElementById("eventid").value, m = !1, u = (1 < d.length ? ((o = new Date(d[1])).setDate(o.getDate() + 1),
                    d = new Date(d[0]),
                    m = !0) : (t = d,
                        u = document.getElementById("timepicker1").value.trim(),
                        n = document.getElementById("timepicker2").value.trim(),
                        d = new Date(d + "T" + u),
                        o = new Date(t + "T" + n)),
                    y.length + 1);
            !1 === p[0].checkValidity() ? p[0].classList.add("was-validated") : (v ? (v.setProp("id", s),
                v.setProp("title", e),
                v.setProp("classNames", [a]),
                v.setStart(i),
                v.setEnd(l),
                v.setAllDay(m),
                v.setExtendedProp("description", c),
                v.setExtendedProp("location", r),
                t = y.findIndex(function (e) {
                    return e.id == v.id
                }),
                y[t] && (y[t].title = e,
                    y[t].start = i,
                    y[t].end = l,
                    y[t].allDay = m,
                    y[t].className = a,
                    y[t].description = c,
                    y[t].location = r),
                b.render()) : (b.addEvent(n = {
                    id: u,
                    title: e,
                    start: d,
                    end: o,
                    allDay: m,
                    className: a,
                    description: c,
                    location: r
                }),
                    y.push(n)),
                g.hide(),
                upcomingEvent(y))
        }),
        document.getElementById("btn-delete-event").addEventListener("click", function (e) {
            if (v) {
                for (var t = 0; t < y.length; t++)
                    y[t].id == v.id && (y.splice(t, 1),
                        t--);
                upcomingEvent(y),
                    v.remove(),
                    v = null,
                    g.hide()
            }
        }),
        document.getElementById("btn-new-event").addEventListener("click", function (e) {
            flatpicekrValueClear(),
                flatPickrInit(),
                o(),
                document.getElementById("edit-event-btn").setAttribute("data-id", "new-event"),
                document.getElementById("edit-event-btn").click(),
                document.getElementById("edit-event-btn").setAttribute("hidden", !0)
        })
});
var str_dt = function (e) {
    var e = new Date(e)
        , t = "" + ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"][e.getMonth()]
        , n = "" + e.getDate()
        , e = e.getFullYear();
    return t.length < 2 && (t = "0" + t),
        [(n = n.length < 2 ? "0" + n : n) + " " + t, e].join(",")
};
