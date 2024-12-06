Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C9F9E74EC
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2024 16:53:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5119C3858A4
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2024 10:53:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733500413; bh=haq599V1wiJgC4Z1lEUAcKsjc+4Q3gLTIlD9X+P+icg=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Hvt27fNo+TRP544kcZHob8z1lnoey9mSal8ogB7Jbn0Qm83H1q2t7ABKHWqY6MVhY
	 XalcKfpVxu6gv8iSr11HtJIQuuS5HVSzl4iIvVDzq+wkCWUSWhZFCO07W7++ANVaBk
	 Jmo69xSasJAvH7b3svnoi6J6AMYmPz2vHok90GgZe8Kd5uO3ZSW5I7FcHhvGttiQlu
	 IzUnUkPH3XLaXEpgLEzcBGwRXq+l/8FQKo4vXpoq8+iVIx96x7zErMH2Z5CyL2cAqE
	 ew4ZK51BJKodAvjWvZppQ3ciDQezbci8JwAxucadImLXBGA3OfmmfHqPCsK6snjxBN
	 Ydi0lJAMycPxg==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 7DD7F3857F4
	for <usrp-users@lists.ettus.com>; Fri,  6 Dec 2024 10:53:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="OR4sPDwu";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5ceca0ec4e7so2519009a12.0
        for <usrp-users@lists.ettus.com>; Fri, 06 Dec 2024 07:53:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1733500380; x=1734105180; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SPXZwLPvJvtPvyVEoYmVc3xxJZRtxXjxQfKSWJbXP0s=;
        b=OR4sPDwuKOaPd1tL/PWR6NSeSKZTfyfuROxPYHGWJmQJ0dMDXDRyvYK7yqvVnTVQC0
         RCAkOyFXUmLImwb7A0B90h9FGKdx5TrrO7E+eL4itItH1pPW3Sfqj25TPnagMaYutlov
         s7BKwZlHzzZxFiSZO++LVx4BNvN8xfeZHJdsz1zVT9i76avID7CO+/nNHREsVrTLQsqN
         aUoU2wcKbMTb79UsR6XU9ySI15W5jBDTBLnVGp2+tU3N4+WEVUkSW5wdikjcvfg8nCNA
         V3fJXn8M3VGob3I5WnvNcEHPkTNqUwPbP3rxoVuUCalw4sLYzC5pXB+Q92tqx1gQLiUV
         /dCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733500380; x=1734105180;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SPXZwLPvJvtPvyVEoYmVc3xxJZRtxXjxQfKSWJbXP0s=;
        b=p3qBXwMHmh08eAdKcaNpoYVvkGf6sVKZmmyhzTCdRaW0CtScEMe6NscYMnQoue7Kzp
         5wJdvQY3eKipZ41hY0ZpU36hyyfsm8KuMp/wFj5UZuBztvYhSEtwfhrRqCpzgn5oaKET
         LLGQFwUkKm2Mj1ou3iSHNe+Ga8h/KGHwnpKWMpILSTw1e0gtvwIaPRBn9LyZO1f9Ajn5
         n1BC9BeIH9VxjvdbtxiyNFEj4dW7ZJRbALEipQ9z865AXubTY/bZ7452h0KNQ/NgnPCQ
         ercWI7rXyenA4CruziDBjYOZK5mbSsqp0wUUOq8xoeO0396ZJNpFBEzO8vVHV+qESOZ/
         1oAw==
X-Gm-Message-State: AOJu0Yy//8FSczElh2sYuojFg9+VdETiw3i0+Pc1YtzHsXYtmfnupXxg
	fSn3+M7FGl3zrX1X3woxMRby4+uy89E1lW+S0H/xUpyZv6qdVYzR8JteeLLsz7Se5nffm7d42QI
	tV7XyG0x0m9FSQsRIaABR8L5s3qrW5VLHqh+sbzlB8fh62ds=
X-Gm-Gg: ASbGncsrZawM0GwWjuvSBQxP3pfnq4yIqjvIkgWUgqDJIfKF2jA7iVuMRbfp/0+NC0s
	TinUXh6Hlx8LcYAO9LYhtMJOvKAtFV8D7ZiK/Eg==
X-Google-Smtp-Source: AGHT+IE93mj4oBbBQDz36ygcAE2zpG3lQ2KiXQW34LXom5de/u4hywwN7CPYdybHKZhHALqlu+ZtTEu4PQBcSIakzfM=
X-Received: by 2002:a05:6402:321f:b0:5d3:bc1d:e56b with SMTP id
 4fb4d7f45d1cf-5d3be6954a6mr3297819a12.16.1733500380378; Fri, 06 Dec 2024
 07:53:00 -0800 (PST)
MIME-Version: 1.0
References: <PN1P287MB3561AD211545E254E6DD27A897312@PN1P287MB3561.INDP287.PROD.OUTLOOK.COM>
 <PN3P287MB029100B601063D556709482893312@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
 <CAB__hTQ8c4MJVgg5=Pk23WBhV1GcBGxZxNiPV9smFp4hOpu4+w@mail.gmail.com>
In-Reply-To: <CAB__hTQ8c4MJVgg5=Pk23WBhV1GcBGxZxNiPV9smFp4hOpu4+w@mail.gmail.com>
Date: Fri, 6 Dec 2024 09:52:48 -0600
Message-ID: <CAB__hTS-0xJoFhMouYH4hqDORA1x27EW=Jw73dqvgM2SuOd8Nw@mail.gmail.com>
To: Nidhi Panda <nidhi.panda@cyronics.com>
Message-ID-Hash: ON5SO7HPTZBMC3BBMDWMLB57BMRBW4Z6
X-Message-ID-Hash: ON5SO7HPTZBMC3BBMDWMLB57BMRBW4Z6
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "usrp-users-request@lists.ettus.com" <usrp-users-request@lists.ettus.com>, Sachin Waghmare <waghmare.sachin@cyronics.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with Starting Transmitter on USRP N300 without Using Streamers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ON5SO7HPTZBMC3BBMDWMLB57BMRBW4Z6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5631187477288100446=="

--===============5631187477288100446==
Content-Type: multipart/alternative; boundary="000000000000642e3306289c0281"

--000000000000642e3306289c0281
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 6, 2024 at 9:44=E2=80=AFAM Rob Kossler <rkossler@nd.edu> wrote:

>
>
> On Fri, Dec 6, 2024 at 6:27=E2=80=AFAM Nidhi Panda <nidhi.panda@cyronics.=
com>
> wrote:
>
>> I am currently working with a *USRP N300 device with uhd 4.7 and gnu
>> radio v3.11.*  I have created a simple loopback configuration in which
>> the data flows through the following blocks:
>> Rx_Radio > DDC > DMAFifo > DUC > Tx_Radio.
>> However, I am encountering an issue where *only the receiver is working*=
,
>> and the *transmitter is not starting*. My objective is to *receive data*=
 and
>> * transmit it back* without using *host-side streamers*, i.e., I intend
>> to handle everything on the RFNoC hardware blocks directly.
>> I have set the configuration for the transmitter using the RadioControl =
blocks
>> (as shown in the attached script), but I am unable to start the
>> transmitter. It seems that the transmitter is not getting activated or
>> streaming, even though the receiver works correctly.
>>
>> You might want to look at the Ettus c++ example "rfnoc_radio_loopback".
> You could also try just running it.  Note that it does not include the
> DMAFifo block but it does allow you to choose which Rx Radio and Tx Radio
> block to use. After quickly reviewing your attachment, I would mention th=
at
> you shouldn't have to send Tx streaming commands. Once you send the Rx
> streaming command, the data will flow.  However, if you use a "timed"
> receive command, then the streaming data will have a time tag such that
> when it arrives at the Transmit radio, it will by definition be late.  Yo=
u
> will need to do one of the following: either use non-timed receive
> streaming commands or else create a custom RFNoC block that manipulates t=
he
> time tag to add some delay in order to account for the number of clock
> cycles that it takes for the data to propagate from Rx to Tx.
>
>
And, one question for the Ettus dev team: is there an easy way to configure
this kind of graph such that the host will receive the "Late" messages?
Since the host is not involved in the streaming, it's not obvious to the
user that all of the streaming is arriving Late to the Tx radio as it would
be in a host-based streaming application.  But, it would be nice if the
host did receive these Late (or Underrun) messages (at least in many
situations).

--000000000000642e3306289c0281
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 6, 2024 at 9:44=E2=80=AFA=
M Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, Dec 6, 2024 at 6:27=E2=80=AFAM Nidhi=
 Panda &lt;<a href=3D"mailto:nidhi.panda@cyronics.com" target=3D"_blank">ni=
dhi.panda@cyronics.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div>




<div dir=3D"ltr">
<div dir=3D"ltr" id=3D"m_-4969091894424093972m_5632979231606964712divRplyFw=
dMsg"><span style=3D"color:rgb(0,0,0);font-family:Aptos,Aptos_EmbeddedFont,=
Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt">I am curre=
ntly working with a </span><b style=3D"color:rgb(0,0,0);font-family:Aptos,A=
ptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-siz=
e:12pt">USRP N300 device with uhd 4.7 and gnu radio v3.11.</b><span style=
=3D"color:rgb(0,0,0);font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServi=
ce,Calibri,Helvetica,sans-serif;font-size:12pt">=C2=A0 I have created a sim=
ple loopback configuration in which the data flows through the following bl=
ocks:</span></div>
<div style=3D"direction:ltr;margin-top:1em;margin-bottom:1em;font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fon=
t-size:12pt;color:rgb(0,0,0)">
<code>Rx_Radio &gt; DDC &gt; DMAFifo &gt; DUC &gt; Tx_Radio</code>.</div>
<div style=3D"direction:ltr;margin-top:1em;margin-bottom:1em;font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fon=
t-size:12pt;color:rgb(0,0,0)">
However, I am encountering an issue where <b>only the receiver is working</=
b>, and the
<b>transmitter is not starting</b>. My objective is to <b>receive data</b>=
=C2=A0and <b>
transmit it back</b>=C2=A0without using <b>host-side streamers</b>, i.e., I=
 intend to handle everything on the RFNoC hardware blocks directly.</div>
<div style=3D"direction:ltr;margin-top:1em;margin-bottom:1em;font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fon=
t-size:12pt;color:rgb(0,0,0)">
I have set the configuration for the transmitter using the <code>RadioContr=
ol</code>=C2=A0blocks (as shown in the attached script), but I am unable to=
 start the transmitter. It seems that the transmitter is not getting activa=
ted or streaming, even though the receiver
 works correctly.</div>
<div style=3D"direction:ltr;margin-top:1em;margin-bottom:1em;font-family:Ap=
tos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fon=
t-size:12pt;color:rgb(0,0,0)"><br></div></div></div></blockquote><div>You m=
ight want to look at the Ettus c++ example &quot;rfnoc_radio_loopback&quot;=
.=C2=A0 You could also try just running it.=C2=A0 Note that it does not inc=
lude the DMAFifo block but it does allow you to choose which Rx Radio and T=
x Radio block to use. After quickly reviewing your attachment, I would ment=
ion that you shouldn&#39;t have to send Tx streaming commands. Once you sen=
d the Rx streaming command, the data will flow.=C2=A0 However, if you use a=
 &quot;timed&quot; receive command, then the streaming data will have a tim=
e tag such that when it arrives at the Transmit radio, it will by definitio=
n be late.=C2=A0 You will need to do one of the following: either use non-t=
imed receive streaming commands or else create a custom RFNoC block that ma=
nipulates the time tag to add some delay in order to account for the number=
 of clock cycles that it takes for the data to propagate from Rx to Tx.</di=
v><div><br></div></div></div></blockquote><div><br></div><div>And, one ques=
tion for the Ettus dev team: is there an easy way to configure this kind of=
 graph such that the host will receive the &quot;Late&quot; messages?=C2=A0=
 Since the host is not involved in the streaming, it&#39;s not obvious to t=
he user that all of the streaming is arriving Late to the Tx radio as it wo=
uld be in a host-based streaming application.=C2=A0 But, it would be nice i=
f the host did receive these Late (or Underrun) messages (at least in many =
situations).</div><div><br></div><div>=C2=A0</div></div></div>

--000000000000642e3306289c0281--

--===============5631187477288100446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5631187477288100446==--
