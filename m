Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2224E90772C
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2024 17:43:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 966993854AD
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2024 11:43:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718293405; bh=D7YUHhH122+MwMQZZx9K/sHJzE0XK+HPZtD2P6AV4b4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=e89QUlMuDmlhGATsd2j38+PXxc43IhOgKSG2c7ivoaMy4DN2QpHumOlYph4CAnhuS
	 4oNm9+87guaVhJ3gjzwDpiiNkncR1g2uHbjFqpNiYb4nW0q9JQCmJrpWULpiZDHSeJ
	 +q0QQE0BZ2bbEIdnH3gqYfnu0SJ+5UOha9G3KrJotnp6FRWN8eAL47MrIrvjVTuOiz
	 Nug6vQmGw7+qq9xlt5H8HKlD9p9I2m3rtjZ1svojbAxOHoL9fFyJEZgCjdMuUE4Its
	 k6FLqM9aID1aawQ73tzlj5oD3QZJ4LB1zB11Us0L+MiaZPnVzbRIG15tXHmCesPY75
	 QoSFOhHPAWMYg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CCD61385435
	for <usrp-users@lists.ettus.com>; Thu, 13 Jun 2024 11:42:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718293368; bh=jeHNEMfRskOYwrzQVKMiwuFVK07nz4hv6ZCMEV+Qjno=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=0Wy/cleJOnrMEHyG72EX7uLV576OdlApln0IDwHWfsRLMrxoB1F7TfSH3d30yQamp
	 SDqBMJ3WOqXTl31nBMqpr4UxL333Oc1QGn5jK29o5NcjiwtQZhhryaJisciyDIGuJo
	 tnJjRUnX1he5infDmdOUEW2jHT1UuZrsWtWrsA3pCHjxwO0e5WcNcvGb5I05Daarkz
	 rYUWkIdAEny9ji1gLBUhQDWdd2+O1FrDKeqyaC1aibJjra1B5xmCtpv0TeAsMmFV/V
	 sNYVouZdh/w6HigZyp1Km0u6fAgoXFhMnuc3zxP9/vK3zKNEpCxdTmeVs5FODINvtq
	 se8adD/WfMejw==
Date: Thu, 13 Jun 2024 15:42:48 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <bSGPB30umUSxl6M3P9hGE3krSzNhfkFXdT7CiAOyljE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: d5f3ee014ca842f3ad27ba106d745144@dlr.de
MIME-Version: 1.0
Message-ID-Hash: HS25CXHZEMQBY5YBIEVN524ERZJ6EEQC
X-Message-ID-Hash: HS25CXHZEMQBY5YBIEVN524ERZJ6EEQC
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building OOT RFNoC modules for GNURadio 3.10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HS25CXHZEMQBY5YBIEVN524ERZJ6EEQC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2809533478428234576=="

This is a multi-part message in MIME format.

--===============2809533478428234576==
Content-Type: multipart/alternative;
 boundary="b1_bSGPB30umUSxl6M3P9hGE3krSzNhfkFXdT7CiAOyljE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_bSGPB30umUSxl6M3P9hGE3krSzNhfkFXdT7CiAOyljE
Content-Type: text/plain; charset=us-ascii

Hello Philipp,

Many thanks for creating an example how to make a grc for gain RFNoC block from the rfnoc-example.

It works and it saved me some time.

Maybe this can be distributed somewhere (with gr-uhd?) or at least shown on some wiki, so it could make life easier for more people in the absence of up-to-date gr-ettus (question to UHD/gr-uhd maintainers)?

Best Regards,\
Piotr Krysik

--b1_bSGPB30umUSxl6M3P9hGE3krSzNhfkFXdT7CiAOyljE
Content-Type: text/html; charset=us-ascii

<p>Hello Philipp,</p><p>Many thanks for creating an example how to make a grc for gain RFNoC block from the rfnoc-example.</p><p>It works and it saved me some time.</p><p>Maybe this can be distributed somewhere (with gr-uhd?) or at least shown on some wiki, so it could make life easier for more people in the absence of up-to-date gr-ettus (question to UHD/gr-uhd maintainers)?</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_bSGPB30umUSxl6M3P9hGE3krSzNhfkFXdT7CiAOyljE--

--===============2809533478428234576==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2809533478428234576==--
