!
function(a) {
    if ("function" == typeof define && define.amd) define(["jquery"], a);
    else if ("object" == typeof exports && "object" == typeof module) a(require("jquery"));
    else {
        if (!window.jQuery) throw new Error("Not found jQuery.");
        a(window.jQuery)
    }
} (function(a) {
    function b(a, b) {
        window.console && window.console.trace && (console.trace(a), b && console.trace(b))
    }
    function c(a) {
        return a.data()
    }
    function d(a, b, c) {
        if (b && b.key) {
            var d, e = c.separator || ",";
            c && c.multiWord ? (d = a.val().split(e), d[d.length - 1] = b.key, a.val(d.join(e)).focus()) : a.attr("data-id", b.id).focus().val(b.key),
            a.trigger("onSetSelectValue", [b, (c.data.value || c._lastData.value)[b.index]])
        }
    }
    function e(a, b, c) {
        if (b.is(":visible")) {
            c.autoDropup && setTimeout(function() {
                var c = b.parents(".input-group");
                u.height() + u.scrollTop() - a.offset().top < b.height() && a.offset().top > b.height() + u.scrollTop() ? c.addClass("dropup") : c.removeClass("dropup")
            },
            10);
            var d = {};
            return "left" === c.listAlign ? d = {
                left: a.siblings("div").width() - a.parent().width(),
                right: "auto"
            }: "right" === c.listAlign && (d = {
                left: "auto",
                right: 0
            }),
            v && !c.showBtn && (b.parents(".input-group").hasClass("dropup") ? (d.top = "auto", d.bottom = a.parent().height()) : (d.top = a.parent().height(), d.bottom = "auto")),
            c.autoMinWidth || (d["min-width"] = a.parent().width()),
            b.css(d),
            a
        }
    }
    function f(a, b) {
        var c, d, e;
        return b.indexId === -1 && !b.idField || b.multiWord ? a: (c = a.css("background-color").replace(/ /g, "").split(",", 3).join(","), d = b.inputBgColor || "rgba(255,255,255,0.1)", e = b.inputWarnColor || "rgba(255,255,0,0.1)", a.attr("data-id") || !a.val() ? a.css("background", d) : (~e.indexOf(c) || a.trigger("onUnsetSelectValue").css("background", e), a))
    }
    function g(a, b, c) {
        var d, e, f = a.parent().find("tbody tr." + c.listHoverCSS);
        f.length && (d = (f.index() + 3) * f.height(), e = Number(b.css("max-height").replace("px", "")), d > e || b.scrollTop() > e ? d -= e: d = 0, b.scrollTop(d))
    }
    function h(a, b) {
        a.find("tr." + b.listHoverCSS).removeClass(b.listHoverCSS)
    }
    function i(a, b, c) {
        return ! (!b.length || a.data("bsSuggest")) && (a.data("bsSuggest", {
            options: c
        }), !0)
    }
    function j(a) {
        var c, d = !0;
        for (c in a) if ("value" === c) {
            d = !1;
            break
        }
        return d ? (b("返回数据格式错误!"), !1) : !!a.value.length && a
    }
    function k(b, c) {
        var d = c.effectiveFields;
        return ! ("__index" === b || d.length && !~a.inArray(b, d))
    }
    function l(b, c) {
        return~a.inArray(b, c.searchFields)
    }
    function m(a, b, c) {
        var d, f, g, h, i, j, l = a.parent().find("ul.dropdown-menu"),
        m = 0,
        n = ['<table class="table table-condensed table-sm" style="margin:0">'];
        if (!b || !(d = b.value.length)) return l.empty().hide(),
        a;
        var o = b.value;
        if (c._lastData && JSON.stringify(c._lastData.value) === JSON.stringify(o) && l.find("tr").length === d) return l.show(),
        e(a, l, c),
        a;
        if (c._lastData = b, c.showHeader) {
            n.push("<thead><tr>");
            for (g in o[0]) k(g, c) && (n.push("<th>", c.effectiveFieldsAlias[g] || g, 0 === m ? "(" + d + ")": "", "</th>"), m++);
            n.push("</tr></thead>")
        }
        n.push("<tbody>");
        var p;
        for (f = 0; f < d; f++) {
            m = 0,
            h = [],
            p = o[f],
            i = p[c.idField] || "",
            j = p[c.keyField] || "";
            for (g in p) j || c.indexKey !== m || (j = p[g]),
            i || c.indexId !== m || (i = p[g]),
            m++,
            k(g, c) && h.push('<td data-name="', g, '">', p[g], "</td>");
            n.push('<tr data-index="', p.__index || f, '" data-id="', i, '" data-key="', j, '">', h.join(""), "</tr>")
        }
        return n.push("</tbody></table>"),
        l.html(n.join("")).show(),
        setTimeout(function() {
            if (!t) {
                var a = l.find("table:eq(0)"),
                b = 0,
                c = 0;
                l.height() < a.height() && Number(l.css("min-width").replace("px", "")) < l.width() && (b = 18, c = 20),
                l.css("padding-right", b),
                a.css("margin-bottom", c)
            }
        },
        301),
        e(a, l, c),
        a
    }
    function n(c, d) {
        d = d || "";
        var e = {
            type: "GET",
            dataType: c.jsonp ? "jsonp": "json",
            timeout: 5e3
        };
        return c.jsonp && (e.jsonp = c.jsonp),
        a.isFunction(c.fnAdjustAjaxParam) && (e = a.extend(e, c.fnAdjustAjaxParam(d, c))),
        e.url = function() {
            if (!d || e.data) return e.url || c.url;
            var a = "?";
            return /=$/.test(c.url) ? a = "": /\?/.test(c.url) && (a = "&"),
            c.url + a + d
        } (),
        a.ajax(e).done(function(a) {
            c.data = c.fnProcessData(a)
        }).fail(b)
    }
    function o(b, c, d, e) {
        return d = a.trim(d),
        e.ignorecase && (b = b.toLocaleLowerCase(), d = d.toLocaleLowerCase()),
        d && (k(c, e) || l(c, e)) && (~d.indexOf(b) || e.twoWayMatch && ~b.indexOf(d))
    }
    function p(b, c, d, e) {
        var f, g, h, i, k, l = {
            value: []
        };
        if (b = b || "", a.isFunction(e.fnPreprocessKeyword) && (b = e.fnPreprocessKeyword(b, e)), e.url) n(e, b).done(function(a) {
            d(c, e.data, e),
            c.trigger("onDataRequestSuccess", a),
            "firstByUrl" === e.getDataMethod && (e.url = null)
        });
        else {
            if (f = e.data, g = j(f)) if (b) {
                for (k = f.value.length, h = 0; h < k; h++) for (i in f.value[h]) if (f.value[h][i] && o(b, i, f.value[h][i] + "", e)) {
                    l.value.push(f.value[h]),
                    l.value[l.value.length - 1].__index = h;
                    break
                }
            } else l = f;
            d(c, l, e)
        }
    }
    function q(a) {
        return j(a)
    }
    function r(b, c) {
        var d = b.prev("i.clearable");
        return c.clearable && !d.length && (d = a('<i class="clearable glyphicon glyphicon-remove"></i>').prependTo(b.parent())),
        d.css({
            position: "absolute",
            top: 12,
            right: c.showBtn ? (b.next(".input-group-btn").width() || 33) + 2 : 12,
            zIndex: 4,
            cursor: "pointer",
            fontSize: 12
        }).hide()
    }
    var s, t, u = a(window),
    v = "ActiveXObject" in window,
    w = navigator.userAgent.match(/Chrome\/(\d+)/);
    w && (w = Number(w[1])),
    t = v || w > 51;
    var x = {
        url: null,
        jsonp: null,
        data: {
            value: []
        },
        indexId: 0,
        indexKey: 0,
        idField: "",
        keyField: "",
        autoSelect: !0,
        allowNoKeyword: !0,
        getDataMethod: "firstByUrl",
        delayUntilKeyup: !1,
        ignorecase: !1,
        effectiveFields: [],
        effectiveFieldsAlias: {},
        searchFields: [],
        twoWayMatch: !0,
        multiWord: !1,
        separator: ",",
        delay: 300,
        autoDropup: !1,
        autoMinWidth: !1,
        showHeader: !1,
        showBtn: !0,
        inputBgColor: "",
        inputWarnColor: "rgba(255,0,0,.1)",
        listStyle: {
            "padding-top": 0,
            "max-height": "375px",
            "max-width": "800px",
            overflow: "auto",
            width: "auto",
            transition: "0.3s",
            "-webkit-transition": "0.3s",
            "-moz-transition": "0.3s",
            "-o-transition": "0.3s"
        },
        listAlign: "left",
        listHoverStyle: "background: #07d; color:#fff",
        listHoverCSS: "jhover",
        clearable: !1,
        keyLeft: 37,
        keyUp: 38,
        keyRight: 39,
        keyDown: 40,
        keyEnter: 13,
        fnProcessData: q,
        fnGetData: p,
        fnAdjustAjaxParam: null,
        fnPreprocessKeyword: null
    },
    y = {
        init: function(b) {
            var j = this;
            return b = b || {},
            void 0 === b.showHeader && b.effectiveFields && b.effectiveFields.length > 1 && (b.showHeader = !0),
            b = a.extend(!0, {},
            x, b),
            b.processData && (b.fnProcessData = b.processData),
            b.getData && (b.fnGetData = b.getData),
            "firstByUrl" === b.getDataMethod && b.url && !b.delayUntilKeyup && n(b).done(function(a) {
                b.url = null,
                j.trigger("onDataRequestSuccess", a)
            }),
            a("#bsSuggest").length || a("head:eq(0)").append('<style id="bsSuggest">.' + b.listHoverCSS + "{" + b.listHoverStyle + "}</style>"),
            j.each(function() {
                var j, k, l = a(this),
                n = r(l, b),
                o = l.parents(".input-group").find("ul.dropdown-menu:eq(0)");
                return i(l, o, b) ? (b.showBtn || l.css("border-radius", "4px").parents(".input-group:eq(0)").css("width", "100%").find(".btn:eq(0)").hide(), l.removeClass("disabled").prop("disabled", !1).attr("autocomplete", "off"), o.css(b.listStyle), b.inputBgColor || (b.inputBgColor = l.css("background-color")), l.on("keydown",
                function(a) {
                    var e, f;
                    if (o.is(":visible")) {
                        if (e = o.find("." + b.listHoverCSS), f = "", h(o, b), a.keyCode === b.keyDown) {
                            if (e.length ? e.next().length ? f = c(e.next().mouseover()) : b.autoSelect && l.val(l.attr("alt")).attr("data-id", "") : f = c(o.find("tbody tr:first").mouseover()), g(l, o, b), !b.autoSelect) return
                        } else if (a.keyCode === b.keyUp) {
                            if (e.length ? e.prev().length ? f = c(e.prev().mouseover()) : b.autoSelect && l.val(l.attr("alt")).attr("data-id", "") : f = c(o.find("tbody tr:last").mouseover()), g(l, o, b), !b.autoSelect) return
                        } else a.keyCode === b.keyEnter ? (f = c(e), o.hide().empty()) : l.attr("data-id", "");
                        d(l, f, b)
                    }
                }).on("compositionstart",
                function(a) {
                    s = !0
                }).on("compositionend",
                function(a) {
                    s = !1
                }).on("keyup input paste",
                function(c) {
                    var d;
                    return~a.inArray(c.keyCode, [b.keyDown, b.keyUp, b.keyEnter]) ? (l.val(l.val()), void f(l, b)) : (c.keyCode && f(l, b), clearTimeout(k), void(k = setTimeout(function() {
                        s || (d = l.val(), a.trim(d) && d === l.attr("alt") || (l.attr("alt", d), b.multiWord && (d = d.split(b.separator).reverse()[0]), (d.length || b.allowNoKeyword) && b.fnGetData(a.trim(d), l, m, b)))
                    },
                    b.delay || 300)))
                }).on("focus",
                function() {
                    e(l, o, b)
                }).on("blur",
                function() {
                    j || o.css("display", "")
                }).on("click",
                function() {
                    var c = l.val();
                    return a.trim(c) && c === l.attr("alt") && o.find("table tr").length ? o.show() : void(o.is(":visible") || (b.multiWord && (c = c.split(b.separator).reverse()[0]), (c.length || b.allowNoKeyword) && b.fnGetData(a.trim(c), l, m, b)))
                }), l.parent().find(".btn:eq(0)").attr("data-toggle", "").click(function() {
                    var a = "none";
                    return o.css("display") === a && (a = "block", b.url ? (l.click().focus(), o.find("tr").length || (a = "none")) : m(l, b.data, b)),
                    o.css("display", a),
                    !1
                }), o.mouseenter(function() {
                    j = 1,
                    l.blur()
                }).mouseleave(function() {
                    j = 0,
                    l.focus()
                }).on("mouseenter", "tbody tr",
                function() {
                    return h(o, b),
                    a(this).addClass(b.listHoverCSS),
                    !1
                }).on("mousedown", "tbody tr",
                function() {
                    d(l, c(a(this)), b),
                    f(l, b),
                    o.hide()
                }), void(n.length && (n.click(function() {
                    l.val("").attr("data-id", ""),
                    f(l, b)
                }), l.parent().mouseenter(function() {
                    l.prop("disabled") || n.show()
                }).mouseleave(function() {
                    n.hide()
                })))) : void console.warn("不是一个标准的 bootstrap 下拉式菜单或已初始化:", l)
            })
        },
        show: function() {
            return this.each(function() {
                a(this).click()
            })
        },
        hide: function() {
            return this.each(function() {
                a(this).parent().find("ul.dropdown-menu").css("display", "")
            })
        },
        disable: function() {
            return this.each(function() {
                a(this).attr("disabled", !0).parent().find(".btn:eq(0)").prop("disabled", !0)
            })
        },
        enable: function() {
            return this.each(function() {
                a(this).attr("disabled", !1).parent().find(".btn:eq(0)").prop("disabled", !1)
            })
        },
        destroy: function() {
            return this.each(function() {
                a(this).off().removeData("bsSuggest").removeAttr("style").parent().find(".btn:eq(0)").off().show().attr("data-toggle", "dropdown").prop("disabled", !1).next().css("display", "").off()
            })
        },
        version: function() {
            return "0.1.17"
        }
    };
    a.fn.bsSuggest = function(b) {
        if ("string" == typeof b && y[b]) {
            var c = !0;
            return this.each(function() {
                if (!a(this).data("bsSuggest")) return c = !1
            }),
            c || "init" === b || "version" === b ? y[b].apply(this, [].slice.call(arguments, 1)) : this
        }
        return y.init.apply(this, arguments)
    }
});