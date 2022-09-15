Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6305B91DC
	for <lists+usrp-users@lfdr.de>; Thu, 15 Sep 2022 02:42:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C20D383C77
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 20:42:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663202540; bh=MG4mkrwTHkv3Qj6WqqRZH31g5Xqyz/eLPiJLywpb+Ds=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=uB3CsYdk8dx5oTsbvh4SbSxkRwFxZPlynwJF7DBtOhdXY1tbz7BVMZuawY3MPiXgx
	 MYNe1N1h15Tqyu1suJXp9o2TaPUySmD4iplqIcKFgb994KAhjabuYt2bBCyzZBEU6D
	 rTo0VV/6YRaL5lyQ1fwG4VnppS+1SORNUZkwPBxDlbQj8HuaoQkKKFOIH8KTg223o1
	 k2GFB1e4x7Q4GcPKGl3sS4hbUxYqwB3oWMGL3JRVv+nukItzFVjnfYo4PxTo+KgXg3
	 KpM1JpemcgvmFLgng8hzU4eyctKAFMMaBMj/bbEe56N8vpyxlXvZZTde/6kfl/j1qD
	 SligjCKEP+loQ==
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	by mm2.emwd.com (Postfix) with ESMTPS id EC166380014
	for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 20:41:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="azCHkQH3";
	dkim-atps=neutral
Received: by mail-il1-f178.google.com with SMTP id k13so7211547ilc.11
        for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 17:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=qUc8JZ/PSY/+0qlqCqs0D8huPY9u4r+ZARTwf26Lbm0=;
        b=azCHkQH3BBVBcMlomsgDmr7OClJKjXKxoQ0JxKPLY5blRcD0xQwTZBS6wRAXFd/5LN
         Y4JsrMfnJiQTbBsdCXNhheAUjEEkwIpt3zR1ES7zt4KqKJEGM7wnRkYgvk8XPARYOQB4
         /tBd/OZoQtLfMx62TU67YIgq4YXykGrSFXqNKWWlEzcorUeTgzPpD/VqLh6Y/v+HS1Zj
         5bpdzznJnDS/WA92bmxLnL59hw5nHpJnuvEc4qA+rPRjxdIqQpRyssKKG2RNCAH5+Agu
         pI580ELW26ruXmECJqoOHX9jZnrysvnEAYfEj6ft+0aiWggSJDQZg4xA8cwbyKNat01V
         8xIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=qUc8JZ/PSY/+0qlqCqs0D8huPY9u4r+ZARTwf26Lbm0=;
        b=4OFCVpr1IGs4NRWnMbzccyfsyAHb5pIi2kcTDitr+NSNv8zhld7qTFs4w20e1E8XoQ
         j0OY9JF19dlXKfBCDJp7D9MQ+prrMcJnKQ4AFcuQGlkDKU95rK2F6Fl8Rhcv27aTofZo
         +a5nDc0G/5ZoytcwEcOHCfP4vajE07CimECIb8zoiW6KzgwlFZbIiJyVL280hVNLgyUo
         5hTNxwYYVwWCHanJ+dyvPcctIezc6dQFg4cho3jM/TWZq9Mas54/r1qiH9LnzYp2Jtvy
         w1wyaOcNVK7jZQDWakmuhLcHLotQKRoVWzLQwzjMzwtsrNQFssf4JsWDVZ0VAziiCIne
         pAZA==
X-Gm-Message-State: ACgBeo0URI57Y2ElD16QNywh37xuHX8ORyx6Vyi0ridi/c5/oj0EyAYP
	8WNcky6AHeF1FjVl1CL9ZE6hQAUTFWwU80DNV1Vw1SSwWZMQUtdg
X-Google-Smtp-Source: AA6agR6H9oh7GYNoI8fInytaTwQwFH1Zz+aD1l30EPiaoJB77pfgVCCgZQ4i4OenjGQRJCeS4FBMFbOwPjhH9HKRFCs=
X-Received: by 2002:a05:6e02:eea:b0:2eb:37a4:26d1 with SMTP id
 j10-20020a056e020eea00b002eb37a426d1mr15569846ilk.288.1663202469250; Wed, 14
 Sep 2022 17:41:09 -0700 (PDT)
MIME-Version: 1.0
References: <KrQPMifKSF0coFKMQej2bH2vaF7jbszkyw2xMsXA0ZA@lists.ettus.com>
 <CAMMoi3tLd7c7QkufZbRQdn1WjEn2KUO8QTTLxhHHWn4+x7Nubw@mail.gmail.com> <CACaXmv_fBnm0uMRPfTiDx34yEpLtsb437coQP+V4AihFcvf0ew@mail.gmail.com>
In-Reply-To: <CACaXmv_fBnm0uMRPfTiDx34yEpLtsb437coQP+V4AihFcvf0ew@mail.gmail.com>
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Wed, 14 Sep 2022 19:40:32 -0500
Message-ID: <CACaXmv9bGeOK3YsUcHnDVB6bGSh0pneqTXNc4TxmRLxV+A5pww@mail.gmail.com>
To: Richard Bell <richard.bell4@gmail.com>
Message-ID-Hash: NO4KYPDAMYBMPGRUZRGINSQKHOBTNV23
X-Message-ID-Hash: NO4KYPDAMYBMPGRUZRGINSQKHOBTNV23
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Eduard Sivolenko <eduard.sivolenko@ni.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 Multi-channel Transmit
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NO4KYPDAMYBMPGRUZRGINSQKHOBTNV23/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0332115638817060849=="

--===============0332115638817060849==
Content-Type: multipart/alternative; boundary="0000000000005ea3e305e8ac80a5"

--0000000000005ea3e305e8ac80a5
Content-Type: text/plain; charset="UTF-8"

Further clarification.  The N310 has four channels, where the AD9371
provides two channels on each of the two daughterboards.  So what I
mentioned a moment ago applies to each of the two N310 daughterboards.  So,
on one daughterboard, you cannot independently tune, but across the two
N310 daughterboards, you can independently tune.

I hope that clarifies, and doesn't add more confusion.  Please let me know
if you have any further questions.

--Neel Pandeya
+1-512-683-6408



On Wed, 14 Sept 2022 at 19:36, Neel Pandeya <neel.pandeya@ettus.com> wrote:

> Hello Richard Bell:
>
> The issue here is that the AD9371 on the N300/N310 has the same limitation
> as with the AD9361 on the USRP B200/B210, where the LO is shared between
> the two Tx channels, and between the two Rx channels.  So it is not
> possible to independently tune between the two Tx channels, or between the
> two Rx channels.
>
> --Neel Pandeya
>
>
>
> On Wed, 14 Sept 2022 at 16:29, Richard Bell <richard.bell4@gmail.com>
> wrote:
>
>> Hi Eduard,
>>
>> Yes that was my mistake. I am talking about the N310 family.
>>
>> Richard
>>
>> On Wed, Sep 14, 2022 at 1:13 AM <eduard.sivolenko@ni.com> wrote:
>>
>>> Hello Richard,
>>>
>>> In the title, you mentioned N310. However, the description is about E310.
>>>
>>> Could you please clarify the USRP family, i.e. N or E?
>>>
>>>
>>> Thanks,
>>>
>>> Eduard
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000005ea3e305e8ac80a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif">Further clarification.=C2=A0 The N310 has four=
 channels, where the AD9371 provides two channels on each of the two daught=
erboards.=C2=A0 So what I mentioned a moment ago applies to each of the two=
 N310 daughterboards.=C2=A0 So, on one daughterboard, you cannot independen=
tly tune, but across the two N310 daughterboards, you can independently=C2=
=A0tune.</div><div class=3D"gmail_default" style=3D"font-family:verdana,san=
s-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdan=
a,sans-serif">I hope that clarifies, and doesn&#39;t add more confusion.=C2=
=A0 Please let me know if you have any further=C2=A0questions.</div><div cl=
ass=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><d=
iv><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signa=
ture"><div dir=3D"ltr"><font face=3D"verdana, sans-serif">--Neel Pandeya</f=
ont><div><font face=3D"verdana, sans-serif">+1-512-683-6408</font></div><di=
v><br></div></div></div></div><br></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, 14 Sept 2022 at 19:36, Neel Pande=
ya &lt;<a href=3D"mailto:neel.pandeya@ettus.com">neel.pandeya@ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr"><div><font face=3D"verdana, sans-serif">Hello=C2=A0Richard Bel=
l:</font></div><div><font face=3D"verdana, sans-serif"><br></font></div><di=
v><font face=3D"verdana, sans-serif">The issue here is that the AD9371 on t=
he N300/N310 has the same limitation as with the AD9361 on the USRP B200/B2=
10, where the LO is shared between the two Tx channels, and between the two=
 Rx channels.=C2=A0 So it is not possible to independently tune between the=
 two Tx channels, or between the two Rx channels.<br></font></div><div><fon=
t face=3D"verdana, sans-serif"><br></font></div><div><div dir=3D"ltr"><div =
dir=3D"ltr"><div><font face=3D"verdana, sans-serif">--Neel Pandeya</font></=
div><div><font face=3D"verdana, sans-serif"><br></font></div><div><br></div=
></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Wed, 14 Sept 2022 at 16:29, Richard Bell &lt;<a href=
=3D"mailto:richard.bell4@gmail.com" target=3D"_blank">richard.bell4@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr">Hi Eduard,<div><br></div><div>Yes that was my mistake. I=
 am talking about the N310 family.</div><div><br></div><div>Richard</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Wed, Sep 14, 2022 at 1:13 AM &lt;<a href=3D"mailto:eduard.sivolenko@ni.com=
" target=3D"_blank">eduard.sivolenko@ni.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><p>Hello Richard,</p><p>In the t=
itle, you mentioned N310. However, the description is about E310.</p><p>Cou=
ld you please clarify the USRP family, i.e. N or E?</p><p><br></p><p>Thanks=
,</p><p>Eduard</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--0000000000005ea3e305e8ac80a5--

--===============0332115638817060849==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0332115638817060849==--
