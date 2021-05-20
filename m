Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6D038B526
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 19:26:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0EAE23861B9
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 13:26:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nbuGc/9b";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 6504D385F55
	for <USRP-users@lists.ettus.com>; Thu, 20 May 2021 13:25:15 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id f18so16968972qko.7
        for <USRP-users@lists.ettus.com>; Thu, 20 May 2021 10:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=GmnzpOARZPjfm8O0DsjsDWp/bfpje4UCTMFYId+zY7o=;
        b=nbuGc/9byCcfmQPH4rDjb0G7+OyCPIdPwbiWuu4L6YzIeNccx6itxVdZ5Av7HqPBc3
         tPwdhZUBDIfy0ysnFmVESgoLbmDNOB2zOxo0A4ZdpfxB2t0JX44pEoJn1sOZGzL1vpY/
         9UY4VOP1EwrcnnGtFqViS3k7563cZQjWckENdPqKz9Q9t5xLB1i+k07Rj1JBWCRDubqC
         7FEU9HayT0UUjvSuMTaRaShGh4SBs4b5bjfAD9B3K0uuV9fEUvE8s6h4krtuCk23TmgP
         R3wxSFsoSOz/eNPMiYc69ZknD60mNdwIf4+ox3kpRJNy0xuO87WP6eT4EKdVFRrHTuhs
         X7qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=GmnzpOARZPjfm8O0DsjsDWp/bfpje4UCTMFYId+zY7o=;
        b=mjGk9R/ZxQHXYUOZ7d2nNfx/mr4U8osRK5tgHNoWCtis530gWSB03pKN9VbKvGWyd5
         r0ZTNbv/PPRcZFSvM/lkeUMAGG1VsJ+Us/mQTalrws0jpJxUjby6JC7RDJXIUKSZTK0E
         yVOyOLWH/ABgQYIenQmCpG2WrlFHBvH+D+Mag7YLwizlSbN66WGM8+2cM0xbmiVhRwpL
         sjJYFHGX7gHl7C1ElZrIPaGzbHm0mAcDjC1oA+78Dyd2OXF0ifu42dEHthOdrlg5kaDS
         JH/O253k5VgirHjRHHaiZoxuXH2itMyupo1dtqUlcYUiejngE07Feagu3A8bZBFS+SpF
         eTDg==
X-Gm-Message-State: AOAM530/gE27sCp0J5jkzJLfvtAKKR6WZA4Jf/0/sud87pB6olhIRNp6
	7xTzHKoxLwh4UCtMm3aeezk=
X-Google-Smtp-Source: ABdhPJyEDcdxANb+NgHVNpfA8n2c/Zlpu8fu9zQOWJYV7l0RTMerLbDCTkJHbJt61FLMD+aavp9BZA==
X-Received: by 2002:a05:620a:1334:: with SMTP id p20mr6532225qkj.7.1621531514980;
        Thu, 20 May 2021 10:25:14 -0700 (PDT)
Received: from [192.168.2.132] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id n13sm2269211qtl.48.2021.05.20.10.25.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 May 2021 10:25:14 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 20 May 2021 13:25:13 -0400
Message-Id: <F8260C70-479F-4F84-835E-7989AA9382FC@gmail.com>
References: <58eb7d3631e3445e95fa6c84bb4166bd@kth.se>
In-Reply-To: <58eb7d3631e3445e95fa6c84bb4166bd@kth.se>
To: Seyed Samie Mostafavi <ssmos@kth.se>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: 4G3A7MBWAPWAAZNTRN6LA6ERRXVTGYOI
X-Message-ID-Hash: 4G3A7MBWAPWAAZNTRN6LA6ERRXVTGYOI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Does E320 in network mode mount the SD card?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4G3A7MBWAPWAAZNTRN6LA6ERRXVTGYOI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8793423372510959068=="


--===============8793423372510959068==
Content-Type: multipart/alternative; boundary=Apple-Mail-8232620A-46F4-48E4-AEEA-7D091DB92A79
Content-Transfer-Encoding: 7bit


--Apple-Mail-8232620A-46F4-48E4-AEEA-7D091DB92A79
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

What does =E2=80=9Cmount=E2=80=9D return when you=E2=80=99re on the system? T=
hat will be definitive.=20

Sent from my iPhone

> On May 20, 2021, at 10:58 AM, Seyed Samie Mostafavi <ssmos@kth.se> wrote:
>=20
> =EF=BB=BF
> Thank you Marcus for your answer.
>=20
> Actually it seems that the root file system is a separate ext4 partition o=
n the card.=20
>=20
> So the question is whether the NI Linux setup mounts the SD card's FAT boo=
t partition by default or not?
>=20
>=20
>=20
> Best,
>=20
> Samie
>=20
>=20
>=20
> From: Marcus D Leech <patchvonbraun@gmail.com>
> Sent: Thursday, May 20, 2021 4:20:17 PM
> To: Seyed Samie Mostafavi
> Cc: USRP-users@lists.ettus.com
> Subject: Re: [USRP-users] Does E320 in network mode mount the SD card?
> =20
> Since this system runs off of the SD card, yes.=20
>=20
> Sent from my iPhone
>=20
>>> On May 20, 2021, at 7:19 AM, Seyed Samie Mostafavi <ssmos@kth.se> wrote:=

>>>=20
>> =EF=BB=BF
>> Hi,
>>=20
>>=20
>>=20
>> Does anyone know whether the default NI petalinux on the E320 (in network=
 mode) mounts the SD card or not?
>>=20
>> I am asking this because I need to change the BOOT.bin and switch to anot=
her design from the host. I cannot remove the old SD card and insert a new o=
ne.
>>=20
>>=20
>>=20
>> Best,
>>=20
>> Samie
>>=20
>>=20
>>=20
>>=20
>> =20
>> Seyed Samie Mostafavi
>> Doctoral Student
>>=20
>> KTH
>> School of electrical engineering and computer science (EECS)
>> Department of information systems and engineering (ISE)
>> Malvinas v=C3=A4g 10, 100 44 Stockholm
>> ssmos@kth.se
>> =20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-8232620A-46F4-48E4-AEEA-7D091DB92A79
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">What does =E2=80=9Cmount=E2=80=9D return wh=
en you=E2=80=99re on the system? That will be definitive.&nbsp;<br><br><div d=
ir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D=
"cite">On May 20, 2021, at 10:58 AM, Seyed Samie Mostafavi &lt;ssmos@kth.se&=
gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"l=
tr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">



<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; color=
: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, Helvetica, Emoj=
iFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorE=
moji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;"=
>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color:=
rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,Helvetica,EmojiFont,&qu=
ot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;S=
egoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p><span>Thank you Marcus for your answer.</span></p>
<p><span>Actually it seems that the&nbsp;<span style=3D"font-family: Calibri=
, Helvetica, sans-serif, Helvetica, EmojiFont, &quot;Apple Color Emoji&quot;=
, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &=
quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">root file system i=
s
 a separate&nbsp;ext4 partition on the card.&nbsp;</span></span></p>
<p><span><span style=3D"font-family: Calibri, Helvetica, sans-serif, Helveti=
ca, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, No=
toColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiS=
ymbols; font-size: 16px;">So&nbsp;</span></span><span style=3D"font-size: 12=
pt;">the&nbsp;question
 is whether the NI Linux setup mounts the SD card's FAT boot partition by de=
fault or not?</span></p>
<p><span style=3D"font-size: 12pt;"><br>
</span></p>
<p>Best,</p>
<p>Samie</p>
<p><br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" col=
or=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D Leech &lt;patc=
hvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Thursday, May 20, 2021 4:20:17 PM<br>
<b>To:</b> Seyed Samie Mostafavi<br>
<b>Cc:</b> USRP-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Does E320 in network mode mount the SD card=
?</font>
<div>&nbsp;</div>
</div>
<div>Since this system runs off of the SD card, yes.&nbsp;<br>
<br>
<div dir=3D"ltr">Sent from my iPhone</div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">On May 20, 2021, at 7:19 AM, Seyed Samie Mostafavi=
 &lt;ssmos@kth.se&gt; wrote:<br>
<br>
</blockquote>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">=EF=BB=BF
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color:=
rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,Helvetica,EmojiFont,&qu=
ot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;S=
egoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p>Hi,</p>
<p><br>
</p>
<p>Does anyone know whether the default NI petalinux on the E320 (in network=
 mode) mounts the SD card or not?</p>
<p>I am asking this because I need to change the BOOT.bin and switch to anot=
her design&nbsp;from the host.&nbsp;I cannot&nbsp;remove the old SD card and=
 insert&nbsp;a new one.</p>
<p><br>
</p>
<p>Best,</p>
<p>Samie</p>
<p><br>
</p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:; margin:0">
<hr>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; fon=
t-family:Calibri,sans-serif">
<span style=3D"font-size:12pt; font-family:Arial,sans-serif; color:rgb(93,93=
,93)"><img border=3D"0" width=3D"70" height=3D"70" id=3D"_x0000_i1025" alt=3D=
"Kth Logo" style=3D"width: 0.7291in; height: 0.7291in; user-select: none;" s=
rc=3D"http://www.kth.se/delad/grafik/kth_logo.jpg" data-unique-identifier=3D=
""></span><span style=3D"font-size:12pt; font-family:Arial,sans-serif; color=
:rgb(93,93,93)"></span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; fon=
t-family:Calibri,sans-serif">
<span style=3D"font-size:12pt; font-family:Arial,sans-serif; color:rgb(93,93=
,93)">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 1.5pt; font-size:11pt; font-f=
amily:Calibri,sans-serif">
<span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(93,9=
3,93)">Seyed Samie Mostafavi</span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 6pt; font-size:11pt; font-fam=
ily:Calibri,sans-serif">
<span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(93,9=
3,93)">Doctoral Student</span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 1.5pt; font-size:11pt; font-f=
amily:Calibri,sans-serif">
<span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(93,9=
3,93)">KTH</span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 1.5pt; font-size:11pt; font-f=
amily:Calibri,sans-serif">
<i><span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(9=
3,93,93)">School of electrical engineering and computer science (EECS)</span=
></i><span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb=
(93,93,93)"></span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 1.5pt; font-size:11pt; font-f=
amily:Calibri,sans-serif">
<i><span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(9=
3,93,93)">Department of information systems and engineering (ISE)</span></i>=
</p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 1.5pt; font-size:11pt; font-f=
amily:Calibri,sans-serif">
<span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(93,9=
3,93)">Malvinas v=C3=A4g 10, 100 44 Stockholm</span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; fon=
t-family:Calibri,sans-serif">
<span style=3D"font-size:7.5pt; font-family:Arial,sans-serif; color:rgb(93,9=
3,93)"><a id=3D"LPNoLP" style=3D"color:rgb(4,74,145); text-decoration:underl=
ine">ssmos@kth.se</a></span></p>
<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; fon=
t-family:Calibri,sans-serif">
&nbsp;</p>
</div>
</div>
</div>
<span>_______________________________________________</span><br>
<span>USRP-users mailing list -- usrp-users@lists.ettus.com</span><br>
<span>To unsubscribe send an email to usrp-users-leave@lists.ettus.com</span=
><br>
</div>
</blockquote>
</div>
</div>


</div></blockquote></body></html>=

--Apple-Mail-8232620A-46F4-48E4-AEEA-7D091DB92A79--

--===============8793423372510959068==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8793423372510959068==--
