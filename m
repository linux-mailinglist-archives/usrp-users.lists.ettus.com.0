Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6159709868
	for <lists+usrp-users@lfdr.de>; Fri, 19 May 2023 15:36:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 13FF23846ED
	for <lists+usrp-users@lfdr.de>; Fri, 19 May 2023 09:36:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684503364; bh=7TBweVLAKf5qbPsk6DQZSBppUt9VR2m3VHNK2HcIoB8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ky7rHNQEks1/JeTvFcKsBERoNqklQ0jZwbmvLS3VzsgobsEWC3V6vPk2m/eYL7OJh
	 eWimov/Kl2ijTDCiZphjqWJTynP7FOhwUj58yCI8758mbp6aSguyRBOEJN0Ek5s7lg
	 hyiMSQXlgUmRXosA221ndADBSvgclHrjteDFmNPm3tO0qbPqqxUF+J6CxFcOmklBZu
	 /aidysLyZClA2DFLop589ZkAr4cwAKZvEcNOIbg/DIhu3paGmUEuaQp0v4Gn6LASG+
	 zI/EfbYbHgehktoDqejuO5WA1YUlr3+skL1N9jahjQ53BAKuwyp2oRoAEt2JqJAA+4
	 jzpXpQcumn3ow==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id AF22438483A
	for <usrp-users@lists.ettus.com>; Fri, 19 May 2023 09:35:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="qgrN+GLH";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-96f53c06babso226626166b.3
        for <usrp-users@lists.ettus.com>; Fri, 19 May 2023 06:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1684503306; x=1687095306;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5zuNlUq4jMY2+4B4P3urgcMMl1Gor6UbNRmWrTjo1Yw=;
        b=qgrN+GLHifoRTpQSW7CgKNMnhFTF1cn5tOkm23u2PE9ghwqj5RSLtK9jyuq9E3p6EV
         G/ssinvgY1Nyiiy2ddBA+gtsHBmEtWreMwrv/kSZhiaz6gtkHvq4zHJ8ib/osgvTBFB7
         V2G7Vi3HXCSvillXodx2ov9Jlp01ybSDDAcWYPW8b/1DfZ49uZF6jMrdFn3EJ0AwDHm9
         oUYsIMEMuRQHJB6EO0XxXFq67Fkaj++7AENBCn9bNgTUkxQaNOxG67AwrEAkWAuRmpyr
         PwbpEjLweZP3NS6jFFpd7BuWyD9pOIZ+HwSBkNS/d9HfJUG5blrGdjGLxiNjrhcrgAvz
         uPuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684503306; x=1687095306;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5zuNlUq4jMY2+4B4P3urgcMMl1Gor6UbNRmWrTjo1Yw=;
        b=fp0xTdu1koJUl1EGeAmcXmALu6N1NDhpBIWHUW9+PPZyLizuRJzxrrBn64p4uWrSGs
         bCV4///UNS4u6h87kQhh6AiQOHL8tB1wSWGmg9j05/uXNOXa8vXbxeFVTiM1Qsv2kTaH
         Gm6sZpJogrzZnE5Z2Mg8V9cNTaSkoQnYLo9Is8IXQll785o659mOWRck/y7akcNUyhB9
         93K8EsffFES8LxVeyWJmZ+2y3xSf5Uvx69k+TI6ToxsTD3JPNIM6eLxdR631JaEWOBZ1
         K9Kz+Ftv21Hr4dBgRTeCBvjz8pKLvTkuowsuO4w7MMSRavI1NsG5S3ksTdynWS7esOzt
         ih8g==
X-Gm-Message-State: AC+VfDzvy/9ZirqrUIBaL6KOh/pbY7oivdFQNRn+jyJUPq5EYGU1nFET
	TJd6JSovfDQ61+HAmMiQb3GvtcESdEPd4/+SWR6JKGaRxd3Am5vKyXjOxw==
X-Google-Smtp-Source: ACHHUZ5vPt5yVpVREoVENp6MoyILNHeGWfZ9kzkxKSb1NA0IX5rXWhkMwKiykANBwjbX8Dvff2C1PhKrHzappTMEnNE=
X-Received: by 2002:a17:907:3e8c:b0:96a:6939:11af with SMTP id
 hs12-20020a1709073e8c00b0096a693911afmr2086386ejc.50.1684503306395; Fri, 19
 May 2023 06:35:06 -0700 (PDT)
MIME-Version: 1.0
References: <MJqNiMd8Ab8YjNoIMk4H4CTTeDd9HlhMRNljp0XBe8@lists.ettus.com>
In-Reply-To: <MJqNiMd8Ab8YjNoIMk4H4CTTeDd9HlhMRNljp0XBe8@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 19 May 2023 08:34:49 -0500
Message-ID: <CAFche=gYq5ctyMW7_GVrCzhr8WxcjQz3ydNkV6geHAUS72K=bQ@mail.gmail.com>
To: a.feta@rheagroup.com
Message-ID-Hash: BSCY3FIWPJL2TAF6652DF24YVMQVJJTS
X-Message-ID-Hash: BSCY3FIWPJL2TAF6652DF24YVMQVJJTS
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 not powering on
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BSCY3FIWPJL2TAF6652DF24YVMQVJJTS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9060182242052846431=="

--===============9060182242052846431==
Content-Type: multipart/related; boundary="00000000000033a64f05fc0bfdda"

--00000000000033a64f05fc0bfdda
Content-Type: multipart/alternative; boundary="00000000000033a64e05fc0bfdd9"

--00000000000033a64e05fc0bfdd9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

 Hi Arjan,

I have not heard of this before. It should be as simple as connecting an
appropriate AC cable to the X410 power supply brick, plugging the AC cable
into the wall, then plugging the 6-pin power cable into the X410 and
pressing the power button. If you haven't already, try disconnecting
everything from the X410 itself except the power cable and powering it on.
Also try different AC cables (the one that connects the power supply brick
to the wall socket). If you have a voltage meter you could also measure the
voltage on the power supplies to confirm they're OK. I suggest you contact
support@ettus.com if you can't get it to work.

[image: plug.png]

Wade

On Fri, May 19, 2023 at 2:55=E2=80=AFAM Arjan Feta via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Sorry, no question in the message :).
>
> Had anyone had this kind of issue before?
>
> Thanks,
>
> Arjan
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000033a64e05fc0bfdd9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>
Hi Arjan,</div><div><br></div><div>I have not heard of this before. It shou=
ld be as simple as connecting an appropriate AC cable to the X410 power sup=
ply brick, plugging the AC cable into the wall, then plugging the 6-pin pow=
er cable into the X410 and pressing the power button. If you haven&#39;t al=
ready, try disconnecting everything from the X410 itself except the power c=
able and powering it on. Also try different AC cables (the one that connect=
s the power supply brick to the wall socket). If you have a voltage meter y=
ou could also measure the voltage on the power supplies to confirm they&#39=
;re OK. I suggest you contact <a href=3D"mailto:support@ettus.com">support@=
ettus.com</a> if you can&#39;t get it to work.</div><div><br></div><div><im=
g src=3D"cid:ii_lhuljtkq1" alt=3D"plug.png" width=3D"191" height=3D"91"></d=
iv><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 19, 2023 at 2:55=E2=80=AFA=
M Arjan Feta via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><p>Sorry, no question in the message :).</p><p=
>Had anyone had this kind of issue before?</p><p>Thanks,</p><p>Arjan</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000033a64e05fc0bfdd9--

--00000000000033a64f05fc0bfdda
Content-Type: image/png; name="plug.png"
Content-Disposition: inline; filename="plug.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_lhuljtkq1>
X-Attachment-Id: ii_lhuljtkq1

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
PZyhkP4P5I6XAHJ3oj4AAAAASUVORK5CYII=
--00000000000033a64f05fc0bfdda--

--===============9060182242052846431==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9060182242052846431==--
