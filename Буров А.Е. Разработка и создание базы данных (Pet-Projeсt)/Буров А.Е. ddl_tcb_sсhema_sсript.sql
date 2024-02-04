CREATE schema tcb;

SET search_path TO tcb;


---------------------------------------------------------------------------- Раздел 1 (Таблица users)
CREATE TABLE users -- пользователи
(
	id serial NOT NULL PRIMARY KEY,
	user_mail Varchar (320)	NOT NULL ,	
	premium_status Boolean	NOT NULL,		
	reg_date timestamp NOT NULL default current_timestamp,		
	short_name Varchar (128) NULL,		
	failure_count int NOT NULL default 0,		
	failure_date timestamp NULL,	
	Pass_change timestamp NULL,		
	Pass_change_link timestamp NULL,		
	Pass_link_id Text NULL
);

COMMENT ON TABLE  users 			IS 'Список зарегистрированных пользователей';
COMMENT ON COLUMN users.id 			IS 'Первичный ключ, уникальный идентификатор пользователя (только для данного прототипа базы данных)';
COMMENT ON COLUMN users.user_mail  	   	IS 'Email пользователя (уникальный идентификатор, первичный, натуральный ключ для финальной версии базы данных)';
COMMENT ON COLUMN users.premium_status  	IS 'Cтатус пользователя, премиум статус - True, базовый статус - False';
COMMENT ON COLUMN users.reg_date  	   	IS 'Дата регистрации пользователя';
COMMENT ON COLUMN users.short_name     		IS 'Короткое имя пользователя в профиле';
COMMENT ON COLUMN users.failure_count   	IS 'Счетчик ошибок входа пользователя в систему';
COMMENT ON COLUMN users.failure_date    	IS 'Дата ошибки входа пользователя в систему';
COMMENT ON COLUMN users.pass_change     	IS 'Дата изменения пароля пользователя';
COMMENT ON COLUMN users.pass_change_link	IS 'Дата отправки пользователю ссылки на смену пароля';
COMMENT ON COLUMN users.pass_link_id     	IS 'Уникальный идентификатор ссылки на смену пароля';

CREATE INDEX users_user_mail_idx ON tcb.users USING btree (user_mail);
CREATE INDEX users_reg_date_idx ON tcb.users USING btree (reg_date);
CREATE INDEX users_failure_date_idx ON tcb.users USING btree (failure_date);
CREATE INDEX users_pass_change_idx ON tcb.users USING btree (pass_change);
CREATE INDEX users_pass_change_link_idx ON tcb.users USING btree (pass_change_link);

--drop table users

--select * FROM users 						--тестовая выборка из таблицы users (Исправно)

/*
INSERT into users						--тестовое добавление строки (Исправно)
	(user_mail, premium_status, reg_date)   
values 
	('bibop182@yandex.ru', false, current_timestamp);
Commit;
*/

/*
INSERT into users						--тестовое добавление строки (Исправно)
	(user_mail, premium_status, reg_date)
values 
	('wolen003@mail.ru', false, current_timestamp);
Commit;
*/

/*
INSERT into users						--тестовое добавление строки (Исправно)
	(user_mail, premium_status, reg_date)   
values 
	('wolen001@mail.ru', false, current_timestamp);
Commit;
*/


---------------------------------------------------------------------------- Раздел 2 (Таблица course)
 CREATE TABLE course -- таблица курса
(
	course_id serial NOT NULL PRIMARY KEY,	
	course_name text NOT NULL
);

COMMENT ON TABLE course			IS 'Список курсов';
COMMENT ON COLUMN course.course_id   	IS 'Первичный ключ, уникальный идентификатор курса';
COMMENT ON COLUMN course.course_name  	IS 'Название курса';

--drop table course

--SELECT * FROM course 			-- тестовая выборка из таблицы курсов (Исправно)

/*
INSERT INTO course (course_name) 	-- тестовое добавление строки (Исправно)
VALUES ('SQL_course');
COMMIT;
*/
---------------------------------------------------------------------------- Раздел 3 (Таблица certificate)
CREATE TABLE certificate --таблица сертификатов
(
	certificate_id	bigserial NOT NULL PRIMARY KEY,	
	course_id int NOT NULL,	
	certification_date timestamp NOT NULL default current_timestamp,		
	user_id	Int NOT NULL,	
	certificate_number serial NOT NULL,
	FOREIGN KEY(course_id) REFERENCES course(course_id),
	FOREIGN KEY(user_id) REFERENCES users(id)
);

COMMENT ON TABLE  certificate				IS 'Таблица сертификатов о прохождении курсов';
COMMENT ON COLUMN certificate.certificate_id		IS 'Первичный ключ, уникальный идентификатор сертификата';
COMMENT ON COLUMN certificate.course_id			IS 'Внешний ключ к таблице курса (tcb.course)';
COMMENT ON COLUMN certificate.certification_date 	IS 'Дата получения сертификата о прохождении курса';
COMMENT ON COLUMN certificate.user_id			IS 'Внешний ключ к таблице зарегистрированных пользователей (tcb.users)';
COMMENT ON COLUMN certificate.certificate_number	IS 'Уникальный номер сертификата';

CREATE INDEX certificate_certification_date_idx ON tcb.certificate USING btree (certification_date);



--drop table certificate

--SELECT * FROM certificate 						-- тестовая выборка из таблицы сертификатов

/*
INSERT INTO certificate (course_id, user_id)				-- тестовое добавление строки (Исправно)
VALUES (1,1);
COMMIT;
*/

/*
SELECT									--тестовое соединение с таблицей users для выявление наличия сертификата (Исправно)
	users.user_mail  
FROM certificate
	LEFT JOIN users ON users.id = certificate.user_id		
	WHERE certificate.certificate_id IS NOT NULL
*/
/*
SELECT									--тестовое соединение с таблицей users для выявление отсутствия сертификата (Исправно)
	users.user_mail
FROM users
	LEFT JOIN certificate ON certificate.user_id  = users.id  
	WHERE certificate.certificate_id IS NULL
*/	

---------------------------------------------------------------------------- Раздел 4 (Таблица scheme)
CREATE TABLE scheme -- таблица схемы задачи
(
	scheme_id serial NOT NULL PRIMARY KEY,	
	scheme_script text NOT NULL		
);

COMMENT ON TABLE  scheme  		 IS 'Таблица скриптов для схем задач курса';
COMMENT ON COLUMN scheme.scheme_id  	 IS 'Первичный ключ, уникальный идентификатор схемы задачи';
COMMENT ON COLUMN scheme.scheme_script 	 IS 'Тело скрипта схемы задачи';

--drop table sheme

--SELECT * FROM scheme 				-- тестовая выборка из таблицы sheme (Исправно)

/*
INSERT INTO scheme (scheme_script)		--тестовое добавление строки (Исправно)
VALUES ('test_text_for_the_shema_skript'); 	
*/

---------------------------------------------------------------------------- Раздел 5 (Таблица tasks)
CREATE TABLE tasks -- таблица задач курса
(
	task_id	serial NOT NULL	PRIMARY KEY,	
	task_text text	NOT NULL,		
	task_script text NOT NULL,		
	solution text NOT NULL,		
	scheme_id int NULL,
	FOREIGN KEY(scheme_id) REFERENCES scheme(scheme_id)	
);

COMMENT ON TABLE  tasks			IS 'Таблица задач курса';
COMMENT ON COLUMN tasks.task_id		IS 'Первичный ключ, уникальный идентификатор задачи';
COMMENT ON COLUMN tasks.task_text	IS 'Текст задачи, описание условий для решения';
COMMENT ON COLUMN tasks.task_script  	IS 'Тело скрипта задачи';
COMMENT ON COLUMN tasks.solution	IS 'Текст правильного решения задачи для пользоватетелей с премиум-статусом';
COMMENT ON COLUMN tasks.scheme_id	IS 'Внешний ключ к таблице схемы задачи (tcb.sheme)';


--drop table tasks

--SELECT * FROM tasks								--тестовая выборка из таблицы tasks (Исправно)

/*
INSERT INTO tasks								-- тестовое добавление строки (Исправно)
	(task_text, task_script, solution, scheme_id)
VALUES 
	('first_task_text', 'test_task_skript_text', 'test_solution_text',1); 
*/

/*
SELECT										--тестовое соединение с таблицей sсheme (Исправно)
	s.scheme_script
FROM tasks 
	LEFT JOIN scheme s ON s.scheme_id = tasks.scheme_id  				
	Where tasks.task_id = 2
*/

---------------------------------------------------------------------------- Раздел 6 (Таблица lesson)
CREATE TABLE lesson --таблица урока
(
	lesson_id serial NOT NULL PRIMARY KEY,	
	course_id int NOT NULL,
	task_id	 int NULL,
	lesson_order int NOT NULL,
	lesson_name text NOT NULL,		
	theory_text text NULL,
	FOREIGN KEY (course_id) REFERENCES course(course_id),
	FOREIGN KEY (task_id) REFERENCES tasks(task_id)
);

COMMENT ON TABLE  lesson			IS 'Таблица уроков курса';
COMMENT ON COLUMN lesson.lesson_id 	 	IS 'Первичный ключ, уникальный идентификатор урока';
COMMENT ON COLUMN lesson.course_id 	 	IS 'Внешний ключ к таблице курса (tcb.cource)';
COMMENT ON COLUMN lesson.task_id  	 	IS 'Внешний ключ к таблице задачи (tcb.tasks)';
COMMENT ON COLUMN lesson.lesson_order		IS 'Порядковый номер урока';
COMMENT ON COLUMN lesson.lesson_name  		IS 'Название урока';
COMMENT ON COLUMN lesson.theory_text    	IS 'Текс содержания урока, методология, учебные материалы';

CREATE INDEX lesson_lesson_name_idx ON tcb.lesson USING btree (lesson_name);

--drop table lesson

--SELECT * FROM lesson 						--тестовая выборка из таблицы lesson (Исправно)

/*
INSERT INTO lesson						-- тестовое добавление строки (Исправно)
(course_id, task_id, lesson_order, lesson_name, theory_text)
VALUES
(1,2,1,'Введение в курс SQL', 'test_teory_text_lesson_1');
*/

/*
SELECT                                                 		--тестовое соединение с таблицей course и tasks (Исправно)
	c.course_name,
	l.lesson_name,
	t.task_text	
FROM lesson l
	LEFT JOIN tasks t ON t.task_id = l.task_id
	LEFT JOIN course c ON c.course_id = l.course_id
	WHERE l.lesson_id = 1;
*/

---------------------------------------------------------------------------- Раздел 7 (Таблица course_res)
CREATE TABLE course_res -- таблица пройденного курса
(
	course_res_id bigserial	NOT NULL PRIMARY KEY,	
	course_id int NOT NULL,
	user_id int NOT NULL,	
	reached	timestamp NOT NULL default current_timestamp,
	FOREIGN KEY(course_id) REFERENCES course(course_id),
	FOREIGN KEY(user_id) REFERENCES users(id)
);

COMMENT ON TABLE  course_res  		 	IS 'Таблица учета полного прохождения пользоватетем курса (Отметка о прохождении курса)';
COMMENT ON COLUMN course_res.course_res_id 	IS 'Первичный ключ, уникальный идентификатор пройденого пользователем курса';
COMMENT ON TABLE  course_res.course_id  	IS 'Внешний ключ к таблице курсов (tcb.course)';
COMMENT ON COLUMN course_res.user_id 	 	IS 'Внешний ключ к таблице зарегистрированных пользователей (tcb.users)';
COMMENT ON COLUMN course_res.reached 	 	IS 'Дата полного прохождения курса пользователем';


CREATE INDEX course_res_course_id_idx ON tcb.course_res USING btree (course_id);
CREATE INDEX course_res_user_id_idx ON tcb.course_res USING btree (user_id);
CREATE INDEX course_res_reached_idx ON tcb.course_res USING btree (reached);

--drop table course_res

--SELECT * FROM course_res 		--тестовая выборка из таблицы course_res (Исправно)

/*
INSERT INTO course_res 			-- тестовое добавление строки (Исправно)
(course_id, user_id)
VALUES
(1,1);
*/

/*
SELECT 					--тестовое соединение с таблицей course и certificate (Исправно)
	c.certificate_id,
	c2.course_name,
	u.short_name
FROM certificate c  
	LEFT JOIN users u ON u.id = c.user_id 
	LEFT JOIN course c2 ON c2.course_id = c.course_id 
	WHERE c.certificate_id IS NOT NULL AND c2.course_id IS NOT NULL
*/

---------------------------------------------------------------------------- Раздел 8 (Таблица lesson_res)
CREATE TABLE lesson_res --таблица пройденного урока
(
	lesson_res_id bigserial	NOT NULL PRIMARY KEY,	
	lesson_id int NOT NULL,		
	user_id int NOT NULL,	
	reached timestamp NOT NULL default current_timestamp,	
	FOREIGN KEY(lesson_id) REFERENCES lesson(lesson_id),
	FOREIGN KEY(user_id) REFERENCES users(id)
);

COMMENT ON TABLE  lesson_res  		 	IS 'Таблица учета полного прохождения урока пользоватетем (Отметка о прохождении урока)';
COMMENT ON COLUMN lesson_res.lesson_res_id 	IS 'Первичный ключ, уникальный идентификатор пройденного пользователем урока';
COMMENT ON COLUMN lesson_res.lesson_id 		IS 'Внешнйи ключ к таблице уроков (tcb.lesson)';
COMMENT ON COLUMN lesson_res.user_id 		IS 'Внешний ключ к таблице зарегистрированных пользователей (tcb.users)';
COMMENT ON COLUMN lesson_res.reached  		IS 'Дата полного прохождения урока пользователем';

CREATE INDEX lesson_res_lesson_id_idx ON tcb.lesson_res USING btree (lesson_id);
CREATE INDEX lesson_res_user_id_idx ON tcb.lesson_res USING btree (user_id);
CREATE INDEX lesson_res_reached_idx ON tcb.lesson_res USING btree (reached);

--drop table lesson_res

--SELECT * FROM lesson_res 					--тестовая выборка из таблицы lesson_res (Исправно)

/*
INSERT INTO lesson_res (lesson_id, user_id) 			-- тестовое добавление строки (Исправно)
VALUES
(1,1);
*/
/*
SELECT								--тестовое соединение с таблицей users и lesson (Исправно)
	u.user_mail, 
	l.lesson_name, 
	lr.reached 
FROM lesson_res lr 
	LEFT JOIN users u ON u.id = lr.user_id 
	LEFT JOIN lesson l ON l.lesson_id = lr.lesson_id 
	WHERE u.id = 1;
*/

---------------------------------------------------------------------------- Раздел 9(Таблица task_res)
CREATE TABLE task_res -- таблица решенной задачи
(
	task_res_id bigserial NOT NULL PRIMARY KEY,	
	task_id int NOT NULL, 	
	user_id int NOT NULL,		
	reached timestamp NOT NULL default current_timestamp,
	FOREIGN KEY(user_id) REFERENCES users(id),
	FOREIGN KEY(task_id) REFERENCES tasks(task_id)
);

COMMENT ON TABLE  task_res  		 	IS 'Таблица учета решенных пользователем задач (Отметка о решении задачи)';
COMMENT ON COLUMN task_res.task_res_id  	IS 'Первичный ключ, уникальный идентификатор решенной пользователем задачи';
COMMENT ON COLUMN task_res.task_id  		IS 'Внешнйи ключ к таблице задач (tcb.tasks)';
COMMENT ON COLUMN task_res.user_id  		IS 'Внешний ключ к таблице зарегистрированных пользователей (tcb.users)';
COMMENT ON COLUMN task_res.reached  		IS 'Дата решения пользователем задачи';

CREATE INDEX task_res_task_id_idx ON tcb.task_res USING btree (task_id);
CREATE INDEX task_res_user_id_idx ON tcb.task_res USING btree (user_id);
CREATE INDEX task_res_reached_idx ON tcb.task_res USING btree (reached);

COMMIT;

--drop table task_res

--SELECT * FROM task_res				--тестовая выборка из таблицы task_res (Исправно)

/*
INSERT INTO task_res					-- тестовое добавление строки (Исправно)
 (task_id, user_id)
VALUES 
(2,1);
*/
/*
SELECT u.short_name, t.task_text   FROM task_res tr	--тестовое соединение с таблицей users и tasks (Исправно)
	LEFT JOIN users u ON u.id = tr.user_id
	LEFT JOIN tasks t ON t.task_id = tr.task_id 
	WHERE u.id =1;
*/

