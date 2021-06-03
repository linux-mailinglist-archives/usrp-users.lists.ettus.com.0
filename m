Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9315039A57D
	for <lists+usrp-users@lfdr.de>; Thu,  3 Jun 2021 18:12:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2AEB238401E
	for <lists+usrp-users@lfdr.de>; Thu,  3 Jun 2021 12:12:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="V/s9lN20";
	dkim-atps=neutral
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id B3011384509
	for <USRP-users@lists.ettus.com>; Thu,  3 Jun 2021 12:00:37 -0400 (EDT)
Received: by mail-qt1-f180.google.com with SMTP id l17so581562qtq.12
        for <USRP-users@lists.ettus.com>; Thu, 03 Jun 2021 09:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=gEkM/D9MiG5gsFZ7/xMKeBTgYd+rCPltBR8Qske7HhM=;
        b=V/s9lN20lmwHOm3oeOOowEoZxNbaNrQyIHybN6whYTCceOjPNRaDkTMKpODoto/yiR
         //EUJXtWIMjyu88bX666jQ0e7F2Q7NzVbumjLUCU5J8XVZ474AN/TUiQDmbAurbopjJP
         gZlx0nTDynMf9Y6Wwfx4/eW26jFAk999WRFrXs6NQGQ2/IDX+iOomS5SESxLchtUzbDc
         2evl1SA+c94Jwo9R0vVKAbXF5bz+JGs3ggCPXk3ZM8OxjEarZrji6fhDNyV6XAdtIvWZ
         13w9qN5Co7R8nAxbEITODdkI4p9bkmAfEWkkgABUrWBTzGsUegp7aZlxHjZ8mYgF8EEx
         InHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=gEkM/D9MiG5gsFZ7/xMKeBTgYd+rCPltBR8Qske7HhM=;
        b=hdIOMk10pbgpFu+uL9uzI4OkLhMwuDu+6b0t/qpVGOQ8pll4PQy7iOS3InAS1yTgk+
         Dz5JraSheH7HlUcY5FzZjO8WaJ46/ak9oJEXBHfLqmeoJyexZ0FM4nM+f5KxTTfEgnzM
         gKIY+B/lzxfoxQpwAHMeRX4CXRQ8DNhl/dTbqzq6n+IuchaLKsrBsgLKDHloxiP6w59D
         3rp5UF7ZBa8vxMe/U523UFPkQx/5kK8uAruKnH0SGcFezZ2tt/U2Qx8BDrRXwlPqK3xd
         jGHsOZnZ7aheuyVAsMzD37kpPALWgkTc8lqvC16/uk5c4P7kk0/4ByKH3ixUh3uM0+3s
         cZHA==
X-Gm-Message-State: AOAM530LoRRjz03yZIQm2o9Y7R0u8GF224BvLbsbp/3Mf3IoJNXP2HsV
	BG9EOpWbTdl6iGrfm0e7ai8=
X-Google-Smtp-Source: ABdhPJwQ9lCQCTT4KgKHisBEIo3lSKS1lxHWhi3UOhRWt4sorPi94vNgB1DUVL/jG8uaZ6Z7qerlBA==
X-Received: by 2002:ac8:149a:: with SMTP id l26mr167601qtj.297.1622736037227;
        Thu, 03 Jun 2021 09:00:37 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id a22sm2213260qka.0.2021.06.03.09.00.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 09:00:36 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 3 Jun 2021 12:00:35 -0400
Message-Id: <54055AEB-AEA1-4A10-A75F-D96F3FA8652F@gmail.com>
References: <495983099.3160297.1622725504093@mail.yahoo.com>
In-Reply-To: <495983099.3160297.1622725504093@mail.yahoo.com>
To: aneesh patel <ampselectronics@yahoo.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: 6M75ADQ5YP2RDWXZNOVZTOPTURGVC334
X-Message-ID-Hash: 6M75ADQ5YP2RDWXZNOVZTOPTURGVC334
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Viktor Erdelyi <viktor@ist.osaka-u.ac.jp>, USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Center frequency drift on USRP B-series even with Octoclock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6M75ADQ5YP2RDWXZNOVZTOPTURGVC334/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7857048869158689713=="


--===============7857048869158689713==
Content-Type: multipart/alternative; boundary=Apple-Mail-8B9AE5E4-DFC1-4E1E-B966-FAE7158FCC63
Content-Transfer-Encoding: 7bit


--Apple-Mail-8B9AE5E4-DFC1-4E1E-B966-FAE7158FCC63
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Different synthesizers have different phase noise properties.=20

I suspect that if so the same test at lower frequencies on the B2xx things w=
ill improve.=20

Also the external-clock PLL in the B205 is much poorer than on the other fam=
ily members=E2=80=94B200 and B210.=20

Sent from my iPhone

> On Jun 3, 2021, at 9:05 AM, aneesh patel via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>=20
> =EF=BB=BF
> Great info and thanks for the use case. Makes sense for the precision you n=
eed for your situation.
>=20
> Since really it's just IO, basic driver calls, and instrumentation and you=
r specs support all of that (assuming no weird nuances / I say this to cover=
 myself ha), your sample methods seems great.=20
>=20
> Given there is no issue with the b-series hardware (I actually can't recal=
l if that's in spec for real life use cases but I actually learned something=
 here from looking at your charts if it is), it seems you need the higher pr=
ecision X series to get right to work unless there is a whiz-bang solution f=
or realtime clock drift corrections at the precision you need for the b-seri=
es.
>=20
> Best of luck! Lots of experience in this forum.
>=20
> Aneesh=20
>=20
> Sent from Yahoo Mail on Android
>=20
> On Thu, Jun 3, 2021 at 8:39 AM, Viktor Erdelyi
> <viktor@ist.osaka-u.ac.jp> wrote:
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-8B9AE5E4-DFC1-4E1E-B966-FAE7158FCC63
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Different synthesizers have different phase=
 noise properties.&nbsp;<div><br></div><div>I suspect that if so the same te=
st at lower frequencies on the B2xx things will improve.&nbsp;</div><div><br=
></div><div>Also the external-clock PLL in the B205 is much poorer than on t=
he other family members=E2=80=94B200 and B210.&nbsp;<br><br><div dir=3D"ltr"=
>Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On J=
un 3, 2021, at 9:05 AM, aneesh patel via USRP-users &lt;usrp-users@lists.ett=
us.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div d=
ir=3D"ltr">=EF=BB=BF<div id=3D"yiv9121330354"><div id=3D"yMail_cursorElement=
Tracker_1622725058716">Great info and thanks for the use case. Makes sense f=
or the precision you need for your situation.</div><div id=3D"yMail_cursorEl=
ementTracker_1622725161037"><br></div><div id=3D"yMail_cursorElementTracker_=
1622725161876">Since really it's just IO, basic driver calls, and instrument=
ation and your specs support all of that (assuming no weird nuances / I say t=
his to cover myself ha), your sample methods seems great.&nbsp;</div><div id=
=3D"yMail_cursorElementTracker_1622725065432"><br></div><div id=3D"yMail_cur=
sorElementTracker_1622725066330">Given there is no issue with the b-series h=
ardware (I actually can't recall if that's in spec for real life use cases b=
ut I actually learned something here from looking at your charts if it is), i=
t seems you need the higher precision X series to get right to work unless t=
here is a whiz-bang solution for realtime clock drift corrections at the pre=
cision you need for the b-series.</div><div id=3D"yMail_cursorElementTracker=
_1622725351925"><br></div><div id=3D"yMail_cursorElementTracker_162272535206=
5">Best of luck! Lots of experience in this forum.</div><div id=3D"yMail_cur=
sorElementTracker_1622725239486"><br></div><div id=3D"yMail_cursorElementTra=
cker_1622725239602">Aneesh&nbsp;</div><div id=3D"yMail_cursorElementTracker_=
1622725112587"><br clear=3D"none"><div id=3D"yiv9121330354ymail_android_sign=
ature"><a rel=3D"nofollow noopener noreferrer" shape=3D"rect" id=3D"yiv91213=
30354ymail_android_signature_link" target=3D"_blank" href=3D"https://go.onel=
ink.me/107872968?pid=3DInProduct&amp;c=3DGlobal_Internal_YGrowth_AndroidEmai=
lSig__AndroidUsers&amp;af_wl=3Dym&amp;af_sub1=3DInternal&amp;af_sub2=3DGloba=
l_YGrowth&amp;af_sub3=3DEmailSignature">Sent from Yahoo Mail on Android</a><=
/div> <br clear=3D"none"> <blockquote style=3D"margin:0 0 20px 0;"> <div sty=
le=3D"font-family:Roboto, sans-serif;color:#6D00F6;"> <div>On Thu, Jun 3, 20=
21 at 8:39 AM, Viktor Erdelyi</div><div class=3D"yiv9121330354yqt3446864412"=
 id=3D"yiv9121330354yqtfd35010"><div>&lt;viktor@ist.osaka-u.ac.jp&gt; wrote:=
</div> </div></div><div class=3D"yiv9121330354yqt3446864412" id=3D"yiv912133=
0354yqtfd42160"> <div style=3D"padding:10px 0 0 20px;margin:10px 0 0 0;borde=
r-left:1px solid #6D00F6;"> _______________________________________________<=
br clear=3D"none">USRP-users mailing list -- <a rel=3D"nofollow noopener nor=
eferrer" shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettu=
s.com</a><br clear=3D"none">To unsubscribe send an email to <a rel=3D"nofoll=
ow noopener noreferrer" shape=3D"rect" ymailto=3D"mailto:usrp-users-leave@li=
sts.ettus.com" target=3D"_blank" href=3D"mailto:usrp-users-leave@lists.ettus=
.com">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"> </div> </div><=
/blockquote></div></div><span>______________________________________________=
_</span><br><span>USRP-users mailing list -- usrp-users@lists.ettus.com</spa=
n><br><span>To unsubscribe send an email to usrp-users-leave@lists.ettus.com=
</span><br></div></blockquote></div></body></html>=

--Apple-Mail-8B9AE5E4-DFC1-4E1E-B966-FAE7158FCC63--

--===============7857048869158689713==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7857048869158689713==--
