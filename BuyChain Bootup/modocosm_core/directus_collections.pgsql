insert into directus_collections 
    (       collection,        icon,      note, display_template,   hidden, singleton,translations,archive_field, archive_app_filter,archive_value,unarchive_value,sort_field,accountability,color,item_duplication_fields,sort,   "group",      collapse      )
VALUES  --  ⏬⏬⏬⏬⏬      ⏬⏬⏬      ⏬          ⏬⏬         ⏬⏬        ⏬           ⏬          ⏬            ⏬⏬        ⏬⏬        ⏬⏬        ⏬⏬         ⏬⏬        ⏬⏬        ⏬⏬           ⏬        ⏬           ⏬⏬      
    (   'Attributes',                   'settings_suggest',         'Attributes are config sections,  Either for global site variables, or common configs for post types.', null, false, false, '[{"language":"en-US","translation":"🕹️ Attributes","singular":"🕹️ Attribute","plural":"🕹️ Attributes"}]', null, true, null, null, null, 'all', '#6F2AE8', null, 4, 'Modocosm_Core', 'open'),
    (   'Modocosm_Core',                'rocket_launch',             null, null, false, true, null, 'status', true, 'archived', 'draft', null, 'all', '#6D41A1', '["font_size_m1921","line_height_m1921","font_size_uwh","line_height_uwh","line_height_m1499","font_size_m1499","font_size_m1199","line_height_m1199","font_size_m992","line_height_m992","font_size_m767","line_height_m767"]', 1, null, 'closed'),
    (   'Bolts',                        'insert_link',              'Bolts Link your bricks together, they are the smallest element of your artistic work.', null, false, false, null, null, true, null, null, null, 'all', '#A2B5CD', null, 5, 'Modocosm_Components', 'closed'),
    (   'The_SandBox',                  'grid_on',                  'Storage of Artisan Structures', null, false, false, '[{"language":"en-US","translation":"Artisan Structures"}]', null, true, null, null, null, 'all', '#2ECDA7', null, 1, 'Blueprints', 'open'),
    (   'Blueprints',                   'foundation',               'The Structure Planner, Like the Slice master, enables your creative desires. Unlike the slice master, what it provides is mostly invisible', null, false, false, null, null, true, null, null, null, 'all', '#2ECDA7', null, 1, 'SliceMaster_Configs', 'closed'),
    (   'Chapters',                     'collections_bookmark',     'Chapters Like Buildings, Hold the Masterpiece Together', null, false, false, null, null, true, null, null, null, 'all', '#FFA439', null, 1, 'Buildings', 'open'),
    (   'Blobs',                        'water_drop',               'Blobs, Like Bolts, are rarely noticed but are the real heroes of the story', null, false, false, null, null, true, null, null, null, 'all', '#A2B5CD', null, 1, 'Bolts', 'open'),
    (   'theme_styles',                 'format_paint',              null, null, false, true, null, null, true, null, null, null, 'all', '#B58BFF', null, 2, 'Modocosm_Core', 'open'),
    (   'Buildings',                    'location_city',            'Slices are Made up of buildings, like a city scape.', null, false, false, null, null, true, null, null, null, 'all', '#FFA439', null, 3, 'Modocosm_Components', 'closed'),
    (   'languages',                     null,                       null, null, false, false, null, null, true, null, null, null, 'all', null, null, 1, 'mc_flex', 'open'),
    (   'global_seo',                   'manage_search',             null, null, false, true, null, null, true, null, null, null, 'all', '#B58BFF', null, 3, 'Modocosm_Core', 'open'),
    (   'Stories',                      'menu_book',                'Stories are a Subtype of Slice, meant for holding content built from repeating similar pieces. E.G. An FAQ', null, false, false, null, null, true, null, null, null, 'all', '#1D25EE', null, 1, 'Slices', 'open'),
    (   'SliceMaster_Configs',          'carpenter',                'SliceMaster Modules: are different preselect combinations of components that work great together!', null, false, false, null, null, true, null, null, null, 'all', '#6F2AE8', null, 1, 'Modocosm_Components', 'closed'),
    (   'Modocosm_Core_translations',   'import_export',             null, null, true, false, null, null, true, null, null, null, 'all', null, null, 1, 'Modocosm_Core', 'open'),
    (   'Snippets',                     'book',                     'Snippets are like bricks, they hold the chapter together', null, false, false, null, null, true, null, null, null, 'all', '#E35169', null, 1, 'Bricks', 'open'),
    (   'Slices',                       'streetview',               'Slices are Hand Crafted Horizontal Strips of your website.', null, false, false, null, null, true, null, null, null, 'all', '#1D25EE', null, 2, 'Modocosm_Components', 'closed'),
    (   'Modocosm_Components',          'storage',                  'Modocosm_Components', null, false, false, null, null, true, null, null, null, 'all', '#6F2AE8', null, 5, 'Modocosm_Core', 'closed'),
    (   'Bricks',                       'grid_view',                'Bricks are Building Blocks of your Masterpiece', null, false, false, null, null, true, null, null, null, 'all', '#E35169', null, 4, 'Modocosm_Components', 'closed');


    
    insert into directus_collections 
    (       collection,        icon,      note, display_template,   hidden, singleton,translations,archive_field, archive_app_filter,archive_value,unarchive_value,sort_field,accountability,color,item_duplication_fields,sort,   "group",      collapse      )
VALUES  --  ⏬⏬⏬⏬⏬      ⏬⏬⏬      ⏬          ⏬⏬         ⏬⏬        ⏬           ⏬          ⏬            ⏬⏬        ⏬⏬        ⏬⏬        ⏬⏬         ⏬⏬        ⏬⏬        ⏬⏬           ⏬        ⏬           ⏬⏬      
    ('pages',                   null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,        null,        'open'       ),         
    ('funnels',                 null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,        null,        'open'       ),         
    ('articles',                null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,        null,        'open'       ),             
    ('guides',                  null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,        null,        'open'       ),         
    ('short_hero',              null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      slices,        'open'       ),             
    ('flex_hero',               null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      slices,        'open'       ),             
    ('overflow',                null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      slices,        'open'       ),             
    ('quote_slider_banner',     null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      slices,        'open'       ),                     
    ('quote_list',              null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      bricks,        'open'       ),             
    ('quote_object',            null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,       bolts,        'open'       ),                 
    ('editor_select',           null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      slices,        'open'       ),                 
    ('dev_notes',               null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,        null,        'open'       ),             
    ('content_pair',            null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      slices,        'open'       ),                 
    ('content_pairs_list',      null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      slices,        'open'       ),                     
    ('content_pairs_with_lists',null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      slices,        'open'       ),                             
    ('image_with_content_list', null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      slices,        'open'       ),                         
    ('flex_item_display',       null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      slices,        'open'       ),                     
    ('cta_with_form',           null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      slices,        'open'       ),                 
    ('basic_cta',               null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      slices,        'open'       ),             
    ('flex_card_display',       null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      slices,        'open'       ),                     
    ('recent_posts',            null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      slices,        'open'       ),                 
    ('faq_section',             null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      slices,        'open'       ),             
    ('faq_lis',                 null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      bricks,        'open'       ),         
    ('faq_item',                null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,       bolts,        'open'       ),             
    ('structure_picker',        null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      bricks,        'open'       ),                     
    ('mc_flex',                 null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      bricks,        'open'       ),         
    ('mc_grid',                 null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      bricks,        'open'       ),         
    ('mc_artisan_structures',   null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      bricks,        'open'       ),                                      
    ('card_list',               null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      bricks,        'open'       ),             
    ('button_list',             null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      bricks,        'open'       ),             
    ('card',                    null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,       bolts,        'open'       ),         
    ('content_block',           null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      slices,        'open'       ),                 
    ('button',                  null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,       bolts,        'open'       ),         
    ('code_display_block',      null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      bricks,        'open'       ),                     
    ('form_embed_raw',          null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      bricks,        'open'       ),                 
    ('image_block',             null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      bricks,        'open'       ),             
    ('animated_svg_block',      null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      bricks,        'open'       ),                     
    ('card_ribbon',             null,        null,        null,        false,        false,        null,        null,        true,        null,        null,        null,        'all',        null,        null,        null,      bricks,        'open'       );   

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
