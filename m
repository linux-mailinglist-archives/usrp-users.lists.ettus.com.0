Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC76950D02
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2024 21:17:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C61D38578F
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2024 15:17:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723576675; bh=PmSbrYOe+9Q/9ShXsEz5b6ofImDXys8cS7lU8hUMRDs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=pnzJRSNRvbcH0mKN9VvH2ef7lKdKuklLRuUe0Cbdl1s0ML14o9dxn7EjSvTHstX7W
	 bIAjEDQATKExr0V9L3EpMgaAw9FZ4slvZWqxl+xnOhYdouhJ8+7sfQYPTIoKHWZqTx
	 ImJgy0PdGNMtQ4p4yUS+fU7hCYb8mCR2/XSx3zwIUXgw/2LTIRAEcA6hsjkH6yJDrh
	 UcFMaibSc13XNsrIFmWCtr+ZVYXAvgi5KmNJQfTU4e/qQUEStWuIRD41OwyN9tpoSL
	 BCO/sYTFRoX3MQfNbAZD3tVualPi8TAMLEsMBQo7qIURUAYDej04xY4qak5WfCmdss
	 SgE/z9fWdtfWg==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id A2D923854BB
	for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2024 15:17:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GDcmIwMF";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5a156557029so6670011a12.2
        for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2024 12:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723576630; x=1724181430; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xDnYDGL6dQsuA/4MGsjhEANyTQOArYEX9u18cnbPnuc=;
        b=GDcmIwMFBv3UHabPGHvO4MsivYINcwEaIWSBl2hnEuzoj71QkgdNoZaf9tRSWqkM52
         GlbsNxBbDZa8NaUH4GpQ4hMun/5GdMA3AeP0O0/rjqHgl4haRr4SGBVCQizUO0XQOVJY
         khfYQbS/kmuaz2Mvy7UwRO3kx0+8Hb7Nx+Qzp8ytauRolZoJK7ubC7n72WUZd6ldSC3H
         qwAfKbaYBgwkBK+R8iGJqaVNRcCudIs6BWEoawYhLqgIS51+VJVoMhXSSV3xFAgPW68m
         Dm05rtNcne/VZI4pWUymxkowQfWPSvn9d/pdZtOBwVJVg2s+MmHq6MUHenP6D1bLli/n
         v+6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723576630; x=1724181430;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xDnYDGL6dQsuA/4MGsjhEANyTQOArYEX9u18cnbPnuc=;
        b=qoWiFu5uGPmPx7Zd2joEx+acbdQjdJHCLPJEhc/AlLWkGE4j+LoSZcOGH8HtOWH4Ld
         EQ6nvL2/zgoQsY2gWI+edMRP+fUuXgwexaRWZOCUjdMzRh+I6Ohyo85pYSmwpSmjZnK2
         dVN+7+5wOMYJDMrb4YEF5CHUGiKdtUIp0O01V87+haR4RZKQi2Kts+VPNm8yiRQ3MdjA
         T0kbHONEh52i7GZguu0DFbBnMY4vfgT+1iKbXwrbEMlxEuF+tZIz/g9bqu3jBe03Vyhf
         MCdApchAmcM36lSDNSZJRzZ96VdHackDBbq3Xr71B4dqcyECrf7e/y31B0OH9nhiHuco
         5euw==
X-Gm-Message-State: AOJu0Yx7OzS6019xbI1YyMLDnMm+dvWa0PDvv2lFhlMO5/dkzJ9A6z6h
	XtPorZJ6f2w/kTHYQFnOUBsev4A/vP9aYXLIk5EqW/t47R8RzdI1LiisSio9Ar5aQo0nLDqexB3
	Q0Y8fH3oziqUAfIf9EavxmqJE4z0=
X-Google-Smtp-Source: AGHT+IHLo2NLCXJ+Q+Rl73cobVq5W/nTIEdMZukDMKYEPMAN60Rv54IVumY3j8thj8arOG7vMBGGr3q9vaAJVydX98E=
X-Received: by 2002:a17:907:f769:b0:a7a:bbbb:624e with SMTP id
 a640c23a62f3a-a8366d45628mr27672466b.35.1723576630133; Tue, 13 Aug 2024
 12:17:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAL4V06r9bLo+Wo-JPP4H70hwdJNJCy-m1ER5xwoXp7KHQkryBQ@mail.gmail.com>
 <84320f82-be18-47b9-92be-24339e6b1dc5@gmail.com> <CAL4V06oDcG=XFKQKkLoaKjDMXDEH_KMZTW8Lg5Q2dxhbPKQvLw@mail.gmail.com>
 <637859ba-8167-4643-ae42-743a2e73b20a@gmail.com>
In-Reply-To: <637859ba-8167-4643-ae42-743a2e73b20a@gmail.com>
From: Brajesh <brajesh153@gmail.com>
Date: Wed, 14 Aug 2024 00:46:58 +0530
Message-ID: <CAL4V06pXvgzSBXNieRr4N2XSVRa_0bdXJKNCG7aYCWbKQzf0dg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: WJRVQCUQOXH7KTXPUD2OFRDU32TKEF3R
X-Message-ID-Hash: WJRVQCUQOXH7KTXPUD2OFRDU32TKEF3R
X-MailFrom: brajesh153@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reg. N210 FPGA modification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WJRVQCUQOXH7KTXPUD2OFRDU32TKEF3R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3462102233885067925=="

--===============3462102233885067925==
Content-Type: multipart/alternative; boundary="000000000000c84b4e061f95745e"

--000000000000c84b4e061f95745e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 14, 2024 at 12:14=E2=80=AFAM Marcus D. Leech <patchvonbraun@gma=
il.com>
wrote:

> On 13/08/2024 14:32, Brajesh wrote:
>
> Thanks Marcus for response.
>
> Yes, you are correct that I am beginner to UHD related issues. Maybe I
> should have pointed in my first posting. Sorry for that. But for design
> implementations on FPGA boards viz Basys 3 etc using AMD/Xilinx tools viz=
.
> ISE/Vivado/Vitis I am OK. A useful link (
> https://www.amd.com/content/dam/amd/en/documents/university/vivado-teachi=
ng/hdl-design/2015x/Verilog/docs-pdf/Vivado_tutorial.pdf
> ) is shared for confidence building.
>
> Further, I am not communication field expert either. I am
> building/brushing basics of communications fundamentals using GNU Radio. =
I
> have already gone though the link you shared before posting to forum. Now=
,
> I am inferring (confirming) that to modify N210 FPGA one need to follow t=
he
> link you shared not standard AMD/Xilinx tool kit flow. Kindly note, due t=
o
> my previous FPGA experience, I was trying to look for a way out to
> implement Ettus Research GitHub code using standalone process of AMD/Xili=
nx
> tool flow which was genesis of putting forward issue ( i ) in my previous
> thread. Not to mention I have no help, on the subject matter, around
> either. Now, I can ascertain that one need not to follow standalone flow =
of
> AMD/Xilinx tool kit for mentioned cause. This settles first issue.
>
> *Summary:-*
> Modifying N210 FPGA is a two step process,
>
> i) Generate bit file (
> https://files.ettus.com/manual/md_usrp2_build_instructions.html )
> ii) Use iMPACT tool to load firmware called "bit" file ( output of step
> (i)) on N210 FPGA using JTAG cable
>
>
> Experts confirmation is need of hour though.
>
> You CAN jtag images into the FPGA, but the usual route is to use the
> uhd_image_loader tool to do this, from the appropriate
>   generated artifacts.   Since new releases of UHD often include new FPGA
> code, "uhd_image_loader" allows end-users to
>   load new "factory" images into their devices without needing Xilinx
> tooling.
>

 Thanks Marcus, for clarifying.

>
> ----------------------------------------------
>
> However, following doubt still remains,
>
> i. How to customise the data rate of N210, if possible, of design
> available at the GitHub link (
> https://github.com/EttusResearch/uhd/tree/master/fpga/usrp2/top ). I
> wish, if possible, to make the data rate as 1-bit, 2-bit, 4- bit, 8-bit,
> 16-bit, 32-bit and 64-bit. For N210's FPGA specifications, I referred
> section "comparative feature list" available at following link,
>
> https://files.ettus.com/manual/page_usrp2.html
>
> There is no "structured walk-through" of the FPGA code avalable.  The
> existing code for the N210 family USRPs includes support
>   for 16-bit and 8-bit samples "on the wire".   If it were my problem,
> that's where I'd start.  When you say "data rate", I assume
>   that you mean "data format on the wire".  I'm guessing that you want to
> move samples at a higher rate "over the wire"
>   than the 16 and 8 bit formats support.  Since the ADCs are only 14-bit
> on the N210, there's little point in carrying samples
>   wider than that over the wire.
>
> I would *not* go down that road without having a very thorough knowledge
> of how the standard FPGA data-flow works.  As I said
>   there is no "tell me how all this works" document, other than the
> Verilog source code.  The way that *most* users use these
>   devices is with the standard FPGA images, and the host-side UHD
> library.   Ettus/NI/Emerson don't provide a lot of hand-holding
>   documentation in this regard.
>

I tried to get a complete picture of the schematic from Ettus Research (
https://files.ettus.com/schematics/usrp2/usrp2.pdf ) but it is not giving
complete information. Hene I am a bit not clear. For standard FPGA data
flow, I have experience to move on unlike this issue.

Kind request to Ettus Research associates:-
Give me some pointers here.

Request to community people :-

If possible, kindly share Ettus Research fellow's email so that I can
directly post my query to them. This request is to keep everyone's interest
intact.



> The so-called "RFNoC" framework provides a somewhat lower-barrier to entr=
y
> for custom FPGA flows for some USRP devices,
>   but USRP N210 is NOT RFNoC capable.
>
>
>  I understand. But thanks for clarifying.

> ii. (new) Once the FPGA is modified (step ( i )), how to load/burn the
> modified image into FPGA board. There are instructions available at above
> link ( issue ( i )) but I am confused.
>
> The "uhd_image_loader" tool is what is usually used to load images into
> the device, although one can certainly use
>   the Impact JTAG tools as well, that's not the usual route.
>

Thanks for clarifying.


>
>
>
> -------------------------------------------------
>
> Kindly note, I have gone through following link and GitHub repository
> before posting my first thread and is ready with hardware ( connector
> purchased ) as well as software need ( ISE12.2, iMPACT and UDH driver
> installed ) and is able get positive response to ping command given to N2=
10
> kit after power-on and connecting via LAN cable.
>
> https://files.ettus.com/manual/page_usrp2.html
>
>
> In between, I have gone through bird's view of workshop details available
> at following link,
>
> https://kb.ettus.com/images/4/47/Workshop_GnuRadio_Slides_20190507.pdf,
>
>
> However,  beginner's tutorial mentioning chronological steps, for data
> rate choice/modification ( if possible ), generating bit etc files and
> burning modified FPGA image targeting specific application with example
> set, is need of hour. I hope Ettus Research people must be having some
> tutorials on the pointed thread as part of their training sessions.
>
> Thanks.
>
>
>
> On Tue, Aug 13, 2024 at 7:25=E2=80=AFPM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
>
>> On 13/08/2024 08:39, Brajesh wrote:
>>
>> Hello all,
>> I am Brajesh and working on Ettus Research N210 FPGA board modifications=
.
>> While doing so, I am facing some issues which are listed below,
>>
>> i. How to implement Verilog code ( available at following GitHub link )
>> on N210's ( Ettus Research ) FPGA ,
>>
>> https://github.com/EttusResearch/uhd/tree/master/fpga/usrp2/top/N2x0
>>
>> ii. How to customize the data rate of the above GitHub link. I am trying
>> to make the data rate ( via connector to PC/Laptop ) as 1-bit, 2-bit, 4-
>> bit, 8-bit, 16-bit(default), 32-bit and 64-bit.
>>
>> iii. Once N210's FPGA is modified with above modifications, how to check
>> the correctness of modified FPGA of N210. What I mean here is,
>> methodologies ( standalone ) to check faithfulness of N210's FPGA (
>> modified ) without daughter boards.
>>
>>
>> For the same, I kindly request your valuable suggestions. If you are bus=
y
>> enough or not the right person, I kindly request you to direct me to the
>> exact person.
>> Warm regards,
>> Brajesh
>>
>> This guide might help some:
>>
>> https://files.ettus.com/manual/md_usrp2_build_instructions.html
>>
>> But the tone of your questions suggests that you aren't already familiar
>> with the tools and techniques of FPGA development,
>>   and if so, no amount of casual advice given here can bridge that gap.
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>

--000000000000c84b4e061f95745e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 14, 2024 at 12:14=E2=80=
=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchv=
onbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 13/08/2024 14:32, Brajesh wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Thanks Marcus for response.=C2=A0<br>
        </div>
        <div>
          <div><br>
          </div>
          <div>Yes, you are correct that I am beginner=C2=A0to UHD related
            issues. Maybe I should have pointed in my first posting.
            Sorry for that. But for design implementations on FPGA
            boards viz Basys 3 etc using AMD/Xilinx tools viz.
            ISE/Vivado/Vitis I am OK. A useful link ( <a href=3D"https://ww=
w.amd.com/content/dam/amd/en/documents/university/vivado-teaching/hdl-desig=
n/2015x/Verilog/docs-pdf/Vivado_tutorial.pdf" target=3D"_blank">https://www=
.amd.com/content/dam/amd/en/documents/university/vivado-teaching/hdl-design=
/2015x/Verilog/docs-pdf/Vivado_tutorial.pdf</a>
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
        <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0p=
x">
          <div>
            <div>i) Generate bit file ( <a href=3D"https://files.ettus.com/=
manual/md_usrp2_build_instructions.html" target=3D"_blank">https://files.et=
tus.com/manual/md_usrp2_build_instructions.html</a>
              )=C2=A0</div>
          </div>
          <div>
            <div>ii) Use iMPACT tool to load firmware called &quot;bit&quot=
; file
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
    =C2=A0 generated artifacts.=C2=A0=C2=A0 Since new releases of UHD often=
 include new
    FPGA code, &quot;uhd_image_loader&quot; allows end-users to<br>
    =C2=A0 load new &quot;factory&quot; images into their devices without n=
eeding
    Xilinx tooling.<br></div></blockquote><div>=C2=A0</div><div>=C2=A0Thank=
s Marcus, for clarifying.</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div><br></div>
          <div>----------------------------------------------<br>
          </div>
          <div>
            <div><br>
              However, following doubt still remains,<br>
            </div>
            <div><br>
            </div>
            <div>
              <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padd=
ing:0px">
                <div>i. How to customise the data rate of N210, if
                  possible, of design available at the GitHub link ( <a hre=
f=3D"https://github.com/EttusResearch/uhd/tree/master/fpga/usrp2/top" targe=
t=3D"_blank">https://github.com/EttusResearch/uhd/tree/master/fpga/usrp2/to=
p</a>
                  ). I wish, if possible, to make the data rate as
                  1-bit, 2-bit, 4- bit, 8-bit, 16-bit, 32-bit and
                  64-bit. For N210&#39;s FPGA specifications, I referred
                  section &quot;comparative feature list&quot; available at
                  following link,</div>
              </blockquote>
            </div>
          </div>
          <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:=
0px">
            <div>
              <div>
                <blockquote style=3D"margin:0px 0px 0px 40px;border:none;pa=
dding:0px">
                  <div><a href=3D"https://files.ettus.com/manual/page_usrp2=
.html" target=3D"_blank">https://files.ettus.com/manual/page_usrp2.html</a>=
</div>
                </blockquote>
              </div>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    There is no &quot;structured walk-through&quot; of the FPGA code avalab=
le.=C2=A0
    The existing code for the N210 family USRPs includes support<br>
    =C2=A0 for 16-bit and 8-bit samples &quot;on the wire&quot;.=C2=A0=C2=
=A0 If it were my
    problem, that&#39;s where I&#39;d start.=C2=A0 When you say &quot;data =
rate&quot;, I assume<br>
    =C2=A0 that you mean &quot;data format on the wire&quot;.=C2=A0 I&#39;m=
 guessing that you
    want to move samples at a higher rate &quot;over the wire&quot;<br>
    =C2=A0 than the 16 and 8 bit formats support.=C2=A0 Since the ADCs are =
only
    14-bit on the N210, there&#39;s little point in carrying samples<br>
    =C2=A0 wider than that over the wire.<br>
    <br>
    I would *not* go down that road without having a very thorough
    knowledge of how the standard FPGA data-flow works.=C2=A0 As I said<br>
    =C2=A0 there is no &quot;tell me how all this works&quot; document, oth=
er than the
    Verilog source code.=C2=A0 The way that *most* users use these<br>
    =C2=A0 devices is with the standard FPGA images, and the host-side UHD
    library.=C2=A0=C2=A0 Ettus/NI/Emerson don&#39;t provide a lot of hand-h=
olding<br>
    =C2=A0 documentation in this regard.<br></blockquote><div>=C2=A0</div><=
div>I tried to get a complete picture of the schematic from Ettus Research =
( <a href=3D"https://files.ettus.com/schematics/usrp2/usrp2.pdf">https://fi=
les.ettus.com/schematics/usrp2/usrp2.pdf</a> ) but it is not giving complet=
e information. Hene I am a bit not clear. For standard FPGA data flow, I ha=
ve experience to move on unlike this issue.=C2=A0</div><div><br></div><div>=
Kind request to Ettus Research associates:-</div><div>Give me some pointers=
 here.</div><div><br></div><div>Request to community people :-</div></div><=
blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><div class=
=3D"gmail_quote"><div>If possible, kindly share Ettus Research fellow&#39;s=
 email so that I can directly post my query to them. This request is to kee=
p everyone&#39;s interest intact.</div></div></blockquote><div class=3D"gma=
il_quote"><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div>
    <br>
    The so-called &quot;RFNoC&quot; framework provides a somewhat lower-bar=
rier to
    entry for custom FPGA flows for some USRP devices,<br>
    =C2=A0 but USRP N210 is NOT RFNoC capable. <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:=
0px">
            <div>
              <div><br></div></div></blockquote></div></div></blockquote></=
div></blockquote><div>=C2=A0I understand. But thanks for clarifying.</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div><blockquote type=3D"c=
ite"><div dir=3D"ltr"><div><blockquote style=3D"margin:0px 0px 0px 40px;bor=
der:none;padding:0px"><div>
            </div>
          </blockquote>
          <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:=
0px">
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
    The &quot;uhd_image_loader&quot; tool is what is usually used to load i=
mages
    into the device, although one can certainly use<br>
    =C2=A0 the Impact JTAG tools as well, that&#39;s not the usual route.<b=
r></div></blockquote><div><br></div><div>Thanks for clarifying.</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:=
0px">
            <blockquote style=3D"margin:0px 0px 0px 40px;border:none;paddin=
g:0px">
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
              N210 kit after power-on and connecting via LAN cable.=C2=A0</=
div>
            <blockquote style=3D"margin:0px 0px 0px 40px;border:none;paddin=
g:0px">
              <div><a href=3D"https://files.ettus.com/manual/page_usrp2.htm=
l" target=3D"_blank">https://files.ettus.com/manual/page_usrp2.html</a></di=
v>
            </blockquote>
            <div><br>
            </div>
            <div>In between, I have gone through bird&#39;s view of worksho=
p
              details available at following link,</div>
          </div>
        </div>
        <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0p=
x">
          <div>
            <div>
              <div><a href=3D"https://kb.ettus.com/images/4/47/Workshop_Gnu=
Radio_Slides_20190507.pdf" target=3D"_blank">https://kb.ettus.com/images/4/=
47/Workshop_GnuRadio_Slides_20190507.pdf</a>,<br>
              </div>
            </div>
          </div>
        </blockquote>
        <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0p=
x"><br>
        </blockquote>
        <div>
          <div>However,=C2=A0 beginner&#39;s tutorial mentioning chronologi=
cal
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
          7:25=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbra=
un@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 13/08/2024 08:39, Brajesh wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Hello all,
                <div>I am Brajesh and working on Ettus Research N210
                  FPGA board modifications. While doing so, I am facing
                  some issues which are listed below,</div>
                <blockquote style=3D"margin:0px 0px 0px 40px;border:none;pa=
dding:0px">
                  <div>i. How to implement Verilog code ( available at
                    following GitHub link ) on N210&#39;s ( Ettus Research =
)
                    FPGA ,</div>
                </blockquote>
                <blockquote style=3D"margin:0px 0px 0px 40px;border:none;pa=
dding:0px">
                  <blockquote style=3D"margin:0px 0px 0px 40px;border:none;=
padding:0px">
                    <div><a href=3D"https://github.com/EttusResearch/uhd/tr=
ee/master/fpga/usrp2/top/N2x0" target=3D"_blank">https://github.com/EttusRe=
search/uhd/tree/master/fpga/usrp2/top/N2x0</a></div>
                  </blockquote>
                </blockquote>
                <blockquote style=3D"margin:0px 0px 0px 40px;border:none;pa=
dding:0px">
                  <div>ii. How to customize the data rate of the above
                    GitHub link. I am trying to make the data rate ( via
                    connector to PC/Laptop ) as 1-bit, 2-bit, 4- bit,
                    8-bit, 16-bit(default), 32-bit and 64-bit.</div>
                </blockquote>
                <blockquote style=3D"margin:0px 0px 0px 40px;border:none;pa=
dding:0px">
                  <div>iii. Once N210&#39;s FPGA is modified with above
                    modifications, how to check the correctness of
                    modified=C2=A0FPGA of N210. What I mean here is,
                    methodologies ( standalone ) to check
                    faithfulness=C2=A0of N210&#39;s FPGA ( modified ) witho=
ut
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
            <a href=3D"https://files.ettus.com/manual/md_usrp2_build_instru=
ctions.html" target=3D"_blank">https://files.ettus.com/manual/md_usrp2_buil=
d_instructions.html</a><br>
            <br>
            But the tone of your questions suggests that you aren&#39;t
            already familiar with the tools and techniques of FPGA
            development,<br>
            =C2=A0 and if so, no amount of casual advice given here can
            bridge that gap.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><span style=3D"white-space:pre-wrap">
</span></blockquote>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div></div>

--000000000000c84b4e061f95745e--

--===============3462102233885067925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3462102233885067925==--
