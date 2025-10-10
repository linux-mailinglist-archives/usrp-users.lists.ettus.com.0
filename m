Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C1268BCD965
	for <lists+usrp-users@lfdr.de>; Fri, 10 Oct 2025 16:43:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 151223860CE
	for <lists+usrp-users@lfdr.de>; Fri, 10 Oct 2025 10:43:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1760107408; bh=8ji92eEeEZALTm0li9m0UCyxx2T48nGz+ojhOxlhkGA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=YSfAx/5Bd34Z3YmBW04JCoCPrhILpyVkjd48OwZLLPCzE2iNWTKjEsVp5inBdNW0N
	 Vuoe8OBOy11pp0zlFBxyfr/E9wMJE3h2z+xTVlQuAwH9oqoMmKj0x4RAlOWXlHYBFD
	 rzVf5xgGkolIBEED+msX2qZ9nb8GEGTnJhuzoLiP3+RR47Q1GyNDKWM/4YvIfHBxUl
	 QOZ6rGXavsk4wlj73i64odamQ58h2Zc0iECIyApZ81RGcc4nBT+h4BZpENsI7Zq50Z
	 6+opoKTuU5XQQ111GFHca9tLjQFjGyH6FNVbxu6s1CfSv7WAj5E0Qz/D5VyPC5qHov
	 +xE30Kr6RmLkQ==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 879BD385FD7
	for <usrp-users@lists.ettus.com>; Fri, 10 Oct 2025 10:43:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="2ARNqd4B";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b48d8deaef9so390914466b.2
        for <usrp-users@lists.ettus.com>; Fri, 10 Oct 2025 07:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1760107383; x=1760712183; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZIT0u5XEi97QranYDnw5aT0Wwr2RzeVCUwP1SI/xp5o=;
        b=2ARNqd4B5HFYghpz1ldshJMSqU6IoUXmcBzWLgc0IYmkk7xp95dyG1VKZO+CF6UlIi
         pegO7vcb2lbLUx9iQWBHKpqTZ9+VcSJkaZlmDR2gTK2MaFCFtmszUdEl6Wgy3pQTwNR6
         xdm7M7uovdaBI7r90GrSb54/zrQ4pSWnfxnJKwwy1FP83ncki0YApLZknX36mTtHMmiI
         cp4Ic5Kvh2XYVOJZDv5rYGluNWihmebWJ6AvZgV9GO1UOKeaW9k9krPwQBSJpxoSPhfj
         TNTcOUiYcEGBS6m45VPqw8Jqjf4OcFDcqSUZIHNYPRrn1eKLsJSY3nHDMs3MAlX52FjS
         0Fyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760107383; x=1760712183;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZIT0u5XEi97QranYDnw5aT0Wwr2RzeVCUwP1SI/xp5o=;
        b=Dqn0QDxSLzt93+0DFeUKkxrVhZaLJihlw6IMTGxf/roKFY0FK0u+GKxFKWOch5eKi3
         pD1y1HEU1MUCG/CdQa7bzQSyc9EEc8JkTY3P5qGXDT+v6v5rAy5650PoEddiB65gdIxX
         rF6kUUb1/EcXKJFLtsaHHjdExB/+Vq5AaHzilrTq1mSgRHf2Wz731MrUf2evFAQgyKXQ
         vqUSGonIoBU5SkpSxmJzb+gr4al/bQLAhO3biv/Y/MnJpLoMiScorygeazd+T50+0A/8
         arqaNAx5Rq8oL5JFGfGgKjgSaodW58/WSKbIWWlIIF/bTxC7lXZ/s6x1sdWWuviTURSK
         QBwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWiTsQAaXITvoppzejiorEhhOD8e2Qi+reZq6jGkI6RJl2UOnoC7hT8ZCayEhw3nQb6v+dyfwHMeK6a@lists.ettus.com
X-Gm-Message-State: AOJu0YyyvzosJUS+p7kCZoLu+40BaHDexWL/Scr5t+9mT1H4O0Gvk8Te
	GxP4AJnrs3LqtKMH0+zXW5CdVyAFOFEvi9fIk3EJ9mX0zVpP+0/eyUY4Vh/Jf3HkMzlRClm3Mqz
	+SFmYaxhGbYlvllOYQu8kj4MgsGZvqTysNX+8fmEDEbTY
X-Gm-Gg: ASbGnct6X0pOTelHu8NMFLsZjvZm7KvG3uJgEdaBTE0RQvSKEWG+dhifVwXSwDWpb3Y
	yii6+GePnWC7637Dr1KM/bFy6BSCk6qLrnTAozqTgjrd1E69KkZ3coXbAPhEGldWmN8onKQo7Z7
	kxULBKCA550/DrE3JaoPNx08GWv+grS+qlt40c20dhXbznF5/64fGvw8BemrJ+OE20swTjfueMH
	CjHAEA85wWNOGJ6thE8VLzhT04I+FM04LTx
X-Google-Smtp-Source: AGHT+IE3mbFIMxdEAerxahM3IoS1IgqALxaTO7F0Wf26jMxY4cEg2ezAF+lK7B2YwuovK8nGpDX72CtAv6ZRUOxWY4A=
X-Received: by 2002:a17:907:3f9f:b0:b0d:d831:6fba with SMTP id
 a640c23a62f3a-b50acc3133bmr1249606966b.59.1760107382979; Fri, 10 Oct 2025
 07:43:02 -0700 (PDT)
MIME-Version: 1.0
References: <5D6pJksoat65AvVsHRzz6mSqsEI3UGvJsMi93HDD0e0@lists.ettus.com> <CAEXYVK5i4e8s8=s-oB+53HVOwe7A7GVLe+58CVZNJfjg5qzn7w@mail.gmail.com>
In-Reply-To: <CAEXYVK5i4e8s8=s-oB+53HVOwe7A7GVLe+58CVZNJfjg5qzn7w@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 10 Oct 2025 16:42:52 +0200
X-Gm-Features: AS18NWD6OC_dDutdNyOdzHIGI9mySbgnLr0zkf0uKd_RPxipkLp0RmOzUgQKVw8
Message-ID: <CAFOi1A7uT73GzWHoMMnDqq1zqSASYpOfSX3oHpqwAfaG5EdJ_w@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: FZRWYZEIYIDQCT5CRAZRDZWU2AV66CT6
X-Message-ID-Hash: FZRWYZEIYIDQCT5CRAZRDZWU2AV66CT6
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: ryan.a.wolfarth@gmail.com, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Accessing DDR within OOT RFNoC Block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FZRWYZEIYIDQCT5CRAZRDZWU2AV66CT6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0376063484023283459=="

--===============0376063484023283459==
Content-Type: multipart/alternative; boundary="0000000000005450260640ceef73"

--0000000000005450260640ceef73
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Ryan,

if you add a DRAM interface to your YAML and call rfnoc_modtool add, then
you will get an interface. In the other thread that Brian mentions, he and
Wade discuss that it might be too wide -- but that should not be a problem.

Give it a shot, and let us know if you run into any issues.

--M

On Wed, Oct 8, 2025 at 8:50=E2=80=AFPM Brian Padalino <bpadalino@gmail.com>=
 wrote:

> On Wed, Oct 8, 2025 at 2:40=E2=80=AFPM <ryan.a.wolfarth@gmail.com> wrote:
>
>> Greetings,
>>
>> I'm writing to request a heading-check on the design of an RFNoC block
>> that needs to conditionally save/recall an arbitrary number of samples. =
I
>> successfully built & ran a version of the gain example to convince mysel=
f
>> that the build environment was setup correctly. Now I'm struggling to ad=
d
>> the DDR interface to the design.
>>
>> My first thought was to port the functionality of the replay block to an
>> OOT block that contains decision logic to save/recall the samples. By us=
ing
>> the replay block's YAML file as a starting point, I expected rfnoc_modto=
ol
>> to generate HDL similar to what can be seen in rfnoc_block_replay.v.
>> Unfortunately, the AXI memory mapped interface is absent in the resultin=
g
>> HDL. That makes me think that my YAML definition lacks specificity, or t=
hat
>> the interface was added manually. I understand rfnoc_modtool is meant to=
 be
>> a starting point, so am I expecting too much?
>>
> I believe I ran into a similar issue when I was asking about it here:
>
>
> https://lists.ettus.com/empathy/thread/6UOYGNTMTCP2SFP4PKYH2RF3IWPXWQVJ?h=
ash=3D6UOYGNTMTCP2SFP4PKYH2RF3IWPXWQVJ#6UOYGNTMTCP2SFP4PKYH2RF3IWPXWQVJ
>
> I solved it by hand writing my HDL since I am more proficient in that, bu=
t
> the links to the files in the above post are the places to modify the cod=
e
> generation to get the HDL to better reflect the interfaces you're
> requesting.
>
> HDL is not in my wheelhouse, but I'm working with another engineer who ha=
s
>> experience. We appreciate any insight & advice that this forum provides.
>>
>
> Good luck - hopefully a pull request can come from this work since it's a
> useful interface for blocks.
>
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005450260640ceef73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Ryan,</div><div><br></div><div>if you add a DRAM =
interface to your YAML and call rfnoc_modtool add, then you will get an int=
erface. In the other thread that Brian mentions, he and Wade discuss that i=
t might be too wide -- but that should not be a=C2=A0problem.</div><div><br=
></div><div>Give it a shot, and let us know if you run into any issues.</di=
v><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_qu=
ote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 8, 2025 at=
 8:50=E2=80=AFPM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">=
bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Wed, Oct 8, 2025 at=
 2:40=E2=80=AFPM &lt;<a href=3D"mailto:ryan.a.wolfarth@gmail.com" target=3D=
"_blank">ryan.a.wolfarth@gmail.com</a>&gt; wrote:</div><div class=3D"gmail_=
quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Greetings,</p><=
p>I&#39;m writing to request a heading-check on the design of an RFNoC bloc=
k that needs to conditionally save/recall an arbitrary number of samples. I=
 successfully built &amp; ran a version of the gain example to convince mys=
elf that the build environment was setup correctly. Now I&#39;m struggling =
to add the DDR interface to the design. </p><p>My first thought was to port=
 the functionality of the replay block to an OOT block that contains decisi=
on logic to save/recall the samples. By using the replay block&#39;s YAML f=
ile as a starting point, I expected rfnoc_modtool to generate HDL similar t=
o what can be seen in rfnoc_block_replay.v. Unfortunately, the AXI memory m=
apped interface is absent in the resulting HDL. That makes me think that my=
 YAML definition lacks specificity, or that the interface was added manuall=
y. I understand rfnoc_modtool is meant to be a starting point, so am I expe=
cting too much?</p></blockquote><div>I believe I ran into a similar issue w=
hen I was asking about it here:</div><div><br></div><div>=C2=A0=C2=A0<a hre=
f=3D"https://lists.ettus.com/empathy/thread/6UOYGNTMTCP2SFP4PKYH2RF3IWPXWQV=
J?hash=3D6UOYGNTMTCP2SFP4PKYH2RF3IWPXWQVJ#6UOYGNTMTCP2SFP4PKYH2RF3IWPXWQVJ"=
 target=3D"_blank">https://lists.ettus.com/empathy/thread/6UOYGNTMTCP2SFP4P=
KYH2RF3IWPXWQVJ?hash=3D6UOYGNTMTCP2SFP4PKYH2RF3IWPXWQVJ#6UOYGNTMTCP2SFP4PKY=
H2RF3IWPXWQVJ</a></div><div><br></div><div>I solved it by hand writing my H=
DL since I am more proficient in that, but the links to the files in the ab=
ove post are the places to modify the code generation to get the HDL to bet=
ter reflect the interfaces you&#39;re requesting.</div><div><br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><p> </p><p>HDL is not in my wh=
eelhouse, but I&#39;m working with another engineer who has experience. We =
appreciate any insight &amp; advice that this forum provides.</p></blockquo=
te><div><br></div><div>Good luck - hopefully a pull request can come from t=
his work since it&#39;s a useful interface for blocks.</div><div><br></div>=
<div>Brian</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005450260640ceef73--

--===============0376063484023283459==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0376063484023283459==--
