-- Create column table
CREATE TABLE IF NOT EXISTS columns (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL
);

-- Create cards table
CREATE TABLE IF NOT EXISTS cards (
    id INTEGER PRIMARY KEY NOT NULL,
    title TEXT NOT NULL,
    description TEXT
);

-- Create columns_cards table
CREATE TABLE IF NOT EXISTS columns_cards (
    column_id INTEGER NOT NULL,
    card_id INTEGER NOT NULL,
    card_position INTEGER NOT NULL,
    PRIMARY KEY (column_id, card_id),
    FOREIGN KEY (column_id) REFERENCES columns (id) ON DELETE CASCADE,
    FOREIGN KEY (card_id) REFERENCES cards (id) ON DELETE CASCADE
);

-- Insert sample data to columns table
INSERT INTO columns (id, title) VALUES (0, 'Backlog');
INSERT INTO columns (id, title) VALUES (1, 'InProgress');
INSERT INTO columns (id, title) VALUES (2, 'InReview');
INSERT INTO columns (id, title) VALUES (3, 'Done');

-- Insert sample data to cards table
INSERT INTO cards (id, title) VALUES (0, 'SetUp develop environment');
INSERT INTO cards (id, title) VALUES (1, 'Initialize');
INSERT INTO cards (id, title, description) VALUES (2, 'Add kanban board', 'use react-kanban');
INSERT INTO cards (id, title) VALUES (3, 'Connect kanban board to core process');
INSERT INTO cards (id, title, description) VALUES (4, 'Insert board data to DB', 'use sqlx');
INSERT INTO cards (id, title) VALUES (5, 'Build App installer');

-- Insert sample data to columns_cards table
INSERT INTO columns_cards (column_id, card_id, card_position) VALUES (3, 0, 0);
INSERT INTO columns_cards (column_id, card_id, card_position) VALUES (3, 1, 1);
INSERT INTO columns_cards (column_id, card_id, card_position) VALUES (1, 2, 0);
INSERT INTO columns_cards (column_id, card_id, card_position) VALUES (0, 3, 0);
INSERT INTO columns_cards (column_id, card_id, card_position) VALUES (0, 4, 1);
INSERT INTO columns_cards (column_id, card_id, card_position) VALUES (2, 5, 0);
