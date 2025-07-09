--Q1
CREATE TABLE departments (
    department_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (department_id)
);

--Q2
ALTER TABLE people ADD COLUMN department_id INT UNSIGNED;

--Q3
INSERT INTO departments(name)
VALUES
('営業'),
('開発'),
('経理'),
('人事'),
('情報システム');

--下記をやる前にdepartment_idがいくつになっているか確認する
INSERT INTO people(name, email, age, gender,department_id)
VALUES
('佐々木あや', 'sasaki@beyond-works.co.jp', 28, 2, 1),
('石川だいすけ', 'ishikawa@beyond-works.co.jp', 32, 1, 1),
('西谷はるか', 'nisiya@beyond-works.co.jp', 23, 2, 1),
('佐藤こうすけ', 'satou@beyond-works.co.jp', 46, 1, 2),
('木村れいな', 'kimura@beyond-works.co.jp', 35, 2, 2),
('南なおき', 'minami@beyond-works.co.jp', 27, 1, 2),
('北かな', 'kita@beyond-works.co.jp', 30, 2, 2),
('東ゆうと', 'higashi@beyond-works.co.jp', 52, 1, 3),
('村田さな', 'murata@beyond-works.co.jp', 37, 2, 4),
('中田かずや', 'nakata@beyond-works.co.jp', 24, 1, 5);

--person_idを確認してからコマンドプロンプトに入力
INSERT INTO reports(person_id, content)
VALUES
(43,'あああああああああああああああ'),
(44,'おはようございますこんにちは'),
(45,'いいいいいいいいいいいいいいい'),
(46,'今日は調子がいいのでやる気があった'),
(47,'ううううううううううううううう'),
(48,'ライブに早くいくために仕事を終わらせた'),
(49,'えええええええええええええええ'),
(50,'明日は目標を達成できるようにする'),
(51,'おおおおおおおおおおおおおおお'),
(52,'こんばんはありがとうございました');
