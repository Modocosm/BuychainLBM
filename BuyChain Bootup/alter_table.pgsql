-- noinspection SqlResolveForFile

-- noinspection SqlResolveForFile @ column/"dt_1"

-- noinspection SqlResolveForFile @ column/"dt_2"

-- noinspection SqlResolveForFile @ column/"dt_1"

ALTER TABLE "public"."pages"
ADD CONSTRAINT "pages_user_created_fKey"
FOREIGN KEY ("user_created")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "pages_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."funnels"
ADD CONSTRAINT "funnels_user_created_fKey"
FOREIGN KEY ("user_created")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "funnels_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."articles"
ADD CONSTRAINT "articles_user_created_fKey"
FOREIGN KEY ("user_created")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "articles_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."guides"
ADD CONSTRAINT "guides_user_created_fKey"
FOREIGN KEY ("user_created")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "guides_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."short_hero"
ADD CONSTRAINT "short_hero_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."flex_hero"
ADD CONSTRAINT "flex_hero_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."overflow"
ADD CONSTRAINT "overflow_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."quote_slider_banner"
ADD CONSTRAINT "quote_slider_banner_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."quote_list"
ADD CONSTRAINT "quote_list_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."quote_object"
ADD CONSTRAINT "quote_object_user_created_fKey"
FOREIGN KEY ("user_created")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "quote_object_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."editor_select"
ADD CONSTRAINT "editor_select_user_created_fKey"
FOREIGN KEY ("user_created")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "editor_select_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."dev_notes"
ADD CONSTRAINT "dev_notes_user_created_fKey"
FOREIGN KEY ("user_created")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "dev_notes_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."content_pair"
ADD CONSTRAINT "content_pair_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."content_pairs_list"
ADD CONSTRAINT "content_pairs_list_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."content_pairs_with_lists"
ADD CONSTRAINT "content_pairs_with_lists_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."image_with_content_list"
ADD CONSTRAINT "image_with_content_list_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."flex_item_display"
ADD CONSTRAINT "flex_item_display_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION ;

ALTER TABLE "public"."cta_with_form"
ADD CONSTRAINT "cta_with_form_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."basic_cta"
ADD CONSTRAINT "basic_cta_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."flex_card_display"
ADD CONSTRAINT "flex_card_display_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."recent_posts"
ADD CONSTRAINT "recent_posts_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."faq_section"
ADD CONSTRAINT "faq_section_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."faq_lis"
ADD CONSTRAINT "faq_lis_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."faq_item"
ADD CONSTRAINT "faq_item_user_created_fKey"
FOREIGN KEY ("user_created")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "faq_item_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."structure_picker"
ADD CONSTRAINT "structure_picker_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."mc_flex"
ADD CONSTRAINT "mc_flex_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."mc_grid"
ADD CONSTRAINT "mc_grid_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."mc_artisan_structures"
ADD CONSTRAINT "mc_artisan_structures_user_created_fKey"
FOREIGN KEY ("user_created")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION,
ADD CONSTRAINT "mc_artisan_structures_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;


ALTER TABLE "public"."card_list"
ADD CONSTRAINT "card_list_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."button_list"
ADD CONSTRAINT "button_list_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."card"
ADD CONSTRAINT "card_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."content_block"
ADD CONSTRAINT "content_block_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."button"
ADD CONSTRAINT "button_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."code_display_block"
ADD CONSTRAINT "code_display_block_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."form_embed_raw"
ADD CONSTRAINT "form_embed_raw_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."image_block"
ADD CONSTRAINT "image_block_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."animated_svg_block"
ADD CONSTRAINT "animated_svg_block_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."card_ribbon"
ADD CONSTRAINT "card_ribbon_user_updated_fKey"
FOREIGN KEY ("user_updated")
REFERENCES "public"."directus_users"("id")
ON UPDATE NO ACTION ON DELETE NO ACTION;


ALTER TABLE "public"."flex_hero"
		ADD CONSTRAINT "flex_hero_image_fKey"
		FOREIGN KEY ("image")
			REFERENCES "public"."directus_files"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "flex_hero_foreign_fKey"
		FOREIGN KEY ("dt_1")
			REFERENCES "public"."button_list"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "public"."overflow"
		ADD CONSTRAINT "overflow_foreign_fKey"
		FOREIGN KEY ("dt_1")
			REFERENCES "public"."form_embed_raw"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "overflow_foreign_fKey"
		FOREIGN KEY ("dt_2")
			REFERENCES "public"."button_list"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "public"."quote_slider_banner"
		ADD CONSTRAINT "quote_slider_banner_background_image_fKey"
		FOREIGN KEY ("background_image")
			REFERENCES "public"."directus_files"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."content_pair"
		ADD CONSTRAINT "content_pair_image_fKey"
		FOREIGN KEY ("image")
			REFERENCES "public"."directus_files"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "content_pair_image_fKey"
		FOREIGN KEY ("image_above")
			REFERENCES "public"."directus_files"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "content_pair_foreign_fKey"
		FOREIGN KEY ("dt_1")
			REFERENCES "public"."button_list"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "content_pairs_list_foreign_fKey"
		FOREIGN KEY ("dt_2")
			REFERENCES "public"."content_pair"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."content_pairs_with_lists"
		ADD CONSTRAINT "content_pairs_with_lists_foreign_fKey"
		FOREIGN KEY ("dt_1")
			REFERENCES "public"."button_list"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "public"."image_with_content_list"
		ADD CONSTRAINT "image_with_content_list_background_image_fKey"
		FOREIGN KEY ("image")
			REFERENCES "public"."directus_files"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."cta_with_form"
		ADD CONSTRAINT "cta_with_form_foreign_fKey"
		FOREIGN KEY ("dt_1")
			REFERENCES "public"."button_list"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "public"."basic_cta"
		ADD CONSTRAINT "basic_cta_foreign_fKey"
		FOREIGN KEY ("dt_1")
			REFERENCES "public"."button_list"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "basic_cta_background_image_fKey"
		FOREIGN KEY ("background_image")
			REFERENCES "public"."directus_files"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."recent_posts"
		ADD CONSTRAINT "recent_posts_foreign_fKey"
		FOREIGN KEY ("dt_1")
			REFERENCES "public"."button_list"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."faq_lis"
		ADD CONSTRAINT "faq_section_foreign_fKey"
		FOREIGN KEY ("dt_1")
			REFERENCES "public"."faq_lis"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "public"."faq_item"
		ADD CONSTRAINT "faq_lis_foreign_fKey"
		FOREIGN KEY ("dt_1")
			REFERENCES "public"."faq_item"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION;


ALTER TABLE "public"."card"
		ADD CONSTRAINT "flex_card_display_foreign_fKey"
		FOREIGN KEY ("dt_1")
			REFERENCES "public"."card"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "card_foreign_fKey"
		FOREIGN KEY ("dt_2")
			REFERENCES "public"."card_list"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "card_foreign_fKey"
		FOREIGN KEY ("dt_3")
			REFERENCES "public"."button_list"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "card_background_image_fKey"
		FOREIGN KEY ("corner_image")
			REFERENCES "public"."directus_files"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."content_block"
		ADD CONSTRAINT "image_with_content_list_foreign_fKey"
		FOREIGN KEY ("dt_1")
			REFERENCES "public"."content_block"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "content_block_background_image_fKey"
		FOREIGN KEY ("image")
			REFERENCES "public"."directus_files"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION,
		ADD CONSTRAINT "content_block_foreign_fKey"
		FOREIGN KEY ("dt_2")
			REFERENCES "public"."button_list"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."button"
		ADD CONSTRAINT "button_foreign_fKey"
		FOREIGN KEY ("dt_1")
			REFERENCES "public"."button_list"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."image_block"
		ADD CONSTRAINT "image_block_background_image_fKey"
		FOREIGN KEY ("image")
			REFERENCES "public"."directus_files"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE "public"."animated_svg_block"
		ADD CONSTRAINT "animated_svg_block_background_image_fKey"
		FOREIGN KEY ("image")
			REFERENCES "public"."directus_files"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION,

		ADD CONSTRAINT "quote_list_foreign_fKey"
		FOREIGN KEY ("dt_1")
			REFERENCES "public"."quote_object"("id")
				ON UPDATE NO ACTION ON DELETE NO ACTION;
