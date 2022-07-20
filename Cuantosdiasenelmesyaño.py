##Tu tarea es escribir y probar una función que toma dos argumentos (un año y un mes) y devuelve el número de días del mes/año dado
#(mientras que solo febrero es sensible al valor year, tu función debería ser universal).
#La parte inicial de la función está lista. Ahora, haz que la función devuelva None si los argumentos no tienen sentido.
#Por supuesto, puedes (y debes) utilizar la función previamente escrita y probada (LABORATORIO 4.1.3.6).
#Puede ser muy útil. Te recomendamos que utilices una lista con los meses.
#Puedes crearla dentro de la función; este truco acortará significativamente el código.
#Hemos preparado un código de prueba. Amplíalo para incluir más casos de prueba.

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
print("El año es biciesto?", is_year_leap(2000))

def days_in_month(year, month):
    if month==2:
        if is_year_leap(2000)==True:
            days=29
        else:
            days=28
    else:
        if month==[1,3,5,7,8,10,12]:
            days=31
        elif month==2:
            days=28
        elif month==[4,6,9,11]:
            days=30
    return days
print ("la cantidad de dias en el mes dado del año dado sera:", days_in_month(2000,2))
