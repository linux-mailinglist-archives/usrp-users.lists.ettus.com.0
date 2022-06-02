Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AA653B56D
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jun 2022 10:51:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 677DF3847C4
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jun 2022 04:51:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654159908; bh=P+n3DMk8yZCrmoPa5enkOrtVFck3BIhPiyM4el7NGQI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cQHVLj0mgy2YLuB1dZ7cJ0IyT0JPUl9dWu1VSgwzOUXRPS64X3PNAOyIilZ6FdXpd
	 IQr3bzgUGuU2odui5BcqyiZHWTsfByNHPu+jFDQllgHVT/y+7Jate3o5SgAMXQNTkY
	 E3fNd/fFG6i0Lsm1O7AdUifKNMArdzdhBAMKSCzlzpeJ+OgtY/lovlTHdmTK5X/exH
	 vEeXUTEDHX5N9y4PbJ6WSHvHjkFmHi9Uu7BhfbyG5y3h9734/pt86RiUPKXtn7mAAA
	 Gx8linVzO9T9OYIybS0egbgaK+D5zUM56CY+K9P3LnCTRyzjIqFTkZMDN+gXu4emsI
	 IT3qT1jfYDuVQ==
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 83267384750
	for <usrp-users@lists.ettus.com>; Thu,  2 Jun 2022 04:50:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SwFzQWvQ";
	dkim-atps=neutral
Received: by mail-pg1-f182.google.com with SMTP id r71so4245615pgr.0
        for <usrp-users@lists.ettus.com>; Thu, 02 Jun 2022 01:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=n1YwclHR57w5tNMS3u4T9KyyjJmUaFlG+Ai9iPFXiXo=;
        b=SwFzQWvQbsrTAbXhNI4nzPtbBcJG7eEnBJbPpXVRT78qpMXJeVw4qFEOhZyMkkfeOs
         d29xscCcGcX+e0KEO7jMJw3oAh0k3caHGOmRfjZp5pzF4aJe35bzOa8bd7DBDBrPjTOC
         i69n2lbaBGk4HGRNyeYOg/c277O7cUI9E/Bb3EGhk1CIgpMuiZNUQCqhVDEbQjmRth49
         U/ETOHNjINTv9jAJsuEU680fpPutMaxHTRt1lCfvdcMrZDtRd/o5rdu1I06LUkmrPlVQ
         6zT5wxDn2jmfuRawzrvuW3s3C7DCo07NlLUmxOj51yhmcKKeWm8EGzZPswD5N6i5XX4P
         wL2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=n1YwclHR57w5tNMS3u4T9KyyjJmUaFlG+Ai9iPFXiXo=;
        b=kSDVK3CAXa8xpzte9BxdeymTqNaITv3a2hI3XgD51tUI3l7uhfcuNad7cPIkHItsJC
         MFtO63GbuQc5bsqGQmI5P7picyKiNwt2LV9SFvVl4u80xCJ5uj5t2ZapbFnEsxEbg7OE
         F+2hwVBPQb4Ifu6+KnBxNzH1CK5azGeutUQhE0sYsV7R3V0aCFNREX/2fsshI2mderQX
         qgSb/bNTG4hVq6vKKBdNgVi967yJEfbYVnbwTK2LZ8MQNVFJKvdLPyw7x5KgCZUM2jH7
         ictIr+foG7pIWT+YWUbTS1IuiMo8P8MTyi5m0gnxmePoJU9vzVerCfcuHewgn1a1NAiC
         CQUQ==
X-Gm-Message-State: AOAM532xFuwgvSfnxa5O3N60r9dnSNGIvGK4Ijusyk3Y6VEB2Tn2td9H
	/PXSPLvGJ3XV+zAddjGM7f6SCjvVzLOtZcVT754=
X-Google-Smtp-Source: ABdhPJwbv8ieP9huROmDh3XFUDGQxtaPJ8y+NXgTjCiXo0fq7DvjT1AEAMcYUy/8T1XJGQ/AdopMKF6WlYI5iK3qlaA=
X-Received: by 2002:a05:6a00:179a:b0:51b:cd4c:3e83 with SMTP id
 s26-20020a056a00179a00b0051bcd4c3e83mr1377403pfg.10.1654159847562; Thu, 02
 Jun 2022 01:50:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ28uHF+da1ghihZpZty73+VGq+8KB3cxFZQJFAoC1=5HAUcZw@mail.gmail.com>
 <64c3344d-6e3e-3242-eaab-f42c2c10870c@gmail.com> <PH1P110MB1665FC32BA7507798FE37A2AB7DF9@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
 <PH1P110MB16654537FBCD2DEC1E30AC4EB7DF9@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <PH1P110MB16654537FBCD2DEC1E30AC4EB7DF9@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
From: gokul sani <cnsgokul@gmail.com>
Date: Thu, 2 Jun 2022 10:50:36 +0200
Message-ID: <CAJ28uHGt92rQHVPU0OxNBKKzBh1PoNaxSHf2YMT6jGxEF5aCmA@mail.gmail.com>
To: David Raeman <david@synopticengineering.com>
Message-ID-Hash: 66OHG4BPFB2IQKTPTELXMVP6W27WFJR7
X-Message-ID-Hash: 66OHG4BPFB2IQKTPTELXMVP6W27WFJR7
X-MailFrom: cnsgokul@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPS invalid reply
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/66OHG4BPFB2IQKTPTELXMVP6W27WFJR7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7150656283736493889=="

--===============7150656283736493889==
Content-Type: multipart/alternative; boundary="0000000000001da1e805e0731a6c"

--0000000000001da1e805e0731a6c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

Thank you for your comments.
Markus, I reseated the module, still get the same error. Yes, It is the one
supplied by ettus.

WR,
Gokul

On Wed, Jun 1, 2022 at 6:55 PM David Raeman <david@synopticengineering.com>
wrote:

> .. Sorry, just realized the GPSDO apparently does use SCPI-99 commands. :=
)
>
>
>
> *From:* David Raeman
> *Sent:* Wednesday, June 1, 2022 12:51 PM
> *To:* Marcus D. Leech <patchvonbraun@gmail.com>;
> usrp-users@lists.ettus.com
> *Subject:* RE: [USRP-users] Re: GPS invalid reply
>
>
>
> The error string is also suspicious.. *IDN? is a command used to identify
> lab instruments that implement SCPI protocols, and I=E2=80=99m not famili=
ar with
> any GPS receiver that interfaces using SCPI. Is it possible you have some
> kind of instrument-control service on your computer (LabView, Keysight IO=
,
> etc) which is trying to talk to the USRP as if it were a lab instrument?
>
>
>
>
>
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, June 1, 2022 12:43 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: GPS invalid reply
>
>
>
> On 2022-06-01 11:19, gokul sani wrote:
>
> Dear USRP Community,
>
>
>
> I am using usrp b210 with gpsdo. But "uhd_usrp_probe" gave me an error.
>
> -*-[ERROR] [GPS] GPS invalid reply "scpi > *IDN?*
>
> The gps antenna is tested with a different b210 and received the lock.
>
> last week, it was working fine. No apparent changes were made.! Please
> provide any insights of yours.
>
>
>
>
>
> uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
> UHD_3.15.0.HEAD-0-gaea0e2de
> [INFO] [B200] Loading firmware image:
> /usr/local/share/uhd/images/usrp_b200_fw.hex...
> [INFO] [B200] Detected Device: B210
> [INFO] [B200] Loading FPGA image:
> /usr/local/share/uhd/images/usrp_b210_fpga.bin...
> [INFO] [B200] Operating over USB 3.
> [INFO] [B200] Detecting internal GPSDO....
>
> *[ERROR] [GPS] GPS invalid reply "scpi > *IDN? ", assuming none available=
*
> [INFO] [GPS] No GPSDO found
> [INFO] [B200] Initialize CODEC control...
> [INFO] [B200] Initialize Radio control...
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Setting master clock rate selection to 'automatic'.
> [INFO] [B200] Asking for clock rate 16.000000 MHz...
> [INFO] [B200] Actually got clock rate 16.000000 MHz.
>   _____________________________________________________
>  /
> |       Device: B-Series Device
> |     _____________________________________________________
> |    /
>
>
>
> ..
>
> .
>
> ..
>
>
>
>
>
> Thank you,
>
> Gokul
>
>
>
> _______________________________________________
>
> USRP-users mailing list -- usrp-users@lists.ettus.com
>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> You could try carefully re-seating your GPSDO module.  Is this module one
> supplied by Ettus or an after-market one?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001da1e805e0731a6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>Thank you for your c=
omments. <br></div><div>Markus, I reseated the module, still get the same e=
rror. Yes, It is the one supplied by ettus.</div><div><br></div><div>WR,</d=
iv><div>Gokul<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Wed, Jun 1, 2022 at 6:55 PM David Raeman &lt;<a h=
ref=3D"mailto:david@synopticengineering.com">david@synopticengineering.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div style=3D"overflow-wrap: break-word;" lang=3D"EN-US">
<div class=3D"gmail-m_-5107720077984029054WordSection1">
<p class=3D"MsoNormal">.. Sorry, just realized the GPSDO apparently does us=
e SCPI-99 commands. :)<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div style=3D"border-color:currentcolor currentcolor currentcolor blue;bord=
er-style:none none none solid;border-width:medium medium medium 1.5pt;paddi=
ng:0in 0in 0in 4pt">
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;borde=
r-style:solid none none;border-width:1pt medium medium;padding:3pt 0in 0in"=
>
<p class=3D"MsoNormal"><b>From:</b> David Raeman <br>
<b>Sent:</b> Wednesday, June 1, 2022 12:51 PM<br>
<b>To:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank">patchvonbraun@gmail.com</a>&gt;; <a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> RE: [USRP-users] Re: GPS invalid reply<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The error string is also suspicious.. *IDN? is a com=
mand used to identify lab instruments that implement SCPI protocols, and I=
=E2=80=99m not familiar with any GPS receiver that interfaces using SCPI. I=
s it possible you have some kind of instrument-control
 service on your computer (LabView, Keysight IO, etc) which is trying to ta=
lk to the USRP as if it were a lab instrument?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div style=3D"border-color:currentcolor currentcolor currentcolor blue;bord=
er-style:none none none solid;border-width:medium medium medium 1.5pt;paddi=
ng:0in 0in 0in 4pt">
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;borde=
r-style:solid none none;border-width:1pt medium medium;padding:3pt 0in 0in"=
>
<p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech &lt;<a href=3D"mailto:p=
atchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
<br>
<b>Sent:</b> Wednesday, June 1, 2022 12:43 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] Re: GPS invalid reply<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On 2022-06-01 11:19, gokul sani wrote:<u></u><u></u>=
</p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<div>
<p class=3D"MsoNormal">Dear USRP Community,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I am using usrp b210 with gpsdo. But &quot;uhd_usrp_=
probe&quot; gave me an error.
<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">-<b>-[ERROR] [GPS] GPS invalid reply &quot;scpi &gt;=
 *IDN?</b><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The gps antenna is tested with a different b210 and =
received the lock.<u></u><u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">last week, it was working fine. No apparent changes =
were made.! Please provide any insights of yours.<u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">uhd_usrp_probe <br>
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.15.=
0.HEAD-0-gaea0e2de<br>
[INFO] [B200] Loading firmware image: /usr/local/share/uhd/images/usrp_b200=
_fw.hex...<br>
[INFO] [B200] Detected Device: B210<br>
[INFO] [B200] Loading FPGA image: /usr/local/share/uhd/images/usrp_b210_fpg=
a.bin...<br>
[INFO] [B200] Operating over USB 3.<br>
[INFO] [B200] Detecting internal GPSDO.... <br>
<b>[ERROR] [GPS] GPS invalid reply &quot;scpi &gt; *IDN?<br>
&quot;, assuming none available</b><br>
[INFO] [GPS] No GPSDO found<br>
[INFO] [B200] Initialize CODEC control...<br>
[INFO] [B200] Initialize Radio control...<br>
[INFO] [B200] Performing register loopback test... <br>
[INFO] [B200] Register loopback test passed<br>
[INFO] [B200] Performing register loopback test... <br>
[INFO] [B200] Register loopback test passed<br>
[INFO] [B200] Setting master clock rate selection to &#39;automatic&#39;.<b=
r>
[INFO] [B200] Asking for clock rate 16.000000 MHz... <br>
[INFO] [B200] Actually got clock rate 16.000000 MHz.<br>
=C2=A0 _____________________________________________________<br>
=C2=A0/<br>
| =C2=A0 =C2=A0 =C2=A0 Device: B-Series Device<br>
| =C2=A0 =C2=A0 _____________________________________________________<br>
| =C2=A0 =C2=A0/<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">..<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">..<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thank you,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Gokul<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><u></u>=C2=A0<u></u></p=
>
<pre>_______________________________________________<u></u><u></u></pre>
<pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><u></u><u></u></pre>
<pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><u></u>=
<u></u></pre>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">You could try carefully=
 re-seating your GPSDO module.=C2=A0 Is this module one supplied by Ettus o=
r an after-market one?<u></u><u></u></p>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001da1e805e0731a6c--

--===============7150656283736493889==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7150656283736493889==--
