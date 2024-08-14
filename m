Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F069515E2
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2024 09:52:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 648993857EE
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2024 03:52:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723621978; bh=f5D/gWJveHnPEdXSn32Ujlb8HBnzLCbpbjdjYj0NomU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=LL7ZgI6c3WZL9pxxP4xUhp0No9T6LMjMBLH6NDDFctH3Ua79FcBz6/19wNG/rykeh
	 BqqGWRNmZLAsYcZaDjU4IWQoRwiWe6ACmaL10tin3UZtSBfqyPdwlFXr1q8Z/klupN
	 COik283laASPAIUFDPZdyu3nGijKD5Cn7zyF3SS7jdnINBeNYSV/+76E0ex11Ra/Lz
	 oPPqKYH2XWDucwo7FplfQjG3cK75nQsmBt2EW56XOAomHhEgl/Z8gBcNvfbdg/mUdy
	 LLZ/vnKn/FyPYI3KKjJjXB4wNL0xBdEXHy9SL0aIqFdYbGU17L8ZgnHW+WDP2a5AsD
	 EToclxQ6ZanBA==
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 622A0385792
	for <usrp-users@lists.ettus.com>; Wed, 14 Aug 2024 03:52:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="R6ONQVNg";
	dkim-atps=neutral
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a728f74c23dso692786266b.1
        for <usrp-users@lists.ettus.com>; Wed, 14 Aug 2024 00:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723621936; x=1724226736; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0wcKXRWkdri9h5829Q3t6JhQDkBP8TRrofQWI8TyOBE=;
        b=R6ONQVNgAdgXZUXInqznLEOlUG4l+lBCMa0J+Tw/8pcuQs0rLE4HP/8ak9ozGVpQ/I
         S173WIVcdtKlipqDjBNy5/BTfyu/DVv21ywwlvws1XkvsZa7O10Z5IpToY3YDPZUBfT4
         j28usF3oMnpGyAyq2nWKGfLZ3wkSoaQP2jya4wsOMHruylP6wfFEdSIGaoVlJ6R0D7pj
         xajH5sPjAmw4NvTo+tbrWL/GTc2Lup271oaQjXsmWHfRWKQqb5GxdRitVI2xcGds62gW
         BdqQmtIB6KCZMDUbymovOhMTGdXkK/uvqaOLhM2D1LSvwqdPV7lij5E7V6iwFMJJHyMb
         Buuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723621936; x=1724226736;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0wcKXRWkdri9h5829Q3t6JhQDkBP8TRrofQWI8TyOBE=;
        b=gs6ivq/F/mZUd1New5SNrKjUfC/nyrGC8/Db0XFhE8/vkdYh5of6EZmtZHCa42XfFr
         ysQNykSsnveqqRh8grFBmJMHVHaOjX372OcYlc534vRbmYNDdWFmEKyFheZ66h2kgor0
         3eZ0SGebvQAjDOpkS4GhKAkGcY5l0TmS0uJYmcgDT5rgmy5KBfY8tcPYPrXWQBbcmPqB
         vo/ee1kxRZlFlFRdNQhSIZDWZqFKz1qeGCmleZuRYBt764zQPhRmgEZSs0LEAkG1Ryvr
         /E3DrD17RByS7YPBs5NAgagjO+nS1zW3Ett9DcFEim4FWGVt6bLH5kptGSN/TxP9Rlna
         jf/w==
X-Gm-Message-State: AOJu0YycqtA2qtYMrtsVSLiosjW9h8Vr+36teScGoEpW5rZxswdrQ0Dq
	Nir5Cbht7NnqfIuud4V4Y4YugtowgPxExUmWW9o0Rh2kOeQha0k5H1clvXsQHPIfKU1GMjJ69Tf
	s7RGcQoC2yhoesWWam0bHf2IYWoALxZ2V
X-Google-Smtp-Source: AGHT+IEZfrVFf3X9hwrequJgZ3YW6pYCdojoL9cEZt/l3IS8BZZU0Gp4lKZ1M6+ea1mktnjOPDHd7DKVsFRwXmXawl4=
X-Received: by 2002:a17:907:e604:b0:a7a:a4be:2f99 with SMTP id
 a640c23a62f3a-a8366d392bfmr140529566b.22.1723621935870; Wed, 14 Aug 2024
 00:52:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAL4V06r9bLo+Wo-JPP4H70hwdJNJCy-m1ER5xwoXp7KHQkryBQ@mail.gmail.com>
 <84320f82-be18-47b9-92be-24339e6b1dc5@gmail.com> <CAL4V06oDcG=XFKQKkLoaKjDMXDEH_KMZTW8Lg5Q2dxhbPKQvLw@mail.gmail.com>
 <637859ba-8167-4643-ae42-743a2e73b20a@gmail.com> <CAL4V06pXvgzSBXNieRr4N2XSVRa_0bdXJKNCG7aYCWbKQzf0dg@mail.gmail.com>
 <0129e687-c21b-4090-80d3-562ef9ee1d3b@gmail.com>
In-Reply-To: <0129e687-c21b-4090-80d3-562ef9ee1d3b@gmail.com>
From: Brajesh <brajesh153@gmail.com>
Date: Wed, 14 Aug 2024 13:22:03 +0530
Message-ID: <CAL4V06oB24-ii1th4407zM_1ENXOMi39PGuDMnbfUQ75LWZL9w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: LV4HSJ2FPC5RLFXUTQ6CHPFRYGWXSGE6
X-Message-ID-Hash: LV4HSJ2FPC5RLFXUTQ6CHPFRYGWXSGE6
X-MailFrom: brajesh153@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reg. N210 FPGA modification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LV4HSJ2FPC5RLFXUTQ6CHPFRYGWXSGE6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7709066792823095147=="

--===============7709066792823095147==
Content-Type: multipart/alternative; boundary="00000000000036fcba061fa001db"

--00000000000036fcba061fa001db
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 14, 2024 at 7:31=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 13/08/2024 15:16, Brajesh wrote:
>
>
>
> On Wed, Aug 14, 2024 at 12:14=E2=80=AFAM Marcus D. Leech <patchvonbraun@g=
mail.com>
> wrote:
>
>> On 13/08/2024 14:32, Brajesh wrote:
>>
>> Thanks Marcus for response.
>>
>> Yes, you are correct that I am beginner to UHD related issues. Maybe I
>> should have pointed in my first posting. Sorry for that. But for design
>> implementations on FPGA boards viz Basys 3 etc using AMD/Xilinx tools vi=
z.
>> ISE/Vivado/Vitis I am OK. A useful link (
>> https://www.amd.com/content/dam/amd/en/documents/university/vivado-teach=
ing/hdl-design/2015x/Verilog/docs-pdf/Vivado_tutorial.pdf
>> ) is shared for confidence building.
>>
>> Further, I am not communication field expert either. I am
>> building/brushing basics of communications fundamentals using GNU Radio.=
 I
>> have already gone though the link you shared before posting to forum. No=
w,
>> I am inferring (confirming) that to modify N210 FPGA one need to follow =
the
>> link you shared not standard AMD/Xilinx tool kit flow. Kindly note, due =
to
>> my previous FPGA experience, I was trying to look for a way out to
>> implement Ettus Research GitHub code using standalone process of AMD/Xil=
inx
>> tool flow which was genesis of putting forward issue ( i ) in my previou=
s
>> thread. Not to mention I have no help, on the subject matter, around
>> either. Now, I can ascertain that one need not to follow standalone flow=
 of
>> AMD/Xilinx tool kit for mentioned cause. This settles first issue.
>>
>> *Summary:-*
>> Modifying N210 FPGA is a two step process,
>>
>> i) Generate bit file (
>> https://files.ettus.com/manual/md_usrp2_build_instructions.html )
>> ii) Use iMPACT tool to load firmware called "bit" file ( output of step
>> (i)) on N210 FPGA using JTAG cable
>>
>>
>> Experts confirmation is need of hour though.
>>
>> You CAN jtag images into the FPGA, but the usual route is to use the
>> uhd_image_loader tool to do this, from the appropriate
>>   generated artifacts.   Since new releases of UHD often include new FPG=
A
>> code, "uhd_image_loader" allows end-users to
>>   load new "factory" images into their devices without needing Xilinx
>> tooling.
>>
>
>  Thanks Marcus, for clarifying.
>
>>
>> ----------------------------------------------
>>
>> However, following doubt still remains,
>>
>> i. How to customise the data rate of N210, if possible, of design
>> available at the GitHub link (
>> https://github.com/EttusResearch/uhd/tree/master/fpga/usrp2/top ). I
>> wish, if possible, to make the data rate as 1-bit, 2-bit, 4- bit, 8-bit,
>> 16-bit, 32-bit and 64-bit. For N210's FPGA specifications, I referred
>> section "comparative feature list" available at following link,
>>
>> https://files.ettus.com/manual/page_usrp2.html
>>
>> There is no "structured walk-through" of the FPGA code avalable.  The
>> existing code for the N210 family USRPs includes support
>>   for 16-bit and 8-bit samples "on the wire".   If it were my problem,
>> that's where I'd start.  When you say "data rate", I assume
>>   that you mean "data format on the wire".  I'm guessing that you want t=
o
>> move samples at a higher rate "over the wire"
>>   than the 16 and 8 bit formats support.  Since the ADCs are only 14-bit
>> on the N210, there's little point in carrying samples
>>   wider than that over the wire.
>>
>> I would *not* go down that road without having a very thorough knowledge
>> of how the standard FPGA data-flow works.  As I said
>>   there is no "tell me how all this works" document, other than the
>> Verilog source code.  The way that *most* users use these
>>   devices is with the standard FPGA images, and the host-side UHD
>> library.   Ettus/NI/Emerson don't provide a lot of hand-holding
>>   documentation in this regard.
>>
>
> I tried to get a complete picture of the schematic from Ettus Research (
> https://files.ettus.com/schematics/usrp2/usrp2.pdf ) but it is not giving
> complete information. Hene I am a bit not clear. For standard FPGA data
> flow, I have experience to move on unlike this issue.
>
> Not sure why you'd be using the USRP2 schematic if you have an N210.  The
> N210 schematics are here:
>
> https://files.ettus.com/schematics/n200/
>
> The N210/N200 are basically the same device, with the N210 having a large=
r
> FPGA.
>
> Note that the USRP2 has been EOL for MANY years.  The N210 was originally
> released back in 2011, and has had no major hardware
>   updates since then, and the FPGA image hasn't been updated a whole lot
> since then.
>


Thanks, Marcus, for clarifying.



>
>
>
> Kind request to Ettus Research associates:-
> Give me some pointers here.
>
>
> https://kb.ettus.com/Knowledge_Base
>
> That's a good "top level" starting point.
>


Well, I took a chance by writing to support@ettus.com (
https://kb.ettus.com/Email ) but got no response as it was expected /
already mentioned over the link.


>
> Request to community people :-
>
> If possible, kindly share Ettus Research fellow's email so that I can
> directly post my query to them. This request is to keep everyone's intere=
st
> intact.
>
> I *AM* (for purposes of this forum) an Ettus/NI/Emerson "fellow".   But i
> work very part-time.
>

That's great.
If possible, request your time for interactive session. This request is to
understand codebase (
https://github.com/EttusResearch/fpga/commit/78eab419fdcdc18f4da8fd33f267af=
6c4d0494f6
)  and get starting point to start for data rate modifications.


>
> I'm not sure what you're looking for apart from what you've already found=
,
> and I've already pointed you to.   The FPGA source-code
>   is freely available.  There are documents that describe the work-flow
> for making custom mods to the N2xx FPGA images.
>   The FPGA "architecture" is common between (obsolete) USRP2 and N2xx
> hardware.  The follow-on architecture is referred
>   to in the FPGA codebase as "usrp3", but that's just the naming of the
> FPGA architecture.
>
> Like I have said previously, there is no "structured walk-through"
> document that describes, in a high-level way, the architecture
>   of the FPGA codebase.  The codebase is the document.  The same is
> basically true for the host-side UHD library.  The architecture
>   changes often-enough that by the time a "structured walk-through"
> document could be considered "complete", the architecture
>   underneath it, at least the details, would have changed.  Such is the
> nature of an evolving code-base.
>
> Now, for the "usrp2" FPGA architecture, THAT codebase has been relatively
> static for many years.  But a goodly chunk of it
>   was written by people who have long-since departed the company.
> Occasional maintenance is done on it, but for the
>   most part, it has been the same for many years.  Again, though, the
> codebase IS the documentation.
>
>
Thanks again for shared details.

--00000000000036fcba061fa001db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 14, 2024 at 7:31=E2=80=AF=
AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonb=
raun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 13/08/2024 15:16, Brajesh wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr"><br>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 14, 2024 at
            12:14=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvon=
braun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
                    <div>Yes, you are correct that I am beginner=C2=A0to UH=
D
                      related issues. Maybe I should have pointed in my
                      first posting. Sorry for that. But for design
                      implementations on FPGA boards viz Basys 3 etc
                      using AMD/Xilinx tools viz. ISE/Vivado/Vitis I am
                      OK. A useful link ( <a href=3D"https://www.amd.com/co=
ntent/dam/amd/en/documents/university/vivado-teaching/hdl-design/2015x/Veri=
log/docs-pdf/Vivado_tutorial.pdf" target=3D"_blank">https://www.amd.com/con=
tent/dam/amd/en/documents/university/vivado-teaching/hdl-design/2015x/Veril=
og/docs-pdf/Vivado_tutorial.pdf</a>
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
                  <blockquote style=3D"margin:0px 0px 0px 40px;border:none;=
padding:0px">
                    <div>
                      <div>i) Generate bit file ( <a href=3D"https://files.=
ettus.com/manual/md_usrp2_build_instructions.html" target=3D"_blank">https:=
//files.ettus.com/manual/md_usrp2_build_instructions.html</a>
                        )=C2=A0</div>
                    </div>
                    <div>
                      <div>ii) Use iMPACT tool to load firmware called
                        &quot;bit&quot; file ( output of step (i)) on N210 =
FPGA
                        using JTAG cable</div>
                    </div>
                  </blockquote>
                  <div>
                    <div><br>
                    </div>
                    <div>Experts confirmation is need of hour though.</div>
                  </div>
                </div>
              </blockquote>
              You CAN jtag images into the FPGA, but the usual route is
              to use the uhd_image_loader tool to do this, from the
              appropriate<br>
              =C2=A0 generated artifacts.=C2=A0=C2=A0 Since new releases of=
 UHD often
              include new FPGA code, &quot;uhd_image_loader&quot; allows en=
d-users
              to<br>
              =C2=A0 load new &quot;factory&quot; images into their devices=
 without
              needing Xilinx tooling.<br>
            </div>
          </blockquote>
          <div>=C2=A0</div>
          <div>=C2=A0Thanks Marcus, for clarifying.</div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
                      <blockquote style=3D"margin:0px 0px 0px 40px;border:n=
one;padding:0px">
                        <div>i. How to customise the data rate of N210,
                          if possible, of design available at the GitHub
                          link ( <a href=3D"https://github.com/EttusResearc=
h/uhd/tree/master/fpga/usrp2/top" target=3D"_blank">https://github.com/Ettu=
sResearch/uhd/tree/master/fpga/usrp2/top</a>
                          ). I wish, if possible, to make the data rate
                          as 1-bit, 2-bit, 4- bit, 8-bit, 16-bit, 32-bit
                          and 64-bit. For N210&#39;s FPGA specifications, I
                          referred section &quot;comparative feature list&q=
uot;
                          available at following link,</div>
                      </blockquote>
                    </div>
                  </div>
                  <blockquote style=3D"margin:0px 0px 0px 40px;border:none;=
padding:0px">
                    <div>
                      <div>
                        <blockquote style=3D"margin:0px 0px 0px 40px;border=
:none;padding:0px">
                          <div><a href=3D"https://files.ettus.com/manual/pa=
ge_usrp2.html" target=3D"_blank">https://files.ettus.com/manual/page_usrp2.=
html</a></div>
                        </blockquote>
                      </div>
                    </div>
                  </blockquote>
                </div>
              </div>
            </blockquote>
            There is no &quot;structured walk-through&quot; of the FPGA cod=
e
            avalable.=C2=A0 The existing code for the N210 family USRPs
            includes support<br>
            =C2=A0 for 16-bit and 8-bit samples &quot;on the wire&quot;.=C2=
=A0=C2=A0 If it were
            my problem, that&#39;s where I&#39;d start.=C2=A0 When you say =
&quot;data
            rate&quot;, I assume<br>
            =C2=A0 that you mean &quot;data format on the wire&quot;.=C2=A0=
 I&#39;m guessing
            that you want to move samples at a higher rate &quot;over the
            wire&quot;<br>
            =C2=A0 than the 16 and 8 bit formats support.=C2=A0 Since the A=
DCs are
            only 14-bit on the N210, there&#39;s little point in carrying
            samples<br>
            =C2=A0 wider than that over the wire.<br>
            <br>
            I would *not* go down that road without having a very
            thorough knowledge of how the standard FPGA data-flow
            works.=C2=A0 As I said<br>
            =C2=A0 there is no &quot;tell me how all this works&quot; docum=
ent, other
            than the Verilog source code.=C2=A0 The way that *most* users u=
se
            these<br>
            =C2=A0 devices is with the standard FPGA images, and the
            host-side UHD library.=C2=A0=C2=A0 Ettus/NI/Emerson don&#39;t p=
rovide a
            lot of hand-holding<br>
            =C2=A0 documentation in this regard.<br>
          </blockquote>
          <div>=C2=A0</div>
          <div>I tried to get a complete picture of the schematic from
            Ettus Research ( <a href=3D"https://files.ettus.com/schematics/=
usrp2/usrp2.pdf" target=3D"_blank">https://files.ettus.com/schematics/usrp2=
/usrp2.pdf</a>
            ) but it is not giving complete information. Hene I am a bit
            not clear. For standard FPGA data flow, I have experience to
            move on unlike this issue. <br>
          </div>
        </div>
      </div>
    </blockquote>
    Not sure why you&#39;d be using the USRP2 schematic if you have an
    N210.=C2=A0 The N210 schematics are here:<br>
    <br>
    <a href=3D"https://files.ettus.com/schematics/n200/" target=3D"_blank">=
https://files.ettus.com/schematics/n200/</a><br>
    <br>
    The N210/N200 are basically the same device, with the N210 having a
    larger FPGA.<br>
    <br>
    Note that the USRP2 has been EOL for MANY years.=C2=A0 The N210 was
    originally released back in 2011, and has had no major hardware<br>
    =C2=A0 updates since then, and the FPGA image hasn&#39;t been updated a=
 whole
    lot since then.<br></div></blockquote><div><br></div><div>=C2=A0</div><=
div>Thanks, Marcus, for clarifying.=C2=A0</div><div><br></div><div>=C2=A0</=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div>
    <br>
    <br>
    <blockquote type=3D"cite">
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
    <a href=3D"https://kb.ettus.com/Knowledge_Base" target=3D"_blank">https=
://kb.ettus.com/Knowledge_Base</a><br>
    <br>
    That&#39;s a good &quot;top level&quot; starting point.<br></div></bloc=
kquote><div>=C2=A0<br></div><div><br></div><div>Well, I took a chance by wr=
iting to <a href=3D"mailto:support@ettus.com">support@ettus.com</a> ( <a hr=
ef=3D"https://kb.ettus.com/Email">https://kb.ettus.com/Email</a> ) but got =
no response as it was expected / already mentioned over the link.=C2=A0</di=
v><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div><br>
          </div>
          <div>Request to community people :-</div>
        </div>
        <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0p=
x">
          <div class=3D"gmail_quote">
            <div>If possible, kindly share Ettus Research fellow&#39;s emai=
l
              so that I can directly post my query to them. This request
              is to keep everyone&#39;s interest intact.</div>
          </div>
        </blockquote>
      </div>
    </blockquote>
    I *AM* (for purposes of this forum) an Ettus/NI/Emerson &quot;fellow&qu=
ot;.=C2=A0=C2=A0
    But i work very part-time.<br></div></blockquote><div><br></div><div>Th=
at&#39;s great.=C2=A0</div><div>If possible, request your time for interact=
ive session. This request is to understand codebase ( <a href=3D"https://gi=
thub.com/EttusResearch/fpga/commit/78eab419fdcdc18f4da8fd33f267af6c4d0494f6=
">https://github.com/EttusResearch/fpga/commit/78eab419fdcdc18f4da8fd33f267=
af6c4d0494f6</a> )=C2=A0 and get starting point to start for data rate modi=
fications.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div>
    <br>
    I&#39;m not sure what you&#39;re looking for apart from what you&#39;ve=
 already
    found, and I&#39;ve already pointed you to.=C2=A0=C2=A0 The FPGA source=
-code<br>
    =C2=A0 is freely available.=C2=A0 There are documents that describe the
    work-flow for making custom mods to the N2xx FPGA images.<br>
    =C2=A0 The FPGA &quot;architecture&quot; is common between (obsolete) U=
SRP2 and
    N2xx hardware.=C2=A0 The follow-on architecture is referred<br>
    =C2=A0 to in the FPGA codebase as &quot;usrp3&quot;, but that&#39;s jus=
t the naming of
    the FPGA architecture.<br>
    <br>
    Like I have said previously, there is no &quot;structured walk-through&=
quot;
    document that describes, in a high-level way, the architecture<br>
    =C2=A0 of the FPGA codebase.=C2=A0 The codebase is the document.=C2=A0 =
The same is
    basically true for the host-side UHD library.=C2=A0 The architecture<br=
>
    =C2=A0 changes often-enough that by the time a &quot;structured walk-th=
rough&quot;
    document could be considered &quot;complete&quot;, the architecture<br>
    =C2=A0 underneath it, at least the details, would have changed.=C2=A0 S=
uch is
    the nature of an evolving code-base.<br>
    <br>
    Now, for the &quot;usrp2&quot; FPGA architecture, THAT codebase has bee=
n
    relatively static for many years.=C2=A0 But a goodly chunk of it<br>
    =C2=A0 was written by people who have long-since departed the company.=
=C2=A0
    Occasional maintenance is done on it, but for the<br>
    =C2=A0 most part, it has been the same for many years.=C2=A0 Again, tho=
ugh,
    the codebase IS the documentation.<br>
    <br></div></blockquote><div><br></div><div>Thanks again for shared deta=
ils.</div><div><br></div></div></div>

--00000000000036fcba061fa001db--

--===============7709066792823095147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7709066792823095147==--
