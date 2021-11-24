CREATE TABLE IF NOT EXISTS breweries(
    id TEXT NOT NULL,
    name TEXT NOT NULL,    
    description TEXT NOT NULL,    
    country TEXT,

    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS beers(
    brewery_id TEXT NOT NULL,
    name TEXT NOT NULL UNIQUE,    
    type TEXT NOT NULL,    
    abv REAL,
    imageInternalId TEXT,
    imageExternalUrl TEXT,

    PRIMARY KEY (name),
    FOREIGN KEY (brewery_id) REFERENCES breweries(id)
);

INSERT INTO breweries (id, name, description, country) VALUES 
('espiga', 'Espiga', 'The passion to create a different, natural, and local beer. And the vocation of two biologists to give life to a beer with personality and a special character. A unique high-quality beer. Crafted in the heart of Penedès. A beer to enjoy, not only of the beer itself, but also of all the process: from the first idea, the first tests, the whole elaboration… To finally drinking it in company.', 'Spain'),
('to-ol', 'To Øl', 'Starting out as a home brewing project back in 2005, To Øl was permanently established in 2010 working as a gypsy brewery lending in on other breweries spare capacity for the following decade. In 2019 we took over a former food factory in the Western part of Zealand, Denmark, where we’re setting up a full-blown specially designed brewery and craft beverage hub. To Øl City is the name of the place.', 'Denmark'),
('effet-papillon', 'Effet Papillon', '', 'France'),
('piggy-brewing', 'Piggy Brewing', '', 'France'),
('la-superbe', 'La Superbe', '', 'France'),
('le-detour', 'Le Détour !', '', 'France');


INSERT INTO beers (brewery_id, name, TYPE, abv, imageInternalId, imageExternalUrl) VALUES 
('espiga', 'Hyperactive', 'DDH IPA', 7.5, '', 'https://www.beergium.com/9512-big_default_2x/espiga-hyperactive-tdh-ipa-cans-44cl.jpg'),
('espiga', 'Citrus Base', 'DDH IPA', 5.5, '', 'https://www.espiga.cat/wp-content/uploads/2021/06/WEB-700x700_Citrus-Base-44cl.png'),
('espiga', 'Dark Way', 'DDH IPA', 7.5, '', 'https://www.espiga.cat/wp-content/uploads/2020/09/CERVESA-ESPIGA-DARK-WAY-CERVESA-ARTESANA-IMPERIAL-STOUT.png'),
('espiga', 'Garage', 'IPA', 5.5, '', 'https://static.unepetitemousse.fr/produits/bieres/espiga/garage-ipa.jpg'),
('to-ol', 'City', 'Session IPA', 4.5, '', 'https://www.dunells.com/media/xafpyetq/0018735_0.jpeg?mode=pad&width=800&height=800&saturation=0&bgcolor=ffffff'),
('to-ol', 'When life gives you Mango', 'Milkshake IPA', 4.5, '', 'https://img.saveur-biere.com/img/p/36220-55345.jpg'),
('piggy-brewing', 'Eroica', 'DDH IPA', 6.1, '', 'https://media.cdnws.com/_i/214303/1558/1356/58/the-piggy-brewing-company-eroica-44cl.png');

