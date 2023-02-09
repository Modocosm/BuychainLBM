insert into "public"."directus_relations" ("many_collection", "many_field", "one_collection", "one_field", "one_collection_field", "one_allowed_collections", "junction_field", "sort_field", "one_deselect_action")

values
('animated_svg_block', 'background_image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('basic_cta', 'image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('basic_cta', 'background_image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('basic_cta', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('button', 'foreign', 'button_list', NULL, NULL, NULL, NULL, 'sort', 'nullify'),
('card', 'background_image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('card', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('card', 'foreign', 'card_list', NULL, NULL, NULL, NULL, 'sort', 'nullify'),
('card', 'foreign', 'flex_card_display', NULL, NULL, NULL, NULL, 'sort', 'nullify'),
('content_block', 'background_image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('content_block', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('content_block', 'foreign', 'image_with_content_list', NULL, NULL, NULL, NULL, 'sort', 'nullify'),
('content_pair', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('content_pair', 'foreign', 'content_pairs_list', NULL, NULL, NULL, NULL, 'sort', 'nullify'),
('content_pair', 'image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('content_pair', 'image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('content_pairs_with_lists', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('cta_with_form', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('faq_item', 'foreign', 'faq_lis', NULL, NULL, NULL, NULL, 'sort', 'nullify'),
('faq_lis', 'foreign', 'faq_section', NULL, NULL, NULL, NULL, 'sort', 'nullify'),
('flex_hero', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('flex_hero', 'image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('image_block', 'background_image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('image_with_content_list', 'background_image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('overflow', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('overflow', 'foreign', 'form_embed_raw', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('quote_object', 'foreign', 'quote_list', NULL, NULL, NULL, NULL, 'sort', 'nullify'),
('quote_slider_banner', 'background_image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('recent_posts', 'foreign', 'button_list', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('pages', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('funnels', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('articles', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('guides', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('quote_object', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('editor_select', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('dev_notes', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('faq_item', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('mc_artisan_structures', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('pages', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('funnels', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('articles', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('guides', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('short_hero', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('flex_hero', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('overflow', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('quote_slider_banner', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('quote_list', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('quote_object', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('editor_select', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('dev_notes', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('content_pair', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('content_pairs_list', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('content_pairs_with_lists', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('image_with_content_list', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('flex_item_display', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('cta_with_form', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('basic_cta', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('flex_card_display', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('recent_posts', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('faq_section', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('faq_lis', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('faq_item', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('structure_picker', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('mc_flex', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('mc_grid', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('mc_artisan_structures', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('basic_cta', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('card_list', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('button_list', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('card', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('content_block', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('button', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('code_display_block', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('form_embed_raw', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('image_block', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('animated_svg_block', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
('card_ribbon', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify');
