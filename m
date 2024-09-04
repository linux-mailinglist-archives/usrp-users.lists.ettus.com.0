Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFF996BF89
	for <lists+usrp-users@lfdr.de>; Wed,  4 Sep 2024 16:04:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1CA0E3852E3
	for <lists+usrp-users@lfdr.de>; Wed,  4 Sep 2024 10:04:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1725458650; bh=+6jC+mNYEtCK8Rs1b5Va0f/pt2n2jm2hZsOp6IS+zSo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=v07ghjBlxbGuWSjDwpkGOwZFBAQBXSrHeeNyCialzls5VHr0TvIxY0YbyiATyTwwN
	 OS6xcfavC7ZjmA8auMwBwOP88zHuck1DI5qLRcTQWIdN7TMxgva8iK46KVWhfAzRPV
	 OxND4rDAR0T0JC6GPpQUz7YSdgvKBjJkvA714vB4Fq0F2z2So2JYPfcThg3JPPUKfc
	 B0PbeLXyaqEwQTY6ax+Hjfh8JlwQloaRXzM18OI2S22ad9X8xWLoyWyp4+4jxhv/g+
	 Qde5l8FjCVu7QaEPBOfpk8sF9g77ZPLl8vnIoezQWPBfWwDiiwRn6icNcQD3xJ2UN4
	 CdC1vEkFU1vRw==
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 86FF53851B4
	for <usrp-users@lists.ettus.com>; Wed,  4 Sep 2024 10:03:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="PkEUbUYm";
	dkim-atps=neutral
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a80eab3945eso644347466b.1
        for <usrp-users@lists.ettus.com>; Wed, 04 Sep 2024 07:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1725458610; x=1726063410; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1OGI7gsah9LDu5XRBabxdVS6n8PmY7VSsBf1dBbNktc=;
        b=PkEUbUYmsp44g2V7rZYWKF+1M6moN9erJDAQwfSlq6U0kCfJmMsZ8uL9ojd/aKZ3qt
         I/yd1E5Qqf/MWKKCL9t0PNTANmOcBv6OU10ED4+K9qBxzlyWPN3bq0Jj7ENhC6QtcaYi
         YW10GRZRgzQdZV40iQdXMGYRY/RBrSTdiA0O6WvEeamPImEglzT/eu9FmbjtD/jlo+p/
         dnRmqGLS+vt0Jy41FQzfOzhFcqYuoKix7hkO5SDg76qr86p3F9/VrHmettOhAiK4CG+i
         q3V2oJrmwBRCDHyvnBqWKa+2p+CppalfxNTZ2WPa+8RB2Z7CE77ojU0AIGTtvrwY28hc
         j57w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725458610; x=1726063410;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1OGI7gsah9LDu5XRBabxdVS6n8PmY7VSsBf1dBbNktc=;
        b=k6ps0kmmvhXaTqxHCwAv2E/gxL8KTPw+sezar0WRKAlACWe+o7w7PRC8OhUEFjKLb5
         Ol6eF+z/Zgx5+qBIxhkAiJCVIAY8fz4fv+zaFq405JrxTQ00w4OLPsiAGvhoIFCswwII
         dT0sx2VMb5u7DVz+6OrFVUUs9Vf9/NIWIV42dSC6l95CNWqONyKQK71YEuQwg6zbodWI
         4vOEKIAyUDq8f9KQCqPHP87a1lLWI6AXx4OxpUxEjJZTMMnAiz+NQTkcDjxOE8rQKsGX
         La+BYBqyBagNdFWfhnYhpDoMbm+1thHU7UD1cx/R9bZxjlHfL2srA/AfvobcpFnD/lT+
         kxMQ==
X-Gm-Message-State: AOJu0YyYtvJ9t5oLIVOCMJJUKoC4AjXRKSafP5XxuJBQghsd64L7K8KM
	zXq21LoB4zDJ5JQrcAMH47Lr1pXjncWCtHo7My4TIMDOTUkTSk73R/zawLia8er8GBcIw9Ymi1M
	7KppxVSmg5zl1EeDBcZrqLWhCNGFFqrLHHtUmZ2YU
X-Google-Smtp-Source: AGHT+IH5lUw/zkKSXJUxBNE66Ma07f1ZLTq2RbzyizhEWbgzWSzkMOA5FqDL35H8dbl1anu+mzNusgj/WaWPs1LQkws=
X-Received: by 2002:a17:907:72c7:b0:a86:a30f:4aef with SMTP id
 a640c23a62f3a-a89a35dee4cmr1271462166b.22.1725458609286; Wed, 04 Sep 2024
 07:03:29 -0700 (PDT)
MIME-Version: 1.0
References: <b7EDp_Z-OGLk51ibwQutMTVO7aVrweoUubIOqX594P7xDHOpwd6I31RtEuiCTB3DMjFLfdkKR0dLqBIS1UGsN8df_iSefI5zIAhjCxTWVUY=@protonmail.com>
 <CAB__hTSWmo4jBMz7PiLw=uMzR56RaNTqj_PZo3pk6Oxt9fsGUQ@mail.gmail.com>
 <524a890b-6dea-4526-aef3-3dfbed714a20@gmail.com> <CAB__hTTO=N08nac2wwg9H4X6X1KWufAr+8jm5xXjd0QXnsiLow@mail.gmail.com>
 <ZzKYZGhnR2PvIUOunRGDW3GffGey_JjDV2v-c_tCLY9R66l3Yt-R4dt-wV9uzw5PYEbIEYAPGndZjkFQCRw_cRP-j8MUC7jxZ7-2ak2MNto=@protonmail.com>
 <a1qmoBKs9eLCKKwZtGf-ci8CsH-LGueBoujZqhPdx_7HoL6tnTRvZjmJH2rdE-s4sJ4o2syphskB0krjHU-0VMeZ48YW4RlUTRNoZyAfl_Y=@protonmail.com>
 <CAFOi1A60ZQuotHVZ59Em8hLsT+kzmSLE_hRp-a8_yUpE2kkd6g@mail.gmail.com>
 <BN8PR05MB5971E1C0A7138208EC2D0C6C8C932@BN8PR05MB5971.namprd05.prod.outlook.com>
 <f5826b39-62b6-42f8-8114-cc0f6ec13b2b@gmail.com>
In-Reply-To: <f5826b39-62b6-42f8-8114-cc0f6ec13b2b@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 4 Sep 2024 16:03:17 +0200
Message-ID: <CAFOi1A7Czk8v9=kSb7aLaJY=cWpN80tcE98xaFFbEJ8nM5kXrQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: URXVZSCDSO25W45YEHUE6RWXMFOEO7NJ
X-Message-ID-Hash: URXVZSCDSO25W45YEHUE6RWXMFOEO7NJ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Block diagram / architecture details
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/URXVZSCDSO25W45YEHUE6RWXMFOEO7NJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3499000659398651960=="

--===============3499000659398651960==
Content-Type: multipart/alternative; boundary="0000000000007b48a506214ba346"

--0000000000007b48a506214ba346
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Also this: https://uhd.readthedocs.io/en/latest/page_usrp_x4xx.html#x4xx_to=
o

...and of course the entire source code available for your perusal.

Best of luck,

--M

On Tue, Sep 3, 2024 at 11:11=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 03/09/2024 15:57, Arnaldo Sans wrote:
>
> Hello,
>
> I am looking for a detailed block diagram of an X440 radio... There is
> very little content available on the web... I am to create a "digital twi=
n
> of the radio.
>
> Thank you in advance and I look forward to hearing from you soon.
>
> Regards,
> AJ
>
> Most of the "interesting" bits of the X440 are in the RFSOC, which is
> linked here:
>
> https://docs.amd.com/r/en-US/pg269-rf-data-converter/Conventions
>
> There's Martin Brauns GRCON talk here:
>
>
> https://events.gnuradio.org/event/21/contributions/392/attachments/123/28=
5/Lo%20and%20behold,%20no%20LO.pdf
>
> There's an extensive treatise on selecting sample rates here:
>
>
> https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock_Rates_for_the_=
USRP_X440
>
> There's schematics for X4x0 family here:
>
> https://files.ettus.com/schematics/x4x0/
>
> And of course, all the FPGA code is published in the GIT repo that you ge=
t
> UHD source code from.
>
>
> ------------------------------
> *From:* Martin Braun <martin.braun@ettus.com> <martin.braun@ettus.com>
> *Sent:* Tuesday, August 27, 2024 3:45 AM
> *To:* Olo <olo1618@protonmail.com> <olo1618@protonmail.com>
> *Cc:* usrp-users <usrp-users@lists.ettus.com> <usrp-users@lists.ettus.com=
>
> *Subject:* [USRP-users] Re: Assistance with RFNoC and TwinRX
> Configuration in Custom FPGA Image
>
>
> Note: This message originated from outside the FIU Faculty/Staff email
> system.
>
> If you had a polyphase channelizer on the FPGA, that would be an efficien=
t
> solution to your problem, but there's no such block as part of UHD itself=
.
> There have been channelizer blocks written in the wild, but that would be
> something you'd have to figure out.
>
> --M
>
> On Tue, Aug 27, 2024 at 7:17=E2=80=AFAM Olo via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> I have an additional question related to my current project involving
> RFNoC. Specifically, I need to implement as many narrowband channels (DDC=
)
> as possible to record various parts of the spectrum as required.
>
> I=E2=80=99m wondering if it would be more efficient to handle this throug=
h RFNoC
> or directly on a GPU? Additionally, how many narrowband channels of
> specific bandwidths could I implement using RFNoC, considering I primaril=
y
> intend to store (record) the data into memory? I have a clear understandi=
ng
> of the memory and network interface requirements, but I am uncertain abou=
t
> the implications for CPU usage and RAM.
>
> Could you provide some guidance on this aspect?
> Olo.
>
> On Monday, August 26th, 2024 at 7:13 PM, Olo via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Thank you for your detailed responses to my previous questions. I
> appreciate the information provided about the limitations and potential
> issues related to FFT size and TwinRX configuration.
>
> However, I noticed that there was no feedback regarding the YAML file I
> attached in my original email. Could you please review it and let me know
> if the configuration I've set up is correct?
>
> Additionally, based on your recommendations, I plan to use a window
> function (Window block) with a size of 1024, along with an FFT block of t=
he
> same size for the scanner (sweep spectrum) functionality. Would this
> approach be correct given the current limitations and your suggestions?
>
> Your confirmation on these points would be invaluable to ensure that I am
> on the right track with my project.
>
> Thank you once again for your time and assistance. I look forward to your
> response.
>
> Best regards,
> Olo.
> On Monday, August 26th, 2024 at 18:04, Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>
>
> On Mon, Aug 26, 2024 at 10:24=E2=80=AFAM Marcus D. Leech <patchvonbraun@g=
mail.com>
> wrote:
>
> On 26/08/2024 10:21, Rob Kossler via USRP-users wrote:
>
> Hi Olo,
> On one point regarding an FFT length of 8192, there is likely an issue
> with using the Ettus FFT block. In the past (I haven't checked recently),
> this block was limited to a maximum FFT size of 1024 because the entire F=
FT
> had to fit in one packet where the maximum packet payload was about 2000
> samples. It is possible to use larger FFTs, but this requires some custom
> code that divorces the FFT size from the packet size.
> Rob
>
> My understanding is that in recent RFNoC, the limit has been raised to
> 2048:
>
>
> https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1fft__block__control.h=
tml
>
> The xci file
> <https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/ip/axi_f=
ft/axi_fft.xci>
> still shows a transform length of 1024. Also, I think that the X300 MTU
> size is 10 which implies 2^10=3D1024 x 64bit is the max payload. This imp=
lies
> 2048 32-bit words in the payload. But, because of a few bytes of header, =
it
> is not possible to use an FFT of length 2048 unless the FFT length is
> divorced from the packet length.
> Rob
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007b48a506214ba346
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Also this: <a href=3D"https://uhd.readthedocs.io/en/l=
atest/page_usrp_x4xx.html#x4xx_too">https://uhd.readthedocs.io/en/latest/pa=
ge_usrp_x4xx.html#x4xx_too</a></div><div><br></div><div>...and of course th=
e entire source code available for your perusal.</div><div><br></div><div>B=
est of luck,</div><div><br></div><div>--M<br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 3, 2024 at 1=
1:11=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.c=
om">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 03/09/2024 15:57, Arnaldo Sans
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
        Hello,</div>
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
        I am looking for a detailed block diagram of an X440 radio...
        There is very little=C2=A0content available on the web... I am to
        create a &quot;digital twin of the radio.</div>
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
        Thank you in advance and I look forward to hearing from you
        soon.</div>
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
        Regards,<br>
        AJ</div>
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
        <br>
      </div>
    </blockquote>
    Most of the &quot;interesting&quot; bits of the X440 are in the RFSOC, =
which
    is linked here:<br>
    <br>
    <a href=3D"https://docs.amd.com/r/en-US/pg269-rf-data-converter/Convent=
ions" target=3D"_blank">https://docs.amd.com/r/en-US/pg269-rf-data-converte=
r/Conventions</a><br>
    <br>
    There&#39;s Martin Brauns GRCON talk here:<br>
    <br>
<a href=3D"https://events.gnuradio.org/event/21/contributions/392/attachmen=
ts/123/285/Lo%20and%20behold,%20no%20LO.pdf" target=3D"_blank">https://even=
ts.gnuradio.org/event/21/contributions/392/attachments/123/285/Lo%20and%20b=
ehold,%20no%20LO.pdf</a><br>
    <br>
    There&#39;s an extensive treatise on selecting sample rates here:<br>
    <br>
<a href=3D"https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock_Rates=
_for_the_USRP_X440" target=3D"_blank">https://kb.ettus.com/About_Sampling_R=
ates_and_Master_Clock_Rates_for_the_USRP_X440</a><br>
    <br>
    There&#39;s schematics for X4x0 family here:<br>
    <br>
    <a href=3D"https://files.ettus.com/schematics/x4x0/" target=3D"_blank">=
https://files.ettus.com/schematics/x4x0/</a><br>
    <br>
    And of course, all the FPGA code is published in the GIT repo that
    you get UHD source code from.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
      </div>
      <hr style=3D"display:inline-block;width:98%">
      <div id=3D"m_928966692607441593divRplyFwdMsg" dir=3D"ltr"><font style=
=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:=
</b> Martin
          Braun <a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank"=
>&lt;martin.braun@ettus.com&gt;</a><br>
          <b>Sent:</b> Tuesday, August 27, 2024 3:45 AM<br>
          <b>To:</b> Olo <a href=3D"mailto:olo1618@protonmail.com" target=
=3D"_blank">&lt;olo1618@protonmail.com&gt;</a><br>
          <b>Cc:</b> usrp-users <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: Assistance with RFNoC and
          TwinRX Configuration in Custom FPGA Image</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <p style=3D"color:red;font-weight:bold;border:1px solid black;paddi=
ng:5px;width:65%;text-align:center;margin-left:auto;margin-right:auto">
          Note: This message originated from outside the FIU
          Faculty/Staff email system.</p>
        <br>
        <div>
          <div dir=3D"ltr">
            <div>If you had a polyphase channelizer on the FPGA, that
              would be an efficient solution to your problem, but
              there&#39;s no such block as part of UHD itself. There have
              been channelizer blocks written in the wild, but that
              would be something you&#39;d have to figure out.</div>
            <div><br>
            </div>
            <div>--M<br>
            </div>
          </div>
          <br>
          <div>
            <div dir=3D"ltr">On Tue, Aug 27, 2024 at
              7:17=E2=80=AFAM Olo via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt=
;
              wrote:<br>
            </div>
            <blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">
              <p>I have an additional question related to my current
                project involving RFNoC. Specifically, I need to
                implement as many narrowband channels (DDC) as possible
                to record various parts of the spectrum as required.</p>
              <p>I=E2=80=99m wondering if it would be more efficient to han=
dle
                this through RFNoC or directly on a GPU? Additionally,
                how many narrowband channels of specific bandwidths
                could I implement using RFNoC, considering I primarily
                intend to store (record) the data into memory? I have a
                clear understanding of the memory and network interface
                requirements, but I am uncertain about the implications
                for CPU usage and RAM.</p>
              <p>Could you provide some guidance on this aspect?</p>
              <div style=3D"font-family:Arial,sans-serif;font-size:14px;col=
or:rgb(0,0,0);background-color:rgb(255,255,255)">
                Olo.<br>
              </div>
              <div style=3D"font-family:Arial,sans-serif;font-size:14px"><b=
r>
              </div>
              <div>On Monday, August 26th, 2024 at 7:13 PM, Olo via
                USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
                wrote:<br>
                <blockquote type=3D"cite">
                  <div style=3D"font-family:Arial,sans-serif;font-size:14px=
">Thank
                    you for your detailed responses to my previous
                    questions. I appreciate the information provided
                    about the limitations and potential issues related
                    to FFT size and TwinRX configuration.</div>
                  <div style=3D"font-family:Arial,sans-serif;font-size:14px=
"><br>
                  </div>
                  <div style=3D"font-family:Arial,sans-serif;font-size:14px=
">However,
                    I noticed that there was no feedback regarding the
                    YAML file I attached in my original email. Could you
                    please review it and let me know if the
                    configuration I&#39;ve set up is correct?</div>
                  <div style=3D"font-family:Arial,sans-serif;font-size:14px=
"><br>
                  </div>
                  <div style=3D"font-family:Arial,sans-serif;font-size:14px=
">Additionally,
                    based on your recommendations, I plan to use a
                    window function (Window block) with a size of 1024,
                    along with an FFT block of the same size for the
                    scanner (sweep spectrum) functionality. Would this
                    approach be correct given the current limitations
                    and your suggestions?</div>
                  <div style=3D"font-family:Arial,sans-serif;font-size:14px=
"><br>
                  </div>
                  <div style=3D"font-family:Arial,sans-serif;font-size:14px=
">Your
                    confirmation on these points would be invaluable to
                    ensure that I am on the right track with my project.</d=
iv>
                  <div style=3D"font-family:Arial,sans-serif;font-size:14px=
"><br>
                  </div>
                  <div style=3D"font-family:Arial,sans-serif;font-size:14px=
">Thank
                    you once again for your time and assistance. I look
                    forward to your response.</div>
                  <div style=3D"font-family:Arial,sans-serif;font-size:14px=
"><br>
                  </div>
                  <div style=3D"font-family:Arial,sans-serif;font-size:14px=
">Best
                    regards,</div>
                  <div style=3D"font-family:Arial,sans-serif;font-size:14px=
">Olo.</div>
                  <div>On Monday, August 26th, 2024 at 18:04, Rob
                    Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
                    wrote:<br>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div dir=3D"ltr"><br>
                        </div>
                        <br>
                        <div>
                          <div dir=3D"ltr">On Mon,
                            Aug 26, 2024 at 10:24=E2=80=AFAM Marcus D. Leec=
h
                            &lt;<a rel=3D"noreferrer nofollow noopener" hre=
f=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.=
com</a>&gt;
                            wrote:<br>
                          </div>
                          <blockquote style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">
                            <div>
                              <div>On 26/08/2024 10:21, Rob Kossler via
                                USRP-users wrote:<br>
                              </div>
                              <blockquote type=3D"cite">
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">
                                    <div>Hi Olo,</div>
                                    <div>On one point regarding an FFT
                                      length of 8192, there is likely an
                                      issue with using the Ettus FFT
                                      block. In the past (I haven&#39;t
                                      checked recently), this block was
                                      limited to a maximum FFT size of
                                      1024 because the entire FFT had to
                                      fit in one packet where the
                                      maximum packet payload was about
                                      2000 samples. It is possible to
                                      use larger FFTs, but this requires
                                      some custom code that divorces the
                                      FFT size from the packet size.</div>
                                    <div>Rob<br>
                                    </div>
                                  </div>
                                </div>
                              </blockquote>
                              My understanding is that in recent RFNoC,
                              the limit has been raised to 2048:<br>
                              <br>
                              <a rel=3D"noreferrer nofollow noopener" href=
=3D"https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1fft__block__control=
.html" target=3D"_blank">https://files.ettus.com/manual/classuhd_1_1rfnoc_1=
_1fft__block__control.html</a><br>
                              <br>
                            </div>
                          </blockquote>
                          <div>The <a rel=3D"noreferrer nofollow noopener" =
href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/ip/=
axi_fft/axi_fft.xci" target=3D"_blank">
                              xci file</a> still shows a transform
                            length of 1024. Also, I think that the X300
                            MTU size is 10 which implies 2^10=3D1024 x
                            64bit is the max payload. This implies 2048
                            32-bit words in the payload. But, because of
                            a few bytes of header, it is not possible to
                            use an FFT of length 2048 unless the FFT
                            length is divorced from the packet length.</div=
>
                          <div>Rob<br>
                          </div>
                          <br>
                        </div>
                      </div>
                    </blockquote>
                    <br>
                  </div>
                </blockquote>
                <br>
              </div>
              _______________________________________________<br>
              USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank">
                usrp-users@lists.ettus.com</a><br>
              To unsubscribe send an email to <a href=3D"mailto:usrp-users-=
leave@lists.ettus.com" target=3D"_blank">
                usrp-users-leave@lists.ettus.com</a><br>
            </blockquote>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007b48a506214ba346--

--===============3499000659398651960==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3499000659398651960==--
