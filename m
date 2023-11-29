Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 889667FDF4E
	for <lists+usrp-users@lfdr.de>; Wed, 29 Nov 2023 19:28:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 56A4D38528F
	for <lists+usrp-users@lfdr.de>; Wed, 29 Nov 2023 13:28:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701282538; bh=FJkMdCRanm0bC3HrClBdnMhE1AJH1VAKFzIzEK74X7g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tZmGKGqm6Sr7KXfkwvbYVVmY+VdptA7ysFiUQsTpeEIUwbcklDom7Y3Ql2gfPEv/f
	 poxVtehmTXvzyKcQwwsFTRc4gNHcdRtVi+ppBCPscncOQ5vXUmp32cqCdNb4p+Phea
	 DHJ/0NgSghc7rYn/Ux/yVArZhIk+WwMs+tWL3zbkgbAybyF4lLE0br4sfmag8nw45Y
	 RQDlkUNsbrN5I5F79yWLUDPCsqEZ222POMMKWqux3MOt7Dwq8U1FMTHlMTeFSGzyOi
	 d1ZS6j5U8bnLWJj7V6TJpX+UcM83nkMHsz4cYVqu3VrNG2U6W5Qd/R1E4G2LsNINuw
	 JK7WAeoblBJOg==
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 1A8BC384FDB
	for <usrp-users@lists.ettus.com>; Wed, 29 Nov 2023 13:28:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eZCCbDIN";
	dkim-atps=neutral
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-58d7d58ab7fso63430eaf.2
        for <usrp-users@lists.ettus.com>; Wed, 29 Nov 2023 10:28:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701282487; x=1701887287; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3usRh2Y1caP92JkArG+/XPNmdV67fwQ9nufam7Ix3fk=;
        b=eZCCbDINKn8zltpzaZ3CXAV3JjAUWsXuCgrub5j3uXF2QnyHKQceWIZBXEpv04rSHI
         wN8zCkfNUtnwkTAcBOwFymmImuuQSqOb9vZFdR6y3ftq/17At84smEKrNDVE/zD1xrws
         SB3ZQeTuyzBOFgD32IunizRQ2jM4QSkOKPN4D5Dcp43mdhZl6OjbBvB3Mjav3rispoDK
         ETBaT53jaBa5mGClEdfOvbgc2kkHWdIzoC3U4L9XrfNPSx/JUyXk6h7hwiMq1+TrfOng
         bFKwqJ0CKi5iU1BiONw3QU10bizfs17db+Vauosr842IrZY09RUhmim8yrQoxjzRClnw
         UUSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701282487; x=1701887287;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3usRh2Y1caP92JkArG+/XPNmdV67fwQ9nufam7Ix3fk=;
        b=YzHbWFvkf46oujIYcqbsTRvS/ZZeKwabP1Jly0WH78TIgOTa6KU8psdZXYxzgNoJlX
         GajnRW/WbLRGN1/pmaWOkrTksA6Xq0nhm8MGJZyo7xeAP9dZjVDit4rJTukaFy+GavF4
         4skhTeoj5xZAAStM+LEKndZx6ZNW3PG3/pwLbePQUqbPPeMkWQc+UxOWTcvUFav/QZ51
         it8tQ1TE3hJE/XK1JqXumFmoWeydJN8IgAV2CL5zBU19lCJPTYTbMkp/B1DDYfI9txlA
         N3aolqaVkftV/v4KyCoAJjmbSEoUMFWDo5Jid3VgjVPRlegvjDq6RLWqU31vjyr+C8L8
         AnLA==
X-Gm-Message-State: AOJu0Yz+rGEfsSN6mSFVzunPYCyrf/ZkbE0FyWK7Ahm9spG5uh7MRBMb
	TaPTKRGg/bZ6iZOiTdT7StBBiSLD70w=
X-Google-Smtp-Source: AGHT+IHEWrJZM2HDGxDfFHCgVhNmAb/aRKwIhfSmeUX7Qo7Jb4T0YJ2hKjc8tRegjUuRnlkViDoW0Q==
X-Received: by 2002:a05:6358:7f1c:b0:16e:783a:eb66 with SMTP id p28-20020a0563587f1c00b0016e783aeb66mr2040502rwn.0.1701282487012;
        Wed, 29 Nov 2023 10:28:07 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id m19-20020a05621402b300b0067a3db6d7e7sm3478173qvv.15.2023.11.29.10.28.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Nov 2023 10:28:06 -0800 (PST)
Message-ID: <c22223ef-fef7-41a9-a9ce-28ad3eb87dc0@gmail.com>
Date: Wed, 29 Nov 2023 13:27:56 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Alvin.Begaye@gd-ms.com" <Alvin.Begaye@gd-ms.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BN2P110MB09483E08C99BAFC569FBD48FCAB0A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
 <2b3d74f8-df85-4d60-9b1e-7a3e7d1b20fc@gmail.com>
 <BN2P110MB0948E12E41A840B64FA9A8F4CAB0A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
 <9737efed-cab8-4e86-abc5-75ff05df9a44@gmail.com>
 <BN2P110MB09482B4A6F47A60FE3D0AB9ECA83A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN2P110MB09482B4A6F47A60FE3D0AB9ECA83A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: 6XNVNDWYCZ5KVAXQRDAP7VJ75NG7TPYL
X-Message-ID-Hash: 6XNVNDWYCZ5KVAXQRDAP7VJ75NG7TPYL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: peek32/poke32 slow
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6XNVNDWYCZ5KVAXQRDAP7VJ75NG7TPYL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3509498239204687914=="

This is a multi-part message in MIME format.
--===============3509498239204687914==
Content-Type: multipart/alternative;
 boundary="------------SgDmt8MuZFXLhH9rfrSIjzQV"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------SgDmt8MuZFXLhH9rfrSIjzQV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 29/11/2023 08:30, Alvin.Begaye@gd-ms.com wrote:
>
> I would like to do the following, to figure out what is being tweaked=20
> on the HW.
>
> 1) Update X410 with a mender image (via mender install)
>
> 2) git clone the UHD repo, rebuild it with -g and install over what=20
> was mender.
>
> Is there a recommended way to do this?=C2=A0 I would like to see the ca=
ll=20
> flow with GDB to figure out what register is being written to when I=20
> access a register to an rfnoc block.
>
I'm not sure that -g will help that much, since most of MPM is written=20
in Python, the source-code of which is in the UHD codebase.


> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Thursday, November 16, 2023 1:55 PM
> *To:* Begaye, Alvin A <Alvin.Begaye@gd-ms.com>; usrp-users@lists.ettus.=
com
> *Subject:* Re: [USRP-users] Re: peek32/poke32 slow
>
> *External E-mail *--- CAUTION: This email originated from outside=20
> GDMS. Do not click links or open attachments unless you recognize the=20
> sender and know the content is safe.
>
> On 16/11/2023 15:50, Alvin.Begaye@gd-ms.com wrote:
>
>     I=E2=80=99m running the SW directly on the ARM of the X410, so that=
 should
>     rule out network latency.
>
> The ARM on the X410 is (AFAIR) dual-core, and not very speedy.=C2=A0 Ev=
en=20
> when you're talking locally, you
> =C2=A0 still go through the network stack (localhost).=C2=A0 So even th=
ough=20
> there's no actual network *hardware*
> =C2=A0 involved, you're still paying the network stack costs.
>
>
>     When using the UHD API on the ARM does it still go through the MPM?
>
> Yes, as far as I know.
>
>
>     Is there a way to bypass MPM?
>
> Well, all the source code is freely available--so you could figure out=20
> how MPM turns those calls into actual "knobs"
> =C2=A0 being tweaked on the hardware, and tweak those knobs yourself in=
=20
> your own code.
>
>
>
>     *From:* Marcus D. Leech <patchvonbraun@gmail.com>
>     <mailto:patchvonbraun@gmail.com>
>     *Sent:* Thursday, November 16, 2023 1:36 PM
>     *To:* usrp-users@lists.ettus.com
>     *Subject:* [USRP-users] Re: peek32/poke32 slow
>
>     *External E-mail *--- CAUTION: This email originated from outside
>     GDMS. Do not click links or open attachments unless you recognize
>     the sender and know the content is safe.
>
>     On 16/11/2023 15:11, Alvin.Begaye--- via USRP-users wrote:
>
>         Hi I am using an x410, and running through the init_gain_block
>         example,=C2=A0=C2=A0 using the high resolution timer I am getti=
ng these
>         results, which seem really slow, is there a faster way to
>         read/write registers?
>
>     I believe that on the X410, operations like that actually end up
>     going through the MPM process that is running in the Linux PS
>     =C2=A0 slice on the FPGA.
>
>     One can expect to pay various "latency tolls".=C2=A0 There's
>     app-land-to-kernel latency on your host, latency of the network sta=
ck,
>     =C2=A0 latency of the network media itself, and then all of those
>     things in reverse order on the X410 side, since MPM is just a piece
>     =C2=A0 of software running as a normal app process in the Linux PS =
on
>     the X410.
>
>     It has never been the case that what amounts to "session
>     parameter" settings were intended to be super-fast, because in
>     general,
>     =C2=A0 those things happen at a MUCH MUCH slower pace than the sign=
als
>     themselves.
>
>
>
>
>         Time 481.835 micro seconds.
>
>         Gain value read/write loopback successful!
>
>         Here is the code.
>
>         =C2=A0=C2=A0=C2=A0 t1 =3D high_resolution_clock::now();
>
>         gain_block->set_gain_value(new_gain_value);
>
>         const uint32_t gain_value_read =3D gain_block->get_gain_value()=
;
>
>         =C2=A0=C2=A0=C2=A0 t2 =3D high_resolution_clock::now();
>
>         delta_time =3D duration_cast<duration<double>>(t2-t1);
>
>         std::cout << std::flush ;//<< std::endl;
>
>         std::cout << "Time " << delta_time.count()*1000000.0 << "
>         micro seconds." << std::endl;
>
>
>
>
>         _______________________________________________
>
>         USRP-users mailing list --usrp-users@lists.ettus.com
>
>         To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>

--------------SgDmt8MuZFXLhH9rfrSIjzQV
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 29/11/2023 08:30,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:Alvin.Begaye@g=
d-ms.com">Alvin.Begaye@gd-ms.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB09482B4A6F47A60FE3D0AB9ECA83A@BN2P110MB0948.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">I would like to do the following, to figur=
e
          out what is being tweaked on the HW.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">1) Update X410 with a mender image (via
          mender install)<o:p></o:p></p>
        <p class=3D"MsoNormal">2) git clone the UHD repo, rebuild it with
          -g and install over what was mender.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Is there a recommended way to do this?=C2=A0=
 I
          would like to see the call flow with GDB to figure out what
          register is being written to when I access a register to an
          rfnoc block.=C2=A0=C2=A0
          <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
    </blockquote>
    I'm not sure that -g will help that much, since most of MPM is
    written in Python, the source-code of which is in the UHD codebase.<b=
r>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB09482B4A6F47A60FE3D0AB9ECA83A@BN2P110MB0948.NAMP110.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <div>
          <div
style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0in=
 0in">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
              <b>Sent:</b> Thursday, November 16, 2023 1:55 PM<br>
              <b>To:</b> Begaye, Alvin A <a class=3D"moz-txt-link-rfc2396=
E" href=3D"mailto:Alvin.Begaye@gd-ms.com">&lt;Alvin.Begaye@gd-ms.com&gt;<=
/a>;
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> Re: [USRP-users] Re: peek32/poke32 slow<o:p=
></o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <table class=3D"MsoNormalTable" style=3D"background:#3F7FBF"
            cellpadding=3D"0" border=3D"0">
            <tbody>
              <tr>
                <td style=3D"padding:.75pt .75pt .75pt .75pt">
                  <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-align:ce=
nter;line-height:12.0pt"
                    align=3D"center">
                    <strong><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;colo=
r:yellow">External
                        E-mail
                      </span></strong><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;colo=
r:yellow">---
                      CAUTION: This email originated from outside GDMS.
                      Do not click links or open attachments unless you
                      recognize the sender and know the content is safe.
                    </span><o:p></o:p></p>
                </td>
              </tr>
            </tbody>
          </table>
          <p class=3D"MsoNormal">=C2=A0 <o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal">On 16/11/2023 15:50, <a
                href=3D"mailto:Alvin.Begaye@gd-ms.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">
                Alvin.Begaye@gd-ms.com</a> wrote:<o:p></o:p></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal">I=E2=80=99m running the SW directly on=
 the ARM
              of the X410, so that should rule out network latency.=C2=A0
              <o:p></o:p></p>
          </blockquote>
          <p class=3D"MsoNormal">The ARM on the X410 is (AFAIR) dual-core=
,
            and not very speedy.=C2=A0 Even when you're talking locally, =
you<br>
            =C2=A0 still go through the network stack (localhost).=C2=A0 =
So even
            though there's no actual network *hardware*<br>
            =C2=A0 involved, you're still paying the network stack costs.=
<br>
            <br>
            <br>
            <o:p></o:p></p>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">When using the UHD API on the ARM does
              it still go through the MPM?<o:p></o:p></p>
          </blockquote>
          <p class=3D"MsoNormal">Yes, as far as I know.<br>
            <br>
            <br>
            <o:p></o:p></p>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">Is there a way to bypass MPM?<o:p></o:=
p></p>
          </blockquote>
          <p class=3D"MsoNormal">Well, all the source code is freely
            available--so you could figure out how MPM turns those calls
            into actual "knobs"<br>
            =C2=A0 being tweaked on the hardware, and tweak those knobs
            yourself in your own code.<br>
            <br>
            <br>
            <br>
            <o:p></o:p></p>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <div>
              <div
style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0in=
 0in">
                <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech <a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    moz-do-not-send=3D"true">
                    &lt;patchvonbraun@gmail.com&gt;</a> <br>
                  <b>Sent:</b> Thursday, November 16, 2023 1:36 PM<br>
                  <b>To:</b> <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">usrp-users@lists.ettus.com</a><br>
                  <b>Subject:</b> [USRP-users] Re: peek32/poke32 slow<o:p=
></o:p></p>
              </div>
            </div>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <div>
              <table class=3D"MsoNormalTable" style=3D"background:#3F7FBF=
"
                cellspacing=3D"3" cellpadding=3D"0" border=3D"0">
                <tbody>
                  <tr>
                    <td style=3D"padding:.75pt .75pt .75pt .75pt">
                      <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-align:ce=
nter;line-height:12.0pt"
                        align=3D"center">
                        <strong><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;colo=
r:yellow">External
                            E-mail
                          </span></strong><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;colo=
r:yellow">---
                          CAUTION: This email originated from outside
                          GDMS. Do not click links or open attachments
                          unless you recognize the sender and know the
                          content is safe.
                        </span><o:p></o:p></p>
                    </td>
                  </tr>
                </tbody>
              </table>
              <p class=3D"MsoNormal">=C2=A0 <o:p></o:p></p>
              <div>
                <p class=3D"MsoNormal">On 16/11/2023 15:11,
                  Alvin.Begaye--- via USRP-users wrote:<o:p></o:p></p>
              </div>
              <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi =
I
                  am using an x410, and running through the
                  init_gain_block example,=C2=A0=C2=A0 using the high res=
olution
                  timer I am getting these results, which seem really
                  slow, is there a faster way to read/write registers?<o:=
p></o:p></p>
              </blockquote>
              <p class=3D"MsoNormal">I believe that on the X410,
                operations like that actually end up going through the
                MPM process that is running in the Linux PS<br>
                =C2=A0 slice on the FPGA.<br>
                <br>
                One can expect to pay various "latency tolls".=C2=A0 Ther=
e's
                app-land-to-kernel latency on your host, latency of the
                network stack,<br>
                =C2=A0 latency of the network media itself, and then all =
of
                those things in reverse order on the X410 side, since
                MPM is just a piece<br>
                =C2=A0 of software running as a normal app process in the
                Linux PS on the X410.<br>
                <br>
                It has never been the case that what amounts to "session
                parameter" settings were intended to be super-fast,
                because in general,<br>
                =C2=A0 those things happen at a MUCH MUCH slower pace tha=
n
                the signals themselves.<br>
                <br>
                <br>
                <br>
                <br>
                <o:p></o:p></p>
              <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                <p class=3D"MsoNormal"><span
                    style=3D"font-family:&quot;Courier New&quot;">Time
                    481.835 micro seconds.</span><o:p></o:p></p>
                <p class=3D"MsoNormal"><span
                    style=3D"font-family:&quot;Courier New&quot;">Gain
                    value read/write loopback successful!</span><o:p></o:=
p></p>
                <p class=3D"MsoNormal"><span
                    style=3D"font-family:&quot;Courier New&quot;">=C2=A0<=
/span><o:p></o:p></p>
                <p class=3D"MsoNormal">Here is the code.<o:p></o:p></p>
                <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                <p class=3D"MsoNormal"><span
                    style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=
=A0=C2=A0 t1 =3D
                    high_resolution_clock::now();</span><o:p></o:p></p>
                <p class=3D"MsoNormal"><span
                    style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=
=A0=C2=A0
                    gain_block-&gt;set_gain_value(new_gain_value);</span>=
<o:p></o:p></p>
                <p class=3D"MsoNormal"><span
                    style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=
=A0=C2=A0
                    const uint32_t gain_value_read =3D
                    gain_block-&gt;get_gain_value();</span><o:p></o:p></p=
>
                <p class=3D"MsoNormal"><span
                    style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=
=A0=C2=A0 t2 =3D
                    high_resolution_clock::now();</span><o:p></o:p></p>
                <p class=3D"MsoNormal"><span
                    style=3D"font-family:&quot;Courier New&quot;">=C2=A0<=
/span><o:p></o:p></p>
                <p class=3D"MsoNormal"><span
                    style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=
=A0=C2=A0
                    delta_time =3D
                    duration_cast&lt;duration&lt;double&gt;&gt;(t2-t1);</=
span><o:p></o:p></p>
                <p class=3D"MsoNormal"><span
                    style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=
=A0=C2=A0
                    std::cout &lt;&lt; std::flush ;//&lt;&lt; std::endl;<=
/span><o:p></o:p></p>
                <p class=3D"MsoNormal"><span
                    style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=
=A0=C2=A0
                    std::cout &lt;&lt; "Time " &lt;&lt;
                    delta_time.count()*1000000.0 &lt;&lt; " micro
                    seconds." &lt;&lt; std::endl;</span><o:p></o:p></p>
                <p class=3D"MsoNormal"><br>
                  <br>
                  <br>
                  <o:p></o:p></p>
                <pre>_______________________________________________<o:p>=
</o:p></pre>
                <pre>USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a><o:p></o:p></pre>
                <pre>To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
              </blockquote>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            </div>
          </blockquote>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------SgDmt8MuZFXLhH9rfrSIjzQV--

--===============3509498239204687914==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3509498239204687914==--
