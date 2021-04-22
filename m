Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 548C236860C
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 19:35:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BD9E3847EF
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 13:35:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="o9qqNSQZ";
	dkim-atps=neutral
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 84DD4384279
	for <usrp-users@lists.ettus.com>; Thu, 22 Apr 2021 13:34:43 -0400 (EDT)
Received: by mail-qv1-f50.google.com with SMTP id i11so16905608qvu.10
        for <usrp-users@lists.ettus.com>; Thu, 22 Apr 2021 10:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=HOHU+L2t2kHjURI4UcLcFuhLI2sKUu8iFoLCTe17nV8=;
        b=o9qqNSQZMkEK20dlcMVCl+Fr04g3U7uKi5i/xESOut+w9kFHcf/Fa0uNbZCXdpIs+f
         zAdDG2G9OqwFUHJQbUuzvfBQAolZB7T1hpm+eUulMW3YuvlbhDA26IFH7aFF1v1J9wpj
         eKWytdwVvTWSvUxs+U+mORCEcQ7kKgUDAbWLyXQmrgPkHwZmtmayftXz+kawWxHvdK09
         K1yHxS/sOSU6RIpZoe0acWRNtRXFzN3HMLlWlKQGDnt6EPoqvdPmFDeIUPUFTGHFFbnM
         BlHe3lSF3+pZ62ItuHbba032ZqGcCWWP/lM9fLbWF2u6Jk9enXpNjd2h1MUCmPJIoknL
         oeFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=HOHU+L2t2kHjURI4UcLcFuhLI2sKUu8iFoLCTe17nV8=;
        b=Wq0d7dhe/jXonJueY4x89B6PDwYJD8Kut3yK0ZDVwBpuLHaExDrpkmPrGatUrlnJoR
         /4l5XvPyKx9f0hsYOYk3O9McoiVj4RtG0P1WoS9FcWSr1ynAR/U3M1qvAoskihegWrQq
         MqKjjcTi3r4+i6RzTFFrmfycw5osysR813yB0z2I7XQyBAaKwLaFWq46ydjpFphyH0V0
         ltEwi8FyqcXLtwcJX6+epyvawBCZnM/ku11rvIl4QrOldtkl1knCd/zoiKw08+mUkQ+C
         tvMZ2rBQgfik0FPMk1C+tTGLy/KcgAGJKZc0E0WbH6Yza/+z4CXQ5xyUnaCR749t2jKN
         NchA==
X-Gm-Message-State: AOAM532gkDTZHSqUN2p+DQFaz04ylMegHUfv0a9xyAuZ3LKSsVcGhq4E
	shslZ047ItmLuUWuY6vFIzXmktJUZEIi4Q==
X-Google-Smtp-Source: ABdhPJwBhVVNvDPC6M+x+3nq7hpp0a5pwpYCZoROCZsOQicbPtdiqWXoNsFHiRqoCJPzp3JXTr4bJw==
X-Received: by 2002:ad4:58e9:: with SMTP id di9mr4829754qvb.23.1619112882803;
        Thu, 22 Apr 2021 10:34:42 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id w196sm2717117qkb.48.2021.04.22.10.34.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 10:34:42 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 22 Apr 2021 13:34:41 -0400
Message-Id: <A8D19F00-BBC7-4A75-925B-8BA6FCFD9B79@gmail.com>
References: <CAL0m=Nbbzwuert-QCs0FbgoATvkr4-=EnQGzvkErx5mGEqZVEA@mail.gmail.com>
In-Reply-To: <CAL0m=Nbbzwuert-QCs0FbgoATvkr4-=EnQGzvkErx5mGEqZVEA@mail.gmail.com>
To: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: DNQN3U7DG2G4GHUCFIKEMBGHA72S63PS
X-Message-ID-Hash: DNQN3U7DG2G4GHUCFIKEMBGHA72S63PS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: "LLLLLL" message from USRP X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DNQN3U7DG2G4GHUCFIKEMBGHA72S63PS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3648532380839182577=="


--===============3648532380839182577==
Content-Type: multipart/alternative; boundary=Apple-Mail-F5DC064E-297D-46B1-A004-00EE52ECB8BC
Content-Transfer-Encoding: 7bit


--Apple-Mail-F5DC064E-297D-46B1-A004-00EE52ECB8BC
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m not that familiar with burst mode stuff.=20

But here=E2=80=99s a start

https://wiki.gnuradio.org/index.php/Burst_Tagger

Also perhaps take this conversation over to the discuss-gnuradio mailing lis=
t.=20



Sent from my iPhone

> On Apr 22, 2021, at 1:18 PM, Zeng, Huacheng <huacheng.zeng@gmail.com> wrot=
e:
>=20
> =EF=BB=BF
> Hi Marcus,
>=20
> Thank you very much for your response. I'm using GNU Radio. Is there a way=
 to set bursty traffic in GNU Radio Companion?=20
>=20
> Huacheng=20
>=20
>=20
>> On Thu, Apr 22, 2021 at 1:07 PM Marcus D Leech <patchvonbraun@gmail.com> w=
rote:
>> If you set up the steam to be a continuous stream, the USRP expects conti=
nuous samples, and if it doesn=E2=80=99t get them, it produces errors.=20
>>=20
>> You want to configure your stream for bursts, probably timed bursts.=20
>>=20
>> Are you using Gnu Radio, or the UHD API directly?
>>=20
>> Sent from my iPhone
>>=20
>> > On Apr 22, 2021, at 1:01 PM, Huacheng Zeng <zenghuacheng@gmail.com> wro=
te:
>> >=20
>> > =EF=BB=BF
>> > Hi all,
>> >=20
>> > I am using USRP X310 as an MIMO transmitter to send two streams from a c=
omputer. The sampling rate is set to 2 MSps. When the computer continuously s=
ends data to USRP, it works well. When the computer sends data at a slow rat=
e (e.g., 10 packets per second), USRP prints out "LLLLLLLLLL" message and it=
 seems the USRP does not transmit any signal.=20
>> >=20
>> > I expect USRP to transmit signal when it receives data from the compute=
r and not transmit signal if no data comes in.=20
>> >=20
>> > Any advice would be appreciated!
>> >=20
>> > Best,
>> > Huacheng
>> >=20
>> >=20
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-F5DC064E-297D-46B1-A004-00EE52ECB8BC
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I=E2=80=99m not that familiar with burst mo=
de stuff.&nbsp;<div><br></div><div>But here=E2=80=99s a start</div><div><br>=
</div><div><a href=3D"https://wiki.gnuradio.org/index.php/Burst_Tagger">http=
s://wiki.gnuradio.org/index.php/Burst_Tagger</a></div><div><br></div><div>Al=
so perhaps take this conversation over to the discuss-gnuradio mailing list.=
&nbsp;</div><div><br></div><div><br><br><div dir=3D"ltr">Sent from my iPhone=
</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 22, 2021, at 1:1=
8 PM, Zeng, Huacheng &lt;huacheng.zeng@gmail.com&gt; wrote:<br><br></blockqu=
ote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"lt=
r">Hi Marcus,<div><br></div><div>Thank you very much for your response. I'm u=
sing GNU Radio. Is there a way to set bursty traffic in GNU Radio Companion?=
&nbsp;</div><div><br></div><div>Huacheng&nbsp;</div><div><br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Ap=
r 22, 2021 at 1:07 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gma=
il.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">If you set up the steam to be a continuous stre=
am, the USRP expects continuous samples, and if it doesn=E2=80=99t get them,=
 it produces errors. <br>
<br>
You want to configure your stream for bursts, probably timed bursts. <br>
<br>
Are you using Gnu Radio, or the UHD API directly?<br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Apr 22, 2021, at 1:01 PM, Huacheng Zeng &lt;<a href=3D"mailto:zenghu=
acheng@gmail.com" target=3D"_blank">zenghuacheng@gmail.com</a>&gt; wrote:<br=
>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hi all,<br>
&gt; <br>
&gt; I am using USRP X310 as an MIMO transmitter to send two streams from a c=
omputer. The sampling rate is set to 2 MSps. When the computer continuously s=
ends data to USRP, it works well. When the computer sends data at a slow rat=
e (e.g., 10 packets per second), USRP prints out "LLLLLLLLLL" message and it=
 seems the USRP does not transmit any signal. <br>
&gt; <br>
&gt; I expect USRP to transmit signal when it receives data from the compute=
r and not transmit signal if no data comes in. <br>
&gt; <br>
&gt; Any advice would be appreciated!<br>
&gt; <br>
&gt; Best,<br>
&gt; Huacheng<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@list=
s.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-F5DC064E-297D-46B1-A004-00EE52ECB8BC--

--===============3648532380839182577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3648532380839182577==--
