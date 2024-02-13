Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 056BE852A96
	for <lists+usrp-users@lfdr.de>; Tue, 13 Feb 2024 09:11:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA52C384B29
	for <lists+usrp-users@lfdr.de>; Tue, 13 Feb 2024 03:11:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707811890; bh=T25Eoar4fLNBW5YEuRDlfi9yfEnX1MrT4gtC8uV7NW8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=L4gE+oirk5rKtgoi45UJ/1yEUctn2CJWQX+izE/mUrastqHnUndEXMlm0Q8lw7QMG
	 H5zbc88cFB3mnEpQgV7fZIlHpXuqdgEIkeNXwaVSWuFJ5okJPxMPJJWDxiKtYxTsf6
	 v4feg7zyQYmrYSO9sEdb9yBu8+UpTIluQi5Ih8kF1iuo4Y612pkTKmv2iYAy5vmSG5
	 iwAzu3m9Of7fp4XhozbXfTS2sPeMvbVbcOvn1dQwusMskaFSnz+p7FYIE13jL73UMe
	 aSviLdJ2+XJC25jiughkE8ImhweTqyhB1dLEdJcy4YIziuP950VebZdBCzM8FOQIMe
	 eiyipJG/lYEgg==
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 0EA253849F5
	for <usrp-users@lists.ettus.com>; Tue, 13 Feb 2024 03:10:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="hTNCKjs2";
	dkim-atps=neutral
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2d0d799b55cso50247441fa.0
        for <usrp-users@lists.ettus.com>; Tue, 13 Feb 2024 00:10:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google; t=1707811850; x=1708416650; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KZLaa/vtOHkHe/pJjMeZVWAhZdw817Bn4KgahhaEdFY=;
        b=hTNCKjs2Zjju/Y6mnds2CEVNoIGCTr6bmjdLTKZJKSQjK0b7IqwKonXYosk//MGQ/d
         cSik7YH/Eoq1k6zEqdkLgTMm+UKEe5YHn76avX3cAGh//JXBU7WYVHR3iP9TVZN0q8+W
         wuWgd+gSmlUwhkuPsFPuVFOJjPbmfC+RgOoUu5QZE2+NSX1z7DmDyb/wRjs952nM2kOv
         ij39tPY1nCfhxVS/ksd5+dd0qdzudHj5mMX+0UzqlJ75QF+ELEPXN/2UZSLJh9a6KHo2
         iShxw9Ze/OxK9y9W1uJElxsQN3bPyikqjSUskeIfapeLb7Y4O1HwxVnXU12JvMcVITJw
         np7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707811850; x=1708416650;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KZLaa/vtOHkHe/pJjMeZVWAhZdw817Bn4KgahhaEdFY=;
        b=toJzf+s70cCO9/7uY97EmE+uxqnE8VNvTzhQab+hvbpropxiNcVc4+ZLacwneY5uki
         kRymAn7yhOoR5W5iWScQffMukcx9LlswgNsVO6YruqUNJp7wU5CrtY9GgwYdyFCVmaRo
         bj6hR9IAPToEXIiWpH7Br2fVd6XxBnZ7aqVj8w7xP8RdBXDpImMHbbYjUAbFSHQdO1k2
         ul/Hji0GFWsJTmp4k5T8czcU7/5hR2St2MTXpcS3nSwlT28SrETCJMZ1NxVQ4YwgY69H
         yW+kQ1doW09O1bZvrf0CMVCDSsrOo8OHcW+lC/f1zEjNbFQmk2xde3GVnz56lE9Iu1J5
         z09w==
X-Gm-Message-State: AOJu0YxGs8WN55jFbVTybH0K2xoerHaXz+Qf+GzXlqt5/nZdEQlQCMEk
	oo/PgOO2YzelnduhLh4707OSMx+Uxuza9hMVm1UYfMYZPlzvmIGhKxmdGupD0FSfokDx+1oklsO
	VZzYAPHYsfe5Xx9nts6QnvWKnQLFI5D0PHhGP2g==
X-Google-Smtp-Source: AGHT+IEqf+1qlfNkssSbN6hM86J5D8wJYOCyG/KrP6KQTM3qIbbnb2e4nX740dUZ0gQ20tVlEuY5xeuWeyDXaFLZGcs=
X-Received: by 2002:a2e:2404:0:b0:2d1:ca1:75fd with SMTP id
 k4-20020a2e2404000000b002d10ca175fdmr535516ljk.20.1707811829206; Tue, 13 Feb
 2024 00:10:29 -0800 (PST)
MIME-Version: 1.0
References: <ydTJtYzwSbHTPd2X7O9RMzkCGwqAlfBUIAKOjVf6RQ@lists.ettus.com>
 <CAKHaR3k90Bn3oXPCckYiNqToGKUmCrfW6GZPNrM+7f0JOx7SoQ@mail.gmail.com>
 <CAEXYVK7XetC__b5vjnoqHAsVqVU1XH-wX2LWEW4mQTJemVbniA@mail.gmail.com>
 <CAKHaR3m81BUmSvJbh-Z3Ob6havhcq8+JNvZc=Q5sTna1_WeV1Q@mail.gmail.com> <CAEXYVK76sqhOR2cfyKW8gsVGxaC0y238HWsLPEA41yt5dQc6KA@mail.gmail.com>
In-Reply-To: <CAEXYVK76sqhOR2cfyKW8gsVGxaC0y238HWsLPEA41yt5dQc6KA@mail.gmail.com>
From: Dario Pennisi <dario@iptronix.com>
Date: Tue, 13 Feb 2024 09:10:17 +0100
Message-ID: <CAKHaR3mO7DeyWbjSZsR3z-QdwnULQbvH1SDQCoPFhVWqBBvp0Q@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: N4OTPVIXJEHDCUPDOZRZ2ILD2MNS7FW2
X-Message-ID-Hash: N4OTPVIXJEHDCUPDOZRZ2ILD2MNS7FW2
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding existing RFNOC blocks in GNU Radio GUI
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N4OTPVIXJEHDCUPDOZRZ2ILD2MNS7FW2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4757603658978531170=="

--===============4757603658978531170==
Content-Type: multipart/alternative; boundary="0000000000006c654906113eed33"

--0000000000006c654906113eed33
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Brian,
thanks for the clarification, however, if i'm not mistaken, the commit you
mention is on main and that should be in gnuradio 3.10, whereas if you
stick with 3.8 that will still require gr-ettus, as also stated in
here: gr-ettus/README.md
at maint-3.8-uhd4.0 =C2=B7 EttusResearch/gr-ettus (github.com)
<https://github.com/EttusResearch/gr-ettus/blob/maint-3.8-uhd4.0/README.md>
also, the python script you mention is good but doesn't address completely
the OOT development flow as it still lacks all the block driver counterpart
(python/C) and the OOT tree skeleton which is quite conveniently created
with rfnocmodtool.
of course you could just copy the example tree and start modifying it
however to be honest i've spent some time trying to use gnuradio 3.10/UHD
4.x without gr-ettus and several things were not obvious especially due to
lack of updated documentation and btw i asked a few times what was the
expected way of handling this and have been told that rfnocmodtool was
going to be revamped and included in future versions:

[USRP-users] Re: rfnocmodtool (mail-archive.com)
<https://www.mail-archive.com/usrp-users@lists.ettus.com/msg16935.html>

rfnocmodtool - NI Community
<https://forums.ni.com/t5/USRP-Software-Radio/rfnocmodtool/td-p/4349614>

thanks,

Dario Pennisi


On Mon, Feb 12, 2024 at 10:22=E2=80=AFPM Brian Padalino <bpadalino@gmail.co=
m> wrote:

> On Mon, Feb 12, 2024 at 4:13=E2=80=AFPM Dario Pennisi <dario@iptronix.com=
> wrote:
>
>> Hi Brian,
>> The issue with not using gr-ettus is the lack of rfnocmodtool which is
>> very handy. Also, it is my understanding that unless you move to gnuradi=
o
>> 3.10 even with uhd4.6 you still need gr-ettus. Am I wrong?
>>
>
> You're right that the rfnocmodtool is not available with the current
> software, but you are mistaken that you need gr-ettus.  The RFNoC blocks
> have been pulled into gr-uhd in GNU Radio:
>
>
> https://github.com/gnuradio/gnuradio/tree/fe048a9874d2604d48d396d2b39925a=
0cf2c3c70/gr-uhd/grc
>
> The alternative to the rfnocmodtool is to use this verilog generator code
> which is described here:
>
>
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Creating_Your_=
Own_RFNoC_Block
>
> Specifically, you write the yml file which describes your block then you
> invoke:
>
>      $ python3 <repo>/host/utils/rfnoc_blocktool/rfnoc_create_verilog.py
> -c ~/rfnoc-demo/blocks/demo.yml -d ~/rfnoc-demo/fpga/rfnoc_block_demo
>
> This sets up the shell and other interfaces as per their definition in th=
e
> block yml file.
>
> Hope this helps.
>
> Brian
>
>>

--0000000000006c654906113eed33
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Brian,<div>thanks for the clarification,=C2=A0however,=
=C2=A0if i&#39;m not mistaken, the commit you mention is on main and that s=
hould be in gnuradio=C2=A03.10, whereas if you stick with 3.8 that will sti=
ll require gr-ettus, as also stated in here:=C2=A0<a href=3D"https://github=
.com/EttusResearch/gr-ettus/blob/maint-3.8-uhd4.0/README.md">gr-ettus/READM=
E.md at maint-3.8-uhd4.0 =C2=B7 EttusResearch/gr-ettus (github.com)</a></di=
v><div>also, the python script you=C2=A0mention is good but doesn&#39;t add=
ress completely the OOT development flow as it still lacks all the block dr=
iver counterpart (python/C) and the OOT tree skeleton which is quite conven=
iently created with rfnocmodtool.</div><div>of course you could just copy t=
he example tree and start modifying it however to be honest i&#39;ve spent =
some time trying to use gnuradio 3.10/UHD 4.x without gr-ettus and several =
things were not obvious especially due to lack of updated documentation and=
 btw i asked a few times what was the expected way of handling this and hav=
e been told that rfnocmodtool=C2=A0was going to be revamped and included in=
 future versions:</div><div><br></div><div><a href=3D"https://www.mail-arch=
ive.com/usrp-users@lists.ettus.com/msg16935.html">[USRP-users] Re: rfnocmod=
tool (mail-archive.com)</a><br></div><div><br></div><div><a href=3D"https:/=
/forums.ni.com/t5/USRP-Software-Radio/rfnocmodtool/td-p/4349614">rfnocmodto=
ol - NI Community</a><br></div><div><br></div><div>thanks,</div><div><br cl=
ear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-=
family:Calibri,sans-serif;font-size:13.3333px">Dario Pennisi</span><br styl=
e=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px"><=
br></div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Mon, Feb 12, 2024 at 10:22=E2=80=AFPM Brian P=
adalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div dir=3D"ltr">On Mon, Feb 12, 2024 at 4:13=E2=80=AFPM Dario =
Pennisi &lt;<a href=3D"mailto:dario@iptronix.com" target=3D"_blank">dario@i=
ptronix.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><div>Hi Brian,</div=
><div dir=3D"auto">The issue with not using gr-ettus is the lack of rfnocmo=
dtool which is very handy. Also, it is my understanding that unless you mov=
e to gnuradio 3.10 even with uhd4.6 you still need gr-ettus. Am I wrong?</d=
iv></div></blockquote><div><br></div><div>You&#39;re right that the rfnocmo=
dtool=C2=A0is not available with the current software, but you are mistaken=
 that you need gr-ettus.=C2=A0 The RFNoC blocks have been pulled into gr-uh=
d in GNU Radio:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://git=
hub.com/gnuradio/gnuradio/tree/fe048a9874d2604d48d396d2b39925a0cf2c3c70/gr-=
uhd/grc" target=3D"_blank">https://github.com/gnuradio/gnuradio/tree/fe048a=
9874d2604d48d396d2b39925a0cf2c3c70/gr-uhd/grc</a></div><div><br></div><div>=
The alternative to the rfnocmodtool=C2=A0is to use this verilog generator c=
ode which is described here:</div><div><br></div><div>=C2=A0=C2=A0<a href=
=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Creating_You=
r_Own_RFNoC_Block" target=3D"_blank">https://kb.ettus.com/Getting_Started_w=
ith_RFNoC_in_UHD_4.0#Creating_Your_Own_RFNoC_Block</a></div><div><br></div>=
<div>Specifically, you write the yml file which describes your block then y=
ou invoke:</div><div><br></div><div>=C2=A0 =C2=A0 =C2=A0$ python3 &lt;repo&=
gt;/host/utils/rfnoc_blocktool/rfnoc_create_verilog.py -c ~/rfnoc-demo/bloc=
ks/demo.yml -d ~/rfnoc-demo/fpga/rfnoc_block_demo</div><div><br></div><div>=
This sets up the shell and other interfaces as per their definition in the =
block yml file.</div><div><br></div><div>Hope this helps.</div><div><br></d=
iv><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--0000000000006c654906113eed33--

--===============4757603658978531170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4757603658978531170==--
