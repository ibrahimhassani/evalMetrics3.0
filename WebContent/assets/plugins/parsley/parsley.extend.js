/* Parsley dist/parsley.extend.min.js build version 1.2.3 http://parsleyjs.org */
window.ParsleyConfig = window.ParsleyConfig || {};
(function (e) {
    window.ParsleyConfig = e.extend(true, {}, window.ParsleyConfig, {
        validators: {
            minwords: function () {
                return {
                    validate: function (e, t) {
                        e = e.replace(/(^\s*)|(\s*$)/gi, "");
                        e = e.replace(/[ ]{2,}/gi, " ");
                        e = e.replace(/\n /, "\n");
                        e = e.split(" ").length;
                        return e >= t
                    },
                    priority: 32
                }
            },
            maxwords: function () {
                return {
                    validate: function (e, t) {
                        e = e.replace(/(^\s*)|(\s*$)/gi, "");
                        e = e.replace(/[ ]{2,}/gi, " ");
                        e = e.replace(/\n /, "\n");
                        e = e.split(" ").length;
                        return e <= t
                    },
                    priority: 32
                }
            },
            rangewords: function () {
                var e = this;
                return {
                    validate: function (t, n) {
                        return e.minwords().validate(t, n[0]) && e.maxwords().validate(t, n[1])
                    },
                    priority: 32
                }
            },
            greaterthan: function () {
                return {
                    validate: function (t, n, r) {
                        r.options.validateIfUnchanged = true;
                        return new Number(t) > new Number(e(n).val())
                    },
                    priority: 32
                }
            },
            lessthan: function () {
                return {
                    validate: function (t, n, r) {
                        r.options.validateIfUnchanged = true;
                        return new Number(t) < new Number(e(n).val())
                    },
                    priority: 32
                }
            },
            beforedate: function () {
                return {
                    validate: function (t, n, r) {
                        return Date.parse(t) < Date.parse(e(n).val())
                    },
                    priority: 32
                }
            },
            onorbeforedate: function () {
                return {
                    validate: function (t, n) {
                        return Date.parse(t) <= Date.parse(e(n).val())
                    },
                    priority: 32
                }
            },
            afterdate: function () {
                return {
                    validate: function (t, n) {
                        return Date.parse(e(n).val()) < Date.parse(t)
                    },
                    priority: 32
                }
            },
            onorafterdate: function () {
                return {
                    validate: function (t, n) {
                        return Date.parse(e(n).val()) <= Date.parse(t)
                    },
                    priority: 32
                }
            },
            inlist: function () {
                return {
                    validate: function (t, n, r) {
                        var i = r.options.inlistDelimiter || ",";
                        var s = (n + "").split(new RegExp("\\s*\\" + i + "\\s*"));
                        return e.inArray(e.trim(t), s) !== -1
                    },
                    priority: 32
                }
            },
            luhn: function () {
                return {
                    validate: function (e, t, n) {
                        e = e.replace(/[ -]/g, "");
                        var r, i, s, o, u, a;
                        s = 0;
                        a = e.split("").reverse();
                        for (i = o = 0, u = a.length; o < u; i = ++o) {
                            r = a[i];
                            r = +r;
                            if (i % 2) {
                                r *= 2;
                                if (r < 10) {
                                    s += r
                                } else {
                                    s += r - 9
                                }
                            } else {
                                s += r
                            }
                        }
                        return s % 10 === 0
                    },
                    priority: 32
                }
            },
            americandate: function () {
                return {
                    validate: function (e, t, n) {
                        if (!/^([01]?[0-9])[\.\/-]([0-3]?[0-9])[\.\/-]([0-9]{4}|[0-9]{2})$/.test(e)) {
                            return false
                        }
                        var r = e.split(/[.\/-]+/);
                        var i = parseInt(r[1], 10);
                        var s = parseInt(r[0], 10);
                        var o = parseInt(r[2], 10);
                        if (o == 0 || s == 0 || s > 12) {
                            return false
                        }
                        var u = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
                        if (o % 400 == 0 || o % 100 != 0 && o % 4 == 0) {
                            u[1] = 29
                        }
                        return i > 0 && i <= u[s - 1]
                    },
                    priority: 32
                }
            }
        },
        messages: {
            minwords: "This value should have %s words at least.",
            maxwords: "This value should have %s words maximum.",
            rangewords: "This value should have between %s and %s words.",
            greaterthan: "This value should be greater than %s.",
            lessthan: "This value should be less than %s.",
            beforedate: "This date should be before %s.",
            onorbeforedate: "This date should be on or before %s.",
            afterdate: "This date should be after %s.",
            onorafterdate: "This date should be on or after %s.",
            luhn: "This value is not a valid credit card number.",
            americandate: "This value should be a valid date (MM/DD/YYYY)."
        }
    })
})(window.jQuery || window.Zepto)