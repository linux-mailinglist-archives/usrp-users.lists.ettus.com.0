Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 369255B9C47
	for <lists+usrp-users@lfdr.de>; Thu, 15 Sep 2022 15:47:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B410B3844AB
	for <lists+usrp-users@lfdr.de>; Thu, 15 Sep 2022 09:47:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663249655; bh=B7sSaUV6xjFybVo6laZ7ViIdqu0S/spAovfoycU56aM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=YVyVFLP42IUh1aIBNviEXFSF7fVVQ9G0Q+yU3M1GiG/XtNW2aTM3xW30JPS6ZrTKf
	 VPlBiI0djzFfoNix4RJt46ZmlATiuvV/sgrHeBXELaZRzC/XLGJD07JeV6IDSe7DfZ
	 iVof4x/TX3H6OE9dfXZz2Ub7q3cPPJypuU0XDAm6Xx2nGWf9bx/9jMey0zgQm0sZVU
	 6n+/N9VuLVF2a2VWOOSJ21fdGgKaxLW+tT0XcYLONh3rgtdHm5GHsjYUpk2l+aFYsF
	 UE0rNQoyBm8D3jctQrUqAX5eOGunn4ol5sa3xdak61B73lZdVAvVUxHOmOeSJhGnQ2
	 R+hmQlkHS8wQA==
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 1F8D5380AC9
	for <usrp-users@lists.ettus.com>; Thu, 15 Sep 2022 09:30:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="BXg4tpbf";
	dkim-atps=neutral
Received: by mail-yb1-f178.google.com with SMTP id 198so22647500ybc.1
        for <usrp-users@lists.ettus.com>; Thu, 15 Sep 2022 06:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=fCuEx9lQLAwzv9Vo0hCJT2c28M9Ruv6IlFNVX1KpcMg=;
        b=BXg4tpbf9OaBGiXTEYCdQYN1gdHxZ66C0uEesQgAAwV4LBd6QiwBggPXLzkU7CCxGC
         3Qx8jZvQ5mSp1GPdjuj/Tf2bpoKMwXPAu7TIcg6UFHa9FViDZ1i0P2wN4FR9Pjz6/Xri
         n7yyAM8gJXRYjG7K0gHnj6G819/WvRPkGSjQYBvVJiy5hay1R2b3HDd9orQTi62lXGW2
         2IT28Wt0H974JkQwfPp2Q73i259cWXCBeoGm6Q/5aOaq1nOV1iw7vVqmj1+k0/izxfU0
         3JgUggmrqQVZYQF7pfuy34j+22YLPYpkRyx2Ldo5md7W/GZXPqZTD3skDZTk+QOA58v7
         rk7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=fCuEx9lQLAwzv9Vo0hCJT2c28M9Ruv6IlFNVX1KpcMg=;
        b=zWKUUsm8TyrMa3n8m4Ko2l40xtILyGqSurXeeLK9UqldEsdiO3d9IBVDVEMNHPkFcX
         kmYTtaqyFYvA0ftj1pS++Zg5dsurHkDnD86ZX1VSSAN+4J5sdxEhA+5kJqPpu4H1Gug9
         eNsy6x23OldHBqB8c2uTCNU23Q3EWSl7aM2Z7RW7A9uxyslGyRmcGc93z1/wbXMjYMSL
         RlCXFDN3qoAHK/Ob5fOM80w1gqLeQQFGinvQjf79E70JPrfBU9TIrr4S/8Wd6oI5lg79
         Lv0Yg5P1wsYK8KkNgYwKXNaLYQIibQIkliqlJlfq6G3O+iA3yjxoyntGbu/Gx9RTW110
         5v2g==
X-Gm-Message-State: ACgBeo1K1GSVRFA5uUITtP1XX+exRPCfOe6YVQZBppdlacb22KgFt7Jc
	Tx6Eb0d2l1fqPnQLC7DiOn8C+E4z1lDauQYQJfbUvzJK+gQ=
X-Google-Smtp-Source: AA6agR69OhdH1x/W34DpMwAUvWtDIYIphUGUFhsas0KgP/9tgt7/3OEi2rZ4A/yiXFmMt8WkvM4NVmepo1UH65mcTas=
X-Received: by 2002:a05:6902:1246:b0:6ae:fd40:bab9 with SMTP id
 t6-20020a056902124600b006aefd40bab9mr17573595ybu.563.1663248612200; Thu, 15
 Sep 2022 06:30:12 -0700 (PDT)
MIME-Version: 1.0
References: <KrQPMifKSF0coFKMQej2bH2vaF7jbszkyw2xMsXA0ZA@lists.ettus.com>
 <CAMMoi3tLd7c7QkufZbRQdn1WjEn2KUO8QTTLxhHHWn4+x7Nubw@mail.gmail.com>
 <CACaXmv_fBnm0uMRPfTiDx34yEpLtsb437coQP+V4AihFcvf0ew@mail.gmail.com> <CACaXmv9bGeOK3YsUcHnDVB6bGSh0pneqTXNc4TxmRLxV+A5pww@mail.gmail.com>
In-Reply-To: <CACaXmv9bGeOK3YsUcHnDVB6bGSh0pneqTXNc4TxmRLxV+A5pww@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 15 Sep 2022 09:30:01 -0400
Message-ID: <CAB__hTTN_YjVeRvSaWVYpPcsLECc2Hz-1-qXDwZM_Rxn9VyTCQ@mail.gmail.com>
To: Neel Pandeya <neel.pandeya@ettus.com>
Message-ID-Hash: LWTUQRPGBADFDMQDBYGA7H5KDNL4MCTM
X-Message-ID-Hash: LWTUQRPGBADFDMQDBYGA7H5KDNL4MCTM
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Eduard Sivolenko <eduard.sivolenko@ni.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 Multi-channel Transmit
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LWTUQRPGBADFDMQDBYGA7H5KDNL4MCTM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6599272525078721580=="

--===============6599272525078721580==
Content-Type: multipart/alternative; boundary="000000000000b4638005e8b73e11"

--000000000000b4638005e8b73e11
Content-Type: text/plain; charset="UTF-8"

Adding to Neel's comment, while you have only one RF LO to support each
pair of channels, you can move the center frequency of one relative to the
other using digital tuning within the 125 MHz digital bandwidth.  So, if
your signal bandwidth is say 10 MHz, you could digitally tune one of them
to -50MHz and the other to +50MHz such that the signal center frequencies
were 100 MHz apart.

On Wed, Sep 14, 2022 at 8:42 PM Neel Pandeya <neel.pandeya@ettus.com> wrote:

> Further clarification.  The N310 has four channels, where the AD9371
> provides two channels on each of the two daughterboards.  So what I
> mentioned a moment ago applies to each of the two N310 daughterboards.  So,
> on one daughterboard, you cannot independently tune, but across the two
> N310 daughterboards, you can independently tune.
>
> I hope that clarifies, and doesn't add more confusion.  Please let me know
> if you have any further questions.
>
> --Neel Pandeya
> +1-512-683-6408
>
>
>
> On Wed, 14 Sept 2022 at 19:36, Neel Pandeya <neel.pandeya@ettus.com>
> wrote:
>
>> Hello Richard Bell:
>>
>> The issue here is that the AD9371 on the N300/N310 has the same
>> limitation as with the AD9361 on the USRP B200/B210, where the LO is shared
>> between the two Tx channels, and between the two Rx channels.  So it is not
>> possible to independently tune between the two Tx channels, or between the
>> two Rx channels.
>>
>> --Neel Pandeya
>>
>>
>>
>> On Wed, 14 Sept 2022 at 16:29, Richard Bell <richard.bell4@gmail.com>
>> wrote:
>>
>>> Hi Eduard,
>>>
>>> Yes that was my mistake. I am talking about the N310 family.
>>>
>>> Richard
>>>
>>> On Wed, Sep 14, 2022 at 1:13 AM <eduard.sivolenko@ni.com> wrote:
>>>
>>>> Hello Richard,
>>>>
>>>> In the title, you mentioned N310. However, the description is about
>>>> E310.
>>>>
>>>> Could you please clarify the USRP family, i.e. N or E?
>>>>
>>>>
>>>> Thanks,
>>>>
>>>> Eduard
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b4638005e8b73e11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Adding to Neel&#39;s comment, while you h=
ave only one RF LO to support each pair of channels, you can move the cente=
r frequency of one relative to the other using digital tuning within the 12=
5 MHz digital bandwidth.=C2=A0 So, if your signal bandwidth is say 10 MHz, =
you could digitally tune one of them to -50MHz and the other to=C2=A0+50MHz=
 such that the signal center frequencies were 100 MHz apart.</div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 14,=
 2022 at 8:42 PM Neel Pandeya &lt;<a href=3D"mailto:neel.pandeya@ettus.com"=
>neel.pandeya@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"font=
-family:verdana,sans-serif">Further clarification.=C2=A0 The N310 has four =
channels, where the AD9371 provides two channels on each of the two daughte=
rboards.=C2=A0 So what I mentioned a moment ago applies to each of the two =
N310 daughterboards.=C2=A0 So, on one daughterboard, you cannot independent=
ly tune, but across the two N310 daughterboards, you can independently=C2=
=A0tune.</div><div style=3D"font-family:verdana,sans-serif"><br></div><div =
style=3D"font-family:verdana,sans-serif">I hope that clarifies, and doesn&#=
39;t add more confusion.=C2=A0 Please let me know if you have any further=
=C2=A0questions.</div><div style=3D"font-family:verdana,sans-serif"><br></d=
iv><div><div dir=3D"ltr"><div dir=3D"ltr"><font face=3D"verdana, sans-serif=
">--Neel Pandeya</font><div><font face=3D"verdana, sans-serif">+1-512-683-6=
408</font></div><div><br></div></div></div></div><br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 14 Sept 2022=
 at 19:36, Neel Pandeya &lt;<a href=3D"mailto:neel.pandeya@ettus.com" targe=
t=3D"_blank">neel.pandeya@ettus.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><font face=3D"verd=
ana, sans-serif">Hello=C2=A0Richard Bell:</font></div><div><font face=3D"ve=
rdana, sans-serif"><br></font></div><div><font face=3D"verdana, sans-serif"=
>The issue here is that the AD9371 on the N300/N310 has the same limitation=
 as with the AD9361 on the USRP B200/B210, where the LO is shared between t=
he two Tx channels, and between the two Rx channels.=C2=A0 So it is not pos=
sible to independently tune between the two Tx channels, or between the two=
 Rx channels.<br></font></div><div><font face=3D"verdana, sans-serif"><br><=
/font></div><div><div dir=3D"ltr"><div dir=3D"ltr"><div><font face=3D"verda=
na, sans-serif">--Neel Pandeya</font></div><div><font face=3D"verdana, sans=
-serif"><br></font></div><div><br></div></div></div></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 14 Sept 2=
022 at 16:29, Richard Bell &lt;<a href=3D"mailto:richard.bell4@gmail.com" t=
arget=3D"_blank">richard.bell4@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Eduard,<div><br=
></div><div>Yes that was my mistake. I am talking about the N310 family.</d=
iv><div><br></div><div>Richard</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 14, 2022 at 1:13 AM &lt;<a =
href=3D"mailto:eduard.sivolenko@ni.com" target=3D"_blank">eduard.sivolenko@=
ni.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><p>Hello Richard,</p><p>In the title, you mentioned N310. However, th=
e description is about E310.</p><p>Could you please clarify the USRP family=
, i.e. N or E?</p><p><br></p><p>Thanks,</p><p>Eduard</p>

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
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000b4638005e8b73e11--

--===============6599272525078721580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6599272525078721580==--
