year = int(input())
month = int(input())

def is_year_leap(year):
    if year%4==0:
        if year%100==0:
            if year%400==00:
                result=True
            else:
                result=False
        else:
            result=True
    else:
        result=False
    return result
print("El año es biciesto?", is_year_leap(year))

def days_in_month(year, month):
    if month==2:
        if is_year_leap(year)==True:
            days=29
        else:
            days=28
    else:
        if month== 4 and 6 and 9 and 11:
            days=30
        elif month==2:
            days=28
        elif month== 1 and 3 and 5 and 7 and 8 and 10 and 12:
            days=31
    return days
print ("la cantidad de dias en el mes dado del año dado sera:", days_in_month(year, month))