Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6B4950C58
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2024 20:33:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D5CEB385549
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2024 14:33:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723573983; bh=dOXg18kGeCv2RvhFH/n8LUrJAb7Ftc1bduC1PvYwOOs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=yVAOf0k9qAg4I1xd7nFTrXWjgxZPmAgfnDO3aDG1Jzn3IGvkD0TsoubEk/cOy4kFH
	 KBV/nI/68kj6DKu9uBSiNGllpgltQvbTVN5ZoCLUhha+Y2EkE0C9WlH+10fffE5aP+
	 yy9XZSFVa6zq+aHl+Nq+RONDRv4Ai1IN3TVTvbzuI6TkGczH5+RDyJ145rwiVrSQ9H
	 REsXTLBWqAGYRwc3yHVJmHAK6ZBa39fwpaWiYG2hf5koFL30iqblJMazZgHiP18hNe
	 huOXkWvMRGCI1WyVqvcEGqrcDA1gF8eA1kS7OvtJdb9cup+eSOFsUh8B7YdvIUrl+D
	 McyXzjlSmIsaQ==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id DA6BA385546
	for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2024 14:32:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ncOzwHnF";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a728f74c23dso636706266b.1
        for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2024 11:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723573940; x=1724178740; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YUIMhVQkEQbO2fLUrGjy2KSVtNtV6tIAWHUIWK5R2zk=;
        b=ncOzwHnFWz9TKC3E+aOtFxN5y4/Wge+EJOi2UXigBbRoZFQEjxngZE1WeBBCQWP6cM
         tYXU8mm89xGO56+CKRTtppB4+Eb4/QXQBdiGiGfgo4Q0DRx3PUFGN9HOFH99XNJbU6Sc
         xAb2X8XdSSZnf9MDElQsvL+9msOGLOcdeW1BIaJc+r1C5H+woYUbUcyoI5DgQE0UAL/O
         yUCZ7rgeOOgbf55S3iWXgQSdGYtoLPs2jNxp8GrsyAgfir3mblSeS+sd1qxbNszX4iIb
         3uFUnQU33DiIXOKCGodj11ZHL9NLVXOn9eAb1toRF+9CHJyfV4pqA+XNDGHkj8WByrvl
         s5kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723573940; x=1724178740;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YUIMhVQkEQbO2fLUrGjy2KSVtNtV6tIAWHUIWK5R2zk=;
        b=IVAp6JY37qiI10eVMJqR+XY1FOZxvL4wLKgH3MyhRQWSibNeLqpGuJ7YRAkxSL1hNr
         7b3mLfsBeYYI9FWOgH6uoOkTKC9t6Usqm9u27D2pyeSbnhjkX0VQZhV3glURQ2BsqEgo
         W0cazncMnBD2g/5otk9TOLqkWQwAfTjZI6Nwy06BQCX8HBx+d1gmlDGK360M1GbLdYSM
         X4eg0jlzuhXp/Vdmiz9lmW+ZczsiK1om5qTAZiUQOaY2m7o6RBopUed/dxq0mmgrRmVJ
         elUbhbueh7B8i7dv2qqr7JiboW1M4JPSsvGFqLzafm7U1I3Vxg1YovBHogUg0z+B4+Qk
         YKHQ==
X-Gm-Message-State: AOJu0Yw49/pQT/tC9FWzSrN6DrfM4xZAYzCP1nRRP9xWltw3LVqTkWHa
	nTOfnj2K66kl6VqdnL5x/8Pyqi5IlEpWvcz7/zRnaKTHbtw/1TWt9fZ6uEvN2Rwbtzv8ZUXWtqU
	7XrW1NdkJrMFq2HoQHISB2X7OcvgpWNw5
X-Google-Smtp-Source: AGHT+IEdbmOtb8AXzvQxv81vkmcj3cKdwSVF4lO89QAtLWMPnduZ1KA7RE2mYZM5HAqpXDRNrDV13CVUawbeefTCnGg=
X-Received: by 2002:a17:907:e622:b0:a7d:cf4f:180b with SMTP id
 a640c23a62f3a-a8366d5be39mr17291666b.32.1723573939207; Tue, 13 Aug 2024
 11:32:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAL4V06r9bLo+Wo-JPP4H70hwdJNJCy-m1ER5xwoXp7KHQkryBQ@mail.gmail.com>
 <84320f82-be18-47b9-92be-24339e6b1dc5@gmail.com>
In-Reply-To: <84320f82-be18-47b9-92be-24339e6b1dc5@gmail.com>
From: Brajesh <brajesh153@gmail.com>
Date: Wed, 14 Aug 2024 00:02:07 +0530
Message-ID: <CAL4V06oDcG=XFKQKkLoaKjDMXDEH_KMZTW8Lg5Q2dxhbPKQvLw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: OEK3J6HBGLNSDVGRT2MSYOIH35KUZTHW
X-Message-ID-Hash: OEK3J6HBGLNSDVGRT2MSYOIH35KUZTHW
X-MailFrom: brajesh153@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reg. N210 FPGA modification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OEK3J6HBGLNSDVGRT2MSYOIH35KUZTHW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4774240194851048620=="

--===============4774240194851048620==
Content-Type: multipart/alternative; boundary="00000000000064042e061f94d4fd"

--00000000000064042e061f94d4fd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Marcus for response.

Yes, you are correct that I am beginner to UHD related issues. Maybe I
should have pointed in my first posting. Sorry for that. But for design
implementations on FPGA boards viz Basys 3 etc using AMD/Xilinx tools viz.
ISE/Vivado/Vitis I am OK. A useful link (
https://www.amd.com/content/dam/amd/en/documents/university/vivado-teaching=
/hdl-design/2015x/Verilog/docs-pdf/Vivado_tutorial.pdf
) is shared for confidence building.

Further, I am not communication field expert either. I am building/brushing
basics of communications fundamentals using GNU Radio. I have already gone
though the link you shared before posting to forum. Now, I am inferring
(confirming) that to modify N210 FPGA one need to follow the link you
shared not standard AMD/Xilinx tool kit flow. Kindly note, due to my
previous FPGA experience, I was trying to look for a way out to implement
Ettus Research GitHub code using standalone process of AMD/Xilinx tool flow
which was genesis of putting forward issue ( i ) in my previous thread. Not
to mention I have no help, on the subject matter, around either. Now, I can
ascertain that one need not to follow standalone flow of AMD/Xilinx tool
kit for mentioned cause. This settles first issue.

*Summary:-*
Modifying N210 FPGA is a two step process,

i) Generate bit file (
https://files.ettus.com/manual/md_usrp2_build_instructions.html )
ii) Use iMPACT tool to load firmware called "bit" file ( output of step
(i)) on N210 FPGA using JTAG cable


Experts confirmation is need of hour though.

----------------------------------------------

However, following doubt still remains,

i. How to customise the data rate of N210, if possible, of design available
at the GitHub link (
https://github.com/EttusResearch/uhd/tree/master/fpga/usrp2/top ). I wish,
if possible, to make the data rate as 1-bit, 2-bit, 4- bit, 8-bit, 16-bit,
32-bit and 64-bit. For N210's FPGA specifications, I referred section
"comparative feature list" available at following link,

https://files.ettus.com/manual/page_usrp2.html


ii. (new) Once the FPGA is modified (step ( i )), how to load/burn the
modified image into FPGA board. There are instructions available at above
link ( issue ( i )) but I am confused.



-------------------------------------------------

Kindly note, I have gone through following link and GitHub repository
before posting my first thread and is ready with hardware ( connector
purchased ) as well as software need ( ISE12.2, iMPACT and UDH driver
installed ) and is able get positive response to ping command given to N210
kit after power-on and connecting via LAN cable.

https://files.ettus.com/manual/page_usrp2.html


In between, I have gone through bird's view of workshop details available
at following link,

https://kb.ettus.com/images/4/47/Workshop_GnuRadio_Slides_20190507.pdf,


However,  beginner's tutorial mentioning chronological steps, for data rate
choice/modification ( if possible ), generating bit etc files and burning
modified FPGA image targeting specific application with example set, is
need of hour. I hope Ettus Research people must be having some tutorials on
the pointed thread as part of their training sessions.

Thanks.



On Tue, Aug 13, 2024 at 7:25=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 13/08/2024 08:39, Brajesh wrote:
>
> Hello all,
> I am Brajesh and working on Ettus Research N210 FPGA board modifications.
> While doing so, I am facing some issues which are listed below,
>
> i. How to implement Verilog code ( available at following GitHub link ) o=
n
> N210's ( Ettus Research ) FPGA ,
>
> https://github.com/EttusResearch/uhd/tree/master/fpga/usrp2/top/N2x0
>
> ii. How to customize the data rate of the above GitHub link. I am trying
> to make the data rate ( via connector to PC/Laptop ) as 1-bit, 2-bit, 4-
> bit, 8-bit, 16-bit(default), 32-bit and 64-bit.
>
> iii. Once N210's FPGA is modified with above modifications, how to check
> the correctness of modified FPGA of N210. What I mean here is,
> methodologies ( standalone ) to check faithfulness of N210's FPGA (
> modified ) without daughter boards.
>
>
> For the same, I kindly request your valuable suggestions. If you are busy
> enough or not the right person, I kindly request you to direct me to the
> exact person.
> Warm regards,
> Brajesh
>
> This guide might help some:
>
> https://files.ettus.com/manual/md_usrp2_build_instructions.html
>
> But the tone of your questions suggests that you aren't already familiar
> with the tools and techniques of FPGA development,
>   and if so, no amount of casual advice given here can bridge that gap.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000064042e061f94d4fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Marcus for response.=C2=A0<br></div><div><div>=
<br></div><div>Yes, you are correct that I am beginner=C2=A0to UHD related =
issues. Maybe I should have pointed in my first posting. Sorry for that. Bu=
t for design implementations on FPGA boards viz Basys 3 etc using AMD/Xilin=
x tools viz. ISE/Vivado/Vitis I am OK. A useful link ( <a href=3D"https://w=
ww.amd.com/content/dam/amd/en/documents/university/vivado-teaching/hdl-desi=
gn/2015x/Verilog/docs-pdf/Vivado_tutorial.pdf">https://www.amd.com/content/=
dam/amd/en/documents/university/vivado-teaching/hdl-design/2015x/Verilog/do=
cs-pdf/Vivado_tutorial.pdf</a> ) is shared for confidence=C2=A0building.</d=
iv><div><br></div><div>Further, I am not communication field expert either.=
 I am building/brushing basics of communications fundamentals using GNU Rad=
io. I have already gone though the link you shared before posting to forum.=
 Now, I am inferring (confirming) that to modify N210 FPGA one need to foll=
ow the link you shared not standard AMD/Xilinx tool kit flow. Kindly note, =
due to my previous FPGA experience, I was trying to look for a way out to i=
mplement Ettus Research GitHub code using standalone process of AMD/Xilinx =
tool flow which was genesis of putting forward issue ( i ) in my previous t=
hread. Not to mention I have no help, on the subject matter, around either.=
 Now, I can ascertain that one need not to follow standalone flow of AMD/Xi=
linx tool kit for mentioned cause. This settles first issue.</div><div><b><=
br></b></div><div><b>Summary:-</b></div></div><div>Modifying N210 FPGA is a=
 two step process,</div><blockquote style=3D"margin:0 0 0 40px;border:none;=
padding:0px"><div><div>i) Generate bit file ( <a href=3D"https://files.ettu=
s.com/manual/md_usrp2_build_instructions.html">https://files.ettus.com/manu=
al/md_usrp2_build_instructions.html</a> )=C2=A0</div></div><div><div>ii) Us=
e iMPACT tool to load firmware called &quot;bit&quot; file ( output of step=
 (i)) on N210 FPGA using JTAG cable</div></div></blockquote><div><div><br><=
/div><div>Experts confirmation is need of hour though.</div><div><br></div>=
<div>----------------------------------------------<br></div><div><div><br>=
However, following doubt still remains,<br></div><div><br></div><div><block=
quote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div>i. How=
 to customise the data rate of N210, if possible, of design available at th=
e GitHub link ( <a href=3D"https://github.com/EttusResearch/uhd/tree/master=
/fpga/usrp2/top">https://github.com/EttusResearch/uhd/tree/master/fpga/usrp=
2/top</a> ). I wish, if possible, to make the data rate as 1-bit, 2-bit, 4-=
 bit, 8-bit, 16-bit, 32-bit and 64-bit. For N210&#39;s FPGA specifications,=
 I referred section &quot;comparative feature list&quot; available at follo=
wing link,</div></blockquote></div></div><blockquote style=3D"margin:0 0 0 =
40px;border:none;padding:0px"><div><div><blockquote style=3D"margin:0px 0px=
 0px 40px;border:none;padding:0px"><div><a href=3D"https://files.ettus.com/=
manual/page_usrp2.html">https://files.ettus.com/manual/page_usrp2.html</a><=
/div></blockquote></div></div></blockquote><blockquote style=3D"margin:0 0 =
0 40px;border:none;padding:0px"><div><div><br></div></div></blockquote><blo=
ckquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><div><div>ii. (=
new) Once the FPGA is modified (step ( i )), how to load/burn the modified =
image into FPGA board. There are instructions available at above link ( iss=
ue ( i )) but I am confused.</div></div></blockquote><blockquote style=3D"m=
argin:0 0 0 40px;border:none;padding:0px"><blockquote style=3D"margin:0 0 0=
 40px;border:none;padding:0px"><div><br></div></blockquote></blockquote><di=
v><div><br></div></div><div><div>------------------------------------------=
-------</div><div><br></div><div>Kindly note, I have gone through following=
 link and GitHub repository before posting my first thread and is ready wit=
h hardware ( connector purchased ) as well as software need ( ISE12.2, iMPA=
CT and UDH driver installed ) and is able get positive response to ping com=
mand given to N210 kit after power-on and connecting via LAN cable.=C2=A0</=
div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><=
div><a href=3D"https://files.ettus.com/manual/page_usrp2.html">https://file=
s.ettus.com/manual/page_usrp2.html</a></div></blockquote><div><br></div><di=
v>In between, I have gone through bird&#39;s view of workshop details avail=
able at following link,</div></div></div><blockquote style=3D"margin:0 0 0 =
40px;border:none;padding:0px"><div><div><div><a href=3D"https://kb.ettus.co=
m/images/4/47/Workshop_GnuRadio_Slides_20190507.pdf">https://kb.ettus.com/i=
mages/4/47/Workshop_GnuRadio_Slides_20190507.pdf</a>,<br></div></div></div>=
</blockquote><blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px=
"><br></blockquote><div><div>However,=C2=A0 beginner&#39;s tutorial mention=
ing chronological steps, for data rate choice/modification ( if possible ),=
 generating bit etc files and burning modified FPGA image targeting specifi=
c application with example set, is need of hour. I hope Ettus Research peop=
le must be having some tutorials on the pointed thread as part of their tra=
ining sessions.</div><div>=C2=A0</div><div>Thanks.<br></div><div><br><br></=
div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Tue, Aug 13, 2024 at 7:25=E2=80=AFPM Marcus D. Leech &lt;<a hr=
ef=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 13/08/2024 08:39, Brajesh wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hello all,
        <div>I am Brajesh and working on Ettus Research N210 FPGA board
          modifications. While doing so, I am facing some issues which
          are listed below,</div>
        <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0p=
x">
          <div>i. How to implement Verilog code ( available at following
            GitHub link ) on N210&#39;s ( Ettus Research ) FPGA ,</div>
        </blockquote>
        <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0p=
x">
          <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:=
0px">
            <div><a href=3D"https://github.com/EttusResearch/uhd/tree/maste=
r/fpga/usrp2/top/N2x0" target=3D"_blank">https://github.com/EttusResearch/u=
hd/tree/master/fpga/usrp2/top/N2x0</a></div>
          </blockquote>
        </blockquote>
        <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0p=
x">
          <div>ii. How to customize the data rate of the above GitHub
            link. I am trying to make the data rate ( via connector to
            PC/Laptop ) as 1-bit, 2-bit, 4- bit, 8-bit, 16-bit(default),
            32-bit and 64-bit.</div>
        </blockquote>
        <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0p=
x">
          <div>iii. Once N210&#39;s FPGA is modified with above
            modifications, how to check the correctness of modified=C2=A0FP=
GA
            of N210. What I mean here is, methodologies ( standalone )
            to check faithfulness=C2=A0of N210&#39;s FPGA ( modified ) with=
out
            daughter boards.</div>
        </blockquote>
        <div><br>
        </div>
        <div>For the same, I kindly request your valuable suggestions.
          If you are busy enough or not the right person, I kindly
          request you to direct me to the exact person.=C2=A0</div>
        <div>Warm regards,</div>
        <div>Brajesh<br>
        </div>
      </div>
    </blockquote>
    This guide might help some:<br>
    <br>
    <a href=3D"https://files.ettus.com/manual/md_usrp2_build_instructions.h=
tml" target=3D"_blank">https://files.ettus.com/manual/md_usrp2_build_instru=
ctions.html</a><br>
    <br>
    But the tone of your questions suggests that you aren&#39;t already
    familiar with the tools and techniques of FPGA development,<br>
    =C2=A0 and if so, no amount of casual advice given here can bridge that
    gap.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><span style=3D"white-space:pre-wrap">
</span></blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000064042e061f94d4fd--

--===============4774240194851048620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4774240194851048620==--
