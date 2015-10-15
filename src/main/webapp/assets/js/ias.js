/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function getUrlParameter(e) {
    var t = window.location.search.substring(1);
    var n = t.split("&");
    for (var r = 0; r < n.length; r++) {
        var i = n[r].split("=");
        if (i[0] == e) {
            return i[1]
        }
    }
}

(function (e) {
    function t(e) {
        if (window.console && window.console.log)
            window.console.log(e)
    }
    e.ias = function (t) {
        function u() {
            i.onChangePage(function (e, t, r) {
                if (s)
                    s.setPage(e, r);
                n.onPageChange.call(this, e, r, t)
            });
            a();
            if (s && s.havePage()) {
                l();
                pageNum = s.getPage();
                r.forceScrollTop(function () {
                    if (pageNum > 1) {
                        v(pageNum);
                        curTreshold = h(true);
                        e("html,body").scrollTop(curTreshold)
                    } else {
                        a()
                    }
                })
            }
            return o
        }
        function a() {
            c();
            e(window).scroll(f)
        }
        function f() {
            scrTop = e(window).scrollTop();
            wndHeight = e(window).height();
            curScrOffset = scrTop + wndHeight;
            if (curScrOffset >= h()) {
                p(curScrOffset)
            }
        }
        function l() {
            e(window).unbind("scroll", f)
        }
        function c() {
            e(n.pagination).hide()
        }
        function h(t) {
            el = e(n.container).find(n.item).last();
            if (el.size() == 0)
                return 0;
            treshold = el.offset().top + el.height();
            if (!t)
                treshold += n.tresholdMargin;
            return treshold
        }
        function p(t, r) {
            urlNextPage = e(n.next).attr("href");
            if (!urlNextPage)
                return l();
            i.pushPages(t, urlNextPage);
            l();
            g();
            d(urlNextPage, function (t, i) {
                result = n.onLoadItems.call(this, i);
                if (result !== false) {
                    e(i).hide();
                    curLastItem = e(n.container).find(n.item).last();
                    curLastItem.after(i);
                    e(i).fadeIn()
                }
                e(n.pagination).replaceWith(e(n.pagination, t));
                y();
                a();
                n.onRenderComplete.call(this, i);
                if (r)
                    r.call(this)
            })
        }
        function d(t, r) {
            var i = [];
            e.get(t, null, function (t) {
                e(n.container, t).find(n.item).each(function () {
                    i.push(this)
                });
                if (r)
                    r.call(this, t, i)
            }, "html")
        }
        function v(t) {
            curTreshold = h(true);
            if (curTreshold > 0) {
                p(curTreshold, function () {
                    l();
                    if (i.getCurPageNum(curTreshold) + 1 < t) {
                        v(t);
                        e("html,body").animate({scrollTop: curTreshold}, 400, "swing")
                    } else {
                        e("html,body").animate({scrollTop: curTreshold}, 1e3, "swing");
                        a()
                    }
                })
            }
        }
        function m() {
            loader = e(".ias_loader");
            if (loader.size() == 0) {
                loader = e("<div class='ias_loader'>" + n.loader + "</div>");
                loader.hide()
            }
            return loader
        }
        function g(t) {
            loader = m();
            el = e(n.container).find(n.item).last();
            el.after(loader);
            loader.fadeIn()
        }
        function y() {
            loader = m();
            loader.remove()
        }
        var n = e.extend({}, e.ias.defaults, t);
        var r = new e.ias.util;
        var i = new e.ias.paging;
        var s = n.history ? new e.ias.history : false;
        var o = this;
        u()
    };
    e.ias.defaults = {container: "#container", item: ".item", pagination: "#pagination", next: ".next", loader: '<img src="images/loader.gif"/>', tresholdMargin: 0, history: true, onPageChange: function () {
        }, onLoadItems: function () {
        }, onRenderComplete: function () {
        }};
    e.ias.util = function () {
        function i() {
            e(window).load(function () {
                t = true
            })
        }
        var t = false;
        var n = false;
        var r = this;
        i();
        this.forceScrollTop = function (i) {
            e("html,body").scrollTop(0);
            if (!n) {
                if (!t) {
                    setTimeout(function () {
                        r.forceScrollTop(i)
                    }, 1e4)
                } else {
                    i.call();
                    n = true
                }
            }
        }
    };
    e.ias.paging = function () {
        function s() {
            e(window).scroll(o)
        }
        function o() {
            scrTop = e(window).scrollTop();
            wndHeight = e(window).height();
            curScrOffset = scrTop + wndHeight;
            curPageNum = u(curScrOffset);
            curPagebreak = a(curScrOffset);
            if (r != curPageNum) {
                n.call(this, curPageNum, curPagebreak[0], curPagebreak[1])
            }
            r = curPageNum
        }
        function u(e) {
            for (i = t.length - 1; i > 0; i--) {
                if (e > t[i][0]) {
                    return i + 1
                }
            }
            return 1
        }
        function a(e) {
            for (i = t.length - 1; i >= 0; i--) {
                if (e > t[i][0]) {
                    return t[i]
                }
            }
            return null
        }
        var t = [[0, document.location.toString()]];
        var n = function () {
        };
        var r = 1;
        s();
        this.getCurPageNum = function (e) {
            return u(e)
        };
        this.onChangePage = function (e) {
            n = e
        };
        this.pushPages = function (e, n) {
            t.push([e, n])
        }
    };
    e.ias.history = function () {
        function n() {
            t = !!(window.history && history.pushState && history.replaceState);
            t = false
        }
        var e = false;
        var t = false;
        n();
        this.setPage = function (e, t) {
            this.updateState({page: e}, "", t)
        };
        this.havePage = function () {
            return this.getState() != false
        };
        this.getPage = function () {
            if (this.havePage()) {
                stateObj = this.getState();
                return stateObj.page
            }
            return 1
        };
        this.getState = function () {
            if (t) {
                stateObj = history.state;
                if (stateObj && stateObj.ias)
                    return stateObj.ias
            } else {
                haveState = window.location.hash.substring(0, 7) == "#/page/";
                if (haveState) {
                    pageNum = parseInt(window.location.hash.replace("#/page/", ""));
                    return{page: pageNum}
                }
            }
            return false
        };
        this.updateState = function (t, n, r) {
            if (e) {
                this.replaceState(t, n, r)
            } else {
                this.pushState(t, n, r)
            }
        };
        this.pushState = function (n, r, i) {
            if (t) {
                history.pushState({ias: n}, r, i)
            } else {
            }
            e = true
        };
        this.replaceState = function (e, n, r) {
            if (t) {
                history.replaceState({ias: e}, n, r)
            } else {
                this.pushState(e, n, r)
            }
        }
    }
})(jQuery)