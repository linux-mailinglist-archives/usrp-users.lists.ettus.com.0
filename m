Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CD037D54C
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 23:52:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EFAA73843FE
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 17:52:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ruv+4UAv";
	dkim-atps=neutral
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 920DA384349
	for <USRP-users@lists.ettus.com>; Wed, 12 May 2021 17:51:20 -0400 (EDT)
Received: by mail-qt1-f175.google.com with SMTP id t7so18438410qtn.3
        for <USRP-users@lists.ettus.com>; Wed, 12 May 2021 14:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=+v7UO2h8xs99hXETZV/raD3eypBzyERMyISSFhkiKJ0=;
        b=Ruv+4UAv6/dT0ttdoz/gL1qt+9+7r75lBhbgryETM8aCZtTB6KT480Fx3HQhQDks2W
         BbLbiB433G32zDzk3v1xIRcBdj4z+HbkPisxZ3MYMgzB15u+sMquvxVAug9RsCn7pg65
         9lGrNfvFN2Q1T23UJtwTtEfqpnRYmmechRzg4m875z9iBRVjM8D83LE82OefIAZhkfUi
         rZdzf6EFNqc1ZqFpKVggju64KxvME1IXBtng92y9OwHH4nLyAf4IV9TGPXhY8Ob9D4K5
         2hBxxRqHICV4piTyWEqsj8SC/xhr1kffMBJlg36JKIEuEQE5BhakebayRnVLD7VuifiM
         hNAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=+v7UO2h8xs99hXETZV/raD3eypBzyERMyISSFhkiKJ0=;
        b=fMTjhAXDX+XAmSYoP6NzpUEt20w2tzn9dG2ANDdWH1uz4Dbn8tWEyuDFM51/nAQ1sp
         mI8TpqLIASNzb74tcDqr8K429/ex55V11gueAYCDGDIhWPpeu1tnanXwAuo5bPUpB1ye
         c4zWATS+MQlaO9D7LS0olW5BliuBYfGJgdY0s+SEH+28jEI9Gbjldb2QWFvcTYUctDhF
         L+YXKhKem93AABbqxEgSldglY+a4FE9nJMzZa6mc0m9pZoMBNHhuQaDHsnPa22ysXuGa
         bZZW7Gs88Ox9Yl2tqjjOfnC8TWXxa5PxUa2oY+77jlrzJhfuD0zKMtPEK77o7GNca3QS
         9e6g==
X-Gm-Message-State: AOAM530cUvrPnoOxtf9iIrZcwMV5OAckodhDIp/NA9R7I/hhH1dUtjiG
	1xSglgy28mm98a6Q61B2f/Y=
X-Google-Smtp-Source: ABdhPJyYIcLTapv8Y//K/1c1LQkcCAqTCi5ijPQsHKDZOXEtGvN+pPA6y/Y3OisrYUT6cBQpZ2fSWQ==
X-Received: by 2002:ac8:574e:: with SMTP id 14mr25864850qtx.191.1620856280101;
        Wed, 12 May 2021 14:51:20 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id a16sm573253qkl.46.2021.05.12.14.51.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 May 2021 14:51:19 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 12 May 2021 17:51:19 -0400
Message-Id: <685DC99E-D43F-411C-9191-BD1EF8B17707@gmail.com>
References: <D35A3D58-7C54-4C80-ABBE-B72952654837@yahoo.com>
In-Reply-To: <D35A3D58-7C54-4C80-ABBE-B72952654837@yahoo.com>
To: =?utf-8?Q?Fatih_=C3=96zdemir?= <fatihoezdemir@yahoo.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: QD6ACPZNH7H2DTCI4THCESKISLPPEEGT
X-Message-ID-Hash: QD6ACPZNH7H2DTCI4THCESKISLPPEEGT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: MIMO for one USRP  and Interference
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QD6ACPZNH7H2DTCI4THCESKISLPPEEGT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8504461706337761158=="


--===============8504461706337761158==
Content-Type: multipart/alternative; boundary=Apple-Mail-DB15A23F-DEAB-4F29-9E63-91E3725EB8A5
Content-Transfer-Encoding: 7bit


--Apple-Mail-DB15A23F-DEAB-4F29-9E63-91E3725EB8A5
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The RX2 o me TX/RX is merely and *antenna* selector. It does NOT imply anoth=
er channel.=20

Sent from my iPhone

> On May 12, 2021, at 4:56 PM, Fatih =C3=96zdemir via USRP-users <usrp-users=
@lists.ettus.com> wrote:
>=20
> =EF=BB=BFHello everyone,
>=20
> I want to create a communication between  two USRP=E2=80=99s with the foll=
owing properties (unfortunately I can=E2=80=99t change the equipment if need=
ed):
>=20
> +Transmitter: USRP B210 with two transmit antennas(two different waveforms=
 or the same waveform  for two channels)
> +Interface:Written with UHD Library in C++
>=20
> -Receiver: USRP X310 with two receive antennas (two channels) , CBX-120 da=
ughterboard
> -Interface:GNURadio
>=20
> #Receiver and Transmitter are 5 meters away with a human blockage occurrin=
g sometimes between the transceivers.
> #So I don=E2=80=99t want to have a MIMO with multiple USPR Transmitters/Re=
ceivers but only with one.
>=20
>=20
> I didn=E2=80=99t understand the situation regarding the CBX-120 in the fol=
lowing website: https://files.ettus.com/manual/page_dboards.html#dboards_cbx=

> =E2=80=9CReceive Antennas: TX/RX or RX2=E2=80=9D. Does it mean that I can u=
se RX and RX2 simultaneously or is the =E2=80=9Cor=E2=80=9D an =E2=80=9Ceith=
er or=E2=80=9D ? So can I consider a MIMO communication
>=20
> My  second question is: Am I facing any disadvantage or interference when I=
 am deploying the considered scenario?  I have heard that Self Interference c=
an happen in MIMO scenarios but I don=E2=80=99t know under which circumstanc=
es. Do I need to consider this and if yes, how can I cancel this self interf=
erence in the data( I can use MATLAB as a postprocessor)
>=20
> Best Regards and Many Thanks
>=20
> Fatih =C3=96zdemir
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-DB15A23F-DEAB-4F29-9E63-91E3725EB8A5
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The RX2 o me TX/RX is merely and *antenna* s=
elector. It does NOT imply another channel.&nbsp;<br><br><div dir=3D"ltr">Se=
nt from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On May=
 12, 2021, at 4:56 PM, Fatih =C3=96zdemir via USRP-users &lt;usrp-users@list=
s.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><=
div dir=3D"ltr">=EF=BB=BF<meta http-equiv=3D"Content-Type" content=3D"text/h=
tml; charset=3Dutf-8">Hello everyone,<div class=3D""><br class=3D""></div><d=
iv class=3D"">I want to create a communication between &nbsp;two USRP=E2=80=99=
s with the following properties (unfortunately I can=E2=80=99t change the eq=
uipment if needed):</div><div class=3D""><br class=3D""></div><div class=3D"=
">+Transmitter: USRP B210 with two transmit antennas(two different waveforms=
 or the same waveform &nbsp;for <b class=3D"">two channel</b>s)</div><div cl=
ass=3D"">+Interface:Written with UHD Library in C++</div><div class=3D""><br=
 class=3D""></div><div class=3D"">-Receiver: USRP X310 with two receive ante=
nnas&nbsp;<span style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" cl=
ass=3D"">(two channels) , CBX-120 daughterboard</span></div><div class=3D"">=
<span style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);" class=3D"">-=
Interface:GNURadio</span></div><div class=3D""><br class=3D""></div><div cla=
ss=3D"">#Receiver and Transmitter are 5 meters away with a human blockage oc=
curring sometimes between the transceivers.</div><div class=3D""><font color=
=3D"#000000" class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" class=3D"=
">#So I don=E2=80=99t want to have a MIMO with multiple USPR Transmitters/Re=
ceivers but only with one.</span></font></div><div class=3D""><font color=3D=
"#000000" class=3D""><span style=3D"caret-color: rgb(0, 0, 0);" class=3D""><=
br class=3D""></span></font></div><div class=3D""><font color=3D"#000000" cl=
ass=3D""><span style=3D"caret-color: rgb(0, 0, 0);" class=3D""><br class=3D"=
"></span></font></div><div class=3D""><font color=3D"#000000" class=3D"">I d=
idn=E2=80=99t understand the situation regarding the CBX-120 in the followin=
g website: <a href=3D"https://files.ettus.com/manual/page_dboards.html#dboar=
ds_cbx" class=3D"">https://files.ettus.com/manual/page_dboards.html#dboards_=
cbx</a></font></div><div class=3D""><font color=3D"#000000" class=3D"">=E2=80=
=9C</font><span style=3D"font-family: Roboto, sans-serif; font-size: 14px;" c=
lass=3D"">Receive Antennas:</span><span style=3D"font-family: Roboto, sans-s=
erif; font-size: 14px;" class=3D"">&nbsp;</span><b style=3D"font-family: Rob=
oto, sans-serif; font-size: 14px;" class=3D"">TX/RX</b><span style=3D"font-f=
amily: Roboto, sans-serif; font-size: 14px;" class=3D"">&nbsp;</span><span s=
tyle=3D"font-family: Roboto, sans-serif; font-size: 14px;" class=3D"">or</sp=
an><span style=3D"font-family: Roboto, sans-serif; font-size: 14px;" class=3D=
"">&nbsp;</span><b style=3D"font-family: Roboto, sans-serif; font-size: 14px=
;" class=3D"">RX2</b><font color=3D"#000000" class=3D"">=E2=80=9D. Does it m=
ean that I can use RX and RX2 simultaneously or is the&nbsp;=E2=80=9Cor=E2=80=
=9D an&nbsp;=E2=80=9Ceither or=E2=80=9D ? So can I consider a MIMO communica=
tion</font></div><div class=3D""><span style=3D"color: rgb(0, 0, 0);" class=3D=
""><br class=3D""></span></div><div class=3D""><font color=3D"#000000" class=
=3D"">My &nbsp;second question is: Am I facing any disadvantage or interfere=
nce when I am deploying the considered scenario? &nbsp;I have heard that Sel=
f Interference can happen in MIMO scenarios but I don=E2=80=99t know under w=
hich circumstances. Do I need to consider this and if yes, how can I cancel t=
his self interference in the data( I can use MATLAB as a postprocessor)</fon=
t></div><div class=3D""><font color=3D"#000000" class=3D""><br class=3D""></=
font></div><div class=3D""><font color=3D"#000000" class=3D""><span style=3D=
"caret-color: rgb(0, 0, 0);" class=3D"">Best Regards and Many Thanks</span><=
/font></div><div class=3D""><font color=3D"#000000" class=3D""><span style=3D=
"caret-color: rgb(0, 0, 0);" class=3D""><br class=3D""></span></font></div><=
div class=3D""><font color=3D"#000000" class=3D""><span style=3D"caret-color=
: rgb(0, 0, 0);" class=3D"">Fatih =C3=96zdemir</span></font></div><span>____=
___________________________________________</span><br><span>USRP-users maili=
ng list -- usrp-users@lists.ettus.com</span><br><span>To unsubscribe send an=
 email to usrp-users-leave@lists.ettus.com</span><br></div></blockquote></bo=
dy></html>=

--Apple-Mail-DB15A23F-DEAB-4F29-9E63-91E3725EB8A5--

--===============8504461706337761158==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8504461706337761158==--
