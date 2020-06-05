---
layout: post
title: "Emojis for Better Git Commit Messages"
date: 2020-05-21 12:00:00 +0430
categories: jekyll emoji git
comments: true
published: false
---

I have to confess that I'm madly in love with emojis. They're cute, little digital beings that convey your emotions or
meaning far better/deeper/shorter than words. Using them in git commit messages was a truly **brilliant** idea from whom
we'd never know. Speaking of commit messages, it's obvious we're not going to leverage the emotional charge of the
emojis --at least for now-- but their **terseness** and excellent **readability** is their best merit we could use.
Let alone their **diversity**, **wide availability**, and **text nature**.

## The problem with emojis

As a big fan, I use them almost everywhere I can replace them for words, though sometimes it's a little difficult to
find the right emoji. When it comes to writing git commit messages, people won't feel good for wasting 15 minutes
looking for the best emoji on the context. That's one reason, I guess, that emojis are yet to grow popular. There are
few cases that our exact intention easily matches with an emoji. In most cases you have to rephrase, rethink or reshape
your words to find that hidden one. I get it. That's why I started to write an article on the subject to list some of my
favorite emojis that you'll find extremely useful in your day-to-day experience.

## Emoji rock stars

I myself first saw [this][parmentf] neat GitHub Gist on the emoji recommendations. The author, *François*, did cover a
wide range of situations. In the beginning, I've been trying to stick with them but sometimes it was hard to find my
intent within the list. So, I began to deliberately collect my own emoji rock stars.

This is my list:

| Emoji  | Identifier              |Example commit message(s)|
|--------|-------------------------|-------------------------|
|🎉|`:tada:`                    | *First commit* |
|🔨|`:hammer:`                  | *Update code* or *Improve code* |
|📜|`:scroll:`                  | *Update `README.md`* dor *Add docs* |
|👕|`:tshirt:`                  | *Apply linter* or *Format code* |
|⚗️ |`:alembic:`                  | *Add tests* or *Update unit tests* |
|🧪|`:test_tube:`                  | *Add tests* or *Update unit tests* |
|👶|`:baby:`                    | *Add basic implementation* or *Add partial impl.* |
|🏅|`:medal_sports:`            | *Finish implementation* |
|🚑|`:ambulance:`               | *Urgent fix* or *Fix critical bug* |
|⤴️|`:arrow_heading_up:`        | *Upgrade dependency* or *Upgrade version* |
|⤵️|`:arrow_heading_down:`      | *Downgrade dependency* or *Downgrade version* |
|🎨|`:art:`                     | *Improve visuals* or *Enhance UI/UX* |
|✨|`:sparkles:`                | *Clean code* |
|🔥|`:fire:`                    | *Delete directory* or *Remove unnecessary files* |
|💩|`:poop:`                    | *Mess up legacy code* or *Apply dirty patch* |
|💅|`:nail_care:`               | *Enhance UI/UX* |
|⚡️ |`:zap:`                      | *Introduce breaking changes* |
|🐛|`:bug:`                     | *Fix bug* |
|🌙|`:crescent_moon:`           | *Update nightly builds config* |
|🐰|`:rabbit:`                  | *Add RabbitMQ requirements* |
|🐋|`:whale:`                   | *Add Dockerfile* or *Update docker-compose* |
|  |`:octocat:`                    | *Add .github dir* |
|🦊|`:fox_face:`                | *Add .gitlab dir* |
|🎁|`:gift:`                    | *Add new dependencies* or *Add new feature* |
|🔔|`:bell:`                    | *Add alarm/warning* |
|🔕|`:no_bell:`                 | *Silence alarms/warnings* |
|🔇|`:mute:`                    | *Silence alarms/warnings* |
|🔐|`:closed_lock_with_key:`    | *Add more security* or *Set more permissions* |
|🔒|`:lock:`                    | *Add more security* or *Set more permissions* |
|🛡|`:shield:`                  | *Add more security* or *Set more permissions* |
|🔫|`:gun:`                     | *Remove directory* or *Prune stall features* |
|📁|`:file_folder:`             | *Change dir structure* |
|⌚️|`:watch:`                   | *Add profiler* or *Add performance measurements* |
|📦|`:package:`                 | *Add dependency* |
|✏️|`:pencil:`                   | *Update README.md* or *Add docs* |
|📚|`:books:`                   | *Update docs* |
|📝|`:memo:`                    | *Update docs* |
|🍝|`:spaghetti:`               | *Add badly structured code* |
|🔓|`:unlock:`                  | *Lift permissions* or *Remove restrictions* |
|📊|`:bar_chart:`               | *Improve performance* |
|✂️|`:scissors:`                  | *Remove unnecessary parts* or *Separate into modules* |
|🔖|`:bookmark:`                | *Update version* |
|👔|`:necktie:`                 | *Apply linter* or *Format code* |
|🎒|`:school_satchel:`          | *Build and pack* or *Make ready for deployment/launch* |
|📈|`:chart_with_upwards_trend:`| *Improve performance* |
|📉|`:chart_with_downwards_trend:`| *Lower performance* or *Minimize resource usage* |
|📖|`:book:`                    | *Add docs* |
|💄|`:lipstick:`                | *Enhance UI/UX* |
|🚿|`:shower:`                  | *Clean code* |
|📎|`:paperclip:`               | *Attach doc/file* |
|🎨|`:art:`                     | *Enhance UI/Ux* |
|✈️|`:airplane:`                  | *Migrate to new interface* or *Create data migration* |
|🏁|`:checkered_flag:`          | *Finish impl* or *Meet roadmap checkpoint* |
|🎭|`:performing_arts:`         | *Merge branches* or *Merge two modules* |
|⚓️|`:anchor:`                    | *Put TODO anchors* |
|🚀|`:rocket:`                  | *Launch feature* or *Upgrade for launch* |
|🚩|`:triangular_flag_on_post:` | *Meet roadmap checkpoint* |
|🚧|`:construction:`            | *Apply temporary patch* or *Improve work in progress* |
|♿️|`:wheelchair:`                | *Enhance UI/UX* or *Improve accessibility features* |
|©️|`:copyright:`                 | *Add LICENSE file* or *Update LICENSE* |
|®️|`:registered:`                | *Add LICENSE file* or *Update LICENSE* |

## Emojis by context

Of course knowing various emojis like the list above helps a lot, but more often that not I find myself trying to recall
an emoji that fits best with my already written (or thought of) commit message. Not always should you find the closest
emoji within a list like the one you've seen. That's when you'd rather have a subject/context oriented table in which
you could easily find the best candidates for your intent. I'm talking about such a table:

| Emoji(s) | Context (verbs/nouns) |
|----------|-----------------------|
| 🐛`:bug:` 🔨`:hammer:` 🔧`:wrench:` 🗜`:clamp:` | correct, fix, bugfix |
| 🐚`:shell:` 👐`:open_hands:` 📦`:package:` 🎁`:gift:` 🗳`:ballot_box:` 🗃`:card_file_box:` 📥`:inbox_tray:` 📤`:outbox_tray:` | wrap, hold, cover, shell, safe, box, contain |
| 🎭`:performing_arts:` 🤝`:handshake:` 🗜`:clamp:`  📎`:paperclip:` 🖇`:paperclips:` 🔗`:link:` 🔀`:twisted_rightwards_arrows:`  🔃`:arrows_clockwise:` 🔄`:arrows_counterclockwise:` 👥`:busts_in_silhouette:` | merge, mix, attach, convolve, append, prepend, unify, combine, distill, handshake |
| 🔥`:fire:` 🔫`:gun:` 💣`:bomb:` 🗑`:wastebasket:` 🚮`:put_litter_in_its_place:` ⚰️`:coffin:` ☠️`:skull_and_crossbones:` 💀`:skull:` ✝️`:latin_cross:` ❌`:x:` ❎`:negative_squared_cross_mark:` ✖️`:heavy_multiplication_x:` 📤`:outbox_tray:` ✂️`:scissors:` 🔪`:knife:` ⚔️`:crossed_swords:` 🗃`:card_file_box:` 🗄`:file_cabinet:` | remove, delete, drop, cancel, exclude, archive |
| 📶`:signal_strength:` 📈`:chart_with_upwards_trend:` 📉`:chart_with_downwards_trend:` ↕️`:arrow_up_down:` ⬆️`:arrow_up:` ⬇️`:arrow_down:` ⬆️`:arrow_up:` 🍽`:plate_with_cutlery:` 🔢`:1234:` | order, sort, arrange, reorder |
| 🔨`:hammer:` 🔧`:wrench:` 🎖`:medal_military:` ✨`:sparkles:` 🥇`:1st_place_medal:` 🎨`:art:` 🖌`:paintbrush:` 💄`:lipstick:` 💅`:nail_care:` 👠`:high_heel:` 🌈`:rainbow:` 🐦`:bird:` | improve, enhance, upgrade, refresh, beauty, embellish, cosmetics |
| 💉`:syringe:` 🔨`:hammer:` 🔧`:wrench:` ✔️`:heavy_check_mark:` ✅`:white_check_mark:` ☑️`:ballot_box_with_check:` 🖊`:pen:` | apply, set, put, commit, register, confirm |
| ➕`:heavy_plus_sign:` 📎`:paperclip:` 🖇`:paperclips:` 📦`:package:` 🎁`:gift:` 🏁`:checkered_flag:`  ⬆️`:arrow_up:` 🌱`:seedling:` ⏫`:arrow_double_up:` 📥`:inbox_tray:` 👶`:baby:` 🐤`:baby_chick:` 🚼`:baby_symbol:` 🆕`:new:` 🌼`:blossom:` ✨`:sparkles:` ❇️`:sparkle:` 🔌`:electric_plug:` | add, insert, update, upgrade, increase, register, append, prepend, feature |
| 👕`:shirt:`/`:tshirt:` 🎖`:medal_military:` 📏`:straight_ruler:` 📐`:triangular_ruler:` 🚿`:shower:` 💊`:pill:` 🎨`:art:` 🖌`:paintbrush:` 💄`:lipstick:` 💅`:nail_care:` 👠`:high_heel:` 🌈`:rainbow:` | lint, clean, format, style, refactor |
| 🏗`:building_construction:` 🔨`:hammer:` 🔧`:wrench:` 🛠`:hammer_and_wrench:` ♻️`:recycle:` | refactor, rewrite, reestablish, reimplement, rethink, recycle |
| ⚗️`:alembic:` ⏱`:stopwatch:` 🔍`:mag:` 🔎`:mag_right:` 🕵`:detective:` 🔭`:telescope:` 🔬`:microscope:` 🗜`:clamp:` | test, assess, exam, check, review, rethink, supervise, fixture |
| ✉️`:envelope:` 📤`:outbox_tray:` 📡`:satellite:`  🚀`:rocket:` ✈️`:airplane:` 🛩`:small_airplane:` 🚁`:helicopter:` 🏹`:bow_and_arrow:` 📰`:newspaper:` 🗞`:newspaper_roll:` 📺`:tv:` 📻`:radio:` 🎤`:microphone:` 📢`:loudspeaker:` 🔈`:speaker:` | send, move, out, publish, transform, give, produce |
| ❓`:question:` ❔`:grey_question:` 🍴`:fork_and_knife:` 📥`:inbox_tray:` | ask, request, inquiry, query, fetch, receive, take |
| 👂`:ear:` 🎧`:headphone:` ⏳`:hourglass_flowing_sand:` ⏸`:pause_button:` 📨`:incoming_envelope:` ✉️`:envelope:` ☎️`:phone:` 📲`:calling:` | consume, listen, subscribe, register, await, callback, standby |
| ⏱`:stopwatch:` ⏲`:timer:` ⏰`:alarm_clock:` 📆`:calendar:` 🗓`:spiral_calendar:` 🏃`:runner:` | job, cron, schedule, time, period, repeat, repetitive |
| 🔍`:mag:` 🔎`:mag_right:` 🔦`:flashlight:` 🕵`:detective:` 🔭`:telescope:` 🔬`:microscope:` 🐶`:dog:` 🐕`:dog2:` 👃`:nose:` | search, find, lookup, browse, query, select |
| ⬇️`:arrow_down:` ⏬`:arrow_double_down:` ⤵️`:arrow_heading_down:` 👎`:thumbsdown:` | rollback, downgrade, reset, repopulate, revert, undo |
| 📜`:scroll:` 📝`:pencil:` ✍️`:writing_hand:` 📰`:newspaper:` 🗞`:newspaper_roll:` 📋`:clipboard:` 📖`:book:` 📑`:bookmark_tabs:` 📚`:books:` 📘`:blue_book:` 📙`:orange_book:` 📓`:notebook:` 🖊`:pen:` ✏️`:pencil2:` 🖨`:printer:` 📠`:fax:` | log, record, store, draft, note, text, README, guide, manual, comment |
| ⚠️`:warning:` ✋`:hand:` ❗️`:heavy_exclamation_mark:` ❗️`:exclamation:` ❕`:grey_exclamation:` | avoid, prevent, caution, safe, look out, beware, notice, warning |
| 🛑`:stop_sign:` ☣️`:biohazard:` 💀`:skull:` ☠️`:skull_and_crossbones:` 🔥`:fire:` ⏹`:stop_button:` ⚰️`:coffin:` ✝️`:latin_cross:` ✖️`:heavy_multiplication_x:`  | error, exception, hazard, danger, stop, crash, abort, deadlock |
| 👨`:man:` 👩`:woman:` | user, human, operator |
| 📺 `:tv:` 📱`:iphone:` 🖼`:framed_picture:` 🖌`:paintbrush:` ✒️`:black_nib:` 🎨`:art:` 🌈`:rainbow:` | UI, UX, HTML, CSS, front-end, view, face, canvas, image, picture |
| ☸️`:wheel_of_dharma:` ⚙️`:gear:` 🎛`:control_knobs:` 🛠`:hammer_and_wrench:` ⚒`:hammer_and_pick:` 🔨`:hammer:` 🔧`:wrench:` 🗜`:clamp:` 🔢`:1234:` 🔡`:abcd:` 🔠`:capital_abcd:` | config, setup, parameter, argument, reference, fixture |
| 🤡`:clown:` 👒`:womans_hat:` 🎭`:performing_arts:` 🎬`:clapper:`  🌚`:new_moon_with_face:` 🕶`:dark_sunglasses:` 🎠`:carousel_horse:` 🍼`:baby_bottle:` 👶`:baby:` 🐤`:baby_chick:` 🚼`:baby_symbol:` | mock, fake, stub, test, assess, impersonate, improvise, simulate, emulate, behave |
| 🔑`:key:` 🗝`:old_key:` 🏷`:label:` 🔗`:link:` 👶`:baby:` 🐤`:baby_chick:` 💼`:briefcase:` 📁`:file_folder:` 📂`:open_file_folder:` | variable, field, property, key, item, element |
| 🏃`:runner:` 🚴`:bicyclist:` 🚵`:mountain_bicyclist:` 🤸‍♂`:man_cartwheeling:` 🤸‍♀`:woman_cartwheeling:` 🎬`:clapper:` 📢`:loudspeaker:` 🔈`:speaker:` 🚗`:car:` 🚀`:rocket:` ✈️`:airplane:` 🛩`:small_airplane:` 👨‍🏭`:man_factory_worker:` 👩‍🏭`:woman_factory_worker:` | method, function, behavior, action, paly, execute, run |
| 🛑`:stop_sign:` ⛔️`:no_entry:` 🚫`:no_entry_sign:` 🚷`:no_pedestrians:` 🚳`:no_bicycles:` 🚱`:non-potable_water:` 🛡`:shield:` ⚠️`:warning:` ✖️`:heavy_multiplication_x:` ✋`:hand:` ⏹`:stop_button:` 🏰`:european_castle:` 🚨`:rotating_light:` 🚓`:police_car:` 👮`:policeman:` 👮‍♀`:policewoman:` 🚔`:oncoming_police_car:` ❗️`:heavy_exclamation_mark:` 👨‍⚖`:man_judge:` 👩‍⚖`:woman_judge:` 👽`:alien:` | limit, bound, line, threshold, ceiling, floor, restrict, constrain, restrain |
| 🗒`:spiral_notepad:` 📓`:notebook:` 📏`:ruler:` 📐`:triangular_ruler:` 📤`:outbox_tray:` 📦`:package:` 🔍`:mag:` 🔎`:mag_right:` 🕵`:detective:` 🔢`:1234:` 🔡`:abcd:` 🔠`:capital_abcd:` 📂`:open_file_folder:` 🐚`:shell:` 🚰`:potable_water:` 🖥`:desktop_computer:` 👨‍🏫`:man_teacher:` 👩‍🏫`:woman_teacher:` | detail, info, data, body, content |
| 📦`:package:` 📥`:inbox_tray:` 💉`:syringe:` 💾`:floppy_disk:` 💿`:cd:` ⌨️`:keyboard:` 🔑`:key:` 🗝`:old_key:` 🔐`:closed_lock_with_key:` 🔏`:lock_with_ink_pen:` 🔒`:lock:` 🏦`:bank:` ✍️`:writing_hand:` 📋`:clipboard:` 📓`:notebook:` 🗒`:spiral_notepad:` 📝`:pencil:` 🖊`:pen:` ✏️`:pencil2:` 🖨`:printer:` 📠`:fax:` 🎞`:film_strip:` | store, persist, save, keep, serialize, write, buffer, memory |
| 📤`:outbox_tray:` 👓`:eyeglasses:` 👂`:ear:` 🔑`:key:` 🗝`:old_key:` | load, fetch, read, deserialize, query |
| 🔒`:lock:` 🔐`:closed_lock_with_key:` 🔏`:lock_with_ink_pen:` 🛡`:shield:` 💂`:guardsman:` 💂‍♀`:guardswoman:` | security, ACL, shield, protect, antivirus, guard, encrypt, scramble, hash, sign, clutter, secure, code, hide, conceal, secret, lock, restrict, cover |
| 🔑`:key:` 📂`:open_file_folder:` 📖`:open_book:` 🔦`:flashlight:` 📺`:tv:` 📰`:newspaper:` 🔈`:speaker:` 📢`:loudspeaker:` 🆓`:free:` | decrypt, unscramble, decode, show, open, reveal, unveil, unleash, uncover, release, free, authentication, authorization |
| 🌐`:globe_with_meridians:` 🗺`:world_map:` 🌍`:earth_africa:` 🌎`:earth_americas:` 🌏`:earth_asia:` 🕸`:spider_web:` 🏙`:cityscape:` 🏣`:post_office:` 📮`:postbox:` | URL, URI, path, address, location, access, route, identifier |
| 🖼`:framed_picture:` 📺`:tv:` 🖥`:desktop_computer:` 📽`:film_projector:` 🎦`:cinema:` 🖨`:printer:` 📏`:ruler:` 📐`:triangular_ruler:` 🖊`:pen:` ✏️`:pencil2:` 🎨`:art:` 🖌`:paintbrush:` | show, display, visible, illustrate, demonstrate, paint, draw, print |
| ✂️`:scissors:` 🏇`:horse_racing:` 🐎`:racehorse:` 🐒`:monkey:` 🏎`:racing_car:` | skip, ignore, neglect, jump, overlook, unfollow, forget |
| ⤴️`:arrow_heading_up:` ♻️`:recycle:` 🔃`:arrows_clockwise:` 🔄`:arrows_counterclockwise:`  🔁`:repeat:` 🔂`:repeat_one:` ⏮`:previous_track_button:` 🏗`:building_construction:` 🎡`:ferris_wheel:` | retry, restart, reboot, rerun, restablish, reattempt, reconstruct, reimplement, refactor |
| 🏃`:runner:` 🚗`:car:` 🏎`:racing_car:` 🚅`:bullettrain_front:` 🚈`:light_rail:` ✈️`:airplane:` 🚀`:rocket:` 🛫`:flight_departure:` 🌩`:cloud_with_lightning:` ☂️`:open_umbrella:` ☔️`:umbrella:` 🐎`:racehorse:` 🏇`:horse_racing:` 💥`:boom:` 🌋`:volcano:` 🌅`:sunrise:` ⏯`:play_or_pause_button:` 🏗`:building_construction:` | run, execute, boot, establish, try, attempt, apply, drive, move, start, begin, ON, launch, construct, implement, init, initialize |
| ⏹`:stop_button:` ⏸`:pause_button:`  🛑`:stop_sign:` ✋`:hand:` ❗️`:heavy_exclamation_mark:` 💀`:skull:` ☠️`:skull_and_crossbones:` 🛬`:flight_arrival:` 🏁`:checkered_flag:` ✖️`:heavy_multiplication_x:` ❎`:negative_squared_cross_mark:` 📴`:mobile_phone_off:` 🔫`:gun:` ⚰️`:coffin:` ✝️`:latin_cross:` 💣`:bomb:` | stop, end, pause, abort, OFF, out, wait, hold, holdup, suspend, suppress, silence, silent, kill, interrupt, destruct, dispose |
| 🚀`:rocket:` ✈️`:airplane:` ⬆️`:arrow_up:` ⏫`:arrow_double_up:` 🔼`:arrow_up_small:` 🆙`:up:` 📢`:loudspeaker:` 🔈`:speaker:` 📯`:postal_horn:` 🎈`:balloon:` 🎊`:confetti_ball:` 🎉`:tada:` 📰`:newspaper:` 🗞`:newspaper_roll:` 📡`:satellite:` 🛰`:artificial_satellite:` | deploy, install, setup, launch |
| 👈`:point_left:` 👉`:point_right:` ☝️`:point_up:` 👇`:point_down:` 👣`:footprints:` 🐾`:paw_prints:` ⤵️`:arrow_heading_down:` ⤴️`:arrow_heading_up:` ↪️`:arrow_right_hook:` ↩️`:leftwards_arrow_with_hook:` 🔀`:twisted_rightwards_arrows:` ⛲️`:fountain:` ♻️`:recycle:` 🔁`:repeat:` 🔂`:repeat_one:` 💱`:currency_exchange:` | redirect, transform, change, direct, guide, align |
| 0️⃣`:zero:` ❤️`:heart:` 💟`:heart_decoration:` 🌄`:sunrise_over_mountains:` ☀️`:sunny:` 🌱`:seedling:` 🌾`:ear_of_rice:` 💻`:computer:` 🏠`:house:` 🏡`:house_with_garden:` 🦋`:butterfly:` ⚙️`:gear:` 🕯`:candle:` 🌼`:blossom:` 🐟`:fish:` 🛐`:place_of_worship:` ⛪️`:church:` 🕌`:mosque:` | base, ground, floor, core, center, middle, heart, root, home, origin |
| 💀`:skull:` ☠️`:skull_and_crossbones:` ☣️`:hazard:` ☣️`:biohazard:` 🕳`:hole:` 🔫`:gun:` 🌋`:volcano:` 💥`:boom:` 🐍`:snake:` 💸`:money_with_wings:` 🤜`:fight:` 🤼‍♂`:men_wrestling:` 🤼‍♀`:women_wrestling:` 🥊`:boxing_glove:` 🏥`:hospital:` 🚑`:ambulance:` | trespass, breach, vulnerability, access, hole, penetrate, spy, listen, hack, compromise, reveal |
| 📦`:package:` 🗃`:card_file_box:` 🗄`:file_cabinet:` 🔌`:electric_plug:` 🔲`:black_square_button:` 🔳`:white_square_button:` ⬜️`:white_large_square:` ⬛️`:black_large_square:` 🍯`:honey_pot:` 🔨`:hammer:` 🛠`:hammer_and_wrench:` 🔧`:wrench:` 💻`:computer:` 💽`:minidisc:` 📎`:paperclip:` 🖇`:paperclips:` | package, dependency, module, library, component, plugin, add-in, plug, object, container, image |
| 🌈`rainbow:` 🥞`:pancakes:` 🍔`:burger:` 🌭`:hotdog:` 📌`:pushpin:` 📍`:round_pushpin:` 🤹‍♂`:man_juggling:` 🤹‍♀`:woman_juggling:` | middleware, intermediate, middleman, dealer, layer |
| 🕸`:spider_web:` 📶`:signal_strength:` 📊`:bar_chart:` 📁`:file_folder:` 📂`:open_file_folder:` 🌳`:tree:` 🍃`:leaf:` | structure, organize, format, tree, leaf, edge, graph, net, network |
| ☂️`:open_umbrella:` ☔️`:umbrella:` 🏕`:camping:` ⚔️`:crossed_swords:` 🗺`:world_map:` 🌐`:globe_with_meridians:` | cover, range, shadow, area, support, resolve |
| ♻️`:recycle:` 🔁`:repeat:` 🔂`:repeat_one:` 🔃`:arrows_clockwise:` 🔄`:arrows_counterclockwise:` 🔢`:1234:` 🔡`:abcd:` 🔠`:capital_abcd:` | loop, while, for, do, loopback, repeat, repetition, iterate, enumerate |
| 🚧`:construction:` 🚨`:rotating_light:` ⚠️`:warning:` ⌛️`:hourglass:` ⏳`:hourglass_flowing_sand:` ⏲`:timer_clock:` ⏱`:stopwatch:` 🚦`:vertical_traffic_light:` 🚥`:traffic_light:` | temporary, work in progress, WIP, pend, wait, suspend, block, hinder |

## Look further

See emoji [cheatsheet][cheatsheet] for a complete list of emojis that you can use on GitHub or other platforms.

[parmentf]: https://gist.github.com/parmentf/035de27d6ed1dce0b36a
[cheatsheet]: https://www.webfx.com/tools/emoji-cheat-sheet/