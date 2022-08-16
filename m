Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCCA594E62
	for <lists+usrp-users@lfdr.de>; Tue, 16 Aug 2022 04:03:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14253380F66
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 22:03:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660615385; bh=fl+w8r7tunqHJrYM+JsobEIPMpRjSK0JEJ8/ppLRpss=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=nLGdqt0yaqBW5pTeLV59egqouqdVBRyMmgOXIiGze2GstE5ZnW0eBG5wVV+IkbmUC
	 0QKJ4bplmiXi5wDlAXYWirL6hC/19Zp7OVYrpm7RE3rYt0GBKzJal+wj7/rJv+xCqk
	 /AyKMWS7j1xlt6RnL0SyYbfd5ylRf0qNCQ+n552VPhLw2qNW4sQbAgEDw3URN7XnN3
	 J1jVyL8WnPk6DxVE4q7ZnNQFKYFVxeY4xn28uxw37MjQJneFcwASw87C3CYdyn5TWm
	 aLsxZlmdjqXspzjLhAwnQDyc85EEXSNL2r0patuQ74DjjxqxatTnTYLIkMRh+D+Pif
	 gJV/PYxhaswPQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7262F380A80
	for <usrp-users@lists.ettus.com>; Mon, 15 Aug 2022 22:01:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660615272; bh=hesolCg3svG25lKu+eDuI3l5FKoRzgiwljatSLdkJ8k=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=LZEU5moKugxQ+8FC7CIlcUCLIO8ehlwbBzlUDhr/AexB0soRGHI3hDqWzNvNSGfjI
	 +P/pLYz2ox0c9is/UMwqq+Z6/LKzRsSOmhzGERbewqA4MnW8Hl3RV79rzw8JE96qga
	 IVm7lSDnce81MMV8bEXHVGdkZEV74FrsGsk0vZTt68nrGF9qZrWGie32mgasusbPIM
	 MCWORxdKlFXtDSaVwti5qAONJwj+juZApX9GLnb/WGYUwfZO51Qvxg6Ua2Y5ZQZAVa
	 nv+gwdcss5Lndk9hUAYhkLeKqEwdQjd22ZBBmAe5c0BtdDY734YzljSwST+0m22vsj
	 9ZZWCKyB0M56A==
Date: Tue, 16 Aug 2022 02:01:12 +0000
To: usrp-users@lists.ettus.com
From: woznych@gmail.com
Message-ID: <QDTWbPMX96GY00pyOGvUWtknTgbHpSwchCFfISgmbY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAAxXO2Gty2mtQD4sEEN7d5JUyCXocE=-2bKrV+_Lk=Ls48Ux-w@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: V4AP2MU5WWGPFMVWOCH757DSGTGWAN2T
X-Message-ID-Hash: V4AP2MU5WWGPFMVWOCH757DSGTGWAN2T
X-MailFrom: woznych@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bus errors and UHD exceptions with simple I/Q recorder
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V4AP2MU5WWGPFMVWOCH757DSGTGWAN2T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3347039477053188629=="

This is a multi-part message in MIME format.

--===============3347039477053188629==
Content-Type: multipart/alternative;
 boundary="b1_QDTWbPMX96GY00pyOGvUWtknTgbHpSwchCFfISgmbY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_QDTWbPMX96GY00pyOGvUWtknTgbHpSwchCFfISgmbY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I tweaked it to make sure the buffer size is a multiple of =E2=80=9Crx_st=
ream->get_max_num_samps()=E2=80=9D and haven=E2=80=99t been able to get t=
he issue to occur. Will require more exhaustive testing, but looks promis=
ing so far since I was able to reproduce the seg fault behavior just prio=
r to trying this change out.

Thanks!

Chris

--b1_QDTWbPMX96GY00pyOGvUWtknTgbHpSwchCFfISgmbY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I tweaked it to make sure the buffer size is a multiple of =E2=80=9Crx=
_stream-&gt;get_max_num_samps()=E2=80=9D and haven=E2=80=99t been able to=
 get the issue to occur. Will require more exhaustive testing, but looks =
promising so far since I was able to reproduce the seg fault behavior jus=
t prior to trying this change out.</p><p>Thanks!</p><p>Chris</p>


--b1_QDTWbPMX96GY00pyOGvUWtknTgbHpSwchCFfISgmbY--

--===============3347039477053188629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3347039477053188629==--
