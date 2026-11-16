-- clear old data so i can rerun this, also resets ids back to 1
TRUNCATE books, authors, genres RESTART IDENTITY CASCADE;

-- genres (ids 1-7)
INSERT INTO genres (name) VALUES
  ('Fantasy'),                 -- 1
  ('Dark Fantasy'),            -- 2
  ('Manga'),                   -- 3
  ('Science Fiction'),         -- 4
  ('Dystopian'),               -- 5
  ('Cybersecurity True Story'),-- 6
  ('Textbook');                -- 7

-- authors (ids 1-12)
INSERT INTO authors (name, bio) VALUES
  ('Brandon Sanderson', 'American fantasy author known for his detailed magic systems and the connected universe called the Cosmere.'), -- 1
  ('Stephen King', 'American author of horror, suspense and fantasy. The Dark Tower ties a lot of his other books together.'), -- 2
  ('Kentaro Miura', 'Japanese manga artist who created Berserk and worked on it from 1989 until he passed away in 2021.'), -- 3
  ('Andy Weir', 'American novelist and former software engineer who writes science heavy sci-fi.'), -- 4
  ('Suzanne Collins', 'American author and former television writer who created The Hunger Games series.'), -- 5
  ('Frank Herbert', 'American science fiction author and former journalist best known for the Dune series.'), -- 6
  ('Clifford Stoll', 'American astronomer who tracked down a hacker while working as a systems manager at Lawrence Berkeley Lab.'), -- 7
  ('Kevin Mitnick', 'Once the most wanted hacker in the US, later became a security consultant. Passed away in 2023.'), -- 8
  ('Kim Zetter', 'American journalist who covered cybersecurity and national security for Wired for years.'), -- 9
  ('Andy Greenberg', 'American journalist and senior writer at Wired who covers hacking and cybersecurity.'), -- 10
  ('Darril Gibson', 'Navy veteran turned IT author, wrote the Get Certified Get Ahead Security+ guides (latest one with Joe Shelley).'), -- 11
  ('Jonathan S. Weissman', 'Cybersecurity and networking professor and author, wrote the newest Mike Meyers Network+ guide.'); -- 12

-- books (40 total), author_id and genre_id match the ids above
-- if i only knew the month and year i used the 1st of the month
INSERT INTO books (title, author_id, genre_id, description, publish_date) VALUES
  -- stormlight archive (sanderson)
  ('The Way of Kings', 1, 1, 'Book 1 of the Stormlight Archive. An epic fantasy on a world hit by giant storms, following a soldier, a scholar and a highprince.', '2010-08-31'),
  ('Words of Radiance', 1, 1, 'Book 2 of the Stormlight Archive.', '2014-03-04'),
  ('Oathbringer', 1, 1, 'Book 3 of the Stormlight Archive.', '2017-11-14'),
  ('Rhythm of War', 1, 1, 'Book 4 of the Stormlight Archive.', '2020-11-17'),
  ('Wind and Truth', 1, 1, 'Book 5 of the Stormlight Archive.', '2024-12-06'),

  -- mistborn (sanderson)
  ('Mistborn: The Final Empire', 1, 1, 'Mistborn book 1. A street thief joins a crew planning a heist against an immortal ruler, in a world with metal based magic.', '2006-07-17'),
  ('The Well of Ascension', 1, 1, 'Mistborn book 2, sequel to The Final Empire.', '2007-08-21'),
  ('The Hero of Ages', 1, 1, 'Mistborn book 3, the end of the first trilogy.', '2008-10-14'),
  ('The Alloy of Law', 1, 1, 'Mistborn era 2 book 1. Set centuries later in a world with trains and guns, following a lawman named Wax.', '2011-11-08'),
  ('Shadows of Self', 1, 1, 'Mistborn era 2 book 2.', '2015-10-06'),
  ('The Bands of Mourning', 1, 1, 'Mistborn era 2 book 3.', '2016-01-26'),
  ('The Lost Metal', 1, 1, 'Mistborn era 2 book 4.', '2022-11-15'),

  -- dark tower (king)
  ('The Gunslinger', 2, 2, 'Dark Tower book 1. Roland the last gunslinger chases the man in black across the desert.', '1982-06-10'),
  ('The Drawing of the Three', 2, 2, 'Dark Tower book 2.', '1987-05-01'),
  ('The Waste Lands', 2, 2, 'Dark Tower book 3.', '1991-08-01'),
  ('Wizard and Glass', 2, 2, 'Dark Tower book 4.', '1997-11-04'),
  ('Wolves of the Calla', 2, 2, 'Dark Tower book 5.', '2003-11-04'),
  ('Song of Susannah', 2, 2, 'Dark Tower book 6.', '2004-06-08'),
  ('The Dark Tower', 2, 2, 'Dark Tower book 7.', '2004-09-21'),
  ('The Wind Through the Keyhole', 2, 2, 'Dark Tower book 4.5, a side story that fits between books 4 and 5.', '2012-04-24'),

  -- berserk deluxe editions (miura), each one has 3 of the original volumes
  ('Berserk Deluxe Edition Volume 1', 3, 3, 'Collects Berserk volumes 1-3. Dark fantasy about a lone swordsman named Guts.', '2019-02-27'),
  ('Berserk Deluxe Edition Volume 2', 3, 3, 'Collects Berserk volumes 4-6.', '2019-07-09'),
  ('Berserk Deluxe Edition Volume 3', 3, 3, 'Collects Berserk volumes 7-9.', '2019-10-23'),
  ('Berserk Deluxe Edition Volume 4', 3, 3, 'Collects Berserk volumes 10-12.', '2020-03-10'),

  -- andy weir
  ('The Martian', 4, 4, 'An astronaut gets stranded alone on Mars and has to figure out how to survive.', '2014-02-11'),
  ('Artemis', 4, 4, 'A smuggler living in the first city on the moon takes on a risky job.', '2017-11-14'),
  ('Project Hail Mary', 4, 4, 'A teacher wakes up alone on a spaceship with no memory of how he got there.', '2021-05-04'),

  -- hunger games (collins)
  ('The Hunger Games', 5, 5, 'Hunger Games book 1. Katniss volunteers for a televised fight to the death.', '2008-09-14'),
  ('Catching Fire', 5, 5, 'Hunger Games book 2.', '2009-09-01'),
  ('Mockingjay', 5, 5, 'Hunger Games book 3.', '2010-08-24'),
  ('The Ballad of Songbirds and Snakes', 5, 5, 'Hunger Games prequel set during the 10th Hunger Games.', '2020-05-19'),
  ('Sunrise on the Reaping', 5, 5, 'Hunger Games prequel set during the 50th Hunger Games.', '2025-03-18'),

  -- dune (herbert)
  ('Dune', 6, 4, 'Dune book 1. A noble family takes control of the desert planet Arrakis, the only source of the spice.', '1965-08-01'),
  ('Dune Messiah', 6, 4, 'Dune book 2.', '1969-10-01'),

  -- cyber security true stories
  ('The Cuckoo''s Egg', 7, 6, 'A 75 cent accounting error leads an astronomer to start tracking a hacker on his network.', '1989-09-26'),
  ('Ghost in the Wires', 8, 6, 'Kevin Mitnick tells his own story of hacking into big companies and running from the FBI.', '2011-08-15'),
  ('Countdown to Zero Day', 9, 6, 'The story of Stuxnet, the first digital weapon, and how researchers figured out what it was doing.', '2014-11-11'),
  ('Sandworm', 10, 6, 'The hunt for the Russian hacker group behind some of the most destructive cyberattacks ever.', '2019-11-05'),

  -- comptia textbooks
  ('CompTIA Security+ Get Certified Get Ahead: SY0-701 Study Guide', 11, 7, 'Study guide covering all the SY0-701 Security+ objectives with practice questions and a practice exam.', '2023-11-07'),
  ('CompTIA Network+ Certification All-in-One Exam Guide, Ninth Edition (Exam N10-009)', 12, 7, 'Mike Meyers All-in-One guide for the N10-009 Network+ exam with practice questions and labs.', '2026-03-10');

-- placeholder covers using the title for now, can swap for real covers later
UPDATE books SET cover_url = 'https://placehold.co/200x300?text=' || REPLACE(title, ' ', '+');
