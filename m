Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 467AB9FEA8D
	for <lists+usrp-users@lfdr.de>; Mon, 30 Dec 2024 21:10:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 288A8385CB3
	for <lists+usrp-users@lfdr.de>; Mon, 30 Dec 2024 15:10:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735589417; bh=YAycAciFV+eNiBJ9BLrwCNgxqaoB7ED8kvy42S64NPQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FswF2vi1dnvO4w7XogesB7lvoTo5Db7SpobgDMrcohdI/7Y6xJM7S5cFi1XE4Wo+Z
	 yW0lZ0YYJoy8sIO0i3Hd/jTo6BfjyCy+MmBykfKji9cctDGJdTs2QqpdlU0EzsAIRX
	 27D5aOR3SPpAWfZH4oFVeyGxsl3dNVdbTEdIlwhQBLO2l/soalucuWuoHQBw5CPqwh
	 nfSC2zdltxDf6fGjmoYljkDCEtIhAXPGHPGj1RMVY94Wn996mDZod1n4kkBmOqTgLV
	 HCB8LG3yY0AVX7rNzqYrjD8DnoGQT6yIwQKIhd2NPkRD2a04BIeio2A4VVgSZaBMVM
	 ozWXAs6k81a/w==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 5382138093F
	for <usrp-users@lists.ettus.com>; Mon, 30 Dec 2024 15:09:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="c4p7IaTK";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-aaeef97ff02so887414166b.1
        for <usrp-users@lists.ettus.com>; Mon, 30 Dec 2024 12:09:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735589375; x=1736194175; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4+Tj10Cls4Ju8CuuLhhbIH2ftqATeOOTnOEWfdPKlwE=;
        b=c4p7IaTKW8JWqppDWPHFbtAN+zbHhwfKIW7g3wyGQFvH4b1LSLsuqjrWFCNLIj8QdQ
         tCn7YE+LwNoNPeLmhsFvw3assuzmmkPt/Y6G6pwwv0bqgWzXQkAkv2NH+k8S83dawIYq
         txThsWNeYbxdtv0LWd6o0mBT4cDkb8BANM4EysndlciUaufWMG1pCKUN9HoJr0QsFRpE
         apDXLyXosR0CGxgVKlwPfr+G0+C8mqtesn48Rg4ONmIh6A1mka2VilaHT0+PWAgAQBqR
         GKmU3kE+DR1k216UJNf6QJpztVr1BfMfIUmFQ2b7kxMOSX/+ArfzcbBbj/TqzhT95Ckc
         Xjhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735589375; x=1736194175;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4+Tj10Cls4Ju8CuuLhhbIH2ftqATeOOTnOEWfdPKlwE=;
        b=hIxNHJMnhiv23OxB9NMoQdS3KkqW/oOYHq9+lIis+/tVj59XlzOTw/ZfcnzOMWEM82
         uvQCK9IuCIe1W+q+6rw5iUJ/HJeOzQ4qyc91cb8A/aGYMc4UHrXucvDJRv9yuJ9M0SX1
         zHUTW+J30tbImYdkFdFkgGjhsZjkvKdz1a58Lk89mF6ppwYoxlp9+nSEPInDjrITVWhS
         ou5U199dzzC90PAK8peH17dnEjoLzYIsO1Z7iKZ0EioU/XDyqved4pzIY+Laqss1+ED0
         U4GoBZZf6ci6uLqQH+GTmyWRPURQkoTj2PfeLwPGDPXcOeJB1m8LSOVHI5hiJwN6ILXc
         mzrA==
X-Forwarded-Encrypted: i=1; AJvYcCUf/YuM3KGPe4kHRdxamV9hI2FQKbJ263l5zjmphiitx0EtRD4drjddHgwdtEgYolFUVuPRX1L/VhUq@lists.ettus.com
X-Gm-Message-State: AOJu0Yxieh2SRcYP2b5toP9ItNqsCz77ahWsmL433CI8BNipYa3sxFEW
	cAnq/pxZMEaxhyXPf5FXfQnsX9ZQ0VC0h0sFeO+9eECUX00ds3tY1adwz6lHsA7+dCej3fmL2tb
	uLS0/EvOOcOVLzkMDbHmk89bjkHISwA==
X-Gm-Gg: ASbGncsOGyEfpv130gz23jKahsUGgHfJzOR/SQw/fJzkUFWYQb/c+ECruLcWF53ELEJ
	ApumHmDnZ+FulXYeRfwECVL1pQz2j6/DBmPFDtQ==
X-Google-Smtp-Source: AGHT+IHYqQdbalM5nH4MMXzlmooLnkLr6nYM8dKMhmBJSwqJGFpu8UwnDDINakXKGNy1srn2M513D2NyqOv1t39Qq+4=
X-Received: by 2002:a17:907:a708:b0:aae:8495:e064 with SMTP id
 a640c23a62f3a-aae8495e124mr2898944366b.40.1735589374719; Mon, 30 Dec 2024
 12:09:34 -0800 (PST)
MIME-Version: 1.0
References: <cd7a43dc-2d15-43c8-a4e7-abde149bf497@ettus.com>
In-Reply-To: <cd7a43dc-2d15-43c8-a4e7-abde149bf497@ettus.com>
From: Richard Bell <richard.bell4@gmail.com>
Date: Mon, 30 Dec 2024 12:09:25 -0800
Message-ID: <CAMMoi3vgamcHh9BbPkBRwyFeyp5XSzBy6g-5pFxX45+M+8Q6XQ@mail.gmail.com>
To: mueller_usrp_users@baseband.digital,
	usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: VCSVA5YW3ZK25XWSUKGI7ZAU5PEJPGIQ
X-Message-ID-Hash: VCSVA5YW3ZK25XWSUKGI7ZAU5PEJPGIQ
X-MailFrom: richard.bell4@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Thanks for a decade of professional fun! (Or: so long, and see you around!)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VCSVA5YW3ZK25XWSUKGI7ZAU5PEJPGIQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1795341279379215919=="

--===============1795341279379215919==
Content-Type: multipart/alternative; boundary="00000000000027ff86062a826499"

--00000000000027ff86062a826499
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Marcus,

Looking forward to seeing you at a future GRCon. It's been too long.

All the best!

Rich

On Mon, Dec 30, 2024 at 10:59=E2=80=AFAM Marcus M=C3=BCller <marcus.mueller=
@ettus.com>
wrote:

> Hello USRP-Users,
>
> when I started hanging around on this mailing list in 2013, I wouldn't
> have thought that
> I'd still be around eleven years later.
>
> But me asking about sporadic signal issues after retuning, which I would
> later be able to
> attribute to the impulse response of the DC cancellation IIR filter in th=
e
> N2x0 set me on
> a course to, mostly out of boredom during lengthy commute, would start
> helping people on
> this mailing list from memory and lecture of the GNU Radio, UHD (and
> gateware) source
> code. It was that which in the end got me contracted as support engineer
> for Ettus in
> spring 2014.
>
> Since then I had the indubitable fun to play a small supporting role in s=
o
> many projects
> of users of USRPs =E2=80=93 from university students doing theses, over e=
ngineers
> getting demos to
> do what they want, to physicists controlling instruments or observing the
> cosmos, to
> biologists working in the most diverse imaginable fields, and of course
> the many, many
> communications engineers building fantastic systems from (both literal an=
d
> Shannon) bits
> and pieces!
>
> Wouldn't want to miss that experience! So thank you all for being,
> subsuming everything,
> the nicest user community a hardware/software vendor could wish for :) Th=
e
> USRP series of
> devices will remain the class of devices I'm most intimately familiar wit=
h
> =E2=80=93 and I'm sure
> that even as NI/Emerson moved to higher priced segments and paid support
> models, you will
> continue to do groundbreaking and infrastructure-upholding work with them=
!
>
> But: it's time for me to move on =E2=80=93 this is going to be my last pu=
blic
> email from an
> @ettus.com address.
>
> Which doesn't mean I'll not be around; you'll still find me on the mailin=
g
> list under
> other addresses (see the Reply-To: of this message), and you might know
> that I already
> kind of stuck with the GNU Radio project. My rent is still paid for by SD=
R
> system work,
> and so you'll run into me at GRCon, you'll find me plastering the interne=
t
> with
> explanations of the strangest things.
>
> Not to get to sentimental:
>
> Keep on hacking the electromagnetic spectrum, never let your signal
> processing slow down, and:
>
> See you around,
>
> Marcus M=C3=BCller
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000027ff86062a826499
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Marcus,<div><br></div><div>Looking forward to seeing y=
ou at a future GRCon. It&#39;s been too long.</div><div><br></div><div>All =
the best!</div><div><br></div><div>Rich</div></div><br><div class=3D"gmail_=
quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, =
Dec 30, 2024 at 10:59=E2=80=AFAM Marcus M=C3=BCller &lt;<a href=3D"mailto:m=
arcus.mueller@ettus.com">marcus.mueller@ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">Hello USRP-Users,<br>
<br>
when I started hanging around on this mailing list in 2013, I wouldn&#39;t =
have thought that <br>
I&#39;d still be around eleven years later.<br>
<br>
But me asking about sporadic signal issues after retuning, which I would la=
ter be able to <br>
attribute to the impulse response of the DC cancellation IIR filter in the =
N2x0 set me on <br>
a course to, mostly out of boredom during lengthy commute, would start help=
ing people on <br>
this mailing list from memory and lecture of the GNU Radio, UHD (and gatewa=
re) source <br>
code. It was that which in the end got me contracted as support engineer fo=
r Ettus in <br>
spring 2014.<br>
<br>
Since then I had the indubitable fun to play a small supporting role in so =
many projects <br>
of users of USRPs =E2=80=93 from university students doing theses, over eng=
ineers getting demos to <br>
do what they want, to physicists controlling instruments or observing the c=
osmos, to <br>
biologists working in the most diverse imaginable fields, and of course the=
 many, many <br>
communications engineers building fantastic systems from (both literal and =
Shannon) bits <br>
and pieces!<br>
<br>
Wouldn&#39;t want to miss that experience! So thank you all for being, subs=
uming everything, <br>
the nicest user community a hardware/software vendor could wish for :) The =
USRP series of <br>
devices will remain the class of devices I&#39;m most intimately familiar w=
ith =E2=80=93 and I&#39;m sure <br>
that even as NI/Emerson moved to higher priced segments and paid support mo=
dels, you will <br>
continue to do groundbreaking and infrastructure-upholding work with them!<=
br>
<br>
But: it&#39;s time for me to move on =E2=80=93 this is going to be my last =
public email from an <br>
@<a href=3D"http://ettus.com" rel=3D"noreferrer" target=3D"_blank">ettus.co=
m</a> address.<br>
<br>
Which doesn&#39;t mean I&#39;ll not be around; you&#39;ll still find me on =
the mailing list under <br>
other addresses (see the Reply-To: of this message), and you might know tha=
t I already <br>
kind of stuck with the GNU Radio project. My rent is still paid for by SDR =
system work, <br>
and so you&#39;ll run into me at GRCon, you&#39;ll find me plastering the i=
nternet with <br>
explanations of the strangest things.<br>
<br>
Not to get to sentimental:<br>
<br>
Keep on hacking the electromagnetic spectrum, never let your signal process=
ing slow down, and:<br>
<br>
See you around,<br>
<br>
Marcus M=C3=BCller<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000027ff86062a826499--

--===============1795341279379215919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1795341279379215919==--
