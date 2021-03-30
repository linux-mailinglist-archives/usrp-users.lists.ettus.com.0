Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9669934F442
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 00:32:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D10A3383FE4
	for <lists+usrp-users@lfdr.de>; Tue, 30 Mar 2021 18:32:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="bAUJ7lxL";
	dkim-atps=neutral
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by mm2.emwd.com (Postfix) with ESMTPS id AE5B33832FA
	for <usrp-users@lists.ettus.com>; Tue, 30 Mar 2021 18:31:55 -0400 (EDT)
Received: by mail-ot1-f48.google.com with SMTP id 68-20020a9d0f4a0000b02901b663e6258dso17049474ott.13
        for <usrp-users@lists.ettus.com>; Tue, 30 Mar 2021 15:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MTd2RKiuYq8tLzeeDMykQwMymcZuMspS6mhywuxik2A=;
        b=bAUJ7lxLdU+VSAX5FSZN/2oRxxIvPw+XycrWXMPWIa/kevOIGDhWw4QUUsCoF+wzy0
         AweBusMrc8E6AOgQ0WQ0HTRpvMvja8nuVc0Y5GnS7XqQBx0ubcs8Z/Pi4b9pSmJWNBXL
         VONvWatwEt4wMKK18tEZzAJ1noxh0A96Bh4sOpmIMWvi0lNHzlpEl1VOBXOxN0VjI5Kx
         rEO6P7t86ieT/Pl4PKoBhshfEpPG665EIH4YBEIL/9FM4LztdCexxPDneVgmJ+TrUaY0
         eWwyvjYCxO4sQzVrTL+psKDrArlATnL9H+86z1zum1g5PrZCzI7WIoNYKMiTUnPWQy2O
         yEOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MTd2RKiuYq8tLzeeDMykQwMymcZuMspS6mhywuxik2A=;
        b=mZg0mzmiA9kKVHgmFVVcByyNIB64Kb6D+lQN9S8pufDbqAJyUx/W/33KiZ9MJuBLTy
         4SdO3MN03eNa1RbZi84ikcfwrs74Dpp+dBbySJiXfsjYmWiZqLC/QpOWOdyesFLGGiuh
         JiuTvUzVZkIiIdaUlzLZIHmW7abedqP+6/8AP/KQk0JNNk9gYeqMy93oaTK5wGoEHKOS
         NMYNyfusmsmmCpud6g6NGeIFNY8QDZvCeDBnk3EwwkYmcIakFrCx6OGuAdLEMQOFcJpK
         h5pgUNxoDlkCvq783Qglb5bYUThy/K3zMdsPU8f0h9CkTNPIER5oHd1rQGQGPlKngMbb
         p76A==
X-Gm-Message-State: AOAM530ZED2Ex6GsUAHDpUiiXnzCQZnHKALDkBBmOiDp4OlAZVhkQ4C0
	RbRFx+qrzVZtt1e0UGWhHvE2Y3XIknetcelqasCX7iZg
X-Google-Smtp-Source: ABdhPJxEYEliHPFBuRGGU831DeKMlWESKC88aEkd6GgL9jlO682jji8GsVt729DAWv06DK0uMDJZeIV9HR3k7wfSSDs=
X-Received: by 2002:a05:6830:1282:: with SMTP id z2mr144934otp.30.1617143515054;
 Tue, 30 Mar 2021 15:31:55 -0700 (PDT)
MIME-Version: 1.0
References: <09a52b1a9fd7467b857ab4a7e3c4427e@gtri.gatech.edu> <CAEXYVK7orZPVgXAWrf1oT2Krw8_xecsF39Vat23k04x7r3P63A@mail.gmail.com>
In-Reply-To: <CAEXYVK7orZPVgXAWrf1oT2Krw8_xecsF39Vat23k04x7r3P63A@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 30 Mar 2021 17:31:39 -0500
Message-ID: <CAFche=hVH+=O_vcHF6JG8TcM2_dug1GaUuoZ-pgnh0EWPMjCuA@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: 73Z5Z2Z7CQJPGTM4FKVITAWLDPGARSGL
X-Message-ID-Hash: 73Z5Z2Z7CQJPGTM4FKVITAWLDPGARSGL
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC data_tready on AXI Bus
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/73Z5Z2Z7CQJPGTM4FKVITAWLDPGARSGL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5619766610178156292=="

--===============5619766610178156292==
Content-Type: multipart/alternative; boundary="000000000000c4140205bec89054"

--000000000000c4140205bec89054
Content-Type: text/plain; charset="UTF-8"

It's based on AXI4-Stream, so you might look into that protocol for a
deeper understanding. Here's a link to the relevant section of the spec
(Section 2.2.1:  Handshake process)

HTML Doc:
https://developer.arm.com/documentation/ihi0051/a/Interface-Signals/Transfer-signaling/Handshake-process

PDF Link:
https://documentation-service.arm.com/static/5f914c33f86e16515cdc2b26?token=

Thanks,

Wade

On Tue, Mar 30, 2021 at 4:57 PM Brian Padalino <bpadalino@gmail.com> wrote:

> The producer should always be producing when it can so push tvalid as
> often as you want.
>
> The data is only accepted by the other side by tready.  Don't wait for
> tready to push tvalid.
>
> Brian
>
> On Tue, Mar 30, 2021 at 5:51 PM Hodges, Jeff via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On the AXI Bus, what is the the behavior of data_tready? Does it go low
>> at the conclusion of each packet? If not, how long after de-asserting
>> data_tvalid is it allowable to re-assert data_tvalid and begin another
>> packet?
>>
>>
>> Thanks,
>>
>>
>> Jeff
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c4140205bec89054
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It&#39;s based on AXI4-Stream, so you might look into=
 that protocol for a deeper understanding. Here&#39;s a link to the relevan=
t section of the spec (Section 2.2.1:=C2=A0 Handshake process)<br></div><di=
v><br></div><div>HTML Doc:<br></div><a href=3D"https://developer.arm.com/do=
cumentation/ihi0051/a/Interface-Signals/Transfer-signaling/Handshake-proces=
s">https://developer.arm.com/documentation/ihi0051/a/Interface-Signals/Tran=
sfer-signaling/Handshake-process</a><div><br></div><div>PDF Link:<br></div>=
<div><a href=3D"https://documentation-service.arm.com/static/5f914c33f86e16=
515cdc2b26?token=3D">https://documentation-service.arm.com/static/5f914c33f=
86e16515cdc2b26?token=3D</a></div><div><br></div><div>Thanks,</div><div><br=
></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Tue, Mar 30, 2021 at 4:57 PM Brian Padalino &l=
t;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">The producer should always be producing when it can so push tvalid as oft=
en as you want.<div><br></div><div>The data is only accepted by the other s=
ide by tready.=C2=A0 Don&#39;t wait for tready to push tvalid.</div><div><b=
r></div><div>Brian</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, Mar 30, 2021 at 5:51 PM Hodges, Jeff via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_9047388953935778787gmail-m_-1351577509013592789divtagdef=
aultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,H=
elvetica,sans-serif" dir=3D"ltr">
<p><span>On the AXI Bus, what is the the behavior of data_tready? Does it g=
o low at the conclusion of each packet? If not, how long after de-asserting=
 data_tvalid is it allowable to re-assert data_tvalid and begin another pac=
ket?</span></p>
<p><span><br>
</span></p>
<p><span>Thanks,</span></p>
<p><span><br>
</span></p>
<p><span>Jeff</span><br>
</p>
</div>
</div>

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

--000000000000c4140205bec89054--

--===============5619766610178156292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5619766610178156292==--
