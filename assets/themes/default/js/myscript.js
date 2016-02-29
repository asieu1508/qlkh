
window.onload = function() {
    $('.overlays').remove();
    
    var sId = readCookie('sidebar');
    if (sId == 1) {
        $('body').addClass('sidebar-mini');
        widthLoad();
    }
    else {
        $('body').removeClass('sidebar-mini');
        widthLoad();
    }
    widthLoad();
}
$(function() {
    $('.mainMenu .icon').click(function(event) {
        $('.mainMenu li').removeClass('activeX');
        $(this).closest( "li" ).addClass('activeX');
    });
    $('.nav-icon').click(function(event) {
        if ($('body').hasClass('sidebar-mini')) {
            var sId = 0;
            writeCookie('sidebar', sId, 3);
            $('body').removeClass('sidebar-mini');
            if ($(window).width() > 560) {
                $('.body').width($(window).width() - 240);
            } else {
                $('body').append('<div class="overlays-2"></div>');
            }
        } else {
            var sId = 1;
            writeCookie('sidebar', sId, 3);
            $('body').addClass('sidebar-mini');
            if ($(window).width() > 560) {
                $('.body').width($(window).width() - 50);
            } else {
                $('.overlays-2').remove();
            }

        }
    });
    $('.overlays-2').live('click', function(event) {
        $('body').addClass('sidebar-mini');
        $('.overlays-2').remove();
    });
    
    if ($('.scroll').length && $(window).width() > 800) {
        $('.scroll').niceScroll({
            cursorwidth: 6,
        });
    };
    if ($('.datepicker').length) {
        $('.datepicker').pickadate({
            format: 'yyyy-mm-dd',
            formatSubmit: 'yyyy-mm-dd',
            selectYears: true,
            selectMonths: true,
            clear: false,
            close: 'Đóng',
            klass: {},
        });
    };
    //Dropdow menu script
    if ($('.mainMenu').length) {
        $('.mainMenu li').hover(
            function() {
                $('.mainMenu li').removeClass('activeX');
                $(this).find('ul').eq(0).stop(false, true).slideDown(200);
                $(this).parent().css('overflow', 'visible');
            },
            function() {
                $('.mainMenu li').removeClass('activeX');
                $(this).find('ul').eq(0).stop(false, true).slideUp(200);
            }
        )
    };
    if ($(window).width() <= 1024) {
        $('body').append('<div class="overlays" style="display: none;"></div>');
        $('.mainMenu > li').click(function(event) {
            if (!$('.show').length) {
                $(this).find('ul').eq(0).addClass('show');
                $('.overlays').css('display', 'block');
            } else {
                $('.mainMenu > li > ul').removeClass('show');
                $(this).find('ul').eq(0).addClass('show');
                $('.overlays').css('display', 'none');
            }

        });
        $('.overlays').live('click', function() {
            $('.overlays').css('display', 'none');
            $('.mainMenu > li > ul').removeClass('show');
        });
    }

    

    
    //resize window event
    $(window).bind('resize', function(e) {
        window.resizeEvt;
        $(window).resize(function() {
            clearTimeout(window.resizeEvt);
            window.resizeEvt = setTimeout(function() {
                widthLoad();
            }, 100);
        });
    });

});

$(function() {
    $('.body-right').scroll(function() {
        if ($(this).scrollTop() != 0) {
            $('#to_top_1').fadeIn();
        } else {
            $('#to_top_1').fadeOut();
        };
    });
    $('.body-left').scroll(function() {
        if ($(this).scrollTop() != 0) {
            $('#to_top_2').fadeIn();
        } else {
            $('#to_top_2').fadeOut();
        };
    });
    $('.body').scroll(function() {
        if ($(this).scrollTop() != 0) {
            $('#to_top').fadeIn();
        } else {
            $('#to_top').fadeOut();
        };
    });
    $('#to_top_1').click(function() {
        $('.body-right').animate({
            scrollTop: 0
        }, 800);
    });
    $('#to_top_2').click(function() {
        $('.body-left').animate({
            scrollTop: 0
        }, 800);
    });
    $('#to_top').click(function() {
        $('.body').animate({
            scrollTop: 0
        }, 800);
    });
});


function widthLoad() {
    if ($(window).width() > 560) {
        if ($('body').hasClass('sidebar-mini')) {
            $('.body').width($(window).width() - 50);
        } else {
            $('.body').width($(window).width() - 240);

        }
    } else {
        $('.body').css('width', '100%');
        if ($('body').hasClass('')) {
            $('body').addClass('sidebar-mini');
        }
    }

}


function getScrollBarWidth() {
    var inner = document.createElement('p');
    inner.style.width = "100%";
    inner.style.height = "200px";
    var outer = document.createElement('div');
    outer.style.position = "absolute";
    outer.style.top = "0px";
    outer.style.left = "0px";
    outer.style.visibility = "hidden";
    outer.style.width = "200px";
    outer.style.height = "150px";
    outer.style.overflow = "hidden";
    outer.appendChild(inner);

    document.body.appendChild(outer);
    var w1 = inner.offsetWidth;
    outer.style.overflow = 'scroll';
    var w2 = inner.offsetWidth;
    if (w1 == w2) w2 = outer.clientWidth;

    document.body.removeChild(outer);

    return (w1 - w2);
};


function mdate(date) {
    var myDate = new Date(1000 * date);
    var day = myDate.getDate();
    var month = myDate.getMonth() + 1;
    var year = myDate.getFullYear();
    if (day <= 9) {
        day = '0' + day;
    };
    if (month <= 9) {
        month = '0' + month;
    };
    var result = day + "-" + month + "-" + year;
    return result;

};


function dateMinus(number) {
    var now = new Date();
    var date = new Date(now.getFullYear(), now.getMonth(), now.getDate() - number);
    var dateString = date.format("dd/mm");
    return dateString;
};

var dateFormat = function() {
    var token = /d{1,4}|m{1,4}|yy(?:yy)?|([HhMsTt])\1?|[LloSZ]|"[^"]*"|'[^']*'/g,
        timezone = /\b(?:[PMCEA][SDP]T|(?:Pacific|Mountain|Central|Eastern|Atlantic) (?:Standard|Daylight|Prevailing) Time|(?:GMT|UTC)(?:[-+]\d{4})?)\b/g,
        timezoneClip = /[^-+\dA-Z]/g,
        pad = function(val, len) {
            val = String(val);
            len = len || 2;
            while (val.length < len) val = "0" + val;
            return val;
        };

    // Regexes and supporting functions are cached through closure
    return function(date, mask, utc) {
        var dF = dateFormat;

        // You can't provide utc if you skip other args (use the "UTC:" mask prefix)
        if (arguments.length == 1 && Object.prototype.toString.call(date) == "[object String]" && !/\d/.test(date)) {
            mask = date;
            date = undefined;
        }

        // Passing date through Date applies Date.parse, if necessary
        date = date ? new Date(date) : new Date;
        if (isNaN(date)) throw SyntaxError("invalid date");

        mask = String(dF.masks[mask] || mask || dF.masks["default"]);

        // Allow setting the utc argument via the mask
        if (mask.slice(0, 4) == "UTC:") {
            mask = mask.slice(4);
            utc = true;
        }

        var _ = utc ? "getUTC" : "get",
            d = date[_ + "Date"](),
            D = date[_ + "Day"](),
            m = date[_ + "Month"](),
            y = date[_ + "FullYear"](),
            H = date[_ + "Hours"](),
            M = date[_ + "Minutes"](),
            s = date[_ + "Seconds"](),
            L = date[_ + "Milliseconds"](),
            o = utc ? 0 : date.getTimezoneOffset(),
            flags = {
                d: d,
                dd: pad(d),
                ddd: dF.i18n.dayNames[D],
                dddd: dF.i18n.dayNames[D + 7],
                m: m + 1,
                mm: pad(m + 1),
                mmm: dF.i18n.monthNames[m],
                mmmm: dF.i18n.monthNames[m + 12],
                yy: String(y).slice(2),
                yyyy: y,
                h: H % 12 || 12,
                hh: pad(H % 12 || 12),
                H: H,
                HH: pad(H),
                M: M,
                MM: pad(M),
                s: s,
                ss: pad(s),
                l: pad(L, 3),
                L: pad(L > 99 ? Math.round(L / 10) : L),
                t: H < 12 ? "a" : "p",
                tt: H < 12 ? "am" : "pm",
                T: H < 12 ? "A" : "P",
                TT: H < 12 ? "AM" : "PM",
                Z: utc ? "UTC" : (String(date).match(timezone) || [""]).pop().replace(timezoneClip, ""),
                o: (o > 0 ? "-" : "+") + pad(Math.floor(Math.abs(o) / 60) * 100 + Math.abs(o) % 60, 4),
                S: ["th", "st", "nd", "rd"][d % 10 > 3 ? 0 : (d % 100 - d % 10 != 10) * d % 10]
            };

        return mask.replace(token, function($0) {
            return $0 in flags ? flags[$0] : $0.slice(1, $0.length - 1);
        });
    };
}();

// Some common format strings
dateFormat.masks = {
    "default": "ddd mmm dd yyyy HH:MM:ss",
    shortDate: "m/d/yy",
    mediumDate: "mmm d, yyyy",
    longDate: "mmmm d, yyyy",
    fullDate: "dddd, mmmm d, yyyy",
    shortTime: "h:MM TT",
    mediumTime: "h:MM:ss TT",
    longTime: "h:MM:ss TT Z",
    isoDate: "yyyy-mm-dd",
    isoTime: "HH:MM:ss",
    isoDateTime: "yyyy-mm-dd'T'HH:MM:ss",
    isoUtcDateTime: "UTC:yyyy-mm-dd'T'HH:MM:ss'Z'"
};

// Internationalization strings
dateFormat.i18n = {
    dayNames: [
        "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat",
        "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"
    ],
    monthNames: [
        "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec",
        "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"
    ]
};

// For convenience...
Date.prototype.format = function(mask, utc) {
    return dateFormat(this, mask, utc);
};

function toFloat(string) {
    var a = string;
    if (typeof a == "string") {
        var split = a.split('/');
        var result = parseInt(split[0], 10) / parseInt(split[1], 10);
        return result;
    } else {
        return a;
    }

}

function FractionFormatter(value) {
    if (value == undefined || value == null || isNaN(value))
        return "";

    function _FractionFormatterHighestCommonFactor(u, v) {
        var U = u,
            V = v
        while (true) {
            if (!(U %= V)) return V;
            if (!(V %= U)) return U;
        }
    }

    var parts = value.toString().split('.');
    if (parts.length == 1)
        return parts;
    else if (parts.length == 2) {
        var wholeNum = parts[0];
        var decimal = parts[1];
        var denom = Math.pow(10, decimal.length);
        var factor = _FractionFormatterHighestCommonFactor(decimal, denom)

        return (wholeNum == '0' ? '' : wholeNum) * (denom / factor) + (decimal / factor) + '/' + (denom / factor);
    } else {
        return "";
    }
}

function oneNumberToTow(number) {
    if (number < 9) {
        var str = '0' + String(number);
        return str;
    }
    else return number;
}

function isFloat(n) {
    return +n === n;
}

function isInt(n) {
    return +n === n && !(n % 1);
}

function checkFraction(string) {
    var str = string;
    var n = str.search("/");
    return n;
}

function locdau(string) {
    var str = string;
    str = str.toLowerCase();
    str = str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g, "a");
    str = str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g, "e");
    str = str.replace(/ì|í|ị|ỉ|ĩ/g, "i");
    str = str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g, "o");
    str = str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g, "u");
    str = str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g, "y");
    str = str.replace(/đ/g, "d");
    str = str.replace(/!|@|\$|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\'| |\"|\&|\#|\[|\]|~/g, "-");
    str = str.replace(/-+-/g, "-"); //thay thế 2- thành 1-
    str = str.replace(/^\-+|\-+$/g, ""); //cắt bỏ ký tự - ở đầu và cuối chuỗi
    return str;
}

function loadingLeft() {
    $('.body-left').append('<div class="overlays-left text-center"><div class="loading-container"><div class="loading"></div><div id="loading-text">loading</div></div></div>');
}

function loadingRight() {
    $('.body-right').append('<div class="overlays-right show text-center"><div class="loading-container"><div class="loading"></div><div id="loading-text">loading</div></div></div>');
}

function disableLoading() {
    if ($('.overlays-left').length) {
        $('.overlays-left').remove();
    };
    if ($('.overlays-right').length) {
        $('.overlays-right').remove();
    };
}

function successLeftBottomLeft(string_1, string_2, string_3) {
    $('.overlays-left').css('display', 'none');
    $.amaran({
        content: {
            title: string_1,
            message: string_2,
            info: string_3,
            icon: 'fa fa-warning',
        },
        theme: 'awesome ok',
        position: 'bottom left',
        delay: 1000
    });
    var url = base_url + "assets/themes/default/sound/success.mp3";
    var audio = new Audio(url);
    audio.volume = 0.2;
    audio.play();
}

function failLeftBottomLeft(string_1, string_2, string_3) {
    $('.overlays-left').css('display', 'none');
    $.amaran({
        content: {
            title: string_1,
            message: string_2,
            info: string_3,
            icon: 'fa fa-warning',
        },
        theme: 'awesome error',
        position: 'bottom left',
        delay: 1000
    });
    var url = base_url + "assets/themes/default/sound/error.mp3";
    var audio = new Audio(url);
    audio.volume = 0.2;
    audio.play();
}

function successRightTopRight(string_1, string_2, string_3) {
    $('.overlays-right').css('display', 'none');
    $.amaran({
        content: {
            title: string_1,
            message: string_2,
            info: string_3,
            icon: 'fa fa-warning',
        },
        theme: 'awesome ok',
        position: 'top right',
        delay: 1000
    });
    var url = base_url + "assets/themes/default/sound/success.mp3";
    var audio = new Audio(url);
    audio.volume = 0.2;
    audio.play();
}

function failRightTopRight(string_1, string_2, string_3) {
    $('.overlays-right').css('display', 'none');
    $.amaran({
        content: {
            title: string_1,
            message: string_2,
            info: string_3,
            icon: 'fa fa-warning',
        },
        theme: 'awesome error',
        position: 'top right',
        delay: 1000
    });
    var url = base_url + "assets/themes/default/sound/error.mp3";
    var audio = new Audio(url);
    audio.volume = 0.2;
    audio.play();
}

function writeCookie(name,value,days) {
    var date, expires;
    if (days) {
        date = new Date();
        date.setTime(date.getTime()+(days*24*60*60*1000));
        expires = "; expires=" + date.toGMTString();
            }else{
        expires = "";
    }
    document.cookie = name + "=" + value + expires + "; path=/";
}
function readCookie(name) {
    var i, c, ca, nameEQ = name + "=";
    ca = document.cookie.split(';');
    for(i=0;i < ca.length;i++) {
        c = ca[i];
        while (c.charAt(0)==' ') {
            c = c.substring(1,c.length);
        }
        if (c.indexOf(nameEQ) == 0) {
            return c.substring(nameEQ.length,c.length);
        }
    }
    return '';
}


//Xoa dau "." trong mã đề tài
function strReplaceDot(string) {
        var newString = string.replace(".", "");
            newString2 = newString.replace(".", "");
        return newString2;
}
function replaceAll(str, find, replace) {
  return str.replace(new RegExp(find, 'g'), replace);
}
/* ========================================================================
 * Bootstrap: alert.js v3.3.6
 * http://getbootstrap.com/javascript/#alerts
 * ========================================================================
 * Copyright 2011-2015 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+function ($) {
  'use strict';

  // ALERT CLASS DEFINITION
  // ======================

  var dismiss = '[data-dismiss="alert"]'
  var Alert   = function (el) {
    $(el).on('click', dismiss, this.close)
  }

  Alert.VERSION = '3.3.6'

  Alert.TRANSITION_DURATION = 150

  Alert.prototype.close = function (e) {
    var $this    = $(this)
    var selector = $this.attr('data-target')

    if (!selector) {
      selector = $this.attr('href')
      selector = selector && selector.replace(/.*(?=#[^\s]*$)/, '') // strip for ie7
    }

    var $parent = $(selector)

    if (e) e.preventDefault()

    if (!$parent.length) {
      $parent = $this.closest('.alert')
    }

    $parent.trigger(e = $.Event('close.bs.alert'))

    if (e.isDefaultPrevented()) return

    $parent.removeClass('in')

    function removeElement() {
      // detach from parent, fire event then clean up data
      $parent.detach().trigger('closed.bs.alert').remove()
    }

    $.support.transition && $parent.hasClass('fade') ?
      $parent
        .one('bsTransitionEnd', removeElement)
        .emulateTransitionEnd(Alert.TRANSITION_DURATION) :
      removeElement()
  }


  // ALERT PLUGIN DEFINITION
  // =======================

  function Plugin(option) {
    return this.each(function () {
      var $this = $(this)
      var data  = $this.data('bs.alert')

      if (!data) $this.data('bs.alert', (data = new Alert(this)))
      if (typeof option == 'string') data[option].call($this)
    })
  }

  var old = $.fn.alert

  $.fn.alert             = Plugin
  $.fn.alert.Constructor = Alert


  // ALERT NO CONFLICT
  // =================

  $.fn.alert.noConflict = function () {
    $.fn.alert = old
    return this
  }


  // ALERT DATA-API
  // ==============

  $(document).on('click.bs.alert.data-api', dismiss, Alert.prototype.close)

}(jQuery);


function getCurrentDay() {
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!
    var yyyy = today.getFullYear();

    if(dd<10) {
        dd='0'+dd
    } 

    if(mm<10) {
        mm='0'+mm
    } 

    today = yyyy+'-'+mm+'-'+dd;
    return today;
}