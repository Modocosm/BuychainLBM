alter table public.content_pair
  add constraint "content_pair_img_fKey" foreign key (image) references public.directus_files;

alter table public.basic_cta
  add constraint "b_image_fKey" foreign key (image) references public.directus_files;

alter table public.basic_cta
  add constraint "bcta_image_fKey" foreign key (image) references public.directus_files;

alter table content_block
    add constraint content_block_button_list_id_fk
        foreign key (buttons) references button_list;

alter table content_pair
    add constraint content_pair_button_list_id_fk
        foreign key (buttons) references button_list;

alter table content_pairs_with_lists
    add constraint content_pair_button_list_id_fk
        foreign key (buttons) references button_list;

alter table cta_with_form
    add constraint cta_button_list_id_fk
        foreign key (buttons) references button_list;

alter table flex_hero
    add constraint flexhero_id_fk
        foreign key (buttons) references button_list;

alter table overflow
    add constraint of_id_fk
        foreign key (buttons) references button_list;

alter table recent_posts
    add constraint rp_id_fk
        foreign key (buttons) references button_list;