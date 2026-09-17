-- Fictional content pipeline for the Clawnify demo workspace. No real site, brand or person.
-- Dates are relative to now so the calendar, schedule and rankings stay current.
INSERT INTO content_plans (id, name, keyword, audience, notes, created_at) VALUES
(1, 'Local SEO for service businesses', 'local seo for small business', 'Owners of plumbing, cleaning and repair businesses', 'Pillar page plus supporting how-to guides. Plain language, no jargon.', datetime('now', '-40 days')),
(2, 'Writing for search', 'seo copywriting', 'Freelance writers new to SEO', 'Practical checklists with examples.', datetime('now', '-25 days'));

INSERT INTO posts (id, plan_id, title, keyword, meta_description, content_html, status, scheduled_at, published_at, wp_post_id, published_url, error, rank, rank_checked_at, created_at, updated_at) VALUES
(1, 1, 'Local SEO checklist for service businesses', 'local seo checklist',
 'A step-by-step local SEO checklist for small service businesses: listings, reviews, service pages and tracking.',
 '<h2>Start with your business listing</h2><p>Make sure your name, address and phone number match everywhere they appear.</p><h2>Build one page per service</h2><p>Each service deserves its own page that answers the questions customers ask before they call.</p><h2>Ask for reviews after every job</h2><p>A short, friendly request right after the work is done gets the best response.</p>',
 'published', strftime('%Y-%m-%dT09:00:00.000Z', 'now', '-21 days'), datetime('now', '-21 days'), 101, 'https://blog.example.test/local-seo-checklist', NULL, 4, datetime('now', '-1 days'), datetime('now', '-30 days'), datetime('now', '-21 days')),
(2, 2, 'How to write meta descriptions that earn the click', 'how to write meta descriptions',
 'What a meta description does, how long it should be, and five patterns that make searchers click.',
 '<h2>What a meta description is for</h2><p>It is the short summary under your page title in search results. It does not change rankings directly, but it changes who clicks.</p><h2>Five patterns that work</h2><ul><li>Lead with the outcome</li><li>Name the audience</li><li>Include a number</li><li>Answer the question</li><li>End with a next step</li></ul>',
 'published', strftime('%Y-%m-%dT09:00:00.000Z', 'now', '-14 days'), datetime('now', '-14 days'), 102, 'https://blog.example.test/meta-descriptions', NULL, 8, datetime('now', '-1 days'), datetime('now', '-20 days'), datetime('now', '-14 days')),
(3, 1, 'Service area pages: when to create one', 'service area pages',
 'When a separate page for each town you serve helps, and when it only creates thin duplicates.',
 '<h2>One page per town is not always better</h2><p>Create a service area page only when you have something specific to say about that place.</p><h2>What to include</h2><p>Local examples, travel times and the services you actually offer there.</p>',
 'published', strftime('%Y-%m-%dT09:00:00.000Z', 'now', '-7 days'), datetime('now', '-7 days'), 103, 'https://blog.example.test/service-area-pages', NULL, NULL, datetime('now', '-1 days'), datetime('now', '-12 days'), datetime('now', '-7 days')),
(4, 1, 'Google Business Profile photos that build trust', 'google business profile photos',
 'Which photos to add to your business profile, how often to update them, and what to avoid.',
 '<h2>Show the team and the work</h2><p>Before-and-after shots and photos of the people who will visit build more trust than stock images.</p><h2>Keep it fresh</h2><p>Add a few new photos every month.</p>',
 'scheduled', strftime('%Y-%m-%dT09:00:00.000Z', 'now', '+3 days'), NULL, NULL, NULL, NULL, NULL, NULL, datetime('now', '-5 days'), datetime('now', '-2 days')),
(5, 2, 'SEO copywriting for beginners', 'seo copywriting',
 'The basics of writing pages that rank and read well: search intent, structure and plain language.',
 '<h2>Write for the question first</h2><p>Work out what the searcher wants to know, then answer it early.</p><h2>Structure helps readers and search engines</h2><p>Short sections with clear headings make a page easy to scan.</p>',
 'scheduled', strftime('%Y-%m-%dT09:00:00.000Z', 'now', '+10 days'), NULL, NULL, NULL, NULL, NULL, NULL, datetime('now', '-4 days'), datetime('now', '-1 days')),
(6, 2, 'Internal links: a simple system for small blogs', 'internal linking for blogs',
 'A lightweight way to link related posts so readers and search engines find your best pages.',
 '<h2>Link from new posts to your pillar page</h2><p>Every supporting article should point back to the main guide on the topic.</p><h2>Use descriptive anchor text</h2><p>Tell the reader what they will find on the other side of the link.</p>',
 'draft', NULL, NULL, NULL, NULL, NULL, NULL, NULL, datetime('now', '-2 days'), datetime('now', '-2 days')),
(7, NULL, 'How long should a blog post be?', 'how long should a blog post be',
 'Why there is no single right length, and how to decide based on the question you are answering.',
 '<h2>Match the depth of the question</h2><p>A quick definition needs a short answer. A how-to guide needs every step.</p>',
 'draft', NULL, NULL, NULL, NULL, NULL, NULL, NULL, datetime('now', '-1 days'), datetime('now', '-1 days')),
(8, 1, 'Responding to negative reviews', 'how to respond to negative reviews',
 'A calm, three-step way to answer a bad review that shows future customers you care.',
 '<h2>Thank them and acknowledge the problem</h2><p>Keep it short and specific.</p><h2>Take it offline</h2><p>Offer a direct way to resolve it.</p>',
 'failed', strftime('%Y-%m-%dT09:00:00.000Z', 'now', '-2 days'), NULL, NULL, NULL, 'No WordPress site connected. Connect one in Clawnify → Integrations.', NULL, NULL, datetime('now', '-6 days'), datetime('now', '-2 days'));
