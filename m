Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B99859511D3
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2024 04:02:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE00E385663
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2024 22:02:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723600920; bh=FcRS77tnxKo7CHFXvFTk9MbJMuYWeweXheFWTcs3t0Y=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=xfYSkRxhDC6L+o13BLl54Nu2559ZdOSOYocX52f3RXgwmK7nQRlycRkM/5GJ4KOjB
	 g9RPh+2mQ05HgGdG3T8eNDQAjOBOprahemVBC58qcMi2w8p4/9PnQVTsmEwGsCADX6
	 KkN4jpaixL5WFPvzn6VeeFEsZsSwzc38l8ahi0et7CX65TTNYmlaazgHmRFr0ldVSN
	 0Gb5lz9cMIAyffhoWn485uB5OZDwTYXEDrTueAFDgwv7r7LSEUu61RxZjCfnra4bkg
	 MR8Mclk9XdDDXaT6MeRfjGJ1HG8Ibk3hNgu8PzaTJERrm4lLGU2GMAtmRAKHu0JRYE
	 khZ9/U4y6xDRg==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 229343854D0
	for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2024 22:01:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PKQatuu2";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6b7a0ef0e75so36694606d6.1
        for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2024 19:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723600877; x=1724205677; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/WKIS4Y/rLGjZDkKDiYCLnJMUqI+EBpzR9T+FLgj5p0=;
        b=PKQatuu2087fSgYPVx6sqhJVK/8Y/uHT3E8e+GBgagY7oyK4nEh3Ho9BCGA5iouu8l
         8o/dlk9NsHBpQOGFuEICQjCIYOUT67d9RLNnJbOB+OwKAA/BNY2wDL+pnAxiMvlWmWig
         gcX1D5tdARzsVCbQBC7KwhAeBtB+4iRg5rrqZ5TOA+/QbHVv6saVa1KX95/zkWEjpGon
         N+Lg1DVH5l11bDAwSd8Iz5JH4CKdFsY8cOpDqKasnWBog+71VJBvLdvjGSpL1+buYeXJ
         2GGOYPWTaLimxnj8ic0tZKkYFXqlQW3Rt1FI57K7t2UTHftHpNQRTO6aBc//ccMCXp4f
         bXUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723600877; x=1724205677;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/WKIS4Y/rLGjZDkKDiYCLnJMUqI+EBpzR9T+FLgj5p0=;
        b=jAQqKNrr8bXOymSL+q8FoFtPl+1xSl1uTIk22GMOO2E/XBDMRvFMeExTKBqwAczeyD
         b+NW6e2yx+49V9pmh6OZyC+X2amcYPTcBJkoi621MuVYWr5+UtAmRAVPO+DjKbMsHzz5
         L1/d1FwwzT5Aava8ZBLebKBPXD+UusCGq9YIY5XWNzn307I1U3G2YrzwCvjdJo9amwcU
         JQJwVPGW0nVdgtn+PV7TpdXNkMgx64TM4LYVoLi9YJFk01RruaCja7/TO1ZiDlmNVSo9
         kVuxUgu6Cj0IMCXD6tt4GpxGpWI90xwTRxOyc+3xdegirUSZDeGgHW09fj7v26QBmf5Q
         g0QQ==
X-Gm-Message-State: AOJu0YyM1ALG/98dsgAqPSsUd3itf0hUAmQJ44mkhVOhTye/J+K8NxPl
	zh0WWGptg6lu9TWrQw0ukqR8hatItFL8eJxRwyDKJYYMLWw3o6PZ
X-Google-Smtp-Source: AGHT+IFN84uHLPZai7LYrQoJ5/UH7WaXj9x46CtbXUlDzbnX1Dj1CT83HDpM+j4/fQJsoKUdwoAR5w==
X-Received: by 2002:a05:6214:328c:b0:6b0:743b:71f5 with SMTP id 6a1803df08f44-6bf5d2685b4mr13816836d6.44.1723600877061;
        Tue, 13 Aug 2024 19:01:17 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-22-64-231-212-86.dsl.bell.ca. [64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6bd82c62618sm38923196d6.10.2024.08.13.19.01.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Aug 2024 19:01:16 -0700 (PDT)
Message-ID: <0129e687-c21b-4090-80d3-562ef9ee1d3b@gmail.com>
Date: Tue, 13 Aug 2024 22:01:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Brajesh <brajesh153@gmail.com>
References: <CAL4V06r9bLo+Wo-JPP4H70hwdJNJCy-m1ER5xwoXp7KHQkryBQ@mail.gmail.com>
 <84320f82-be18-47b9-92be-24339e6b1dc5@gmail.com>
 <CAL4V06oDcG=XFKQKkLoaKjDMXDEH_KMZTW8Lg5Q2dxhbPKQvLw@mail.gmail.com>
 <637859ba-8167-4643-ae42-743a2e73b20a@gmail.com>
 <CAL4V06pXvgzSBXNieRr4N2XSVRa_0bdXJKNCG7aYCWbKQzf0dg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAL4V06pXvgzSBXNieRr4N2XSVRa_0bdXJKNCG7aYCWbKQzf0dg@mail.gmail.com>
Message-ID-Hash: NZHVWIMV4BROVPXQM3AQCIXFCWXBPAR3
X-Message-ID-Hash: NZHVWIMV4BROVPXQM3AQCIXFCWXBPAR3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reg. N210 FPGA modification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NZHVWIMV4BROVPXQM3AQCIXFCWXBPAR3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2130627090647747260=="

This is a multi-part message in MIME format.
--===============2130627090647747260==
Content-Type: multipart/alternative;
 boundary="------------tGYX0E3z0J9eQ0jFOTQ5H7qE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------tGYX0E3z0J9eQ0jFOTQ5H7qE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/08/2024 15:16, Brajesh wrote:
>
>
> On Wed, Aug 14, 2024 at 12:14=E2=80=AFAM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 13/08/2024 14:32, Brajesh wrote:
>>     Thanks Marcus for response.
>>
>>     Yes, you are correct that I am beginner=C2=A0to UHD related issues=
.
>>     Maybe I should have pointed in my first posting. Sorry for that.
>>     But for design implementations on FPGA boards viz Basys 3 etc
>>     using AMD/Xilinx tools viz. ISE/Vivado/Vitis I am OK. A useful
>>     link (
>>     https://www.amd.com/content/dam/amd/en/documents/university/vivado=
-teaching/hdl-design/2015x/Verilog/docs-pdf/Vivado_tutorial.pdf
>>     ) is shared for confidence=C2=A0building.
>>
>>     Further, I am not communication field expert either. I am
>>     building/brushing basics of communications fundamentals using GNU
>>     Radio. I have already gone though the link you shared before
>>     posting to forum. Now, I am inferring (confirming) that to modify
>>     N210 FPGA one need to follow the link you shared not standard
>>     AMD/Xilinx tool kit flow. Kindly note, due to my previous FPGA
>>     experience, I was trying to look for a way out to implement Ettus
>>     Research GitHub code using standalone process of AMD/Xilinx tool
>>     flow which was genesis of putting forward issue ( i ) in my
>>     previous thread. Not to mention I have no help, on the subject
>>     matter, around either. Now, I can ascertain that one need not to
>>     follow standalone flow of AMD/Xilinx tool kit for mentioned
>>     cause. This settles first issue.
>>     *
>>     *
>>     *Summary:-*
>>     Modifying N210 FPGA is a two step process,
>>
>>         i) Generate bit file (
>>         https://files.ettus.com/manual/md_usrp2_build_instructions.htm=
l
>>         )
>>         ii) Use iMPACT tool to load firmware called "bit" file (
>>         output of step (i)) on N210 FPGA using JTAG cable
>>
>>
>>     Experts confirmation is need of hour though.
>     You CAN jtag images into the FPGA, but the usual route is to use
>     the uhd_image_loader tool to do this, from the appropriate
>     =C2=A0 generated artifacts.=C2=A0=C2=A0 Since new releases of UHD o=
ften include
>     new FPGA code, "uhd_image_loader" allows end-users to
>     =C2=A0 load new "factory" images into their devices without needing
>     Xilinx tooling.
>
> =C2=A0Thanks Marcus, for clarifying.
>
>>
>>     ----------------------------------------------
>>
>>     However, following doubt still remains,
>>
>>         i. How to customise the data rate of N210, if possible, of
>>         design available at the GitHub link (
>>         https://github.com/EttusResearch/uhd/tree/master/fpga/usrp2/to=
p
>>         ). I wish, if possible, to make the data rate as 1-bit,
>>         2-bit, 4- bit, 8-bit, 16-bit, 32-bit and 64-bit. For N210's
>>         FPGA specifications, I referred section "comparative feature
>>         list" available at following link,
>>
>>             https://files.ettus.com/manual/page_usrp2.html
>>
>     There is no "structured walk-through" of the FPGA code avalable.=C2=
=A0
>     The existing code for the N210 family USRPs includes support
>     =C2=A0 for 16-bit and 8-bit samples "on the wire".=C2=A0=C2=A0 If i=
t were my
>     problem, that's where I'd start.=C2=A0 When you say "data rate", I =
assume
>     =C2=A0 that you mean "data format on the wire".=C2=A0 I'm guessing =
that you
>     want to move samples at a higher rate "over the wire"
>     =C2=A0 than the 16 and 8 bit formats support.=C2=A0 Since the ADCs =
are only
>     14-bit on the N210, there's little point in carrying samples
>     =C2=A0 wider than that over the wire.
>
>     I would *not* go down that road without having a very thorough
>     knowledge of how the standard FPGA data-flow works.=C2=A0 As I said
>     =C2=A0 there is no "tell me how all this works" document, other tha=
n
>     the Verilog source code.=C2=A0 The way that *most* users use these
>     =C2=A0 devices is with the standard FPGA images, and the host-side =
UHD
>     library.=C2=A0=C2=A0 Ettus/NI/Emerson don't provide a lot of hand-h=
olding
>     =C2=A0 documentation in this regard.
>
> I tried to get a complete picture of the schematic from Ettus Research=20
> ( https://files.ettus.com/schematics/usrp2/usrp2.pdf ) but it is not=20
> giving complete information. Hene I am a bit not clear. For standard=20
> FPGA data flow, I have experience to move on unlike this issue.
Not sure why you'd be using the USRP2 schematic if you have an N210.=C2=A0=
=20
The N210 schematics are here:

https://files.ettus.com/schematics/n200/

The N210/N200 are basically the same device, with the N210 having a=20
larger FPGA.

Note that the USRP2 has been EOL for MANY years.=C2=A0 The N210 was=20
originally released back in 2011, and has had no major hardware
 =C2=A0 updates since then, and the FPGA image hasn't been updated a whol=
e=20
lot since then.


>
> Kind request to Ettus Research associates:-
> Give me some pointers here.

https://kb.ettus.com/Knowledge_Base

That's a good "top level" starting point.

>
> Request to community people :-
>
>     If possible, kindly share Ettus Research fellow's email so that I
>     can directly post my query to them. This request is to keep
>     everyone's interest intact.
>
I *AM* (for purposes of this forum) an Ettus/NI/Emerson "fellow". But i=20
work very part-time.

I'm not sure what you're looking for apart from what you've already=20
found, and I've already pointed you to.=C2=A0=C2=A0 The FPGA source-code
 =C2=A0 is freely available.=C2=A0 There are documents that describe the =
work-flow=20
for making custom mods to the N2xx FPGA images.
 =C2=A0 The FPGA "architecture" is common between (obsolete) USRP2 and N2=
xx=20
hardware.=C2=A0 The follow-on architecture is referred
 =C2=A0 to in the FPGA codebase as "usrp3", but that's just the naming of=
 the=20
FPGA architecture.

Like I have said previously, there is no "structured walk-through"=20
document that describes, in a high-level way, the architecture
 =C2=A0 of the FPGA codebase.=C2=A0 The codebase is the document.=C2=A0 T=
he same is=20
basically true for the host-side UHD library.=C2=A0 The architecture
 =C2=A0 changes often-enough that by the time a "structured walk-through"=
=20
document could be considered "complete", the architecture
 =C2=A0 underneath it, at least the details, would have changed.=C2=A0 Su=
ch is the=20
nature of an evolving code-base.

Now, for the "usrp2" FPGA architecture, THAT codebase has been=20
relatively static for many years.=C2=A0 But a goodly chunk of it
 =C2=A0 was written by people who have long-since departed the company.=20
Occasional maintenance is done on it, but for the
 =C2=A0 most part, it has been the same for many years.=C2=A0 Again, thou=
gh, the=20
codebase IS the documentation.


--------------tGYX0E3z0J9eQ0jFOTQ5H7qE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/08/2024 15:16, Brajesh wrote:<br=
>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAL4V06pXvgzSBXNieRr4N2XSVRa_0bdXJKNCG7aYCWbKQzf0dg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr"><br>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 14, 2024 at
            12:14=E2=80=AFAM Marcus D. Leech &lt;<a
              href=3D"mailto:patchvonbraun@gmail.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">pa=
tchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div>
              <div>On 13/08/2024 14:32, Brajesh wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div>Thanks Marcus for response.=C2=A0<br>
                  </div>
                  <div>
                    <div><br>
                    </div>
                    <div>Yes, you are correct that I am beginner=C2=A0to =
UHD
                      related issues. Maybe I should have pointed in my
                      first posting. Sorry for that. But for design
                      implementations on FPGA boards viz Basys 3 etc
                      using AMD/Xilinx tools viz. ISE/Vivado/Vitis I am
                      OK. A useful link ( <a
href=3D"https://www.amd.com/content/dam/amd/en/documents/university/vivad=
o-teaching/hdl-design/2015x/Verilog/docs-pdf/Vivado_tutorial.pdf"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">https://www.amd.c=
om/content/dam/amd/en/documents/university/vivado-teaching/hdl-design/201=
5x/Verilog/docs-pdf/Vivado_tutorial.pdf</a>
                      ) is shared for confidence=C2=A0building.</div>
                    <div><br>
                    </div>
                    <div>Further, I am not communication field expert
                      either. I am building/brushing basics of
                      communications fundamentals using GNU Radio. I
                      have already gone though the link you shared
                      before posting to forum. Now, I am inferring
                      (confirming) that to modify N210 FPGA one need to
                      follow the link you shared not standard AMD/Xilinx
                      tool kit flow. Kindly note, due to my previous
                      FPGA experience, I was trying to look for a way
                      out to implement Ettus Research GitHub code using
                      standalone process of AMD/Xilinx tool flow which
                      was genesis of putting forward issue ( i ) in my
                      previous thread. Not to mention I have no help, on
                      the subject matter, around either. Now, I can
                      ascertain that one need not to follow standalone
                      flow of AMD/Xilinx tool kit for mentioned cause.
                      This settles first issue.</div>
                    <div><b><br>
                      </b></div>
                    <div><b>Summary:-</b></div>
                  </div>
                  <div>Modifying N210 FPGA is a two step process,</div>
                  <blockquote
style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
                    <div>
                      <div>i) Generate bit file ( <a
href=3D"https://files.ettus.com/manual/md_usrp2_build_instructions.html"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">https://files.e=
ttus.com/manual/md_usrp2_build_instructions.html</a>
                        )=C2=A0</div>
                    </div>
                    <div>
                      <div>ii) Use iMPACT tool to load firmware called
                        "bit" file ( output of step (i)) on N210 FPGA
                        using JTAG cable</div>
                    </div>
                  </blockquote>
                  <div>
                    <div><br>
                    </div>
                    <div>Experts confirmation is need of hour though.</di=
v>
                  </div>
                </div>
              </blockquote>
              You CAN jtag images into the FPGA, but the usual route is
              to use the uhd_image_loader tool to do this, from the
              appropriate<br>
              =C2=A0 generated artifacts.=C2=A0=C2=A0 Since new releases =
of UHD often
              include new FPGA code, "uhd_image_loader" allows end-users
              to<br>
              =C2=A0 load new "factory" images into their devices without
              needing Xilinx tooling.<br>
            </div>
          </blockquote>
          <div>=C2=A0</div>
          <div>=C2=A0Thanks Marcus, for clarifying.</div>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <blockquote type=3D"cite">
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
style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
                        <div>i. How to customise the data rate of N210,
                          if possible, of design available at the GitHub
                          link ( <a
href=3D"https://github.com/EttusResearch/uhd/tree/master/fpga/usrp2/top"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">https://githu=
b.com/EttusResearch/uhd/tree/master/fpga/usrp2/top</a>
                          ). I wish, if possible, to make the data rate
                          as 1-bit, 2-bit, 4- bit, 8-bit, 16-bit, 32-bit
                          and 64-bit. For N210's FPGA specifications, I
                          referred section "comparative feature list"
                          available at following link,</div>
                      </blockquote>
                    </div>
                  </div>
                  <blockquote
style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
                    <div>
                      <div>
                        <blockquote
style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
                          <div><a
href=3D"https://files.ettus.com/manual/page_usrp2.html" target=3D"_blank"
                              moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-freetext">https://fil=
es.ettus.com/manual/page_usrp2.html</a></div>
                        </blockquote>
                      </div>
                    </div>
                  </blockquote>
                </div>
              </div>
            </blockquote>
            There is no "structured walk-through" of the FPGA code
            avalable.=C2=A0 The existing code for the N210 family USRPs
            includes support<br>
            =C2=A0 for 16-bit and 8-bit samples "on the wire".=C2=A0=C2=A0=
 If it were
            my problem, that's where I'd start.=C2=A0 When you say "data
            rate", I assume<br>
            =C2=A0 that you mean "data format on the wire".=C2=A0 I'm gue=
ssing
            that you want to move samples at a higher rate "over the
            wire"<br>
            =C2=A0 than the 16 and 8 bit formats support.=C2=A0 Since the=
 ADCs are
            only 14-bit on the N210, there's little point in carrying
            samples<br>
            =C2=A0 wider than that over the wire.<br>
            <br>
            I would *not* go down that road without having a very
            thorough knowledge of how the standard FPGA data-flow
            works.=C2=A0 As I said<br>
            =C2=A0 there is no "tell me how all this works" document, oth=
er
            than the Verilog source code.=C2=A0 The way that *most* users=
 use
            these<br>
            =C2=A0 devices is with the standard FPGA images, and the
            host-side UHD library.=C2=A0=C2=A0 Ettus/NI/Emerson don't pro=
vide a
            lot of hand-holding<br>
            =C2=A0 documentation in this regard.<br>
          </blockquote>
          <div>=C2=A0</div>
          <div>I tried to get a complete picture of the schematic from
            Ettus Research ( <a
              href=3D"https://files.ettus.com/schematics/usrp2/usrp2.pdf"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://files.ettus.com/schematics/usrp2/usrp2.pdf</a>
            ) but it is not giving complete information. Hene I am a bit
            not clear. For standard FPGA data flow, I have experience to
            move on unlike this issue. <br>
          </div>
        </div>
      </div>
    </blockquote>
    Not sure why you'd be using the USRP2 schematic if you have an
    N210.=C2=A0 The N210 schematics are here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/sc=
hematics/n200/">https://files.ettus.com/schematics/n200/</a><br>
    <br>
    The N210/N200 are basically the same device, with the N210 having a
    larger FPGA.<br>
    <br>
    Note that the USRP2 has been EOL for MANY years.=C2=A0 The N210 was
    originally released back in 2011, and has had no major hardware<br>
    =C2=A0 updates since then, and the FPGA image hasn't been updated a w=
hole
    lot since then.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAL4V06pXvgzSBXNieRr4N2XSVRa_0bdXJKNCG7aYCWbKQzf0dg@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div><br>
          </div>
          <div>Kind request to Ettus Research associates:-</div>
          <div>Give me some pointers here.</div>
        </div>
      </div>
    </blockquote>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Knowl=
edge_Base">https://kb.ettus.com/Knowledge_Base</a><br>
    <br>
    That's a good "top level" starting point.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAL4V06pXvgzSBXNieRr4N2XSVRa_0bdXJKNCG7aYCWbKQzf0dg@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div><br>
          </div>
          <div>Request to community people :-</div>
        </div>
        <blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px">
          <div class=3D"gmail_quote">
            <div>If possible, kindly share Ettus Research fellow's email
              so that I can directly post my query to them. This request
              is to keep everyone's interest intact.</div>
          </div>
        </blockquote>
      </div>
    </blockquote>
    I *AM* (for purposes of this forum) an Ettus/NI/Emerson "fellow".=C2=A0=
=C2=A0
    But i work very part-time.<br>
    <br>
    I'm not sure what you're looking for apart from what you've already
    found, and I've already pointed you to.=C2=A0=C2=A0 The FPGA source-c=
ode<br>
    =C2=A0 is freely available.=C2=A0 There are documents that describe t=
he
    work-flow for making custom mods to the N2xx FPGA images.<br>
    =C2=A0 The FPGA "architecture" is common between (obsolete) USRP2 and
    N2xx hardware.=C2=A0 The follow-on architecture is referred<br>
    =C2=A0 to in the FPGA codebase as "usrp3", but that's just the naming=
 of
    the FPGA architecture.<br>
    <br>
    Like I have said previously, there is no "structured walk-through"
    document that describes, in a high-level way, the architecture<br>
    =C2=A0 of the FPGA codebase.=C2=A0 The codebase is the document.=C2=A0=
 The same is
    basically true for the host-side UHD library.=C2=A0 The architecture<=
br>
    =C2=A0 changes often-enough that by the time a "structured walk-throu=
gh"
    document could be considered "complete", the architecture<br>
    =C2=A0 underneath it, at least the details, would have changed.=C2=A0=
 Such is
    the nature of an evolving code-base.<br>
    <br>
    Now, for the "usrp2" FPGA architecture, THAT codebase has been
    relatively static for many years.=C2=A0 But a goodly chunk of it<br>
    =C2=A0 was written by people who have long-since departed the company=
.=C2=A0
    Occasional maintenance is done on it, but for the<br>
    =C2=A0 most part, it has been the same for many years.=C2=A0 Again, t=
hough,
    the codebase IS the documentation.<br>
    <br>
    <br>
  </body>
</html>

--------------tGYX0E3z0J9eQ0jFOTQ5H7qE--

--===============2130627090647747260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2130627090647747260==--
