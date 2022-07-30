#Использовать "../core"
#Использовать "."
#Использовать cli

Процедура ВыполнитьПриложение()

	Приложение = Новый КонсольноеПриложение("cdek",
		НСтр("ru='Вспомогательная утилита ЛК СДЭК'"));
	Приложение.Версия("v version", КонстантыCdek.ВерсияПродукта);

	Приложение.ДобавитьКоманду("pg points-get",
		НСтр("ru='Получить список офисов'"),
		Новый КомандаPointsGet);

	Приложение.ДобавитьКоманду("ctg cities-get",
		НСтр("ru='Получить список офисов'"),
		Новый КомандаCitiesGet);

	Приложение.ДобавитьКоманду("og order-get",
		НСтр("ru='Получить данные заказа'"),
		Новый КомандаOrderGet);

	Приложение.ДобавитьКоманду("cg check-get",
		НСтр("ru='Получить данные чека по заказу'"),
		Новый КомандаCheckGet);
   
	Приложение.ДобавитьКоманду("pb print-barcodes",
		НСтр("ru='Получить этикетки'"),
		Новый КомандаPrintBarcodesPost);
   
	Приложение.Запустить(АргументыКоманднойСтроки);

КонецПроцедуры

Попытка

	ВыполнитьПриложение();
	ЗавершитьРаботу(0);

Исключение

	Сообщить(ОписаниеОшибки());
	ЗавершитьРаботу(1);

КонецПопытки;