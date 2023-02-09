create table public."theme_styles"
(id                   uuid                                                                                                               not null primary key,
 status               varchar(255) default 'live'::character varying,
 fonts_computed       text         default '--font-900: var(--fw-bold) var(--font-size-900) / var(--font-lh-900) var(--font-body);
--font-800: var(--fw-bold) var(--font-size-800) / var(--font-lh-800) var(--font-body);
--font-700: var(--fw-bold) var(--font-size-700) / var(--font-lh-700) var(--font-body);
--font-600: var(--fw-bold) var(--font-size-600) / var(--font-lh-600) var(--font-body);
--font-500: var(--fw-bold) var(--font-size-500) / var(--font-lh-500) var(--font-body);
--font-400: var(--fw-regu) var(--font-size-400) / var(--font-lh-400) var(--font-body);  /* Root/Body/P Size */
--font-300: var(--fw-medi) var(--font-size-300) / var(--font-lh-300) var(--font-body);
--font-200: var(--fw-bold) var(--font-size-200) / var(--font-lh-200) var(--font-body);
--font-150: var(--fw-regu) var(--font-size-150) / var(--font-lh-150) var(--font-body);
--font-100: var(--fw-bold) var(--font-size-100) / var(--font-lh-100) var(--font-body);
--font-50:  var(--fw-medi) var(--font-size-50)  / var(--font-lh-50)  var(--font-body);'::text not null,
 line_height          text         default '--font-lh-900: 40px;
--font-lh-800: 40px;
--font-lh-700: 30px;
--font-lh-600: 28px;
--font-lh-500: 26px;
--font-lh-400: 26px; /* ROOT */ 
--font-lh-300: 24px;
--font-lh-200: 30px;
--font-lh-150: 20px;
--font-lh-100: 18px;
--font-lh-50:  16px;'::text,
 font_size            text         default '--font-size-900: 32px;
--font-size-800: 30px;
--font-size-700: 26px;
--font-size-600: 22px;
--font-size-500: 22px;
--font-size-400: 20px; /* ROOT */
--font-size-300: 20px;
--font-size-200: 18px;
--font-size-150: 16px;
--font-size-100: 16px;
--font-size-50:  11px;'::text                                                                 not null,
 font_basics          text         default '/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
░░░░▓ FONT BASICS ▓░░░░
░░░░▓█████████████▓░░░░ */
    --font-body:    ''''Poppins'''', "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu Sans", "Helvetica Neue", Arial, sans-serif;     
    --font-head:    var(--font-body); /* This is here for other themes *
/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
░░░░▓ Font Weight ▓░░░░
░░░░▓█████████████▓░░░░             */
    --fw-regu: 300;     /* Regular  */
    --fw-medi: 400;     /* Medium   */
    --fw-bold: 600;     /*   Bold   */'::text,
 spacer_units         text         default '/*╔╾┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈Spacers┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗          */
    --spacer-unit : 8px ;                                   /*    8px */  /*MAIN*/  /*** BASE UNIT ***/
    --spacer-xxs  : calc(var(--spacer-unit) *  2 );         /*   16px */  /*MAIN*/  /* Container Margin, Inner-Container Padding */
    --spacer-xs   : calc(var(--spacer-unit) *  3);          /*   24px */            /* Grid-Gap */
    --spacer-s    : calc(var(--spacer-unit) *  4);          /*   32px */  /*MAIN*/  /*          */
    --spacer-ms   : calc(var(--spacer-unit) *  6);          /*   48px */
/*▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬*/
    --spacer-m    : calc(var(--spacer-unit) *  8); /*  64px */            /*MAIN*/  /* Section-Top Padding, Section-Bottom Padding */
/*▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬*/
    --spacer-ml   : calc(var(--spacer-unit) * 12);          /*  96px */            
    --spacer-l    : calc(var(--spacer-unit) * 16);          /* 128px */   /*MAIN*/  
    --spacer-xl   : calc(var(--spacer-unit) * 24);          /* 192px */             /* Base Unit for Max width Math */
    --spacer-xxl  : calc(var(--spacer-unit) * 32);          /* 256px */   /*MAIN*/  '::text,
 gap_pad_marg         text         default '/* ╔╾┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈PADDING┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗          */
   --section-gap            : var(--spacer-m);
   --grid-gap               : var(--spacer-xs);
/* ╔╾┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈CONTAINERS┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗          */
   --container-hSpace       : 0px var(--spacer-xxs);       /* O-container Margin, I-Container Padding*/
   --container-maxWidth     : calc(var(--spacer-xl) * 9);  /* ** 1728px ** */
   --innerContainer-maxWidth: calc(var(--spacer-xl) * 7);  /* ** 1344px ** */
/* ╔╾┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈BUTTONS┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗          */
   --btn                    : var(--font-h3);              /* Redo */
   --btn-pad                : 4px 8px;                     /* Redo */'::text,
 color_hex            text         default ' /* ╔╾VARIABLE NAME┈╼╤╾COLOR HEX */
    --brand-black    : #000000; 
    --brand-white    : #FFFFFF; 
 /* ╔╾┈┈PRIMARY┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈*/
    --primary        : #280071; 
    --primary-dark   : #010044; 
    --primary-light  : #5B2FA0; 
 /* ╔╾┈┈┈┈SECONDARY┈┈┈┈┈┈┈┈┈┈┈┈┈*/
    --secondary      : #69B3E7; 
    --secondary-dark : #2F84B5; 
    --secondary-light: #9EE5FF; 
 /* ╔╾┈┈┈┈┈ACCENT┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈*/
    --accent         : #8ED6DB; 
    --accent-dark    : #67BFC6; 
    --accent-light   : #B4ECF0; 
 /* ╔╾┈┈┈┈BACKGROUND┈┈┈┈┈┈┈┈┈┈┈┈*/
    --bg-layer-100   : #F7F6FA; 
    --bg-layer-200   : #F4F3F8; 
    --bg-layer-300   : #F1EFF6; 
    --bg-layer-400   : #ECE8F3; 
    --bg-layer-500   : #EEEBF5; 
    --bg-layer-600   : #E9E5F1; 
 /* ╔╾┈┈SYS/ENV┈VARIABLES┈┈┈┈┈┈*/
   --ec-neutral      : #CECFCB;
   --ec-success      : #00A38D;
   --ec-fail         : #D11257;'::text,
 color_rgb_prep       text         default '┈╼╤╾┈┈VARIABLE NAME┈┈┈╼╤╾ R┈╼╤╾┈G╼╤╾B╼╗ */
--brand-black-rgb    :   0,   0,   0;
--brand-white-rgb    : 255, 255, 255;
┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈PRIMARY┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗ */
--primary-rgb        :  40,   0, 113;
--primary-dark-rgb   :   1,   0,  44;
--primary-light-rgb  :  91,  47, 160;
┈┈┈┈┈┈┈┈┈┈┈SECONDARY┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗ */
--secondary-rgb      : 105, 179, 231;
--secondary-dark-rgb :  47, 132, 181;
--secondary-light-rgb: 158, 229, 255;
┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈ACCENT┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗ */
--accent-rgb         : 142, 214, 219;
--accent-dark-rgb    : 103, 191, 198;
--accent-light-rgb   : 180, 236, 240;
┈┈┈┈┈┈┈┈┈┈┈┈┈┈LAYERING┈┈┈FRAMEWORK┈┈┈╼╗ */
--bg-layer-100-rgb   : 247, 246, 250;
--bg-layer-200-rgb   : 244, 243, 248;
--bg-layer-300-rgb   : 241, 239, 246;
--bg-layer-400-rgb   : 236, 232, 243;
--bg-layer-500-rgb   : 238, 235, 245;
--bg-layer-600-rgb   : 233, 229, 241; 
/*┈┈┈┈┈SYS/ENV┈VARIABLES┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈╼╗ */
  --ec-neutral-rgb     :              ; 
  --ec-success-rgb     :              ;
  --ec-fail-rgb        :              ;     '::text,
 font_size_m480       text         default '/*--font-size-900: 32px; */
/*--font-size-800: 30px; */
/*--font-size-700: 26px; */
/*--font-size-600: 22px; */
/*--font-size-500: 22px; */
/*--font-size-400: 20px; *//* ROOT */ 
/*--font-size-300: 20px; */
/*--font-size-200: 18px; */
/*--font-size-150: 16px; */
/*--font-size-100: 16px; */
/*--font-size-50:  11px; */'::text,
 font_size_m767       text         default '--font-size-900:  36px;
--font-size-800:  32px;
--font-size-700:  28px;
--font-size-600:  22px;
--font-size-500:  22px;
--font-size-400:  20px; /* ROOT */
--font-size-300:  20px;
--font-size-200:  18px;
--font-size-150:  16px;
--font-size-100:  16px;
--font-size-50 :  11px;'::text,
 font_size_m992       text         default '/* --font-size-900:  36px; */
/* --font-size-800:  32px; */
/* --font-size-700:  28px; */
/* --font-size-600:  22px; */
/* --font-size-500:  22px; */
/* --font-size-400:  20px; *//*ROOT */
/* --font-size-300:  20px; */
/* --font-size-200:  18px; */
/* --font-size-150:  16px; */
/* --font-size-100:  16px; */
/* --font-size-50 :  11px; */'::text,
 font_size_m1199      text         default '--font-size-900:  48px;
--font-size-800:  40px;
--font-size-700:  32px;
--font-size-600:  24px;
--font-size-500:  24px;
--font-size-400:  20px; /*ROOT*/
--font-size-300:  20px;
--font-size-200:  18px;
--font-size-150:  16px;
--font-size-100:  16px;
--font-size-50 :  11px;'::text,
 font_size_m1499      text         default '/* --font-size-900:  48px; */
/* --font-size-800:  40px; */
/* --font-size-700:  32px; */
/* --font-size-600:  24px; */
/* --font-size-500:  24px; */
/* --font-size-400:  20px; ROOT */
/* --font-size-300:  20px; */
/* --font-size-200:  18px; */
/* --font-size-150:  16px; */
/* --font-size-100:  16px; */
/* --font-size-50 :  11px; */'::text,
 font_size_uwh        text         default '/* --font-size-900:  48px; */
/* --font-size-800:  40px; */
/* --font-size-700:  32px; */
/* --font-size-600:  24px; */
/* --font-size-500:  24px; */
/* --font-size-400:  20px; ROOT */
/* --font-size-300:  20px; */
/* --font-size-200:  18px; */
/* --font-size-150:  16px; */
/* --font-size-100:  16px; */
/* --font-size-50 :  11px; */'::text,
 font_size_m1921      text         default '/* --font-size-900:  48px; */
/* --font-size-800:  40px; */
/* --font-size-700:  32px; */
/* --font-size-600:  24px; */
/* --font-size-500:  24px; */
/* --font-size-400:  20px; ROOT */
/* --font-size-300:  20px; */
/* --font-size-200:  18px; */
/* --font-size-150:  16px; */
/* --font-size-100:  16px; */
/* --font-size-50 :  11px; */'::text,
 line_height_m480     text         default '/* --font-lh-900: 40px; */
/* --font-lh-800: 40px; */
/* --font-lh-700: 30px; */
/* --font-lh-600: 28px; */
/* --font-lh-500: 26px; */
/* --font-lh-400: 26px;  */ /* ROOT */ 
/* --font-lh-300: 24px; */
/* --font-lh-200: 30px; */
/* --font-lh-150: 20px; */
/* --font-lh-100: 18px; */
/* --font-lh-50:  16px; */'::text,
 line_height_m767     text         default '--font-lh-900 :  44px;
--font-lh-800 :  44px;
--font-lh-700 :  36px;
--font-lh-600 :  32px;
--font-lh-500 :  28px;
--font-lh-400 :  28px; /*ROOT *//* Thise is the center value we are working from */
--font-lh-300 :  24px;
--font-lh-200 :  40px;
--font-lh-150 :  20px;
--font-lh-100 :  18px;
--font-lh-50  :  16px;'::text,
 line_height_m992     text         default '/* --font-lh-900 :  44px; */
/* --font-lh-800 :  44px; */
/* --font-lh-700 :  36px; */
/* --font-lh-600 :  32px; */
/* --font-lh-500 :  28px; */
/* --font-lh-400 :  28px; *//*ROOT *//* Thise is the center value we are working from */
/* --font-lh-300 :  24px; */
/* --font-lh-200 :  40px; */
/* --font-lh-150 :  20px; */
/* --font-lh-100 :  18px; */
/* --font-lh-50  :  16px; */'::text,
 line_height_m1199    text         default '--font-lh-900 :  56px;
--font-lh-800 :  56px; 
--font-lh-700 :  48px;
--font-lh-600 :  36px;
--font-lh-500 :  32px;
 --font-lh-400 :  32px; /* ROOT This is the center value we are working from */
--font-lh-300 :  24px; 
--font-lh-200 :  40px;
--font-lh-150 :  20px;
--font-lh-100 :  18px;
--font-lh-50  :  16px;'::text,
 line_height_m1499    text         default '/* --font-lh-900 :  56px; */
/* --font-lh-800 :  56px;  */
/* --font-lh-700 :  48px; */
/* --font-lh-600 :  36px; */
/* --font-lh-500 :  32px; */
/* --font-lh-400 :  32px; ROOT This is the center value we are working from */
/* --font-lh-300 :  24px;  */
/* --font-lh-200 :  40px; */
/* --font-lh-150 :  20px; */
/* --font-lh-100 :  18px; */
/* --font-lh-50  :  16px; */'::text,
 line_height_m1921    text         default '/* --font-lh-900 :  56px; */
/* --font-lh-800 :  56px;  */
/* --font-lh-700 :  48px; */
/* --font-lh-600 :  36px; */
/* --font-lh-500 :  32px; */
/* --font-lh-400 :  32px; ROOT This is the center value we are working from */
/* --font-lh-300 :  24px;  */
/* --font-lh-200 :  40px; */
/* --font-lh-150 :  20px; */
/* --font-lh-100 :  18px; */
/* --font-lh-50  :  16px; */'::text,
 line_height_uwh      text         default '/* --font-lh-900 :  56px; */
/* --font-lh-800 :  56px;  */
/* --font-lh-700 :  48px; */
/* --font-lh-600 :  36px; */
/* --font-lh-500 :  32px; */
/* --font-lh-400 :  32px; ROOT This is the center value we are working from */
/* --font-lh-300 :  24px;  */
/* --font-lh-200 :  40px; */
/* --font-lh-150 :  20px; */
/* --font-lh-100 :  18px; */
/* --font-lh-50  :  16px; */'::text,
 breakpoints_required json
);

alter table public."Modocosm_Core" owner to postgres;

