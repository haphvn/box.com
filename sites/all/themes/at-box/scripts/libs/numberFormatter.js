var formattingOptions = {
    intNumber: {
        decimalPlaces: 0,
        digitGrouping: true,
        isCurrency: false,
        truncateMillions: false,
        millionsDecimalPlaces: 2,
        isPercent: false,
        signed: false
    },
    price: {
        decimalPlaces: 3,
        digitGrouping: true,
        isCurrency: true,
        truncateMillions: true,
        millionsDecimalPlaces: 2,
        isPercent: false,
        signed: false
    },
    priceNoSymbol: {
        decimalPlaces: 3,
        digitGrouping: true,
        isCurrency: false,
        truncateMillions: true,
        millionsDecimalPlaces: 2,
        isPercent: false,
        signed: false
    },
    priceNoSymbol2DecimalPlaces: {
        decimalPlaces: 2,
        digitGrouping: true,
        isCurrency: false,
        truncateMillions: true,
        millionsDecimalPlaces: 2,
        isPercent: false,
        signed: false
    },
    movementPrc: {
        decimalPlaces: 2,
        digitGrouping: true,
        isCurrency: false,
        truncateMillions: true,
        millionsDecimalPlaces: 2,
        isPercent: true,
        signed: false
    },
    changePrc: {
        decimalPlaces: 2,
        digitGrouping: true,
        isCurrency: false,
        truncateMillions: true,
        millionsDecimalPlaces: 2,
        isPercent: true,
        alreadyPercentValue: true,
        signed: false
    },
    movementAmt: {
        decimalPlaces: 2,
        digitGrouping: true,
        isCurrency: false,
        truncateMillions: true,
        millionsDecimalPlaces: 2,
        isPercent: false,
        signed: true
    },
    portfolioProfitLossAmt: {
        decimalPlaces: 0,
        digitGrouping: true,
        isCurrency: false,
        truncateMillions: true,
        millionsDecimalPlaces: 2,
        isPercent: false,
        signed: true
    },
    volume: {
        decimalPlaces: 0,
        digitGrouping: true,
        isCurrency: false,
        truncateMillions: true,
        millionsDecimalPlaces: 2,
        isPercent: false,
        signed: false
    },
    units: {
        decimalPlaces: 0,
        digitGrouping: true,
        isCurrency: false,
        truncateMillions: false,
        millionsDecimalPlaces: 2,
        isPercent: false,
        signed: false
    },
    marketValue: {
        decimalPlaces: 2,
        digitGrouping: true,
        isCurrency: true,
        truncateMillions: true,
        millionsDecimalPlaces: 2,
        isPercent: false,
        signed: false
    },
    currency: {
        decimalPlaces: 2,
        digitGrouping: true,
        isCurrency: true,
        truncateMillions: true,
        millionsDecimalPlaces: 2,
        isPercent: false,
        signed: false
    },
    exchangeRate: {
        decimalPlaces: 4,
        digitGrouping: true,
        isCurrency: false,
        truncateMillions: false,
        millionsDecimalPlaces: 2,
        isPercent: false,
        signed: false
    },
    researchPercentage: {
        decimalPlaces: 1,
        digitGrouping: true,
        isCurrency: false,
        truncateMillions: false,
        millionsDecimalPlaces: 1,
        isPercent: true,
        signed: false,
        alreadyPercentValue: true
    },
    peRatio: {
        decimalPlaces: 2,
        digitGrouping: true,
        isCurrency: false,
        truncateMillions: false,
        millionsDecimalPlaces: 1,
        alreadyPercentValue: false,
        isPercent: false,
        signed: false
    },
    marketCap: {
        decimalPlaces: 0,
        digitGrouping: true,
        isCurrency: false,
        truncateMillions: true,
        millionsDecimalPlaces: 0,
        isPercent: false,
        signed: false
    },
    dividend: {
        decimalPlaces: 1,
        digitGrouping: true,
        isCurrency: false,
        truncateMillions: false,
        millionsDecimalPlaces: 1,
        isPercent: false,
        signed: false
    }
}

// Use: 
// var x = 49.32;
// var str = x.format('price'); // str === '$48.320'
Number.prototype.format = function (format) {
    if (!format)
        return this.toString();

    var currencySign = '$';
    var millionsSuffix = 'M';
    var percentSign = '%';
    var positiveSign = '+';

    var fo = formattingOptions[format];
    var num = this; // non destructive formatting
    var hasMillions = false;

    if (fo.isPercent && !fo.alreadyPercentValue)
        num *= 100;

    if (fo.truncateMillions && num >= 1000000) {
        hasMillions = true;
        num = num / 1000000;
    }

    var retVal = (hasMillions) ?
        num.toFixed(fo.millionsDecimalPlaces) + millionsSuffix :
        num.toFixed(fo.decimalPlaces);

    retVal = (fo.digitGrouping) ? retVal.addCommas() : retVal;

    if (fo.signed)
        retVal = (num > 0) ? positiveSign + retVal : retVal;

    retVal = (fo.isCurrency) ? currencySign + retVal : retVal;
    retVal = (fo.isPercent) ? retVal + percentSign : retVal;

    return retVal;
}

Number.prototype.digit = function (numberOfDigits)
{
    var thisNumber = this.toString(),
        leadingCount = numberOfDigits - Math.abs(this).toString().length,
        leadingZeros;

    if (leadingCount <= 0)
    {
        return thisNumber;
    }

    leadingZeros = $.generateLeadingZeros(leadingCount);

    return thisNumber.replace(/([-]*)([\d]+)/, "$1" + leadingZeros + "$2");

}

String.prototype.format = function (formatType)
{
    var retVal = this,
        theDate, theNumber;

    switch (formatType) {
        case 'formatUTCShort':
        case 'formatUTCShortNoTime':
        case 'formatShort':
        case 'formatShortNoTime':
            theDate = this.toDate();
            if (theDate instanceof Date)
            {
                retVal = (this.toDate()).format(formatType);
            }
            break;
        case 'formatTodayText':
            theDate = this.toDate();
            if (theDate instanceof Date)
            {
                retVal = (this.toDate()).toTodayString();
            }
            break;
        case 'intNumber':
        case 'price':
        case 'priceNoSymbol':
        case 'movementPrc':
        case 'movementAmt':
        case 'volume':
        case 'units':
        case 'marketValue':
        case 'currency':
        case 'exchangeRate':
            theNumber = Number(this);
            if (this == "" || isNaN(theNumber))
            {
                retVal = "";  
            }
            else
            {
                retVal = theNumber.format(formatType);
            }
            break;
        case 'researchPercentage':
        case 'peRatio':
        case 'marketCap':
        case 'dividend':
            theNumber = Number(this);
            if (this == "" || isNaN(theNumber)) {
                retVal = this; // just return what's not understood
            }
            else {
                retVal = theNumber.format(formatType);
            }
            break;
        default:
            break;
    }

    return retVal;
}

String.prototype.addCommas = function ()
{
    var nStr = this;
	nStr += '';
	x = nStr.split('.');
	x1 = x[0];
	x2 = x.length > 1 ? '.' + x[1] : '';
	var rgx = /(\d+)(\d{3})/;
	while (rgx.test(x1)) {
		x1 = x1.replace(rgx, '$1' + ',' + '$2');
	}
	return x1 + x2;
}

String.prototype.ellipse = function (characterLength) {
    var retVal = this;
    if (this.length >= characterLength)
        retVal = this.substring(0, characterLength) + '...';
    return retVal.toString();
}

String.prototype.toDate = function ()
{
    //expected input format is DD/MM/YYYY or DD/MM/YYYY HH:mm:ss AMPM
    //regex match = ["3/11/2011 3:56:40 PM", "3", "11", "2011", " 3:56", "3", "56", "40", "PM"]

    var rxDDMMYYYY = /^(\d{1,2})\/(\d{1,2})\/(\d{4})(\s(\d{1,2}):(\d{1,2}))*:*(\d{1,2})*\s*([A|P]+M)*/,
        matchDDMMYYYY = rxDDMMYYYY.exec(this),
        day, month, year, hours, minutes, seconds, ampm,
        retVal;

    if (matchDDMMYYYY !== null && matchDDMMYYYY.length >= 3)
    {
        day = matchDDMMYYYY[1];
        month = matchDDMMYYYY[2] > 0 ? matchDDMMYYYY[2] - 1 : matchDDMMYYYY[2];
        year = matchDDMMYYYY[3];

        if (matchDDMMYYYY[4] !== undefined)
        {
            hours = matchDDMMYYYY[5];
            minutes = matchDDMMYYYY[6];
            seconds = matchDDMMYYYY[7];

            retVal = new Date(year, month, day, hours, minutes, seconds);
        }
        else
        {
            retVal = new Date(year, month, day);
        }
    }

    return retVal;

}

Date.prototype.format = function (formatType)
{
    var retVal = '';
    switch (formatType) {
  
        case 'formatUTCShort':
            retVal =
                    ((this.getUTCDate().toString().length == 1) ? '0' : '') + this.getUTCDate() + '-' +
                    (((this.getUTCMonth() + 1).toString().length == 1) ? '0' : '') + (this.getUTCMonth() + 1) + '-' +
                    (this.getUTCFullYear() + ' ') +
                    ((this.getUTCHours().toString().length == 1) ? '0' : '') + this.getUTCHours() + ':' +
                    ((this.getUTCMinutes().toString().length == 1) ? '0' : '') + this.getUTCMinutes();
            break;
        case 'formatUTCShortNoTime':
            retVal =
                    ((this.getUTCDate().toString().length == 1) ? '0' : '') + this.getUTCDate() + '-' +
                    (((this.getUTCMonth() + 1).toString().length == 1) ? '0' : '') + (this.getUTCMonth() + 1) + '-' +
                    (this.getUTCFullYear() + ' ');
            break;
        case 'formatShort':
            retVal =
                    ((this.getDate().toString().length == 1) ? '0' : '') + this.getDate() + '-' +
                    (((this.getMonth() + 1).toString().length == 1) ? '0' : '') + (this.getMonth() + 1) + '-' +
                    (this.getFullYear() + ' ') +
                    ((this.getHours().toString().length == 1) ? '0' : '') + this.getHours() + ':' +
                    ((this.getMinutes().toString().length == 1) ? '0' : '') + this.getMinutes();
            break;
        case 'formatShortNoTime':
            retVal =
                    ((this.getDate().toString().length == 1) ? '0' : '') + this.getDate() + '/' +
                    (((this.getMonth() + 1).toString().length == 1) ? '0' : '') + (this.getMonth() + 1) + '/' +
                    (this.getFullYear() + ' ');
            break;
    }

    return retVal;
}

Date.prototype.toTodayString = function ()
{
    return $.isToday(this) ? "TODAY" : "";
}

Date.prototype.toISO8601String = function ()
{
    //ISO 8601 is also known as the sortable date format.   "YYYY-MM-DDTHH:mm:ss.msZ"

    return "".concat
            (
                this.getFullYear(), "-",
                (this.getMonth() + 1).digit(2), "-",
                (this.getDate() + 1).digit(2), "T",
                (this.getHours()).digit(2), ":",
                (this.getMinutes()).digit(2), ":",
                (this.getSeconds()).digit(2), ".",
                (this.getMilliseconds()).digit(3), "Z"
            );
}