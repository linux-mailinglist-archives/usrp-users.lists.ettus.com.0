Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FADC950C79
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2024 20:45:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3A387385722
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2024 14:45:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723574729; bh=lg31Afi6oWmBJJiA0yhqU8Js3LhvdjJgUoyk5X6rYvM=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=fBbkXbVQNmZW1p4jg6W2w1xYzYeUop40jB71+uK/mcHROH5Lq7baYsRcPTpyUYRBp
	 KaPzM/s8SMcPlgiWwoeDzhuXbQKkcJsnO2PWjrhHUiqRcXc1vRGOykoxMDZhjafw80
	 KrrvIw6RnYI3K9zyHgpZ/T36ePI01SAcUtZ7beRgSU1eR6yvv8LfHaTAjSM56nGRMx
	 svVGcO9iVUPFuYuI4bHcKProvXNwCJ30JlD61Rm/m4cQWz1USgzssJjgWiMJzV6DW0
	 bFN63Fi+6kBiZLKzY6ALbbJE/y6t97yz1bKbPAMd4eIneDggjbkAwYGNz2JRt2T01Q
	 Mft5Gf0hNe4qw==
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 0A6CC383CD5
	for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2024 14:44:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Bx0wRx6Y";
	dkim-atps=neutral
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6b79293a858so31656696d6.3
        for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2024 11:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723574683; x=1724179483; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k308sa/SoQ5XbRqozvp70+S6a/FfAUWvZ4HBWD/Plu4=;
        b=Bx0wRx6YxOCQ1PGk5D09d/R/W0jmX0E7zA0JYk1hDS1nYe6l2MUEwXgEOYx2JsRRyz
         Bg4snv/tPXgkSL+wZgUIFEDjtqX7wiDIMgQRAehzUP7Ven+laBddH7rjBeDoF5Rnd5nM
         HgGRMuvWaIrPsjXpCeS+uvTzba7RDoJLDevCIWTwIvRvnRU3qWQA7HuEGO/r4aPy4ze3
         i+W0lOug3//TOvP5I9BHsz7OJtPM8DRtsxI0jJzEcdaHL9ukJyRyaXniF/zPx/7NrBMT
         HIiMg1x7FkgwCttWGu6xhjeFh2xsWkC9j41I7prFI59QHVgkYw2QIfskH8Md+vbZZ5p2
         Nx9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723574683; x=1724179483;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=k308sa/SoQ5XbRqozvp70+S6a/FfAUWvZ4HBWD/Plu4=;
        b=sL9WV1vQkuaq/mRGer7nT3AQhOJ9dLgWgEzN+2TaSdsxNisyErEIn1Y0NGVBC6yJTA
         IZ0tgWJSdrrJusnJTfdrXoMwtVtEiu9q2P/yrr8cNHUZyaDhb7x9cA3WYR0fdnzPDJhA
         0rMlEz4aRwOBP4K3fUWWawYHzSKcAYi3eX13W/P/wegHiAFAawxT3b3pBQD4SjustxEt
         hDoZbLi248jL/mQDWBlC728Ti32iB42OP52ydZ/pR7jw+ohZGp9oGUdNEe4+xLvI9XmA
         EttVEgsW5Zqz5WqHjIjYNd6JtjLGxJef1uxoKlT0c3t4jl8Nv5dEDA0MNdCHTFlAwyBO
         9IYw==
X-Gm-Message-State: AOJu0Yz6Ogi60d9OWC28+VAW2UbY+X84FnnB4nZ7AMjDe1o1JOZ2DQIV
	EfFKriD3JAS7CO+Qb6jqUldrpKrTedqHE21f3fAMmXmk5zJLcOYB
X-Google-Smtp-Source: AGHT+IFCtB9A9+XQLhOAifIHqeyuBXee2zP+Y43Dk+7/NdmbdI78KUq0Mw26wTANeebPx7RRtg1rag==
X-Received: by 2002:a05:6214:5408:b0:6bb:7b27:36f4 with SMTP id 6a1803df08f44-6bf5d22e12dmr4217806d6.37.1723574683112;
        Tue, 13 Aug 2024 11:44:43 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-22-64-231-212-86.dsl.bell.ca. [64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6bf5560638fsm7160316d6.138.2024.08.13.11.44.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Aug 2024 11:44:42 -0700 (PDT)
Message-ID: <637859ba-8167-4643-ae42-743a2e73b20a@gmail.com>
Date: Tue, 13 Aug 2024 14:44:42 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Brajesh <brajesh153@gmail.com>
References: <CAL4V06r9bLo+Wo-JPP4H70hwdJNJCy-m1ER5xwoXp7KHQkryBQ@mail.gmail.com>
 <84320f82-be18-47b9-92be-24339e6b1dc5@gmail.com>
 <CAL4V06oDcG=XFKQKkLoaKjDMXDEH_KMZTW8Lg5Q2dxhbPKQvLw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAL4V06oDcG=XFKQKkLoaKjDMXDEH_KMZTW8Lg5Q2dxhbPKQvLw@mail.gmail.com>
Message-ID-Hash: IYSKROF762HFC6AQITXRBLXHPQADCYWU
X-Message-ID-Hash: IYSKROF762HFC6AQITXRBLXHPQADCYWU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reg. N210 FPGA modification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IYSKROF762HFC6AQITXRBLXHPQADCYWU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9052738794469864000=="

This is a multi-part message in MIME format.
--===============9052738794469864000==
Content-Type: multipart/alternative;
 boundary="------------9wbrwgSvVU0ejOGg0pnqAKk3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9wbrwgSvVU0ejOGg0pnqAKk3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/08/2024 14:32, Brajesh wrote:
> Thanks Marcus for response.
>
> Yes, you are correct that I am beginner=C2=A0to UHD related issues. May=
be I=20
> should have pointed in my first posting. Sorry for that. But for=20
> design implementations on FPGA boards viz Basys 3 etc using AMD/Xilinx=20
> tools viz. ISE/Vivado/Vitis I am OK. A useful link (=20
> https://www.amd.com/content/dam/amd/en/documents/university/vivado-teac=
hing/hdl-design/2015x/Verilog/docs-pdf/Vivado_tutorial.pdf=20
> ) is shared for confidence=C2=A0building.
>
> Further, I am not communication field expert either. I am=20
> building/brushing basics of communications fundamentals using GNU=20
> Radio. I have already gone though the link you shared before posting=20
> to forum. Now, I am inferring (confirming) that to modify N210 FPGA=20
> one need to follow the link you shared not standard AMD/Xilinx tool=20
> kit flow. Kindly note, due to my previous FPGA experience, I was=20
> trying to look for a way out to implement Ettus Research GitHub code=20
> using standalone process of AMD/Xilinx tool flow which was genesis of=20
> putting forward issue ( i ) in my previous thread. Not to mention I=20
> have no help, on the subject matter, around either. Now, I can=20
> ascertain that one need not to follow standalone flow of AMD/Xilinx=20
> tool kit for mentioned cause. This settles first issue.
> *
> *
> *Summary:-*
> Modifying N210 FPGA is a two step process,
>
>     i) Generate bit file (
>     https://files.ettus.com/manual/md_usrp2_build_instructions.html )
>     ii) Use iMPACT tool to load firmware called "bit" file ( output of
>     step (i)) on N210 FPGA using JTAG cable
>
>
> Experts confirmation is need of hour though.
You CAN jtag images into the FPGA, but the usual route is to use the=20
uhd_image_loader tool to do this, from the appropriate
 =C2=A0 generated artifacts.=C2=A0=C2=A0 Since new releases of UHD often =
include new=20
FPGA code, "uhd_image_loader" allows end-users to
 =C2=A0 load new "factory" images into their devices without needing Xili=
nx=20
tooling.
>
> ----------------------------------------------
>
> However, following doubt still remains,
>
>     i. How to customise the data rate of N210, if possible, of design
>     available at the GitHub link (
>     https://github.com/EttusResearch/uhd/tree/master/fpga/usrp2/top ).
>     I wish, if possible, to make the data rate as 1-bit, 2-bit, 4-
>     bit, 8-bit, 16-bit, 32-bit and 64-bit. For N210's FPGA
>     specifications, I referred section "comparative feature list"
>     available at following link,
>
>         https://files.ettus.com/manual/page_usrp2.html
>
There is no "structured walk-through" of the FPGA code avalable. The=20
existing code for the N210 family USRPs includes support
 =C2=A0 for 16-bit and 8-bit samples "on the wire".=C2=A0=C2=A0 If it wer=
e my problem,=20
that's where I'd start.=C2=A0 When you say "data rate", I assume
 =C2=A0 that you mean "data format on the wire".=C2=A0 I'm guessing that =
you want=20
to move samples at a higher rate "over the wire"
 =C2=A0 than the 16 and 8 bit formats support.=C2=A0 Since the ADCs are o=
nly=20
14-bit on the N210, there's little point in carrying samples
 =C2=A0 wider than that over the wire.

I would *not* go down that road without having a very thorough knowledge=20
of how the standard FPGA data-flow works.=C2=A0 As I said
 =C2=A0 there is no "tell me how all this works" document, other than the=
=20
Verilog source code.=C2=A0 The way that *most* users use these
 =C2=A0 devices is with the standard FPGA images, and the host-side UHD=20
library.=C2=A0=C2=A0 Ettus/NI/Emerson don't provide a lot of hand-holding
 =C2=A0 documentation in this regard.

The so-called "RFNoC" framework provides a somewhat lower-barrier to=20
entry for custom FPGA flows for some USRP devices,
 =C2=A0 but USRP N210 is NOT RFNoC capable.
>
>
>     ii. (new) Once the FPGA is modified (step ( i )), how to load/burn
>     the modified image into FPGA board. There are instructions
>     available at above link ( issue ( i )) but I am confused.
>
The "uhd_image_loader" tool is what is usually used to load images into=20
the device, although one can certainly use
 =C2=A0 the Impact JTAG tools as well, that's not the usual route.

>
>
> -------------------------------------------------
>
> Kindly note, I have gone through following link and GitHub repository=20
> before posting my first thread and is ready with hardware ( connector=20
> purchased ) as well as software need ( ISE12.2, iMPACT and UDH driver=20
> installed ) and is able get positive response to ping command given to=20
> N210 kit after power-on and connecting via LAN cable.
>
>     https://files.ettus.com/manual/page_usrp2.html
>
>
> In between, I have gone through bird's view of workshop details=20
> available at following link,
>
>     https://kb.ettus.com/images/4/47/Workshop_GnuRadio_Slides_20190507.=
pdf,
>
>
> However,=C2=A0 beginner's tutorial mentioning chronological steps, for =
data=20
> rate choice/modification ( if possible ), generating bit etc files and=20
> burning modified FPGA image targeting specific application with=20
> example set, is need of hour. I hope Ettus Research people must be=20
> having some tutorials on the pointed thread as part of their training=20
> sessions.
> Thanks.
>
>
>
> On Tue, Aug 13, 2024 at 7:25=E2=80=AFPM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 13/08/2024 08:39, Brajesh wrote:
>>     Hello all,
>>     I am Brajesh and working on Ettus Research N210 FPGA board
>>     modifications. While doing so, I am facing some issues which are
>>     listed below,
>>
>>         i. How to implement Verilog code ( available at following
>>         GitHub link ) on N210's ( Ettus Research ) FPGA ,
>>
>>             https://github.com/EttusResearch/uhd/tree/master/fpga/usrp=
2/top/N2x0
>>
>>         ii. How to customize the data rate of the above GitHub link.
>>         I am trying to make the data rate ( via connector to
>>         PC/Laptop ) as 1-bit, 2-bit, 4- bit, 8-bit, 16-bit(default),
>>         32-bit and 64-bit.
>>
>>         iii. Once N210's FPGA is modified with above modifications,
>>         how to check the correctness of modified=C2=A0FPGA of N210. Wh=
at I
>>         mean here is, methodologies ( standalone ) to check
>>         faithfulness=C2=A0of N210's FPGA ( modified ) without daughter=
 boards.
>>
>>
>>     For the same, I kindly request your valuable suggestions. If you
>>     are busy enough or not the right person, I kindly request you to
>>     direct me to the exact person.
>>     Warm regards,
>>     Brajesh
>     This guide might help some:
>
>     https://files.ettus.com/manual/md_usrp2_build_instructions.html
>
>     But the tone of your questions suggests that you aren't already
>     familiar with the tools and techniques of FPGA development,
>     =C2=A0 and if so, no amount of casual advice given here can bridge =
that
>     gap.
>
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------9wbrwgSvVU0ejOGg0pnqAKk3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/08/2024 14:32, Brajesh wrote:<br=
>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAL4V06oDcG=3DXFKQKkLoaKjDMXDEH_KMZTW8Lg5Q2dxhbPKQvLw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Thanks Marcus for response.=C2=A0<br>
        </div>
        <div>
          <div><br>
          </div>
          <div>Yes, you are correct that I am beginner=C2=A0to UHD relate=
d
            issues. Maybe I should have pointed in my first posting.
            Sorry for that. But for design implementations on FPGA
            boards viz Basys 3 etc using AMD/Xilinx tools viz.
            ISE/Vivado/Vitis I am OK. A useful link ( <a
href=3D"https://www.amd.com/content/dam/amd/en/documents/university/vivad=
o-teaching/hdl-design/2015x/Verilog/docs-pdf/Vivado_tutorial.pdf"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://www.amd.com/content/dam/amd/en/documents/university/vivado-teaching=
/hdl-design/2015x/Verilog/docs-pdf/Vivado_tutorial.pdf</a>
            ) is shared for confidence=C2=A0building.</div>
          <div><br>
          </div>
          <div>Further, I am not communication field expert either. I am
            building/brushing basics of communications fundamentals
            using GNU Radio. I have already gone though the link you
            shared before posting to forum. Now, I am inferring
            (confirming) that to modify N210 FPGA one need to follow the
            link you shared not standard AMD/Xilinx tool kit flow.
            Kindly note, due to my previous FPGA experience, I was
            trying to look for a way out to implement Ettus Research
            GitHub code using standalone process of AMD/Xilinx tool flow
            which was genesis of putting forward issue ( i ) in my
            previous thread. Not to mention I have no help, on the
            subject matter, around either. Now, I can ascertain that one
            need not to follow standalone flow of AMD/Xilinx tool kit
            for mentioned cause. This settles first issue.</div>
          <div><b><br>
            </b></div>
          <div><b>Summary:-</b></div>
        </div>
        <div>Modifying N210 FPGA is a two step process,</div>
        <blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px">
          <div>
            <div>i) Generate bit file ( <a
href=3D"https://files.ettus.com/manual/md_usrp2_build_instructions.html"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
https://files.ettus.com/manual/md_usrp2_build_instructions.html</a>
              )=C2=A0</div>
          </div>
          <div>
            <div>ii) Use iMPACT tool to load firmware called "bit" file
              ( output of step (i)) on N210 FPGA using JTAG cable</div>
          </div>
        </blockquote>
        <div>
          <div><br>
          </div>
          <div>Experts confirmation is need of hour though.</div>
        </div>
      </div>
    </blockquote>
    You CAN jtag images into the FPGA, but the usual route is to use the
    uhd_image_loader tool to do this, from the appropriate<br>
    =C2=A0 generated artifacts.=C2=A0=C2=A0 Since new releases of UHD oft=
en include new
    FPGA code, "uhd_image_loader" allows end-users to<br>
    =C2=A0 load new "factory" images into their devices without needing
    Xilinx tooling.<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAL4V06oDcG=3DXFKQKkLoaKjDMXDEH_KMZTW8Lg5Q2dxhbPKQvLw@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div>
          <div><br>
          </div>
          <div>----------------------------------------------<br>
          </div>
          <div>
            <div><br>
              However, following doubt still remains,<br>
            </div>
            <div><br>
            </div>
            <div>
              <blockquote
                style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"=
>
                <div>i. How to customise the data rate of N210, if
                  possible, of design available at the GitHub link ( <a
href=3D"https://github.com/EttusResearch/uhd/tree/master/fpga/usrp2/top"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">https://github.com/EttusResearch/uhd/tree/master/fpga/usrp2/top</a>
                  ). I wish, if possible, to make the data rate as
                  1-bit, 2-bit, 4- bit, 8-bit, 16-bit, 32-bit and
                  64-bit. For N210's FPGA specifications, I referred
                  section "comparative feature list" available at
                  following link,</div>
              </blockquote>
            </div>
          </div>
          <blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"=
>
            <div>
              <div>
                <blockquote
style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
                  <div><a
href=3D"https://files.ettus.com/manual/page_usrp2.html"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">https://files.ettus=
.com/manual/page_usrp2.html</a></div>
                </blockquote>
              </div>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    There is no "structured walk-through" of the FPGA code avalable.=C2=A0
    The existing code for the N210 family USRPs includes support<br>
    =C2=A0 for 16-bit and 8-bit samples "on the wire".=C2=A0=C2=A0 If it =
were my
    problem, that's where I'd start.=C2=A0 When you say "data rate", I as=
sume<br>
    =C2=A0 that you mean "data format on the wire".=C2=A0 I'm guessing th=
at you
    want to move samples at a higher rate "over the wire"<br>
    =C2=A0 than the 16 and 8 bit formats support.=C2=A0 Since the ADCs ar=
e only
    14-bit on the N210, there's little point in carrying samples<br>
    =C2=A0 wider than that over the wire.<br>
    <br>
    I would *not* go down that road without having a very thorough
    knowledge of how the standard FPGA data-flow works.=C2=A0 As I said<b=
r>
    =C2=A0 there is no "tell me how all this works" document, other than =
the
    Verilog source code.=C2=A0 The way that *most* users use these<br>
    =C2=A0 devices is with the standard FPGA images, and the host-side UH=
D
    library.=C2=A0=C2=A0 Ettus/NI/Emerson don't provide a lot of hand-hol=
ding<br>
    =C2=A0 documentation in this regard.<br>
    <br>
    The so-called "RFNoC" framework provides a somewhat lower-barrier to
    entry for custom FPGA flows for some USRP devices,<br>
    =C2=A0 but USRP N210 is NOT RFNoC capable. <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAL4V06oDcG=3DXFKQKkLoaKjDMXDEH_KMZTW8Lg5Q2dxhbPKQvLw@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div>
          <blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"=
>
            <div>
              <div><br>
              </div>
            </div>
          </blockquote>
          <blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"=
>
            <div>
              <div>ii. (new) Once the FPGA is modified (step ( i )), how
                to load/burn the modified image into FPGA board. There
                are instructions available at above link ( issue ( i ))
                but I am confused.</div>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    The "uhd_image_loader" tool is what is usually used to load images
    into the device, although one can certainly use<br>
    =C2=A0 the Impact JTAG tools as well, that's not the usual route.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAL4V06oDcG=3DXFKQKkLoaKjDMXDEH_KMZTW8Lg5Q2dxhbPKQvLw@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div>
          <blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"=
>
            <blockquote
              style=3D"margin:0 0 0 40px;border:none;padding:0px">
              <div><br>
              </div>
            </blockquote>
          </blockquote>
          <div>
            <div><br>
            </div>
          </div>
          <div>
            <div>-------------------------------------------------</div>
            <div><br>
            </div>
            <div>Kindly note, I have gone through following link and
              GitHub repository before posting my first thread and is
              ready with hardware ( connector purchased ) as well as
              software need ( ISE12.2, iMPACT and UDH driver installed )
              and is able get positive response to ping command given to
              N210 kit after power-on and connecting via LAN cable.=C2=A0=
</div>
            <blockquote
              style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
              <div><a
                  href=3D"https://files.ettus.com/manual/page_usrp2.html"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">https://files.ettus.com/manual/page_usrp2.html</a></div>
            </blockquote>
            <div><br>
            </div>
            <div>In between, I have gone through bird's view of workshop
              details available at following link,</div>
          </div>
        </div>
        <blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px">
          <div>
            <div>
              <div><a
href=3D"https://kb.ettus.com/images/4/47/Workshop_GnuRadio_Slides_2019050=
7.pdf"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">https://kb.ettus.com/images/4/47/Workshop_GnuRadio_Slides_20190507.pdf<=
/a>,<br>
              </div>
            </div>
          </div>
        </blockquote>
        <blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><=
br>
        </blockquote>
        <div>
          <div>However,=C2=A0 beginner's tutorial mentioning chronologica=
l
            steps, for data rate choice/modification ( if possible ),
            generating bit etc files and burning modified FPGA image
            targeting specific application with example set, is need of
            hour. I hope Ettus Research people must be having some
            tutorials on the pointed thread as part of their training
            sessions.</div>
          <div>=C2=A0</div>
          <div>Thanks.<br>
          </div>
          <div><br>
            <br>
          </div>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 13, 2024 at
          7:25=E2=80=AFPM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div>
            <div>On 13/08/2024 08:39, Brajesh wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Hello all,
                <div>I am Brajesh and working on Ettus Research N210
                  FPGA board modifications. While doing so, I am facing
                  some issues which are listed below,</div>
                <blockquote
style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
                  <div>i. How to implement Verilog code ( available at
                    following GitHub link ) on N210's ( Ettus Research )
                    FPGA ,</div>
                </blockquote>
                <blockquote
style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
                  <blockquote
style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
                    <div><a
href=3D"https://github.com/EttusResearch/uhd/tree/master/fpga/usrp2/top/N=
2x0"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">https://github.co=
m/EttusResearch/uhd/tree/master/fpga/usrp2/top/N2x0</a></div>
                  </blockquote>
                </blockquote>
                <blockquote
style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
                  <div>ii. How to customize the data rate of the above
                    GitHub link. I am trying to make the data rate ( via
                    connector to PC/Laptop ) as 1-bit, 2-bit, 4- bit,
                    8-bit, 16-bit(default), 32-bit and 64-bit.</div>
                </blockquote>
                <blockquote
style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
                  <div>iii. Once N210's FPGA is modified with above
                    modifications, how to check the correctness of
                    modified=C2=A0FPGA of N210. What I mean here is,
                    methodologies ( standalone ) to check
                    faithfulness=C2=A0of N210's FPGA ( modified ) without
                    daughter boards.</div>
                </blockquote>
                <div><br>
                </div>
                <div>For the same, I kindly request your valuable
                  suggestions. If you are busy enough or not the right
                  person, I kindly request you to direct me to the exact
                  person.=C2=A0</div>
                <div>Warm regards,</div>
                <div>Brajesh<br>
                </div>
              </div>
            </blockquote>
            This guide might help some:<br>
            <br>
            <a
href=3D"https://files.ettus.com/manual/md_usrp2_build_instructions.html"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">https://files.ettus.com/man=
ual/md_usrp2_build_instructions.html</a><br>
            <br>
            But the tone of your questions suggests that you aren't
            already familiar with the tools and techniques of FPGA
            development,<br>
            =C2=A0 and if so, no amount of casual advice given here can
            bridge that gap.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><span style=3D"white-space:pre-wrap=
">
</span></blockquote>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------9wbrwgSvVU0ejOGg0pnqAKk3--

--===============9052738794469864000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9052738794469864000==--
