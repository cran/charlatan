#' @title MiscProvider
#' @description miscellaneous methods
#' @export
#' @keywords internal
#' @examples
#' (x <- MiscProvider$new())
#' x$language_locale_codes
#' x$language_code()
#' x$locale()
#' x$boolean()
#' x$null_boolean()
MiscProvider <- R6::R6Class(
  inherit = BaseProvider,
  "MiscProvider",
  public = list(
    # Locales supported by Linux Mint from `/usr/share/i18n/SUPPORTED`
    #' @field language_locale_codes (list) locale codes by locale family
    language_locale_codes = list(
      "aa" = c("DJ", "ER", "ET"),
      "af" = c("ZA"),
      "ak" = c("GH"),
      "am" = c("ET"),
      "an" = c("ES"),
      "apn" = c("IN"),
      "ar" = c(
        "AE", "BH", "DJ", "DZ", "EG", "EH", "ER", "IL", "IN",
        "IQ", "JO", "KM", "KW", "LB", "LY", "MA", "MR", "OM",
        "PS", "QA", "SA", "SD", "SO", "SS", "SY", "TD", "TN", "YE"
      ),
      "as" = c("IN"),
      "ast" = c("ES"),
      "ayc" = c("PE"),
      "az" = c("AZ", "IN"),
      "be" = c("BY"),
      "bem" = c("ZM"),
      "ber" = c("DZ", "MA"),
      "bg" = c("BG"),
      "bhb" = c("IN"),
      "bho" = c("IN"),
      "bn" = c("BD", "IN"),
      "bo" = c("CN", "IN"),
      "br" = c("FR"),
      "brx" = c("IN"),
      "bs" = c("BA"),
      "byn" = c("ER"),
      "ca" = c("AD", "ES", "FR", "IT"),
      "ce" = c("RU"),
      "ckb" = c("IQ"),
      "cmn" = c("TW"),
      "crh" = c("UA"),
      "cs" = c("CZ"),
      "csb" = c("PL"),
      "cv" = c("RU"),
      "cy" = c("GB"),
      "da" = c("DK"),
      "de" = c("AT", "BE", "CH", "DE", "LI", "LU"),
      "doi" = c("IN"),
      "dv" = c("MV"),
      "dz" = c("BT"),
      "el" = c("GR", "CY"),
      "en" = c(
        "AG", "AU", "BW", "CA", "DK", "GB", "HK", "IE", "IN", "NG",
        "NZ", "PH", "SG", "US", "ZA", "ZM", "ZW"
      ),
      "eo" = c("US"),
      "es" = c(
        "AR", "BO", "CL", "CO", "CR", "CU", "DO", "EC", "ES", "GT",
        "HN", "MX", "NI", "PA", "PE", "PR", "PY", "SV", "US", "UY", "VE"
      ),
      "et" = c("EE"),
      "eu" = c("ES", "FR"),
      "fa" = c("IR"),
      "ff" = c("SN"),
      "fi" = c("FI"),
      "fil" = c("PH"),
      "fo" = c("FO"),
      "fr" = c("CA", "CH", "FR", "LU"),
      "fur" = c("IT"),
      "fy" = c("NL", "DE"),
      "ga" = c("IE"),
      "gd" = c("GB"),
      "gez" = c("ER", "ET"),
      "gl" = c("ES"),
      "gu" = c("IN"),
      "gv" = c("GB"),
      "ha" = c("NG"),
      "hak" = c("TW"),
      "he" = c("IL"),
      "hi" = c("IN"),
      "hne" = c("IN"),
      "hr" = c("HR"),
      "hsb" = c("DE"),
      "ht" = c("HT"),
      "hu" = c("HU"),
      "hy" = c("AM"),
      "ia" = c("FR"),
      "id" = c("ID"),
      "ig" = c("NG"),
      "ik" = c("CA"),
      "is" = c("IS"),
      "it" = c("CH", "IT"),
      "iu" = c("CA"),
      "iw" = c("IL"),
      "ja" = c("JP"),
      "ka" = c("GE"),
      "kk" = c("KZ"),
      "kl" = c("GL"),
      "km" = c("KH"),
      "kn" = c("IN"),
      "ko" = c("KR"),
      "kok" = c("IN"),
      "ks" = c("IN"),
      "ku" = c("TR"),
      "kw" = c("GB"),
      "ky" = c("KG"),
      "lb" = c("LU"),
      "lg" = c("UG"),
      "li" = c("BE", "NL"),
      "lij" = c("IT"),
      "ln" = c("CD"),
      "lo" = c("LA"),
      "lt" = c("LT"),
      "lv" = c("LV"),
      "lzh" = c("TW"),
      "mag" = c("IN"),
      "mai" = c("IN"),
      "mg" = c("MG"),
      "mhr" = c("RU"),
      "mi" = c("NZ"),
      "mk" = c("MK"),
      "ml" = c("IN"),
      "mn" = c("MN"),
      "mni" = c("IN"),
      "mr" = c("IN"),
      "ms" = c("MY"),
      "mt" = c("MT"),
      "my" = c("MM"),
      "nan" = c("TW"),
      "nb" = c("NO"),
      "nds" = c("DE", "NL"),
      "ne" = c("NP"),
      "nhn" = c("MX"),
      "niu" = c("NU", "NZ"),
      "nl" = c("AW", "BE", "NL"),
      "nn" = c("NO"),
      "nr" = c("ZA"),
      "nso" = c("ZA"),
      "oc" = c("FR"),
      "om" = c("ET", "KE"),
      "or" = c("IN"),
      "os" = c("RU"),
      "pa" = c("IN", "PK"),
      "pap" = c("AN", "AW", "CW"),
      "pl" = c("PL"),
      "ps" = c("AF"),
      "pt" = c("BR", "PT"),
      "quz" = c("PE"),
      "raj" = c("IN"),
      "ro" = c("RO"),
      "ru" = c("RU", "UA"),
      "rw" = c("RW"),
      "sa" = c("IN"),
      "sat" = c("IN"),
      "sc" = c("IT"),
      "sd" = c("IN", "PK"),
      "se" = c("NO"),
      "shs" = c("CA"),
      "si" = c("LK"),
      "sid" = c("ET"),
      "sk" = c("SK"),
      "sl" = c("SI"),
      "so" = c("DJ", "ET", "KE", "SO"),
      "sq" = c("AL", "ML"),
      "sr" = c("ME", "RS"),
      "ss" = c("ZA"),
      "st" = c("ZA"),
      "sv" = c("FI", "SE"),
      "sw" = c("KE", "TZ"),
      "szl" = c("PL"),
      "ta" = c("IN", "LK"),
      "tcy" = c("IN"),
      "te" = c("IN"),
      "tg" = c("TJ"),
      "th" = c("TH"),
      "the" = c("NP"),
      "ti" = c("ER", "ET"),
      "tig" = c("ER"),
      "tk" = c("TM"),
      "tl" = c("PH"),
      "tn" = c("ZA"),
      "tr" = c("CY", "TR"),
      "ts" = c("ZA"),
      "tt" = c("RU"),
      "ug" = c("CN"),
      "uk" = c("UA"),
      "unm" = c("US"),
      "ur" = c("IN", "PK"),
      "uz" = c("UZ"),
      "ve" = c("ZA"),
      "vi" = c("VN"),
      "wa" = c("BE"),
      "wae" = c("CH"),
      "wal" = c("ET"),
      "wo" = c("SN"),
      "xh" = c("ZA"),
      "yi" = c("US"),
      "yo" = c("NG"),
      "yue" = c("HK"),
      "zh" = c("CN", "HK", "SG", "TW"),
      "zu" = c("ZA")
    ),

    #' @description get a random boolean, `TRUE` or `FALSE`
    #' @param chance_of_getting_true (integer) an integer, default: 50
    boolean = function(chance_of_getting_true = 50) {
      super$random_int(1, 100) <= chance_of_getting_true
    },

    #' @description get a random boolean, `TRUE` or `FALSE`, or NULL
    null_boolean = function() {
      take <- as.character(super$random_int(-1, 1))
      list(`0` = NULL, `1` = TRUE, `-1` = FALSE)[[take]]
    },

    # def binary(self, length=(1 * 1024 * 1024)):
    #     """ Returns random binary blob.

    #     Default blob size is 1 Mb.
    #     """
    #     blob = [self.generator.random.randrange(256) for o in range(length)]
    #     return bytes(blob) if sys.version_info[0] >= 3 else bytearray(blob)

    #' @description get a random locale
    locale = function() {
      lc <- self$language_code()
      paste0(lc, "_", super$random_element(self$language_locale_codes[[lc]]))
    },

    #' @description random language code
    language_code = function() {
      super$random_element(names(self$language_locale_codes))
    }
  )
)
