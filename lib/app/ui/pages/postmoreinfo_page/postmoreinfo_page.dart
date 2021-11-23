import 'package:companion/app/ui/global_widgets.dart/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_icons.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';

import '../../../controllers/postmoreinfo_controller.dart';
import 'widgets/bottom_send_icon_widget.dart';
import 'widgets/comment_widget.dart';

class PostmoreinfoPage extends GetView<PostmoreinfoController> {
  const PostmoreinfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonWidget(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Секреты и фишки DotA 2"),
            Row(
              children: [
                Icon(
                  Icons.bookmark_outline,
                  color: Theme.of(context).iconTheme.color,
                ),
                Icon(
                  Icons.share,
                  color: Theme.of(context).iconTheme.color,
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(screenPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      // maxRadius: 40,
                      backgroundImage: AssetImage(
                          "assets/images/dummy_images/avatars/ava9.png"),
                    ),
                    const SizedBox(
                      width: defaultPadding,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ЯНУР",
                          style: textRegular16,
                        ),
                        Text(
                          "Пон.,17 октября • 15 мин.",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white.withOpacity(0.50)),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const Text("Секреты и фишки DotA 2",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: "Oxanium")),
                const SizedBox(
                  height: defaultPadding,
                ),
                const Text(
                    """ Что бы получить максимум эффективности от лечения здоровья\маны, нужно перед лечением выложить предметы которые увеличивают здоровье\ману. Или же переключить характеристику Power Treads на ловкость. Главное делать это под вышкой или в укромном месте, и желательно делать это быстро.


      Довольно легко можно избежать смерти от ульты Зевса или Снайпера если вы уже отступаете и имеете при себе Smoke of Deceit, прожмите их если увидете что в вас целится снайпер или если вы переживаете что зевс может вас убить ультой. "Важно: быть на расстоянии 1100 точек и дальше от вышек и героев, что бы было понятнее, это чуть меньше расстояния полностью прокаченного хука пуджа." Хоть Smoke of Deceit и являются инвизом, но вся фишка в том что этот инвиз подобен ульте сларка. И не раскрывается True Sight от способностей героев или аурой фонтана.


      Насчет ауры фонтана отдельная тема. Если вы играете за фуриона и знаете что враги уже подняли ваш гем, то вы можете спокойно его себе вернуть. Для удачной кражи гема с вражеской базы нужно убедиться что никого на вражеском фонтане нет, это можно сделать двумя путями, либо пустив ракету Клокверка, либо проверив наличие всех 5 героев на карте, если все 5 героев находятся на линиях, то смело юзайте Smoke of Deceit и телепортируйтесь на вражеский фонтан. Подняв гем позаботьтесь о том что бы у вас был либо свободный слот для свитка телепорта, либо уже купленный свиток телепорта.


      Играя за Рикимару, можно избежать раскрытие невидимости путем покупки следущих предметов: Difussial Blade, Manta Style, Eul Scepter. Данные предметы имеют активные способности которые очистят с вас дасты. Что бы обеспечить Себе еще большую безопасность, узнав что соперники купили сентри варды, купите либо гем, но будьте оккуратны, если вы новичок то думаю стоит обойтись либо покупкой тех же вардов, либо же покупкой некрономикона 3 уровня. Которые будут раскрыватьвражеские варды, вражеские варды порой тяжело уничтожить и за этим занятием вас могут попросту убить. Так что не пожалейте купить себе танго, танго убивает вард с первого заряда, причем с довольно большого расстояния. Если же против вас враги собрали necronomicon 3 уровня, то не отчаивайтесь, покупка Diffusal Blade поможет вам убивать крипа который обладает аурой True Sight. Причем не раскрывая инвиза. Но будьте осторожны. При уничтожении этого крипа вам будет нанесено 600 чистого урона. Если у вас меньше 800 хп то убивать """),
                const Divider(),
                Row(
                  children: const [
                    Icon(Icons.favorite_outline),
                    SizedBox(
                      width: defaultPadding / 4,
                    ),
                    Text("14 Нравится ")
                  ],
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const Text("3 комментария"),
                const SizedBox(height: defaultPadding),
                const CommentWidget(
                  avatarPath: "assets/images/dummy_images/avatars/ava8.png",
                  nickname: "Beluga",
                  comment: "Спасибо, сохранил",
                  date: "17 октября • 22:01",
                ),
                const CommentWidget(
                  avatarPath: "assets/images/dummy_images/avatars/ava2.png",
                  nickname: "Skittle",
                  comment:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Volutpat et sit bibendum est auctor eu commodo. Duis velit augue id a at ornare.",
                  date: "17 октября • 22:01",
                ),
                const CommentWidget(
                  avatarPath: "assets/images/dummy_images/avatars/ava4.png",
                  nickname: "Pablo",
                  comment:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id aliquet blandit non, rhoncus gravida interdum dui nam. Et enim habitant feugiat morbi nunc, quis. Blandit egestas urna, nunc, ligula adipiscing ut congue. Ultrices ante nullam vestibulum commodo, cras mauris diam hac amet.",
                  date: "17 октября • 22:01",
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: screenPadding, vertical: defaultPadding),
        child: Row(
          children: [
            const BottomSendIconWidget(
              icon: CompanionIcons.icon_artworkprofile,
            ),
            Container(
                width: size.width - 188,
                padding: EdgeInsets.only(left: 12, right: defaultPadding / 2),
                child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                    padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Ваш комментарий...",
                          style: textRegular14Post,
                        )))),
            const BottomSendIconWidget(
              icon: Icons.image_outlined,
            ),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            const BottomSendIconWidget(
              icon: Icons.send,
            ),
          ],
        ),
      ),
    );
  }
}
