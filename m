Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6946DD191
	for <lists+usrp-users@lfdr.de>; Tue, 11 Apr 2023 07:23:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 727C63845D0
	for <lists+usrp-users@lfdr.de>; Tue, 11 Apr 2023 01:23:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681190582; bh=xu7nOOyWTmbzwjl6XnF6f3dK+cV4ORmCVz3YunmkAAM=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=suT6oPLH8rdzWDXqMWpcFPRtfiaeWQ60T8Ug/FzBoIWgRPeySNpIe3o5ZIi91WpPM
	 /InlA7fyQQ0oiJu+EnjuCnP3LasOnPN8VsnVdyUaLMSlnkdN40oWDoe9CJUSLKZX/f
	 NgR0x9UWHdAhBehXyr1K/u0blc70MkhBTxL39yuEW9I8VmVkcMxlNIx5q8/Vf7Wdzc
	 +P4WphnTwm/u/DPsuT7w7zbfImELWOP6OfuyggqAWoGmJFAl74541eK11L+ycYMLg3
	 /ey5f82Qf5NLVu2YF2MfoDxrC5NuKOdMPrkKYoFordbsxUz9Efk8URejJImisiRAPJ
	 YTZmHCRKNUtGQ==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 3CE513844B1
	for <USRP-users@lists.ettus.com>; Tue, 11 Apr 2023 01:22:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GSMkjENF";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id om8so5649063qvb.3
        for <USRP-users@lists.ettus.com>; Mon, 10 Apr 2023 22:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681190548; x=1683782548;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GcnooeWplb8ku2MXvZrPUCinw1aR69/doDMLpmxYiwU=;
        b=GSMkjENFJW891R3x0HwaUROMjgwL2nUVLYoUMxO0bcXh8jcuWzrfgHzjywuJqSZ7Lk
         MlextdQYKRUpIw/tjEYnvT60SVOssNvIzLP3NVT3I1Fv5brGZbBL23WB1LSDO6CHo1L4
         2biR4OiewXOPTT1GadDqO22TGRPfTBHeu3CyGEUh1cySTLsqFuHOR+tWGjbBAsHzGDum
         4wl0ScwdoQb7+A9qyxLNgxs2SToM5h2AKA+j8QdwrLHndYvJFgD1i/VQJQeQGXY6c6J0
         VW4M4qR+memQpPZbuMNtSsCYV5XO/Cwm4jnFJspMSvsYAnMZAYEEdv/GiM8RhpZUorAQ
         IXlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681190548; x=1683782548;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GcnooeWplb8ku2MXvZrPUCinw1aR69/doDMLpmxYiwU=;
        b=Qjns+OzDgOZG0VrWbMlRobWxZOyMs1njjMecSXGxtkG21mXb14sqgeE8YqHmnEsrwO
         JPNUzwWn6WJCHW0aAdYeC5Div8QSNCZnyjeDNlrMPjFi7k2jfwbD+4OM932QRz5QDC+N
         4KXWhB3bXFthhw8JRzwRmJRmevqEhGSGF0R3HF4OHOFtSBqjnSadp/CgarWe7ZlOCjky
         Hz5/YEYgkCAIsYtDBTEBDqHxXeneLUyltOYw1+bo6MQaDXt+i8ozNhjWn9nbnjxn+wBX
         Sa2R/+9ZecwPSfiyonCNPfOpOGp/96MpbymyKu/e93sxN8b3ajBKsNTRQtp1KTrG/lKV
         P84w==
X-Gm-Message-State: AAQBX9ezdCI66qAKzyBR+bk1a75qGtwEpVjjFcfvkXYTFUWVVv1tTI4t
	vBaepffTC/zuQ6GM90XrY9+A4q7/VLk=
X-Google-Smtp-Source: AKy350YEevoH2IYcJF0aKIX0tfeiY2RWiTdey/BYmce7+3U0J8ui3Z3IUUGJKNi3C9fgVK2AcM8BHA==
X-Received: by 2002:a05:6214:2a81:b0:5ac:d562:4ea8 with SMTP id jr1-20020a0562142a8100b005acd5624ea8mr19905576qvb.9.1681190548427;
        Mon, 10 Apr 2023 22:22:28 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id k7-20020ad44207000000b005e99f302b31sm2220265qvp.1.2023.04.10.22.22.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Apr 2023 22:22:28 -0700 (PDT)
Message-ID: <569d3487-6006-c2f1-96d8-bb36f2f9017d@gmail.com>
Date: Tue, 11 Apr 2023 01:22:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: "Shenk, Trey E" <trey.shenk@pnnl.gov>
References: <CO6PR09MB811819719BDAE76900DEF93AF9959@CO6PR09MB8118.namprd09.prod.outlook.com>
 <15820636-B0CB-4B9D-98DA-76820042D215@gmail.com>
 <CO6PR09MB8118AE8209619F8C193A4AA3F9959@CO6PR09MB8118.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CO6PR09MB8118AE8209619F8C193A4AA3F9959@CO6PR09MB8118.namprd09.prod.outlook.com>
Message-ID-Hash: FNIMK4OFTRZIHBSYNFNZI4D2HNYM22U7
X-Message-ID-Hash: FNIMK4OFTRZIHBSYNFNZI4D2HNYM22U7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Harmonic Distortion with B205mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FNIMK4OFTRZIHBSYNFNZI4D2HNYM22U7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7855357666578789354=="

This is a multi-part message in MIME format.
--===============7855357666578789354==
Content-Type: multipart/alternative;
 boundary="------------ewTZrS2XKjB056c0RwFl3AaD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ewTZrS2XKjB056c0RwFl3AaD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 10/04/2023 14:28, Shenk, Trey E wrote:
>
> I first tried turning the gain down. What I saw was that the even=20
> harmonics (2*fundamental, =E2=80=A6) did not change power, and the odd=20
> harmonics decreased by the same amount as the fundamental. This means=20
> that the dBc for the odd harmonics stayed the same with decreasing gain=
.
>
> Decreasing the baseband amplitude had the exact same effect. Even=20
> harmonics stayed at the same power level, odd harmonics decreased=20
> while maintaining dBc.
>
What is the nature of the modulating signal?

If you use an example app like "tx_waveforms" with, let's say, 10kHz SIN=20
signal, what are the harmonic results?


> *From:* Marcus D Leech <patchvonbraun@gmail.com>
> *Sent:* Monday, April 10, 2023 8:39 AM
> *To:* Shenk, Trey E <trey.shenk@pnnl.gov>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Harmonic Distortion with B205mini
>
> Check twice before you click! This email originated from outside PNNL.
>
> Turn down the RF gain a bit as well as the baseband amplitude. Does=20
> this make any difference?
>
> Sent from my iPhone
>
>
>
>     On Apr 10, 2023, at 9:41 AM, Shenk, Trey E via USRP-users
>     <usrp-users@lists.ettus.com> wrote:
>
>     =EF=BB=BF
>
>     I'm using a B205mini to transmit signals. When transmitting, I can
>     see copies of the SOI at harmonics of the center frequency. I ran
>     some measurements of total harmonic distortion, and found it to
>     range from 39% with a 100MHz to 23% with a 1GHz carrier.=C2=A0The
>     second harmonic is <-50dBc, but the third harmonic is usually
>     around -10dBc.
>
>     My main concern is for the lower frequency carriers, like 100MHz,
>     because multiple harmonics will show up on a spectrum analyzer set
>     to a wideband. I've looked at putting an RF filter at the output,
>     but I need the system to be able to switch transmit center
>     frequencies in a range from 100MHz to 5GHz.
>
>     Is it possible to reduce the harmonics by some hardware setting
>     (driving with gnruadio)?
>
>     Thanks,
>     Trey
>
>     <carrier_freqsweep_fc0200M_gain55.png>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------ewTZrS2XKjB056c0RwFl3AaD
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 10/04/2023 14:28, Shenk, Trey E
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CO6PR09MB8118AE8209619F8C193A4AA3F9959@CO6PR09MB8118.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}span.EmailStyle22
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
        <p class=3D"MsoNormal">I first tried turning the gain down. What =
I
          saw was that the even harmonics (2*fundamental, =E2=80=A6) did =
not
          change power, and the odd harmonics decreased by the same
          amount as the fundamental. This means that the dBc for the odd
          harmonics stayed the same with decreasing gain.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Decreasing the baseband amplitude had the
          exact same effect. Even harmonics stayed at the same power
          level, odd harmonics decreased while maintaining dBc.</p>
      </div>
    </blockquote>
    What is the nature of the modulating signal?<br>
    <br>
    If you use an example app like "tx_waveforms" with, let's say, 10kHz
    SIN signal, what are the harmonic results?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CO6PR09MB8118AE8209619F8C193A4AA3F9959@CO6PR09MB8118.namprd09=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
              <b>Sent:</b> Monday, April 10, 2023 8:39 AM<br>
              <b>To:</b> Shenk, Trey E <a class=3D"moz-txt-link-rfc2396E"=
 href=3D"mailto:trey.shenk@pnnl.gov">&lt;trey.shenk@pnnl.gov&gt;</a><br>
              <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
              <b>Subject:</b> Re: [USRP-users] Harmonic Distortion with
              B205mini<o:p></o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div style=3D"border:none;border-left:solid #D77600
          6.0pt;padding:0in 0in 0in 0in;font-size:1.15rem">
          <p class=3D"MsoNormal"
            style=3D"text-align:center;background:#F7E3CC" align=3D"cente=
r">
            <span
              style=3D"font-family:&quot;Arial&quot;,sans-serif;color:bla=
ck">Check
              twice before you click! This email originated from outside
              PNNL.</span><span
              style=3D"font-family:&quot;Arial&quot;,sans-serif"><o:p></o=
:p></span></p>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">Turn down the RF gain a bit as well as
            the baseband amplitude. Does this make any difference?
            <o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>=C2=
=A0</o:p></p>
            <div>
              <p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><br>
                <br>
                <o:p></o:p></p>
              <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On =
Apr
                  10, 2023, at 9:41 AM, Shenk, Trey E via USRP-users
                  &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">usrp-users@lists.ettus.com</a>&gt;
                  wrote:<o:p></o:p></p>
              </blockquote>
            </div>
            <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
              <div>
                <p class=3D"MsoNormal">=EF=BB=BF <o:p></o:p></p>
                <p style=3D"background:white"><span
                    style=3D"font-size:10.5pt;font-family:&quot;Segoe
                    UI&quot;,sans-serif;color:#353C41">I'm using a
                    B205mini to transmit signals. When transmitting, I
                    can see copies of the SOI at harmonics of the center
                    frequency. I ran some measurements of total harmonic
                    distortion, and found it to range from 39% with a
                    100MHz to 23% with a 1GHz carrier.=C2=A0The second
                    harmonic is &lt;-50dBc, but the third harmonic is
                    usually around -10dBc.
                  </span><o:p></o:p></p>
                <p style=3D"background:white;box-sizing:
                  border-box;font-variant-ligatures:
                  normal;font-variant-caps: normal;orphans:
                  2;text-align:start;widows:
                  2;-webkit-text-stroke-width:
                  0px;text-decoration-thickness:
                  initial;text-decoration-style:
                  initial;text-decoration-color:
                  initial;word-spacing:0px">
                  <span style=3D"font-size:10.5pt;font-family:&quot;Segoe
                    UI&quot;,sans-serif;color:#353C41">My main concern
                    is for the lower frequency carriers, like 100MHz,
                    because multiple harmonics will show up on a
                    spectrum analyzer set to a wideband. I've looked at
                    putting an RF filter at the output, but I need the
                    system to be able to switch transmit center
                    frequencies in a range from 100MHz to 5GHz.</span><o:=
p></o:p></p>
                <p style=3D"background:white;box-sizing:
                  border-box;font-variant-ligatures:
                  normal;font-variant-caps: normal;orphans:
                  2;text-align:start;widows:
                  2;-webkit-text-stroke-width:
                  0px;text-decoration-thickness:
                  initial;text-decoration-style:
                  initial;text-decoration-color:
                  initial;word-spacing:0px">
                  <span style=3D"font-size:10.5pt;font-family:&quot;Segoe
                    UI&quot;,sans-serif;color:#353C41">Is it possible to
                    reduce the harmonics by some hardware setting
                    (driving with gnruadio)?=C2=A0</span><o:p></o:p></p>
                <p style=3D"background:white;box-sizing:
                  border-box;font-variant-ligatures:
                  normal;font-variant-caps: normal;orphans:
                  2;text-align:start;widows:
                  2;-webkit-text-stroke-width:
                  0px;text-decoration-thickness:
                  initial;text-decoration-style:
                  initial;text-decoration-color:
                  initial;word-spacing:0px">
                  <span style=3D"font-size:10.5pt;font-family:&quot;Segoe
                    UI&quot;,sans-serif;color:#353C41">Thanks,<br>
                    Trey</span><o:p></o:p></p>
                <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                <div>
                  <p class=3D"MsoNormal">&lt;carrier_freqsweep_fc0200M_ga=
in55.png&gt;<o:p></o:p></p>
                </div>
                <p class=3D"MsoNormal">__________________________________=
_____________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">usrp-users@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">
                    usrp-users-leave@lists.ettus.com</a><o:p></o:p></p>
              </div>
            </blockquote>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------ewTZrS2XKjB056c0RwFl3AaD--

--===============7855357666578789354==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7855357666578789354==--
