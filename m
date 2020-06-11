Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DC81F6132
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2020 07:12:25 +0200 (CEST)
Received: from [::1] (port=38504 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjFVl-0007Xc-Ou; Thu, 11 Jun 2020 01:12:21 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:43949)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jjFVh-0007Rx-TT
 for usrp-users@lists.ettus.com; Thu, 11 Jun 2020 01:12:17 -0400
Received: by mail-qk1-f174.google.com with SMTP id v79so4479178qkb.10
 for <usrp-users@lists.ettus.com>; Wed, 10 Jun 2020 22:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=BRQtB79M9NUs3AFQUI734boxW4uLmadojFnV5Itlr4E=;
 b=SoT9eowLtXrmDJ1PjfRwRe4n9NDMjR5XwA91HxkeoOwHBe5hyMyydp4b41jYClbyQ8
 XbhcaXU5OXmPYA/iIVykNUqzokoGrx/VbN8aw3J91MXKBwWsfL3aGzPYKIERduCacQa1
 SHzbenz3UIihOPkYN4FkuflVWuNigDZd14uBA/2D9yLTue9B0MRkH7AVfGs7yIIwi0xl
 LocV8Dv64aEtSa8qUsrmM4Ojlo742Yyc7LeXFCDN8sFI1XZnl9tPp5zf2ZTYYL/m66m9
 SFFEzgN0rfUTAzR7+bAZ1MoldkWoP5QfAv6WU14NmIbf7F8L+WJlRjiR2uZwo2kgckri
 mngA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=BRQtB79M9NUs3AFQUI734boxW4uLmadojFnV5Itlr4E=;
 b=G6lYs8ESpr4MlaCMFvuwjxzyZ2d+w7XtO00w4hbL1iZDT1DqCq3S+AZlMrd4JDcYUC
 09IlGR/b8+ljy4AuY4lQnapyr07QVU1yqre95crqBPx2wpbb/3111yud08kkYO4CWJ60
 MPPKZiDIfYCwjkmIUGrmYCe6+9BOTzI2nPovWIVzI+XGqGEA6nOP1r5d7k++E3sGyaGX
 3vX0mTntuxuUNUiYlxqf2c87EaO9oLMIC4K5C55zY2Y7Epq39sSjoIEPiuYEAw/Z1ckM
 E17F08XKr9FXlKWCuD1n0Gofdv/VOMz/0SWdL2WfXQabSoJkcL3HAO/BSFzPHSbdiJvw
 EYYw==
X-Gm-Message-State: AOAM530XsXLyDqoWx9lKFfOcAB8XAQExvr2rD/DsZneEZ8fO/kGUNu7y
 2RlIiR/pNVkgKgnUF/tXVcU=
X-Google-Smtp-Source: ABdhPJzlVs5MdqxDmYuMFEW5Qc1xSHeqBZHtyKQjOPM9HPmp0EnLrQasuj0TwMmN2j0g5h+SucnXog==
X-Received: by 2002:a05:620a:21d0:: with SMTP id
 h16mr6574399qka.361.1591852297363; 
 Wed, 10 Jun 2020 22:11:37 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.gmail.com with ESMTPSA id c58sm1809172qtd.27.2020.06.10.22.11.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 22:11:36 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 11 Jun 2020 01:11:36 -0400
Message-Id: <5D9260B7-4E0A-4A53-AE01-EDAD04CB496C@gmail.com>
References: <CAFZDN5+4-D150J1aWdkxM6-YKafqO=X43ViUfU81sRR9_+jNOg@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
In-Reply-To: <CAFZDN5+4-D150J1aWdkxM6-YKafqO=X43ViUfU81sRR9_+jNOg@mail.gmail.com>
To: Hai Nguyen <hai.n.nguyen204@gmail.com>
X-Mailer: iPhone Mail (17E262)
Subject: Re: [USRP-users] Phase calibration of multiple B210s
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============2904808281067562893=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 


--===============2904808281067562893==
Content-Type: multipart/alternative; boundary=Apple-Mail-82C20DA1-2CF9-494C-BA2D-3A1969A8B477
Content-Transfer-Encoding: 7bit


--Apple-Mail-82C20DA1-2CF9-494C-BA2D-3A1969A8B477
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

There are critical differences. The X310 was designed to provide a phase coh=
erent infrastructure=E2=80=94with that coherence working across multiple uni=
ts.

The WBX and CBX both have phase resynch which helps tremendously. The TwinRx=
 goes further and allows LO sharing, which provides even better fidelity of p=
hase coherence.=20

Sent from my iPhone

> On Jun 11, 2020, at 12:57 AM, Hai Nguyen <hai.n.nguyen204@gmail.com> wrote=
:
>=20
> =EF=BB=BF
> Thank you Marcus. I feel it will be the same story if I use two X310s?
> I look a bit at the project gr-doa and as I understand it seems to just re=
quire the calibration once. I'm not sure if there is a critical difference b=
etween the WBX/CBX vs. TwinRX for this task though.
>=20
>=20
>> On Thu, Jun 11, 2020 at 12:05 AM Marcus D Leech <patchvonbraun@gmail.com>=
 wrote:
>> No. It is the nature of PLL synthesizers that they won=E2=80=99t land at t=
he same phase offset every time they=E2=80=99re tuned.=20
>>=20
>> In addition the DDC components in the FPGA aren=E2=80=99t necessarily goi=
ng to be at the same phase offset every time.
>>=20
>> You=E2=80=99ll need to have a phase calibration on every run.=20
>>=20
>> Sent from my iPhone
>>=20
>> > On Jun 11, 2020, at 12:01 AM, Hai Nguyen via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
>> >=20
>> > =EF=BB=BF
>> > Hello,
>> >=20
>> > I'm trying to do phase calibration for two B210s for a DoA application.=
 I use a known tone with splitter and equal-length cables. The problem I'm h=
aving is, the phase difference between two corresponding channels of the USR=
P (for example, RX2 of radio A) seems to change not just between the resets o=
f the USRPs, but also between the runs of the UHD program.
>> >=20
>> > Is this possible to phase-calibrate the two B210s?
>> >=20
>> > Thank you and best regards,
>> > Hai
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-82C20DA1-2CF9-494C-BA2D-3A1969A8B477
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">There are critical differences. The X310 wa=
s designed to provide a phase coherent infrastructure=E2=80=94with that cohe=
rence working across multiple units.<div><br></div><div>The WBX and CBX both=
 have phase resynch which helps tremendously. The TwinRx goes further and al=
lows LO sharing, which provides even better fidelity of phase coherence.&nbs=
p;</div><div><div><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"=
ltr"><br><blockquote type=3D"cite">On Jun 11, 2020, at 12:57 AM, Hai Nguyen &=
lt;hai.n.nguyen204@gmail.com&gt; wrote:<br><br></blockquote></div><blockquot=
e type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div dir=3D"ltr">=
Thank you Marcus. I feel it will be the same story if I use two X310s?</div>=
<div>I look a bit at the project gr-doa and as I understand it seems to just=
 require the calibration once. I'm not sure if there is a critical differenc=
e between the WBX/CBX vs. TwinRX for this task though.</div><div><br></div><=
div><br></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Thu, Jun 11, 2020 at 12:05 AM Marcus D Leech &lt;<a href=3D"mailto:pat=
chvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">No. It is the nature of PLL synth=
esizers that they won=E2=80=99t land at the same phase offset every time the=
y=E2=80=99re tuned. <br>
<br>
In addition the DDC components in the FPGA aren=E2=80=99t necessarily going t=
o be at the same phase offset every time.<br>
<br>
You=E2=80=99ll need to have a phase calibration on every run. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Jun 11, 2020, at 12:01 AM, Hai Nguyen via USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hello,<br>
&gt; <br>
&gt; I'm trying to do phase calibration for two B210s for a DoA application.=
 I use a known tone with splitter and equal-length cables. The problem I'm h=
aving is, the phase difference between two corresponding channels of the USR=
P (for example, RX2 of radio A) seems to change not just between the resets o=
f the USRPs, but also between the runs of the UHD program.<br>
&gt; <br>
&gt; Is this possible to phase-calibrate the two B210s?<br>
&gt; <br>
&gt; Thank you and best regards,<br>
&gt; Hai<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-us=
ers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ett=
us.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/=
listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</div></blockquote></div></div></body></html>=

--Apple-Mail-82C20DA1-2CF9-494C-BA2D-3A1969A8B477--


--===============2904808281067562893==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2904808281067562893==--

