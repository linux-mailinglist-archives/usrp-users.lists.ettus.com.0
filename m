Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3565A7BC217
	for <lists+usrp-users@lfdr.de>; Sat,  7 Oct 2023 00:13:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E02ED3851E7
	for <lists+usrp-users@lfdr.de>; Fri,  6 Oct 2023 18:13:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696630404; bh=t9lnGUMX/OsZxflhGcm00Bxm665UqDZBlkDA6K0tSAk=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=j2xnTbcVHZ4YUrSUNCWcZdBkhttKXemdQgFFjltV0BD2JQs42IUFp/Kh+dzBIuc/5
	 ifTSIUh8VnFnP7/AfFfhgr9QjtEycXCHD9+8dhDoDyHPycHHeK76fx9d6khDduIYq6
	 Sm8JkG24TNpGJwRnEbuEWbVGaGgWm3w+tUNzETrL8DdIA1LKMjzz0UIf1AK6QLLL1T
	 e6YDTk3JDKkCmbmWeMGOmYFO/oCMUWT7S/sawRv21KNyGZqrj/1+igQ3cybjsdCpfO
	 xa9vnkkKHBdbP4PJUisMxKU1CnD199k0L1bR0hDo6DbW+dCqABGPPSVc/uoleXBwm3
	 R3Nzbn9pKKhRg==
Received: from mail.jevincanders.net (mail.jevincanders.net [172.93.158.59])
	by mm2.emwd.com (Postfix) with ESMTPS id EE5CF384F06
	for <usrp-users@lists.ettus.com>; Fri,  6 Oct 2023 18:12:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=kevincroissant.com header.i=@kevincroissant.com header.b="T/bmC3mg";
	dkim-atps=neutral
Received: from localhost (localhost [127.0.0.1])
	by mail.jevincanders.net (Postfix) with ESMTP id A9CC454AEE
	for <usrp-users@lists.ettus.com>; Fri,  6 Oct 2023 22:12:57 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.jevincanders.net
X-Spam-Flag: NO
X-Spam-Score: -0.202
X-Spam-Level: 
X-Spam-Status: No, score=-0.202 tagged_above=-9000 required=5
	tests=[DKIM_SIGNED=0.1, DKIM_VALID=-0.1, DKIM_VALID_AU=-0.1,
	DKIM_VALID_EF=-0.1, NO_RECEIVED=-0.001, NO_RELAYS=-0.001]
	autolearn=ham autolearn_force=no
Received: from mail.jevincanders.net ([127.0.0.1])
	by localhost (mail.jevincanders.net [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dw6R_vEUKMGa for <usrp-users@lists.ettus.com>;
	Fri,  6 Oct 2023 22:12:57 +0000 (UTC)
Message-ID: <1c5c626f-ad79-fd81-336e-f0cd2b5a0eb6@kevincroissant.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kevincroissant.com;
	s=mail; t=1696630377;
	bh=PybMwRbLn/D07JgjsE2+f5Ig2itN7NNsjrS5s8oLUjc=;
	h=Date:To:From:Subject:From;
	b=T/bmC3mgPobCzTXia6jwbZVlrAZxDBRqI92zH+3j3dIVcWOLU22PXd83n+HrqiflP
	 jlX0KlJgfNLkUTrmhA352WqSW0uei6KqEueswN/yFLy6Q7v7/mzDxqqQ63nb/CX4CW
	 Eh47Nk2tGar7ohvZYLOnbTQFcDw56rXeJAKaoOVI4ODdczG8Mby1yBF2FZGyBYgVbE
	 V90AAr1NIKGUvgwWEHVOItDK9gxMznpE/gOM+0pvCb1S2Owi1IsIYSqzCW9Q5E5OHl
	 fUyCwarozhWVkEI+28RslqsLsPV5KNcimhh+B3sp9jB6X8dBvtye5bm4mmc1ehvIru
	 GpINh3zrc56Tg==
Date: Fri, 6 Oct 2023 18:12:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
Content-Language: en-US
From: Kevin Croissant <kevin@kevincroissant.com>
Message-ID-Hash: OGFWZOT632IK6ZER72RUL5OA3VM2EGTH
X-Message-ID-Hash: OGFWZOT632IK6ZER72RUL5OA3VM2EGTH
X-MailFrom: kevin@kevincroissant.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Looking for an X300/X310 enclosure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OGFWZOT632IK6ZER72RUL5OA3VM2EGTH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi all,


I recently picked up a USRP X300 that needed minor repairs (all good 
now) but did not come with an enclosure - just a bare PCB. NI didn't 
reply to an email asking to buy one from them. 3D printing or sheet 
metal bending is an option, but would require making a CAD model. It's a 
long shot, but does anyone here happen to have an extra enclosure (top + 
bottom) that they're looking to get rid of / sell? Feel free to contact 
me off list.


Thanks,

Kevin
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
