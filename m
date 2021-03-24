Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F14F534810E
	for <lists+usrp-users@lfdr.de>; Wed, 24 Mar 2021 19:58:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE61A383A97
	for <lists+usrp-users@lfdr.de>; Wed, 24 Mar 2021 14:58:40 -0400 (EDT)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 8BE4A38387C
	for <USRP-users@lists.ettus.com>; Wed, 24 Mar 2021 14:57:49 -0400 (EDT)
Received: by mail-qt1-f178.google.com with SMTP id u8so2223643qtq.12
        for <USRP-users@lists.ettus.com>; Wed, 24 Mar 2021 11:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=drkhgK2xK0rQVzbpYSCTznITlyiQ4I7/J2rYH1YQHXY=;
        b=dk5564Maps/dF+R5BQh02k719293V5m3EGGkucO+ytJvyOMWWrxKlTZERMipOZeSUj
         i9NnBZLcvxYKJLxpjajRhY9aML//jgvHuyrSVON1l32U/bxhVrqUlrydYMVTPeo94r3A
         O+NOdj5JulcCIzXmbFg5qxyhOw9wqBf130A1E0RaQFU6X4/EcG4c1no0NFGGTZbluez2
         xqrW6DTFnWo7q5povRfaJ8d79FEIxkHcxEmDQev/orr0uhxLKAGmJeGbzvNUY4L8s8D5
         vgU0zT8kUtZbgpPrEwtq65+pY84bgtoe1ocsqGH/SMZoyWxETTwkVvRzILUDTg6zu+e8
         2s5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=drkhgK2xK0rQVzbpYSCTznITlyiQ4I7/J2rYH1YQHXY=;
        b=npH471Z67CKTtkYsJhd2dh/umwCwnwj6ZdXhR6rq/tzOgohC6tX0ek67tkmYLH0DnE
         8abJt0aMXxnd8YV69GCzJZ7T3VAX6POFgyAGMMCTXIxdgjGDMDdRbNhULVgA8+6cQLmk
         Qbj44YUCIdSXMeNDEyesED6nM44GuAwe3XHFNhwDwtTJBBoSTc7AQOUjmaNWQFyyeQVJ
         VX6iijb3/IQpQUdLM+szHk9F3bpZlNf6qcoHa5VkeCkNLFgB8Va0dfAQTc00/1HpfIfD
         aCud5z+bNJvBoy9oqgZKGXaGnIieRnUGKETTgkCeA54abR9nA8fiLvkusT8v3aYtySVm
         Ltcg==
X-Gm-Message-State: AOAM530D5bzYi+UbC+AZyMMUVaTfAQ5x6cJoiBavwVJT3mVOYyuN1nbb
	RzwxtT97LTxWZhUuzA43sLY3xBPisho=
X-Google-Smtp-Source: ABdhPJwEaVtE7CPUgrL5KQwjUBLS8QioA8VhqHXa8HdZyjJNCSFIJQlWLPcR1ZgntuTXlTwWhi3ZoQ==
X-Received: by 2002:ac8:4a19:: with SMTP id x25mr4355203qtq.271.1616612268898;
        Wed, 24 Mar 2021 11:57:48 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id o197sm2348649qka.26.2021.03.24.11.57.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Mar 2021 11:57:48 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 24 Mar 2021 14:57:47 -0400
Message-Id: <05D2F2F3-1436-42F2-8E8E-7436B8FEC8CE@gmail.com>
References: <CO6PR19MB480129D90FEE1BBDDE609C7BC6639@CO6PR19MB4801.namprd19.prod.outlook.com>
In-Reply-To: <CO6PR19MB480129D90FEE1BBDDE609C7BC6639@CO6PR19MB4801.namprd19.prod.outlook.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
X-Mailer: iPhone Mail (18D61)
Message-ID-Hash: TXYK6QXKUOIIW6OBQWUR4E4B4PVUR563
X-Message-ID-Hash: TXYK6QXKUOIIW6OBQWUR4E4B4PVUR563
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Strong noise added to signal transmitted by X310 with a UBX 40 daughterboard
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TXYK6QXKUOIIW6OBQWUR4E4B4PVUR563/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1252265315445087177=="


--===============1252265315445087177==
Content-Type: multipart/alternative; boundary=Apple-Mail-720CFC93-A088-4ECC-BE60-1252393EA8C0
Content-Transfer-Encoding: 7bit


--Apple-Mail-720CFC93-A088-4ECC-BE60-1252393EA8C0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Is the j B is over-the-air or direct connection?

What frequency? Bandwidth?

Do you have TX and RX gain turned all the way up?

Can you share your flow-graphs, or minimum
Graphs that show the problem?

Sent from my iPhone

> On Mar 24, 2021, at 12:20 PM, Jerrid Plymale <jerrid.plymale@canyon-us.com=
> wrote:
>=20
> =EF=BB=BF
> Hello All,
> =20
> I have been running tests in which I am transmitting a signal from one USR=
P X310 that=E2=80=99s using a UBX 40 daughterboard, and that signal is being=
 received by another USRP X310 using a UBX 40 daughterboard. I have noticed t=
hat when I have the receiving USRP running with the Gnuradio flowgraph activ=
e, as soon as I start the transmitting USRP=E2=80=99s Gnuradio flowgraph, th=
ere is a jump in the noise floor as it is seen by the receiving USRP, and it=
s roughly a 14 dB increase. This occurs even if I have the signal being tran=
smitted muted. Does anyone have any idea what the source of this added noise=
 could be? It is something that I need to mitigate as much as possible for t=
he tests I am running using these USRPs. Any feedback will be greatly apprec=
iated, thanks!
> =20
> Best Regards,
> =20
> Jerrid
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-720CFC93-A088-4ECC-BE60-1252393EA8C0
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Is the j B is over-the-air or direct connec=
tion?<div><br></div><div>What frequency? Bandwidth?</div><div><br></div><div=
>Do you have TX and RX gain turned all the way up?</div><div><br></div><div>=
Can you share your flow-graphs, or minimum</div><div>Graphs that show the pr=
oblem?<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br=
><blockquote type=3D"cite">On Mar 24, 2021, at 12:20 PM, Jerrid Plymale &lt;=
jerrid.plymale@canyon-us.com&gt; wrote:<br><br></blockquote></div><blockquot=
e type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have been running tests in which I am transmitting a=
 signal from one USRP X310 that=E2=80=99s using a UBX 40 daughterboard, and t=
hat signal is being received by another USRP X310 using a UBX 40 daughterboa=
rd. I have noticed that when I have the
 receiving USRP running with the Gnuradio flowgraph active, as soon as I sta=
rt the transmitting USRP=E2=80=99s Gnuradio flowgraph, there is a jump in th=
e noise floor as it is seen by the receiving USRP, and its roughly a 14 dB i=
ncrease. This occurs even if I have the
 signal being transmitted muted. Does anyone have any idea what the source o=
f this added noise could be? It is something that I need to mitigate as much=
 as possible for the tests I am running using these USRPs. Any feedback will=
 be greatly appreciated, thanks!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jerrid<o:p></o:p></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-720CFC93-A088-4ECC-BE60-1252393EA8C0--

--===============1252265315445087177==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1252265315445087177==--
