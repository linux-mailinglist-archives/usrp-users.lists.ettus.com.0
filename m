Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD867DE7F7
	for <lists+usrp-users@lfdr.de>; Wed,  1 Nov 2023 23:16:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D2A9338595E
	for <lists+usrp-users@lfdr.de>; Wed,  1 Nov 2023 18:16:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1698877013; bh=V74Nokv0jOvQ/P40itHlrb6MkLPzTRaSMr5NOH++Dis=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=y82hs1SWJqM7gmhy+VX4iMc0PX9vVdwX2uRMrDy16T04tLpAVaR7mvIy04QZvEZC4
	 MnC0K0OzFmphe6DRq3Zd8ZJRr77b3pyoiyzYR6Q3dUAWphjR+F31hpBjbXhpojPXD3
	 3tt1hyegTe09b8/87oh0o5SP+8g8UTZB19XrRXz/HW/Qlo4F6fPmjo1lmhfRzHv1Fe
	 Lz/KwNaD1+u68ElHBipT1OlQEzXRxqZkXvfPaQjMizqqsloJ+nSCipOpsni4nRqRSn
	 0xbMGjL6u0M7wcmDc7pe9xV4vGggc/oMVdTDuWnmrRkPXm5rtv3YGa3YPArdsnBbk2
	 uOUHzRpL6x6yA==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 27E9E3854A3
	for <usrp-users@lists.ettus.com>; Wed,  1 Nov 2023 18:15:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="c9wQ4AKx";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-778711ee748so14453985a.2
        for <usrp-users@lists.ettus.com>; Wed, 01 Nov 2023 15:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698876953; x=1699481753; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/FN6A6N9gkr9DDzsb/UR8cPaiV587rxUoi0sN8mx51Q=;
        b=c9wQ4AKxiR2WngIAsbdMYMuXbLLJ+gsJpg+WZjZy63BeR5ZHdMJX3q7A/u5iOPBwQH
         2kl9x7wbP4SbfFheeBD5brzsmj2exoWFqo5DzCr+yYWngyA5P64KJ/bJrmdnuVUc5C5v
         6Lok5Rj4sLJ1zEHFscXi8knEbDTBligYs7Y7832wlHAQIJiIzTkocLfZ2wKY/9Ix67jq
         Uz0hfgJLik0EK8p4f9MjfnNbjB/IQLVBnm2HjqIUZXMkcghLQCmzJlBhhcRrmOm6txzL
         6NUWhB1nBjTP7pKD9mgo9mfsrMZauH1I1eOuLzA0aKO/J1y33chnSRB21nmo8ZiJSztT
         RCdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698876953; x=1699481753;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/FN6A6N9gkr9DDzsb/UR8cPaiV587rxUoi0sN8mx51Q=;
        b=Zrp5l2p2apgwMeCOYd9Qnf7wMzwJIXoxAJ/81RBcrkkZL/BMTCb+GMPnAStpZ73iwa
         1LJaZ7Ca8Nozh9B+/i9/HgRUMaw9eMkM3qES+gss28B+e3YoRX9ZZ0n83RYjHgf3N3eO
         jsy2Entl/w9VnZglB7lfjIal/S6SMK4hFC0tamgHmdYuMM6uyBGEhhqLmF51TFQMtGid
         D0s+1+O5fxMMacfBU0Nj6E74wCF5UWef/9Vq4yPbN7lAMkiIACjTeVb4LJUGyjikZXC1
         AxJKY3l7y0yo8fMoKIu2xfyUg5XofU+Slx64c6QI71Owqr5YfeXX7LxyydxV69N1aysO
         1q0w==
X-Gm-Message-State: AOJu0YwlxedNUrkgEdpmve2OLPv8IIuo/z8S14flaTMIp+QevE2SRvxp
	fbYXqNddXZcM/rlN/3OjJts=
X-Google-Smtp-Source: AGHT+IEAkWdKD5lHIcTB5ZHfyFV1LUUeJirqrfiBOj3UeFG+QdLleDWU9Io7t0AfHZQNs3OH/Btnog==
X-Received: by 2002:a05:620a:24d3:b0:778:b30b:9834 with SMTP id m19-20020a05620a24d300b00778b30b9834mr19566051qkn.33.1698876953465;
        Wed, 01 Nov 2023 15:15:53 -0700 (PDT)
Received: from [192.168.2.182] (bras-base-smflon1825w-grc-06-174-88-54-173.dsl.bell.ca. [174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id l9-20020a05620a0c0900b0077580becd52sm1819601qki.103.2023.11.01.15.15.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Nov 2023 15:15:53 -0700 (PDT)
Message-ID: <7b722d43-7cf6-42e2-808f-f62937494a80@gmail.com>
Date: Wed, 1 Nov 2023 18:15:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Alvin.Begaye@gd-ms.com" <Alvin.Begaye@gd-ms.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BN2P110MB0948CE39707B3966A22ACAE5CAA7A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
 <fda9b390-0dc0-470a-bf84-ce16e2d5742d@gmail.com>
 <BN2P110MB0948BDD32B607C714324FD4FCAA7A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN2P110MB0948BDD32B607C714324FD4FCAA7A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: Z32SA54HXJLFSZVULTPZWCSJZTYEEIDU
X-Message-ID-Hash: Z32SA54HXJLFSZVULTPZWCSJZTYEEIDU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 gui
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z32SA54HXJLFSZVULTPZWCSJZTYEEIDU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6781107388417823586=="

This is a multi-part message in MIME format.
--===============6781107388417823586==
Content-Type: multipart/alternative;
 boundary="------------0USbuiRhDgqhWxT1fRZ2njZH"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0USbuiRhDgqhWxT1fRZ2njZH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 01/11/2023 18:08, Alvin.Begaye@gd-ms.com wrote:
>
> Thanks.=C2=A0 we just noticed these in /usr/bin
>
> uhd_adc_self_cal uhd_cal_tx_iq_balance=C2=A0 uhd_find_devices=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=20
> uhd_rx_cfile uhd_siggen_gui
>
> uhd_cal_rx_iq_balance uhd_config_info=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 uhd_image_loader=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20
> uhd_rx_nogui uhd_usrp_probe
>
> uhd_cal_tx_dc_offset *uhd_fft *uhd_images_downloader uhd_siggen
>
> when I looked at uhd_fft as an example it is a gui app, I thought=20
> perhaps there as VNC, or xserver that needed to be configured.=C2=A0=C2=
=A0 Even=20
> uhd_siggen_gui suggest there is a GUI.=C2=A0 =C2=A0=C2=A0If these aren=E2=
=80=99t part of the=20
> normal install, I=E2=80=99m not sure how they got there I would have to=
 do=20
> some digging, just got excited that we could actually see an FFT=20
> visually. I assume we can not run uhd_fft based on your response.
>
It turns out that Ettus/NI have gone back to packaging GR on the system=20
images, which I think is why uhd_fft is there.
 =C2=A0 You might look at using ssh -X=C2=A0 to support that.=C2=A0 I don=
't think=20
Ettus/NI package openvnc or TigerVNC or any of the others
 =C2=A0=C2=A0 on the system image...


But really, you can just install Gnu Radio + relevant UHD on your *HOST*=20
and do things from there.=C2=A0 For one, you get MUCH MUCH
 =C2=A0 higher sample-rate performance that way--the CPU on the X410 (and=
=20
other USRPs that have an embedded Linux) is not
 =C2=A0 terribly powerful.


> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, November 1, 2023 2:34 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: X410 gui
>
> *External E-mail *--- CAUTION: This email originated from outside=20
> GDMS. Do not click links or open attachments unless you recognize the=20
> sender and know the content is safe.
>
> On 01/11/2023 17:03, Alvin.Begaye--- via USRP-users wrote:
>
>     Is there a GUI interface to the X410? I noticed there are some
>     gnuradio type programs when I ssh into it.=C2=A0 How are those exec=
uted?
>
>     Thank You!
>
>      1. *Alvin*
>
> The Linux image running on the X410 is there largely to run MPM to=20
> control the radio hardware you should NOT
> =C2=A0 think of it as a place to host your applications.=C2=A0 It's not=
 powerful=20
> enough, and AFAIR, Ettus/NI DO NOT install
> =C2=A0 Gnu Radio by default on the filesystem image.
>
> You may be thinking of some of the example programs, which would be in=20
> /usr/lib/uhd/examples.=C2=A0 They don't use
> =C2=A0 Gnu Radio and I think only one of them has an interface that cou=
ld=20
> even remotely be called "GUI"--the "curses_fft"
> =C2=A0 example.
>
>
>
>
>
>     _______________________________________________
>
>     USRP-users mailing list --usrp-users@lists.ettus.com
>
>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>

--------------0USbuiRhDgqhWxT1fRZ2njZH
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 01/11/2023 18:08,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:Alvin.Begaye@g=
d-ms.com">Alvin.Begaye@gd-ms.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB0948BDD32B607C714324FD4FCAA7A@BN2P110MB0948.NAMP110.=
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
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}@font-face
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
	font-family:"Courier New";}p.MsoListParagraph, li.MsoListParagraph, div.=
MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}span.EmailStyle23
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0in;}ul
	{margin-bottom:0in;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Thanks.=C2=A0 we just noticed these in /us=
r/bin<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:2.0pt;margin-right:0in;margin-bottom:2.0pt;ma=
rgin-left:0in;text-autospace:none">
          <span
style=3D"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif;col=
or:black">uhd_adc_self_cal=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            uhd_cal_tx_iq_balance=C2=A0 uhd_find_devices=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 uhd_rx_cfile=C2=A0
            uhd_siggen_gui</span><o:p></o:p></p>
        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:2.0pt;margin-right:0in;margin-bottom:2.0pt;ma=
rgin-left:0in;text-autospace:none">
          <span
style=3D"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif;col=
or:black">uhd_cal_rx_iq_balance=C2=A0
            uhd_config_info=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd=
_image_loader=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd_rx_nogui=C2=A0
            uhd_usrp_probe</span><o:p></o:p></p>
        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:2.0pt;margin-right:0in;margin-bottom:2.0pt;ma=
rgin-left:0in;text-autospace:none">
          <span
style=3D"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif;col=
or:black">uhd_cal_tx_dc_offset=C2=A0=C2=A0
            <b>uhd_fft=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </b>uhd_images_downloader=C2=A0
            uhd_siggen</span><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">when I looked at uhd_fft as an example it
          is a gui app, I thought perhaps there as VNC, or xserver that
          needed to be configured.=C2=A0=C2=A0 Even uhd_siggen_gui sugges=
t there
          is a GUI.=C2=A0 =C2=A0=C2=A0If these aren=E2=80=99t part of the=
 normal install, I=E2=80=99m
          not sure how they got there I would have to do some digging,=C2=
=A0
          just got excited that we could actually see an FFT visually.=C2=
=A0=C2=A0
          I assume we can not run uhd_fft based on your response.</p>
      </div>
    </blockquote>
    It turns out that Ettus/NI have gone back to packaging GR on the
    system images, which I think is why uhd_fft is there.<br>
    =C2=A0 You might look at using ssh -X=C2=A0 to support that.=C2=A0 I =
don't think
    Ettus/NI package openvnc or TigerVNC or any of the others<br>
    =C2=A0=C2=A0 on the system image...<br>
    <br>
    <br>
    But really, you can just install Gnu Radio + relevant UHD on your
    *HOST* and do things from there.=C2=A0 For one, you get MUCH MUCH<br>
    =C2=A0 higher sample-rate performance that way--the CPU on the X410 (=
and
    other USRPs that have an embedded Linux) is not<br>
    =C2=A0 terribly powerful.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB0948BDD32B607C714324FD4FCAA7A@BN2P110MB0948.NAMP110.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div
style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0in=
 0in">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
              <b>Sent:</b> Wednesday, November 1, 2023 2:34 PM<br>
              <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> [USRP-users] Re: X410 gui<o:p></o:p></p>
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
            <p class=3D"MsoNormal">On 01/11/2023 17:03, Alvin.Begaye---
              via USRP-users wrote:<o:p></o:p></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal">Is there a GUI interface to the X410?=C2=
=A0=C2=A0
              I noticed there are some gnuradio type programs when I ssh
              into it.=C2=A0 How are those executed?<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">Thank You!<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <ol style=3D"margin-top:0in" type=3D"1" start=3D"1">
              <li class=3D"MsoListParagraph"
style=3D"color:black;margin-left:0in;mso-list:l1 level1 lfo3;background:w=
hite;vertical-align:top">
                <b>Alvin</b><o:p></o:p></li>
            </ol>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          </blockquote>
          <p class=3D"MsoNormal">The Linux image running on the X410 is
            there largely to run MPM to control the radio hardware you
            should NOT<br>
            =C2=A0 think of it as a place to host your applications.=C2=A0=
 It's
            not powerful enough, and AFAIR, Ettus/NI DO NOT install<br>
            =C2=A0 Gnu Radio by default on the filesystem image.<br>
            <br>
            You may be thinking of some of the example programs, which
            would be in /usr/lib/uhd/examples.=C2=A0 They don't use<br>
            =C2=A0 Gnu Radio and I think only one of them has an interfac=
e
            that could even remotely be called "GUI"--the "curses_fft"<br=
>
            =C2=A0 example.<br>
            <br>
            <br>
            <br>
            <o:p></o:p></p>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal"><br>
              <br>
              <o:p></o:p></p>
            <pre>_______________________________________________<o:p></o:=
p></pre>
            <pre>USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><o:p></o:p></pre>
            <pre>To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users-leave@lists.ettus.com</a><o:p></o:p></pre>
          </blockquote>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------0USbuiRhDgqhWxT1fRZ2njZH--

--===============6781107388417823586==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6781107388417823586==--
