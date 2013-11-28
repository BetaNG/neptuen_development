/*
 *  Document   : main.js
 *  Author     : Mario Ozawa
 */
var webApp = function() {
    var t = $("body"),
    e = $("header"),
    i = function() {
        var i = $("#year-copy"),
        n = new Date;
        2013 === n.getFullYear() ? i.html("2013") : i.html("2013-" + n.getFullYear());
        var o = $("#page-content");
        o.css("min-height", $(window).height() - (e.outerHeight() + $("#pre-page-content").outerHeight() + $("footer").outerHeight()) + "px"),
        $(window).resize(function() {
            o.css("min-height", $(window).height() - (e.outerHeight() + $("#pre-page-content").outerHeight() + $("footer").outerHeight()) + "px")
        }),
        $("#page-sidebar").hasClass("sticky") && r("create"),
        $("#toggle-side-content").click(function() {
            t.toggleClass("hide-side-content")
        }),
        $("thead input:checkbox").click(function() {
            var t = $(this).prop("checked"),
            e = $(this).closest("table");
            $("tbody input:checkbox", e).each(function() {
                $(this).prop("checked", t)
            })
        }),
        $('[data-toggle="tabs"] a').click(function(t) {
            t.preventDefault(),
            $(this).tab("show")
        }),
        $('[data-toggle="lightbox-gallery"]').magnificPopup({
            delegate: "a.gallery-link",
            type: "image",
            gallery: {
                enabled: !0,
                navigateByImgClick: !0,
                arrowMarkup: '<button title="%title%" type="button" class="mfp-arrow mfp-arrow-%dir%"></button>',
                tPrev: "Previous",
                tNext: "Next",
                tCounter: '<span class="mfp-counter">%curr% of %total%</span>'
            }
        }),
        $('[data-toggle="block-collapse"]').click(function() {
            $(this).hasClass("active") ? ($(this).parents(".block").find(".block-content").slideDown(250), $(this).removeClass("active").html('<i class="icon-arrow-up"></i>')) : ($(this).parents(".block").find(".block-content").slideUp(250), $(this).addClass("active").html('<i class="icon-arrow-down"></i>'))
        }),
        $('[data-toggle="lightbox-image"]').magnificPopup({
            type: "image"
        }),
        $('[data-toggle="tooltip"], .enable-tooltip').tooltip({
            container: "body",
            animation: !1
        }),
        $('[data-toggle="popover"]').popover({
            container: "body",
            animation: !1
        }),
        $(".select-chosen").chosen(),
        $("textarea.textarea-elastic").elastic(),
        $("textarea.textarea-editor").wysihtml5(),
        $(".input-colorpicker").colorpicker(),
        $(".input-timepicker").timepicker(),
        $(".input-datepicker").datepicker(),
        $(".input-datepicker-close").datepicker().on("changeDate",
        function() {
            $(this).datepicker("hide")
        }),
        $(".input-daterangepicker").daterangepicker(),
        $(".input-themed").iCheck({
            checkboxClass: "icheckbox_square-grey",
            radioClass: "iradio_square-grey"
        }),
        $(".slider").slider()
    },
    n = function() {
        $(".loading-on").click(function() {
            var t = $("#loading");
            $("header .navbar-brand").hide(),
            t.fadeIn(250),
            $("header li > a > .badge").fadeOut(250),
            setTimeout(function() {
                t.fadeOut(250,
                function() {
                    $(".navbar-brand").fadeIn()
                }),
                $(".dropdown-messages > a > .badge").fadeIn(250).html("3")
            },
            1500)
        });
        var t = ["Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra", "Angola", "Anguilla", "Antarctica", "Antigua and Barbuda", "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Bosnia and Herzegovina", "Botswana", "Bouvet Island", "Brazil", "British Indian Ocean Territory", "British Virgin Islands", "Brunei", "Bulgaria", "Burkina Faso", "Burundi", "Côte d'Ivoire", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Cayman Islands", "Central African Republic", "Chad", "Chile", "China", "Christmas Island", "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo", "Cook Islands", "Costa Rica", "Croatia", "Cuba", "Cyprus", "Czech Republic", "Democratic Republic of the Congo", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "East Timor", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Faeroe Islands", "Falkland Islands", "Fiji", "Finland", "Former Yugoslav Republic of Macedonia", "France", "French Guiana", "French Polynesia", "French Southern Territories", "Gabon", "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Heard Island and McDonald Islands", "Honduras", "Hong Kong", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "Israel", "Italy", "Jamaica", "Japan", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia", "Moldova", "Monaco", "Mongolia", "Montserrat", "Morocco", "Mozambique", "Myanmar", "Namibia", "Nauru", "Nepal", "Netherlands", "Netherlands Antilles", "New Caledonia", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Niue", "Norfolk Island", "North Korea", "Northern Marianas", "Norway", "Oman", "Pakistan", "Palau", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Pitcairn Islands", "Poland", "Portugal", "Puerto Rico", "Qatar", "Réunion", "Romania", "Russia", "Rwanda", "São Tomé and Príncipe", "Saint Helena", "Saint Kitts and Nevis", "Saint Lucia", "Saint Pierre and Miquelon", "Saint Vincent and the Grenadines", "Samoa", "San Marino", "Saudi Arabia", "Senegal", "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Georgia and the South Sandwich Islands", "South Korea", "Spain", "Sri Lanka", "Sudan", "Suriname", "Svalbard and Jan Mayen", "Swaziland", "Sweden", "Switzerland", "Syria", "Taiwan", "Tajikistan", "Tanzania", "Thailand", "The Bahamas", "The Gambia", "Togo", "Tokelau", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", "Turks and Caicos Islands", "Tuvalu", "US Virgin Islands", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States", "United States Minor Outlying Islands", "Uruguay", "Uzbekistan", "Vanuatu", "Vatican City", "Venezuela", "Vietnam", "Wallis and Futuna", "Western Sahara", "Yemen", "Yugoslavia", "Zambia", "Zimbabwe"];
        $(".example-typeahead").typeahead({
            items: 5,
            source: t
        });
        var e = $("#example-advanced-daterangepicker"),
        i = $("#example-advanced-daterangepicker span");
        e.daterangepicker({
            ranges: {
                Today: ["today", "today"],
                Yesterday: ["yesterday", "yesterday"],
                "Last 7 Days": [Date.today().add({
                    days: -6
                }), "today"],
                "Last 30 Days": [Date.today().add({
                    days: -29
                }), "today"],
                "This Month": [Date.today().moveToFirstDayOfMonth(), Date.today().moveToLastDayOfMonth()],
                "Last Month": [Date.today().moveToFirstDayOfMonth().add({
                    months: -1
                }), Date.today().moveToFirstDayOfMonth().add({
                    days: -1
                })]
            }
        },
        function(t, e) {
            i.html(t.toString("MMMM d, yy") + " - " + e.toString("MMMM d, yy"))
        }),
        i.html(Date.today().toString("MMMM d, yy") + " - " + Date.today().toString("MMMM d, yy"))
    },
    r = function(e) {
        var i = $("#page-sidebar .slimScrollDiv"),
        n = $(".side-scrollable"),
        a = 380;
        if ("create" == e) n.length && (a = r("resize"), n.slimScroll({
            height: a,
            color: "#fff",
            size: "3px",
            touchScrollStep: 750
        }), $(window).scroll(o), $(window).resize(o)),
        $(window).scroll(s);
        else {
            if ("resize" == e) return $(window).width() > 979 && (a = t.hasClass("header-fixed-top") || t.hasClass("header-fixed-bottom") || $(this).scrollTop() < 41 ? $(window).height() - 41 : $(window).height()),
            i && i.css("height", a),
            n.css("height", a),
            a;
            "destroy" == e && (n.parent().replaceWith(n), $(".side-scrollable").removeAttr("style"), $(window).off("scroll", s), $(window).off("scroll", o), $(window).off("resize", o))
        }
    },
    o = function() {
        r("resize")
    },
    s = function() {
        t.hasClass("header-fixed-bottom") || t.hasClass("header-fixed-top") ? $(window).width() > 979 && $("#page-sidebar").removeAttr("style") : $(this).scrollTop() < 41 ? $("#page-sidebar").css("top", "41px") : $(this).scrollTop() > 41 && $("#page-sidebar").css("top", "0")
    },
    a = function() {
        var t = 250,
        e = 300,
        i = $(".menu-link"),
        n = $(".submenu-link");
        i.each(function(t, e) {
            $(e).append("<span>" + $(e).next("ul").find("a").not(".submenu-link").length + "</span>")
        }),
        n.each(function(t, e) {
            $(e).append("<span>" + $(e).next("ul").children().length + "</span>")
        }),
        i.click(function() {
            var i = $(this);
            return i.parent().hasClass("active") !== !0 && (i.hasClass("open") ? i.removeClass("open").next().slideUp(t) : ($(".menu-link.open").removeClass("open").next().slideUp(t), i.addClass("open").next().slideDown(e))),
            !1
        }),
        n.click(function() {
            var i = $(this);
            return i.parent().hasClass("active") !== !0 && (i.hasClass("open") ? i.removeClass("open").next().slideUp(t) : (i.closest("ul").find(".submenu-link.open").removeClass("open").next().slideUp(t), i.addClass("open").next().slideDown(e))),
            !1
        })
    },
    l = function() {
        var t = $("#to-top");
        $(window).scroll(function() {
            $(this).scrollTop() > 150 ? t.fadeIn(100) : t.fadeOut(100)
        }),
        t.click(function() {
            return $("html, body").animate({
                scrollTop: 0
            },
            150),
            !1
        })
    },
    c = function() {
        var t, i = $(".theme-colors"),
        n = $("#theme-link");
        n.length && (t = n.attr("href"), $("li", i).removeClass("active"), $('a[data-theme="' + t + '"]', i).parent("li").addClass("active")),
        $("a", i).mouseenter(function() {
            t = $(this).data("theme"),
            $("li", i).removeClass("active"),
            $(this).parent("li").addClass("active"),
            "default" === t ? n.length && (n.remove(), n = $("#theme-link")) : n.length ? n.attr("href", t) : ($('link[href="css/themes-1.4.css"]').before('<link id="theme-link" rel="stylesheet" href="' + t + '">'), n = $("#theme-link"))
        });
        var o = $("#page-sidebar"),
        s = $("#theme-sidebar-sticky");
        o.hasClass("sticky") && s.iCheck("check"),
        s.on("ifChecked",
        function() {
            o.addClass("sticky"),
            r("create")
        }),
        s.on("ifUnchecked",
        function() {
            o.removeClass("sticky"),
            r("destroy")
        });
        var a = $("#theme-header-top"),
        l = $("#theme-header-bottom");
        e.hasClass("navbar-fixed-top") ? (a.iCheck("check"), h("top")) : e.hasClass("navbar-fixed-bottom") && (l.iCheck("check"), h("bottom")),
        a.on("ifChecked",
        function() {
            l.iCheck("uncheck"),
            h("top")
        }),
        a.on("ifUnchecked",
        function() {
            h("static")
        }),
        l.on("ifChecked",
        function() {
            a.iCheck("uncheck"),
            h("bottom")
        }),
        l.on("ifUnchecked",
        function() {
            h("static")
        });
        var c = $("#page-container"),
        d = $("#theme-page-full");
        c.hasClass("full-width") && d.iCheck("check"),
        d.on("ifChecked",
        function() {
            c.addClass("full-width")
        }),
        d.on("ifUnchecked",
        function() {
            c.removeClass("full-width")
        })
    },
    h = function(i) {
        "top" === i ? (t.removeClass("header-fixed-bottom").addClass("header-fixed-top"), e.removeClass("navbar-fixed-bottom").addClass("navbar-fixed-top")) : "bottom" === i ? (t.removeClass("header-fixed-top").addClass("header-fixed-bottom"), e.removeClass("navbar-fixed-top").addClass("navbar-fixed-bottom")) : "static" === i && (t.removeClass("header-fixed-top").removeClass("header-fixed-bottom"), e.removeClass("navbar-fixed-top").removeClass("navbar-fixed-bottom"))
    },
    d = function() {
        Modernizr.input.placeholder || $("[placeholder]").focus(function() {
            var t = $(this);
            t.val() === t.attr("placeholder") && (t.val(""), t.removeClass("ph"))
        }).blur(function() {
            var t = $(this); ("" === t.val() || t.val() === t.attr("placeholder")) && (t.addClass("ph"), t.val(t.attr("placeholder")))
        }).blur().parents("form").submit(function() {
            $(this).find("[placeholder]").each(function() {
                var t = $(this);
                t.val() === t.attr("placeholder") && t.val("")
            })
        })
    },
    u = function() {
        $.extend(!0, $.fn.dataTable.defaults, {
            sDom: "<'row'<'col-sm-6 col-xs-5'l><'col-sm-6 col-xs-7'f>r>t<'row'<'col-sm-5 hidden-xs'i><'col-sm-7 col-xs-12 clearfix'p>>",
            sPaginationType: "bootstrap",
            oLanguage: {
                sLengthMenu: "_MENU_",
                sSearch: '<div class="input-group"><span class="input-group-addon"><i class="icon-search"></i></span>_INPUT_</div>',
                sInfo: "<strong>_START_</strong>-<strong>_END_</strong> of <strong>_TOTAL_</strong>",
                oPaginate: {
                    sPrevious: "",
                    sNext: ""
                }
            }
        }),
        $.extend($.fn.dataTableExt.oStdClasses, {
            sWrapper: "dataTables_wrapper form-inline"
        }),
        $.fn.dataTableExt.oApi.fnPagingInfo = function(t) {
            return {
                iStart: t._iDisplayStart,
                iEnd: t.fnDisplayEnd(),
                iLength: t._iDisplayLength,
                iTotal: t.fnRecordsTotal(),
                iFilteredTotal: t.fnRecordsDisplay(),
                iPage: Math.ceil(t._iDisplayStart / t._iDisplayLength),
                iTotalPages: Math.ceil(t.fnRecordsDisplay() / t._iDisplayLength)
            }
        },
        $.extend($.fn.dataTableExt.oPagination, {
            bootstrap: {
                fnInit: function(t, e, i) {
                    var n = t.oLanguage.oPaginate,
                    r = function(e) {
                        e.preventDefault(),
                        t.oApi._fnPageChange(t, e.data.action) && i(t)
                    };
                    $(e).append('<ul class="pagination pagination-sm remove-margin"><li class="prev disabled"><a href="javascript:void(0)"><i class="icon-chevron-left"></i> ' + n.sPrevious + "</a></li>" + '<li class="next disabled"><a href="javascript:void(0)">' + n.sNext + ' <i class="icon-chevron-right"></i></a></li>' + "</ul>");
                    var o = $("a", e);
                    $(o[0]).bind("click.DT", {
                        action: "previous"
                    },
                    r),
                    $(o[1]).bind("click.DT", {
                        action: "next"
                    },
                    r)
                },
                fnUpdate: function(t, e) {
                    var i, n, r, o, s, a = 5,
                    l = t.oInstance.fnPagingInfo(),
                    c = t.aanFeatures.p,
                    h = Math.floor(a / 2);
                    for (l.iTotalPages < a ? (o = 1, s = l.iTotalPages) : l.iPage <= h ? (o = 1, s = a) : l.iPage >= l.iTotalPages - h ? (o = l.iTotalPages - a + 1, s = l.iTotalPages) : (o = l.iPage - h + 1, s = o + a - 1), i = 0, iLen = c.length; iLen > i; i++) {
                        for ($("li:gt(0)", c[i]).filter(":not(:last)").remove(), n = o; s >= n; n++) r = n === l.iPage + 1 ? 'class="active"': "",
                        $("<li " + r + '><a href="javascript:void(0)">' + n + "</a></li>").insertBefore($("li:last", c[i])[0]).bind("click",
                        function(i) {
                            i.preventDefault(),
                            t._iDisplayStart = (parseInt($("a", this).text(), 10) - 1) * l.iLength,
                            e(t)
                        });
                        0 === l.iPage ? $("li:first", c[i]).addClass("disabled") : $("li:first", c[i]).removeClass("disabled"),
                        l.iPage === l.iTotalPages - 1 || 0 === l.iTotalPages ? $("li:last", c[i]).addClass("disabled") : $("li:last", c[i]).removeClass("disabled")
                    }
                }
            }
        })
    },
    f = function() {
    	var urlstr = location.href;
		$("nav a").each(function () {
		   	if(urlstr == $(this).attr('href')){	
		   		$(this).parents().parents().addClass('active');
		      	$(this).addClass('active'); 
		    } else {
		      	$(this).removeClass('active');
		    }
		});
    };
    return {
        init: function() {
        	f(),
            i(),
            a(),
            l(),
            c(),
            d(),
            u(),
            n()
        }
    }
} ();
$(function() {
    webApp.init();
    /* DataTables Init */
    if ($('.ddatatabless').size() > 0)
    {
        $('.ddatatabless').dataTable({
            bServerSide: true,
            sAjaxSource: $(this).data('source')
        });
        $(".dataTables_filter input").addClass("form-control").attr("placeholder","Search")
        $(".dataTables_length select").addClass("form-control")
    }
});