Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F29D291E20D
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2024 16:14:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D283F3850CD
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2024 10:14:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719843255; bh=3ehthZFEdnasvTyhCFsRPI/OnngT4NOAhoMS0a6Spv0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=L4GnfG/rFK3hxSRFGajA8WS8E0xTEjKChW5eBczftakWwIYs/7UTbNYg1FzlzeOQP
	 5IVip/5c9Kd8E4nwwxaKCPoZNN6WovV+DKDH1T2TJQ/F3FUt9sFxplop6pssaV55oL
	 RddWBcTDerMU6KX4lM/mgTwedudEcTHAhmpyxZqyov0YKlxOpmyufAfMeXKEQ1vpSn
	 ik/m89tIrNwK6vdIuhneQ1SGYWIixHKZp6TiOmpXyQDXlsBLVGsF4nRfeDdX2ww+pr
	 pKqz5q5G4zPE8sxMk2YHUW53Xe69829KfTyL8ZkClAqTEMIzusCKhvu5Ok+N5ig/U2
	 6fZHiDGXVbDhA==
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	by mm2.emwd.com (Postfix) with ESMTPS id C4869385309
	for <usrp-users@lists.ettus.com>; Mon,  1 Jul 2024 10:13:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="O3HARpJ8";
	dkim-atps=neutral
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1f9aeb96b93so20419075ad.3
        for <usrp-users@lists.ettus.com>; Mon, 01 Jul 2024 07:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1719843214; x=1720448014; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=utFfSI0QaJ1qlhMxgvjXeEn9re5YEqettQBvbtUqwKg=;
        b=O3HARpJ8Rk82MoarHZYo1N4EuoxJ3aVFetcOdjjCzzSZjYR9QYSI/IyocJ7sz1iqRX
         HcXjdmkNzLkehAsh3swAyYLshutzrbLnDBljvn8OQV1O0TRp65W5Ti4EmL3pG5ZK0Wz5
         S5y5CxLvCj55khXpzT11cDaeRl7m/cdc4Vrx1rZhQuUfqPdi6pK7s0yHNDNfSGK/OlB4
         oQmXCXujJaPcZdyleEEFx2qSsu5wh+bm8ddYPOv7Zkl6Wx8NTAPAsaM5Dh3vdm31htue
         7dQCHQiuXqSilhrycB/uklsZ6kBtp349Co8M+5xRPAQIwHTTLt5abYSmhrzjShKr3tme
         ZW+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719843214; x=1720448014;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=utFfSI0QaJ1qlhMxgvjXeEn9re5YEqettQBvbtUqwKg=;
        b=ZSmWaiRbQNCE/qUEZi+bdBQKL3Ym0SvwVTxgjttT5IcZ6xVKYTTff8L9LA1WI7YiUm
         eAIyWlfG3s+KCjQLqfaVgvKcOuDcnGBmL54o36medM3LDwXzz/ZaruA85AZVQ0v9lSMj
         ehu2Ac+MxAEwrwe7uDvhaiKPDYQYr9s5t1XCtzZeK/XfiuJA4TSnLQGzljffETF9Io/O
         eE+0JfQcoPDIsmgD+2MMjyL3o75nCj+Xc7gIOguGUW/DI7tnGPk8IxDCLPnRhrqLwNQp
         BXQ3SBOgw6y53lEltdyN6iw4KCn5k78j17bLEAAkU3Z1HdTLd0RywR+ih/N/QUn7X37z
         4g7A==
X-Gm-Message-State: AOJu0Yxh9R1UA2Scpf94LpRIsQEeef3Ogsp9H0axWahFPp1/Iy9UHBUg
	Vwr7qJHLCTleDV+qArHbU1Se8TRUsunAL9fP+pmjLw2vuMp1wPG1xC933t8VVtuounkFC4wUdJe
	vq40=
X-Google-Smtp-Source: AGHT+IHQVsnPtDMZvg/otyRW1V3iUy1peqYcfatUpgox4KIOJreOnwMwyhzuWtWo0462RFXe5daESA==
X-Received: by 2002:a17:902:f688:b0:1f9:b121:35f0 with SMTP id d9443c01a7336-1fadbce7c45mr62125415ad.54.1719843213685;
        Mon, 01 Jul 2024 07:13:33 -0700 (PDT)
Received: from ?IPV6:2001:16b8:cc4f:6e00:67cd:53b6:da7:527e? ([2001:16b8:cc4f:6e00:67cd:53b6:da7:527e])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fac10d1bd8sm65390755ad.10.2024.07.01.07.13.31
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jul 2024 07:13:32 -0700 (PDT)
Message-ID: <5112d27f-bc84-4f21-9329-0fc6e77831ea@ettus.com>
Date: Mon, 1 Jul 2024 16:13:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <DS0PR01MB79635F144100CD6C4EDE94E087D72@DS0PR01MB7963.prod.exchangelabs.com>
 <CAFOi1A72R2wVz+i7qMLpxYw+1xAwLMhw55emCDQJvCnx3F6FHQ@mail.gmail.com>
 <SA3PR01MB796705BF695CA698FB45A75F87D02@SA3PR01MB7967.prod.exchangelabs.com>
 <CAFOi1A7Ru1JSLE3BrsKpJCs3eFYMy_iSb-7eRCxfAMSt1B_BqA@mail.gmail.com>
 <SA3PR01MB7967631BE9CD4F7EFC384E3C87D02@SA3PR01MB7967.prod.exchangelabs.com>
 <CAFOi1A5XYtiE1RCEz5Ktond=5byycLWArvehG-qgLcBEFJySMQ@mail.gmail.com>
 <SA3PR01MB79678C8840C684BD0CDB128187D02@SA3PR01MB7967.prod.exchangelabs.com>
 <CAFOi1A5QMRn6cqA0Ctdtwfs3QSzfze9OSe+BrYV=2rM-X1o73Q@mail.gmail.com>
 <DS0PR01MB79634DAAC6C5BAF0BE0A848C87D32@DS0PR01MB7963.prod.exchangelabs.com>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <DS0PR01MB79634DAAC6C5BAF0BE0A848C87D32@DS0PR01MB7963.prod.exchangelabs.com>
Message-ID-Hash: 3FFMQDZ4QXDPGUVSH2S5WEGRIGEUQ6TC
X-Message-ID-Hash: 3FFMQDZ4QXDPGUVSH2S5WEGRIGEUQ6TC
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bricked B210 due to wiped EEPROM
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3FFMQDZ4QXDPGUVSH2S5WEGRIGEUQ6TC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6586411478005093267=="

This is a multi-part message in MIME format.
--===============6586411478005093267==
Content-Type: multipart/alternative;
 boundary="------------ut9MMQwzs5Zmv4635zdF0Ybh"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ut9MMQwzs5Zmv4635zdF0Ybh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Mark,


Board revision is relatively easy to narrow down: is your board white or =
green? If green,=20
yeah, 5, very likely.


 > Is there any way to debug what the issue truly is?


going to be hard; usually, this is the point where we honestly say we can=
't.


Just to give you an understanding, 5 =3D=3D FX3_STATE_UNCONFIGURED. You c=
an find all the paths=20
where that can in b200_main.c in the uhd/firmware source tree. This might=
 be something as=20
fundamental as the FPGA never signalling it finished programming. That wo=
uld usually=20
indicate a hardware failure that *might* be fixable by reworking the boar=
d, or by=20
replacing the FPGA, or replacing the FX3, or by something else.


Sorry,
Marcus



On 01.07.24 15:39, Mark Rosenbaum wrote:
> Darn, that's really unfortunate.=C2=A0 Is there any way to debug what t=
he issue truly is?
> --
> Mark
> -----------------------------------------------------------------------=
-------------------
> *From:* Martin Braun <martin.braun@ettus.com>
> *Sent:* Monday, July 1, 2024 3:52 AM
> *To:* Mark Rosenbaum <m_rosen@mit.edu>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Bricked B210 due to wiped EEPROM
> Sorry, that error can mean a bunch of things. It might be faulty hardwa=
re, unfortunately.
>
> --M
>
> On Fri, Jun 28, 2024 at 6:19=E2=80=AFPM Mark Rosenbaum <m_rosen@mit.edu=
> wrote:
>
>     Martin,
>     I actually re-ran the command you asked me too again just to make s=
ure and I have a
>     different error now!(Not sure if that's good or bad though.)=C2=A0 =
The new error is
>     actually my original error I was trying to fix which got me into th=
is whole mess.
>     The message is "Error: RuntimeError: fx3 is in state 5".=C2=A0 Any =
idea where to go
>     from=C2=A0here?
>     --
>     Mark
>     -------------------------------------------------------------------=
-----------------------
>     *From:* Martin Braun <martin.braun@ettus.com>
>     *Sent:* Friday, June 28, 2024 12:12 PM
>     *To:* Mark Rosenbaum <m_rosen@mit.edu>
>     *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>     *Subject:* Re: [USRP-users] Bricked B210 due to wiped EEPROM
>     Yeah that's probably the last resort. Just hard-code all product ID=
s and whatnot
>     until it works. Good luck!
>
>     --M
>
>     On Fri, Jun 28, 2024 at 5:52=E2=80=AFPM Mark Rosenbaum <m_rosen@mit=
.edu> wrote:
>
>         Martin,
>         Just tried exactly that to no=C2=A0avail.=C2=A0 Gives the exact=
 same error.=C2=A0 Is there any
>         way to maybe modify the program and recompile to bypass error/p=
roduct code
>         checking?=C2=A0 It looks to me like the check is found on line =
149 of
>         b200_impl.cpp(https://github.com/EttusResearch/uhd/blob/a5ed187=
2be6d0fc36de9a7e0b508933da1f119bc/host/lib/usrp/b200/b200_impl.cpp#L149C1=
-L149C3),=C2=A0but
>         I may be wrong.
>         --
>         Mark
>         ---------------------------------------------------------------=
---------------------------
>         *From:* Martin Braun <martin.braun@ettus.com>
>         *Sent:* Friday, June 28, 2024 11:42 AM
>         *To:* Mark Rosenbaum <m_rosen@mit.edu>
>         *Subject:* Re: [USRP-users] Bricked B210 due to wiped EEPROM
>         Try specifying absolutely everything on the command line:
>
>         |./usrp_burn_mb_eeprom --args=3D"fpga=3D/path/to/fpga/usrp_b210=
_fpga.bin" --values
>         revision=3D<REV>,product=3D<PRODUCT_ID>,serial=3D<SERIAL>,name=3D=
"b200name" |
>
>         |Serial number is on the PCB. PRODUCT_ID is 1, I think for B210=
 (see |https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/b20=
0/b200_iface.hpp#L20). Revision is encoded somewhere on the PCB, I'm not =
sure -- just put 5 here and see if things work. Name is up to you of cour=
se.
>
>         The most important thing is the correct FPGA bin-file.
>
>         --M
>
>
>         On Fri, Jun 28, 2024 at 3:05=E2=80=AFPM Mark Rosenbaum <m_rosen=
@mit.edu> wrote:
>
>             Hey Martin,
>             Tried that as almost a first thing after the issue occurred=
.=C2=A0 The command
>             successfully runs with no error but the same issue persists=
, where any other
>             command gives me the "Error: RuntimeError: B200 unknown pro=
duct code:
>             0xe3e0" message.
>             --
>             Mark
>             -----------------------------------------------------------=
-------------------------------
>             *From:* Martin Braun <martin.braun@ettus.com>
>             *Sent:* Friday, June 28, 2024 5:26 AM
>             *To:* Mark Rosenbaum <m_rosen@mit.edu>
>             *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.co=
m>
>             *Subject:* Re: [USRP-users] Bricked B210 due to wiped EEPRO=
M
>             Hi Mark,
>
>             b2xx_fx3_utils --init-device is your friend. After you run =
that, you can run
>             `usrp_burn_mb_eeprom` again to configure serial number etc.
>
>             --M
>
>             On Thu, Jun 27, 2024 at 8:45=E2=80=AFPM Mark Rosenbaum <m_r=
osen@mit.edu> wrote:
>
>                 Hi All,
>                 I was recently working on fixing an issue with my B210 =
and accidentally
>                 re-flashed the bootloader. In the process it seems to h=
ave fully wiped
>                 the EEPROM and now when attempting to perform any actio=
n on the device I
>                 get the following error:
>                 "Error: RuntimeError: B200 unknown product code: 0xe3e0=
".
>                 Is there any way to go back and re-flash the original v=
alues?=C2=A0 I've
>                 tried to use the usrp_burn_mb_eeprom command with the r=
ecover_mb_eeprom
>                 but it still fails with the same error.
>                 Thanks,
>                 Mark
>                 _______________________________________________
>                 USRP-users mailing list -- usrp-users@lists.ettus.com
>                 To unsubscribe send an email to usrp-users-leave@lists.=
ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------ut9MMQwzs5Zmv4635zdF0Ybh
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Mark,</p>
    <p><br>
    </p>
    <p>Board revision is relatively easy to narrow down: is your board
      white or green? If green, yeah, 5, very likely. <br>
    </p>
    <p><br>
    </p>
    <p>&gt; Is there any way to debug what the issue truly is?</p>
    <p><br>
    </p>
    <p>going to be hard; usually, this is the point where we honestly
      say we can't. <br>
    </p>
    <p><br>
    </p>
    <p>Just to give you an understanding, 5 =3D=3D FX3_STATE_UNCONFIGURED=
.
      You can find all the paths where that can in b200_main.c in the
      uhd/firmware source tree. This might be something as fundamental
      as the FPGA never signalling it finished programming. That would
      usually indicate a hardware failure that *might* be fixable by
      reworking the board, or by replacing the FPGA, or replacing the
      FX3, or by something else. <br>
    </p>
    <p><br>
    </p>
    <p>Sorry,<br>
      Marcus</p>
    <p><br>
    </p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 01.07.24 15:39, Mark Rosenbaum
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:DS0PR01MB79634DAAC6C5BAF0BE0A848C87D32@DS0PR01MB7963.prod.exc=
hangelabs.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Darn, that's really unfortunate.=C2=A0 Is there any way to debug =
what
        the issue truly is?</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        --</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Mark</div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
tin
          Braun <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:martin.=
braun@ettus.com">&lt;martin.braun@ettus.com&gt;</a><br>
          <b>Sent:</b> Monday, July 1, 2024 3:52 AM<br>
          <b>To:</b> Mark Rosenbaum <a class=3D"moz-txt-link-rfc2396E" hr=
ef=3D"mailto:m_rosen@mit.edu">&lt;m_rosen@mit.edu&gt;</a><br>
          <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> Re: [USRP-users] Bricked B210 due to wiped
          EEPROM</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <div dir=3D"ltr">
          <div>Sorry, that error can mean a bunch of things. It might be
            faulty hardware, unfortunately.</div>
          <div><br>
          </div>
          <div>--M<br>
          </div>
        </div>
        <br>
        <div class=3D"x_gmail_quote">
          <div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Jun 28, 2024 at
            6:19=E2=80=AFPM Mark Rosenbaum &lt;<a href=3D"mailto:m_rosen@=
mit.edu"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">m_=
rosen@mit.edu</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"x_gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(204,204,204)=
; padding-left:1ex">
            <div class=3D"x_msg-1623422155006628540">
              <div dir=3D"ltr">
                <div
style=3D"text-align:left; text-indent:0px; margin:0px; font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
                  Martin,</div>
                <div
style=3D"text-align:left; text-indent:0px; margin:0px; font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
                  I actually re-ran the command you asked me too again
                  just to make sure and I have a different error
                  now!(Not sure if that's good or bad though.)=C2=A0 The =
new
                  error is actually my original error I was trying to
                  fix which got me into this whole mess. The message is
                  "Error: RuntimeError: fx3 is in state 5".=C2=A0 Any ide=
a
                  where to go from=C2=A0here?</div>
                <div
style=3D"text-align:left; text-indent:0px; margin:0px; font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
                  --</div>
                <div
style=3D"text-align:left; text-indent:0px; margin:0px; font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
                  Mark</div>
                <hr style=3D"display:inline-block; width:98%">
                <div id=3D"x_m_-1623422155006628540divRplyFwdMsg"
                  dir=3D"ltr"><font style=3D"font-size:11pt"
                    face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fro=
m:</b>
                    Martin Braun &lt;<a
                      href=3D"mailto:martin.braun@ettus.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">martin.braun@ettus.=
com</a>&gt;<br>
                    <b>Sent:</b> Friday, June 28, 2024 12:12 PM<br>
                    <b>To:</b> Mark Rosenbaum &lt;<a
                      href=3D"mailto:m_rosen@mit.edu" target=3D"_blank"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">m_rosen@mit.edu</a>=
&gt;<br>
                    <b>Cc:</b> <a
                      href=3D"mailto:usrp-users@lists.ettus.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users@lists.et=
tus.com</a>
                    &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users@lists.et=
tus.com</a>&gt;<br>
                    <b>Subject:</b> Re: [USRP-users] Bricked B210 due to
                    wiped EEPROM</font>
                  <div>=C2=A0</div>
                </div>
                <div>
                  <div dir=3D"ltr">
                    <div>Yeah that's probably the last resort. Just
                      hard-code all product IDs and whatnot until it
                      works. Good luck!</div>
                    <div><br>
                    </div>
                    <div>--M<br>
                    </div>
                  </div>
                  <br>
                  <div>
                    <div dir=3D"ltr">On Fri, Jun 28, 2024 at 5:52=E2=80=AF=
PM Mark
                      Rosenbaum &lt;<a href=3D"mailto:m_rosen@mit.edu"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">m_rosen@mit.edu</=
a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote
style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(204,204,204)=
; padding-left:1ex">
                      <div>
                        <div dir=3D"ltr">
                          <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                            Martin,</div>
                          <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                            Just tried exactly that to no=C2=A0avail.=C2=A0=
 Gives
                            the exact same error.=C2=A0 Is there any way =
to
                            maybe modify the program and recompile to
                            bypass error/product code checking?=C2=A0 It
                            looks to me like the check is found on line
                            149 of b200_impl.cpp(<a
href=3D"https://github.com/EttusResearch/uhd/blob/a5ed1872be6d0fc36de9a7e=
0b508933da1f119bc/host/lib/usrp/b200/b200_impl.cpp#L149C1-L149C3"
id=3D"x_m_-1623422155006628540x_m_527617589268171985LPlnk394935"
                              target=3D"_blank" moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-freetext">https://git=
hub.com/EttusResearch/uhd/blob/a5ed1872be6d0fc36de9a7e0b508933da1f119bc/h=
ost/lib/usrp/b200/b200_impl.cpp#L149C1-L149C3</a>),=C2=A0but
                            I may be wrong.</div>
                          <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                            --</div>
                          <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                            Mark</div>
                          <hr style=3D"display:inline-block; width:98%">
                          <div
id=3D"x_m_-1623422155006628540x_m_527617589268171985divRplyFwdMsg"
                            dir=3D"ltr"><font style=3D"font-size:11pt"
                              face=3D"Calibri, sans-serif" color=3D"#0000=
00"><b>From:</b>
                              Martin Braun &lt;<a
                                href=3D"mailto:martin.braun@ettus.com"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">martin.br=
aun@ettus.com</a>&gt;<br>
                              <b>Sent:</b> Friday, June 28, 2024 11:42
                              AM<br>
                              <b>To:</b> Mark Rosenbaum &lt;<a
                                href=3D"mailto:m_rosen@mit.edu"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">m_rosen@m=
it.edu</a>&gt;<br>
                              <b>Subject:</b> Re: [USRP-users] Bricked
                              B210 due to wiped EEPROM</font>
                            <div>=C2=A0</div>
                          </div>
                          <div>
                            <div dir=3D"ltr">
                              <div>Try specifying absolutely everything
                                on the command line:</div>
                              <div><br>
                              </div>
                              <div>
                                <pre><code>./usrp_burn_mb_eeprom --args=3D=
"fpga=3D/path/to/fpga/usrp_b210_fpga.bin" --values revision=3D&lt;REV&gt;=
,product=3D&lt;PRODUCT_ID&gt;,serial=3D&lt;SERIAL&gt;,name=3D"b200name"

</code></pre>
                                <pre><code>Serial number is on the PCB. P=
RODUCT_ID is 1, I think for B210 (see </code><a
href=3D"https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/b2=
00/b200_iface.hpp#L20"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">https://g=
ithub.com/EttusResearch/uhd/blob/master/host/lib/usrp/b200/b200_iface.hpp=
#L20</a>). Revision is encoded somewhere on the PCB, I'm not sure -- just=
 put 5 here and see if things work. Name is up to you of course.

</pre>
                                <pre>The most important thing is the corr=
ect FPGA bin-file.

</pre>
                                <pre>--M
</pre>
                              </div>
                            </div>
                            <br>
                            <div>
                              <div dir=3D"ltr">On Fri, Jun 28, 2024 at
                                3:05=E2=80=AFPM Mark Rosenbaum &lt;<a
                                  href=3D"mailto:m_rosen@mit.edu"
                                  target=3D"_blank" moz-do-not-send=3D"tr=
ue"
                                  class=3D"moz-txt-link-freetext">m_rosen=
@mit.edu</a>&gt;
                                wrote:<br>
                              </div>
                              <blockquote
style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(204,204,204)=
; padding-left:1ex">
                                <div>
                                  <div dir=3D"ltr">
                                    <div
style=3D"text-align:left; text-indent:0px; margin:0px; font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
                                      Hey Martin,=C2=A0</div>
                                    <div
style=3D"text-align:left; text-indent:0px; margin:0px; font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
                                      Tried that as almost a first thing
                                      after the issue occurred.=C2=A0 The
                                      command successfully runs with no
                                      error but the same issue persists,
                                      where any other command gives me
                                      the "Error: RuntimeError: B200
                                      unknown product code: 0xe3e0"
                                      message.</div>
                                    <div
style=3D"text-align:left; text-indent:0px; margin:0px; font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
                                      --</div>
                                    <div
style=3D"text-align:left; text-indent:0px; margin:0px; font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font=
-size:12pt; color:rgb(0,0,0)">
                                      Mark=C2=A0</div>
                                    <div
id=3D"x_m_-1623422155006628540x_m_527617589268171985x_m_-8684589157311004=
311appendonsend">
                                    </div>
                                    <hr
style=3D"display:inline-block; width:98%">
                                    <div
id=3D"x_m_-1623422155006628540x_m_527617589268171985x_m_-8684589157311004=
311divRplyFwdMsg"
                                      dir=3D"ltr">
                                      <font style=3D"font-size:11pt"
                                        face=3D"Calibri, sans-serif"
                                        color=3D"#000000"><b>From:</b>
                                        Martin Braun &lt;<a
href=3D"mailto:martin.braun@ettus.com" target=3D"_blank"
                                          moz-do-not-send=3D"true"
                                          class=3D"moz-txt-link-freetext"=
>martin.braun@ettus.com</a>&gt;<br>
                                        <b>Sent:</b> Friday, June 28,
                                        2024 5:26 AM<br>
                                        <b>To:</b> Mark Rosenbaum &lt;<a
                                          href=3D"mailto:m_rosen@mit.edu"
                                          target=3D"_blank"
                                          moz-do-not-send=3D"true"
                                          class=3D"moz-txt-link-freetext"=
>m_rosen@mit.edu</a>&gt;<br>
                                        <b>Cc:</b> <a
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
                                          moz-do-not-send=3D"true"
                                          class=3D"moz-txt-link-freetext"=
>usrp-users@lists.ettus.com</a>
                                        &lt;<a
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
                                          moz-do-not-send=3D"true"
                                          class=3D"moz-txt-link-freetext"=
>usrp-users@lists.ettus.com</a>&gt;<br>
                                        <b>Subject:</b> Re: [USRP-users]
                                        Bricked B210 due to wiped EEPROM<=
/font>
                                      <div>=C2=A0</div>
                                    </div>
                                    <div>
                                      <div dir=3D"ltr">
                                        <div>Hi Mark,</div>
                                        <div><br>
                                        </div>
                                        <div>b2xx_fx3_utils
                                          --init-device is your friend.
                                          After you run that, you can
                                          run `usrp_burn_mb_eeprom`
                                          again to configure serial
                                          number etc.</div>
                                        <div><br>
                                        </div>
                                        <div>--M<br>
                                        </div>
                                      </div>
                                      <br>
                                      <div>
                                        <div dir=3D"ltr">On Thu, Jun 27,
                                          2024 at 8:45=E2=80=AFPM Mark Ro=
senbaum
                                          &lt;<a
href=3D"mailto:m_rosen@mit.edu" target=3D"_blank" moz-do-not-send=3D"true=
"
class=3D"moz-txt-link-freetext">m_rosen@mit.edu</a>&gt; wrote:<br>
                                        </div>
                                        <blockquote
style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(204,204,204)=
; padding-left:1ex">
                                          <div>
                                            <div dir=3D"ltr">
                                              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                                                Hi All,</div>
                                              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                                                I was recently working
                                                on fixing an issue with
                                                my B210 and accidentally
                                                re-flashed the
                                                bootloader. In the
                                                process it seems to have
                                                fully wiped the EEPROM
                                                and now when attempting
                                                to perform any action on
                                                the device I get the
                                                following error:</div>
                                              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                                                "Error: RuntimeError:
                                                B200 unknown product
                                                code: 0xe3e0".</div>
                                              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                                                Is there any way to go
                                                back and re-flash the
                                                original values?=C2=A0 I'=
ve
                                                tried to use the
                                                usrp_burn_mb_eeprom
                                                command with the
                                                recover_mb_eeprom but it
                                                still fails with the
                                                same error.</div>
                                              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                                                Thanks,</div>
                                              <div
style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
                                                Mark</div>
                                            </div>
_______________________________________________<br>
                                            USRP-users mailing list -- <a
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
                                              moz-do-not-send=3D"true"
class=3D"moz-txt-link-freetext">
                                              usrp-users@lists.ettus.com<=
/a><br>
                                            To unsubscribe send an email
                                            to <a
href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank"
                                              moz-do-not-send=3D"true"
class=3D"moz-txt-link-freetext">
usrp-users-leave@lists.ettus.com</a><br>
                                          </div>
                                        </blockquote>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </blockquote>
                            </div>
                          </div>
                        </div>
                      </div>
                    </blockquote>
                  </div>
                </div>
              </div>
            </div>
          </blockquote>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------ut9MMQwzs5Zmv4635zdF0Ybh--

--===============6586411478005093267==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6586411478005093267==--
