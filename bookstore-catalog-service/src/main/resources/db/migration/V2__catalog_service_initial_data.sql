
-- add data into PRODUCT category table.
insert into PRODUCT_CATEGORY (product_category_id, created_at, updated_at, description, product_category_name) values
 ('1', now(), now(), 'These books belong to Literature category', 'Literature'),
 ('2', now(), now(), 'These books belong to Fiction category', 'Fiction'),
 ('3', now(), now(), 'These books belong to Technology category', 'Technology'),
 ('4', now(), now(), 'These books belong to Programming category', 'Programming'),
 ('5', now(), now(), 'These books belong to Business category', 'Business'),
 ('6', now(), now(), 'These books belong to Science category', 'Science'),
 ('7', now(), now(), 'These books belong to Politics category', 'Politics'),
 ('8', now(), now(), 'These books belong to Productivity category', 'Productivity');

-- add data into products table
insert into PRODUCT (product_id, created_at, updated_at, available_item_count, product_description, price, product_name, product_category_id, product_image_id) values
('1', now(), now(), 345, 'Modern Indian Literature: Poems and Short Stories', 85, 'Modern Indian Literature: Poems and Short Stories', '1', 'c16108e1-8276-41ad-bf12-4aee4c0a7e65__IndModernLiterature.jpg'),
('2', now(), now(), 987, 'The Complete Novels of Sherlock Holmes', 140, 'The Complete Novels of Sherlock Holmes', '1', '2b3ba80b-da93-4206-b50f-83008180a09e__sheHolmes.jpg'),
('3', now(), now(), 872, 'Pride & Prejudice', 399, 'Pride & Prejudice', '1', '0547ab94-59f8-4352-b17b-0918d07913f2__pricePredudice.jpg'),
('4', now(), now(), 678, 'An Introduction to the Study of English Literature', 299, 'An Introduction to the Study of English Literature', '1', '4b050ba6-9573-4554-bdd4-26ae806c06aa__IntroEngLit.jpg'),
('5', now(), now(), 3545, 'The Great Gatsby', 500, 'The Great Gatsby', '1', '8e6abb0e-180b-4e8e-856a-cb8491ff9454__greatGatsby.jpg'),

('6', now(), now(), 2432, 'One Arranged Murder', 185, 'One Arranged Murder', '2', 'b1175b20-e946-42a6-b63d-83e35b7a73fa__oneArrangedMurder.jpg'),
('7', now(), now(), 234, 'The Alchemist', 440, 'The Alchemist', '2', '1ecfd5c4-dba2-4feb-bd88-006105a8d5ab__alchemist.jpg'),
('8', now(), now(), 453, 'A Thousand Splendid Suns', 99, 'A Thousand Splendid Suns', '1', 'e6602eb6-3f67-4993-abc8-0b54a36bad1b__thousandSplendidSuns.jpg'),
('9', now(), now(), 768, 'The Belated Bachelor Party', 299, 'The Belated Bachelor Party', '2', '49935a41-7274-4b7f-9333-c3e85d59df18__belatedBacghelorparty.jpg'),
('10', now(), now(), 67, 'The Time Machine', 500, 'The Time Machine', '2', '27ba1db0-a5a3-477c-927c-7ceb36cf7ffa__theTimeMachine.jpg'),

('11', now(), now(), 567, 'Programming with Java | 6th Edition', 585, 'Programming with Java | 6th Edition', '4', 'ad5b1926-05ad-4aae-852d-f152ea838648__programmingInJava.jpg'),
('12', now(), now(), 435, 'Core Python Programming', 232, 'Core Python Programming', '4', 'af75f363-fdb9-4d8e-8066-6215f0520e9b__corePythonProg.jpg'),
('13', now(), now(), 78, 'Object-Oriented Programming with C++', 433, 'Object-Oriented Programming with C++', '4', '25550dae-a893-4aa5-8b8f-967a91548fa5__oopWithCpp.jpg'),
('14', now(), now(), 45, 'Linux: The Textbook, Second Edition', 122, 'Linux: The Textbook, Second Edition', '4', '6a290abe-338f-4ece-8793-ccdd35a7745f__linux.jpg'),
('15', now(), now(), 456, 'Programming in C', 233, 'Programming in C', '4', 'cad39d84-60aa-496d-9295-c3f47ec957fa__programmingInC.jpg'),

('16', now(), now(), 232, 'The Business Book: Big Ideas Simply Explained', 654, 'The Business Book: Big Ideas Simply Explained', '5', 'e9b319cc-e501-4f90-b608-74052d770e2d__theBusinessBook.jpg'),
('17', now(), now(), 434, 'Business Adventures', 343, 'Business Adventures', '5', '2603aa1d-3892-44cc-9481-fd485d80d270__businessAdventures.jpg'),
('18', now(), now(), 872, 'Encyclopedia: Space', 399, 'Encyclopedia: Space', '6', 'b9685c28-7f97-4fb7-9cf0-927ff3afc8f1__spaceEncyclo.jpg'),
('19', now(), now(), 678, 'The Theory of Everything', 299, 'The Theory of Everything', '6', '7d8b74e5-4321-4b49-9b2a-da4bf779d5be__theTheoryOfEverything.jpg'),
('20', now(), now(), 3545, 'The Science Book', 500, 'The Science Book', '6', '622a7214-02cc-4f54-85fd-86fd8f3b6967__theScienceBook.jpg'),

('21', now(), now(), 345, 'The Great Indian Conspiracy', 85, 'The Great Indian Conspiracy', '7', '3b315751-c5bd-4e73-aad2-df941826f453__The Great Indian Conspiracy.jpg'),
('22', now(), now(), 987, 'Politics for Beginners', 140, 'Politics for Beginners', '7', '8f8a275b-357e-4010-84dc-8d89bb5e2b95__Politics for Beginners.jpg'),
('23', now(), now(), 872, 'Chandra Shekhar: The Last Icon of Ideological Politics', 399, 'Chandra Shekhar: The Last Icon of Ideological Politics', '7', 'cef7540f-0810-4323-9950-98c5d8d5099d__Chandra Shekhar- The Last Icon of Ideological Politics.jpg'),
('24', now(), now(), 678, '52 Small Changes for the Mind: Improve Memory', 299, '52 Small Changes for the Mind: Improve Memory', '8', '46fb8d5b-2979-4c54-848f-512693b37818__52 Small Changes for the Mind- Improve Memory.jpg'),
('25', now(), now(), 3545, 'Productivity Superhero', 500, 'Productivity Superhero', '8', '990945b7-900e-432b-9b2c-79ea20302f6e__Productivity Superhero.jpg');

--add data to review table
insert into REVIEW (review_id, rating_value, user_id, review_message, product_id, user_name, CREATED_AT, UPDATED_AT) values
(1, 4, 1, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ab corporis et ea voluptas laboriosam nesciunt perferendis iste, architecto quae dignissimos. Tempore quod, veritatis quos consequuntur officia est dolore explicabo facilis.', '1', 'devd', now(), now()),
(2, 3, 2, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Suscipit aperiam inventore eligendi assumenda accusamus nulla quaerat nostrum vitae officia corporis iure optio esse dicta non ipsam nisi quod ex, totam qui consequuntur iusto minima molestiae eius labore. Nobis similique reiciendis expedita atque velit temporibus exercitationem, eligendi, nisi fuga minus facilis!', '1', 'devd2', now(), now()),
(3, 5, 3, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, eos?', '3', 'devd3', now(), now()),
(4, 1, 4, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, eos?Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam repellat, expedita magni commodi libero eligendi rerum omnis, laboriosam tempora dolorem nulla! Harum odio, earum, assumenda facere voluptas hic sapiente asperiores nam eveniet sequi ut. Aliquid magni in itaque temporibus voluptas quibusdam consectetur rerum harum earum adipisci? Magni, obcaecati modi? Saepe!', '4', 'devd4', now(), now()),
(5, 2, 5, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, eos?Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam repellat, expedita magni commodi lib=!', '1', 'devd5', now(), now()),
(6, 4, 6, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, eos?Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam repellat, expedita magni commodi lib=! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Totam provident illo qui asperiores nam, blanditiis ex porro ut iure, possimus eos consequuntur tempora, impedit similique atque. Aperiam veniam ipsam nemo ullam, facilis iure sapiente ipsum ab tempora! Alias, porro ullam?', '2', 'devd6', now(), now()),
(7, 3, 1, 'Lorem ipsum, dolor sit amet consectetur', '2', 'devd', now(), now()),
(8, 3, 4, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Suscipit aperiam inventore eligendi assumenda accusamus nulla quaerat nostrum vitae officia corporis iure optio esse dicta non ipsam nisi quod ex, totam qui consequuntur iusto minima molestiae eius labore. Nobis similique reiciendis expedita atque velit temporibus exercitationem, eligendi, nisi fuga minus facilis adipisicing elit. Suscipit aperiam inventore eligendi assumenda accusamus nulla quaerat nostrum vitae officia corporis iure optio esse dicta non ipsam nisi quod ex, totam qui c!', '4', 'devd2', now(), now()),

(9, 4, 1, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ab corporis et ea voluptas laboriosam nesciunt perferendis iste, architecto quae dignissimos. Tempore quod, veritatis quos consequuntur officia est dolore explicabo facilis.', '6', 'devd', now(), now()),
(10, 3, 2, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Suscipit aperiam inventore eligendi assumenda accusamus nulla quaerat nostrum vitae officia corporis iure optio esse dicta non ipsam nisi quod ex, totam qui consequuntur iusto minima molestiae eius labore. Nobis similique reiciendis expedita atque velit temporibus exercitationem, eligendi, nisi fuga minus facilis!', '7', 'devd2', now(), now()),
(11, 5, 3, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, eos?', '8', 'devd3', now(), now()),
(12, 1, 4, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, eos?Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam repellat, expedita magni commodi libero eligendi rerum omnis, laboriosam tempora dolorem nulla! Harum odio, earum, assumenda facere voluptas hic sapiente asperiores nam eveniet sequi ut. Aliquid magni in itaque temporibus voluptas quibusdam consectetur rerum harum earum adipisci? Magni, obcaecati modi? Saepe!', '9', 'devd4', now(), now()),
(13, 2, 5, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, eos?Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam repellat, expedita magni commodi lib=!', '10', 'devd5', now(), now()),
(14, 4, 6, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, eos?Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam repellat, expedita magni commodi lib=! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Totam provident illo qui asperiores nam, blanditiis ex porro ut iure, possimus eos consequuntur tempora, impedit similique atque. Aperiam veniam ipsam nemo ullam, facilis iure sapiente ipsum ab tempora! Alias, porro ullam?', '2', 'devd6', now(), now()),
(15, 3, 1, 'Lorem ipsum, dolor sit amet consectetur', '22', 'devd', now(), now()),
(16, 3, 4, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Suscipit aperiam inventore eligendi assumenda accusamus nulla quaerat nostrum vitae officia corporis iure optio esse dicta non ipsam nisi quod ex, totam qui consequuntur iusto minima molestiae eius labore. Nobis similique reiciendis expedita atque velit temporibus exercitationem, eligendi, nisi fuga minus facilis adipisicing elit. Suscipit aperiam inventore eligendi assumenda accusamus nulla quaerat nostrum vitae officia corporis iure optio esse dicta non ipsam nisi quod ex, totam qui c!', '24', 'devd2', now(), now()),


(17, 4, 1, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ab corporis et ea voluptas laboriosam nesciunt perferendis iste, architecto quae dignissimos. Tempore quod, veritatis quos consequuntur officia est dolore explicabo facilis.', '11', 'devd', now(), now()),
(18, 3, 2, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Suscipit aperiam inventore eligendi assumenda accusamus nulla quaerat nostrum vitae officia corporis iure optio esse dicta non ipsam nisi quod ex, totam qui consequuntur iusto minima molestiae eius labore. Nobis similique reiciendis expedita atque velit temporibus exercitationem, eligendi, nisi fuga minus facilis!', '13', 'devd2', now(), now()),
(19, 5, 3, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, eos?', '3', 'devd3', now(), now()),
(20, 1, 4, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, eos?Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam repellat, expedita magni commodi libero eligendi rerum omnis, laboriosam tempora dolorem nulla! Harum odio, earum, assumenda facere voluptas hic sapiente asperiores nam eveniet sequi ut. Aliquid magni in itaque temporibus voluptas quibusdam consectetur rerum harum earum adipisci? Magni, obcaecati modi? Saepe!', '20', 'devd4', now(), now()),
(21, 2, 5, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, eos?Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam repellat, expedita magni commodi lib=!', '16', 'devd5', now(), now()),
(22, 4, 6, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, eos?Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam repellat, expedita magni commodi lib=! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Totam provident illo qui asperiores nam, blanditiis ex porro ut iure, possimus eos consequuntur tempora, impedit similique atque. Aperiam veniam ipsam nemo ullam, facilis iure sapiente ipsum ab tempora! Alias, porro ullam?', '17', 'devd6', now(), now()),
(23, 3, 1, 'Lorem ipsum, dolor sit amet consectetur', '2', 'devd', now(), now()),
(24, 3, 4, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Suscipit aperiam inventore eligendi assumenda accusamus nulla quaerat nostrum vitae officia corporis iure optio esse dicta non ipsam nisi quod ex, totam qui consequuntur iusto minima molestiae eius labore. Nobis similique reiciendis expedita atque velit temporibus exercitationem, eligendi, nisi fuga minus facilis adipisicing elit. Suscipit aperiam inventore eligendi assumenda accusamus nulla quaerat nostrum vitae officia corporis iure optio esse dicta non ipsam nisi quod ex, totam qui c!', '18', 'devd2', now(), now()),

(25, 4, 1, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ab corporis et ea voluptas laboriosam nesciunt perferendis iste, architecto quae dignissimos. Tempore quod, veritatis quos consequuntur officia est dolore explicabo facilis.', '6', 'devd', now(), now()),
(26, 3, 2, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Suscipit aperiam inventore eligendi assumenda accusamus nulla quaerat nostrum vitae officia corporis iure optio esse dicta non ipsam nisi quod ex, totam qui consequuntur iusto minima molestiae eius labore. Nobis similique reiciendis expedita atque velit temporibus exercitationem, eligendi, nisi fuga minus facilis!', '19', 'devd2', now(), now()),
(27, 5, 3, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, eos?', '8', 'devd3', now(), now()),
(28, 1, 4, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, eos?Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam repellat, expedita magni commodi libero eligendi rerum omnis, laboriosam tempora dolorem nulla! Harum odio, earum, assumenda facere voluptas hic sapiente asperiores nam eveniet sequi ut. Aliquid magni in itaque temporibus voluptas quibusdam consectetur rerum harum earum adipisci? Magni, obcaecati modi? Saepe!', '9', 'devd4', now(), now()),
(29, 2, 5, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, eos?Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam repellat, expedita magni commodi lib=!', '10', 'devd5', now(), now()),
(30, 4, 6, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, eos?Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam repellat, expedita magni commodi lib=! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Totam provident illo qui asperiores nam, blanditiis ex porro ut iure, possimus eos consequuntur tempora, impedit similique atque. Aperiam veniam ipsam nemo ullam, facilis iure sapiente ipsum ab tempora! Alias, porro ullam?', '23', 'devd6', now(), now()),
(31, 3, 1, 'Lorem ipsum, dolor sit amet consectetur', '22', 'devd', now(), now()),
(32, 3, 4, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Suscipit aperiam inventore eligendi assumenda accusamus nulla quaerat nostrum vitae officia corporis iure optio esse dicta non ipsam nisi quod ex, totam qui consequuntur iusto minima molestiae eius labore. Nobis similique reiciendis expedita atque velit temporibus exercitationem, eligendi, nisi fuga minus facilis adipisicing elit. Suscipit aperiam inventore eligendi assumenda accusamus nulla quaerat nostrum vitae officia corporis iure optio esse dicta non ipsam nisi quod ex, totam qui c!', '25', 'devd2', now(), now());