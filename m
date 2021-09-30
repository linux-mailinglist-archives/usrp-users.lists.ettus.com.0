Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4617041E12B
	for <lists+usrp-users@lfdr.de>; Thu, 30 Sep 2021 20:31:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 005C538480B
	for <lists+usrp-users@lfdr.de>; Thu, 30 Sep 2021 14:31:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="K5niF/hA";
	dkim-atps=neutral
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 773DE3844D4
	for <usrp-users@lists.ettus.com>; Thu, 30 Sep 2021 14:30:23 -0400 (EDT)
Received: by mail-oi1-f170.google.com with SMTP id 24so8536323oix.0
        for <usrp-users@lists.ettus.com>; Thu, 30 Sep 2021 11:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S5Ad7iIvhZV/D+GdNNvlU4UcElLXlivXzXL9enhNmeI=;
        b=K5niF/hAUQf2RY5yYhiQyczQV1V0rF2UcXOqcm2nFn4+uuRaTw08inJtbmYgLksulg
         /hBgPTaVLOgYrbu3j3z/Er3KqSetNqcKncj9GGBlC/VymoV79yn94CS4zyVLhkF91O1P
         YY2Wdc2OGzn/IO8VtAWMd18D2Bqs/uzdP+kj/1RJ+mommoZI0mouxe4GJjnC9xYo/ums
         FnlWF+pH2qLHFdIdGIsO7Ma9dsXUZTv3CpSyKQEfAELLqTNB9HsxKC+H6Y18Lmmz95f1
         JQ7Eev/e6ZMWumGXUW3MwaPvyv3MDvbvmV/141Tj3uBFTZbgLr97PwedsPfy/PwsO2k6
         qaKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S5Ad7iIvhZV/D+GdNNvlU4UcElLXlivXzXL9enhNmeI=;
        b=furaHR54PtyD/fPyfZeWl41kRoeiInMpBsGQBwvSV73tNI+KZHDKFr8ABPHVNa4XCO
         J+mQxuimdNUsTlKawokpxzln/4Nq5xQyeylCVLVMxP+JyCtcJxWU942TdrDca6Lalq0n
         fUN0Xlamll0mv5lWCd6NN6wLxRhKGRLrRvVThG3cSTwg5LH82o3pg4tTR6Fs7t0ksdsW
         f02s2Qgt2lVdyJZl7zn+9fsy0r3BeoGC1kZPYm9OG5h3cIlcqejV0QcXcNzEnREyIZ7a
         biIrWJpKfgN1V5TBw7jImpEllgziQEXbgm6X9CQ2Ieh/aI6Arp02s6fjtfGzSuI5ouAn
         EEpg==
X-Gm-Message-State: AOAM531oc/PMpqbSqDAFI6WzfCImRx8nxDzRrDbD48cdfZ8Z+6h3c3U+
	leguN5RBIwHJs4ZS+B+2xcBMjPZG0ez04WO2llXX2A==
X-Google-Smtp-Source: ABdhPJwHYJdLrrp4wQuAFCH3dmJ70vXHpkHDJ9amoSLZZh3JZRRZjj6OXAuDPwEtYZ+cP5ZCrB0sIj+emQQ9sqw4v5Y=
X-Received: by 2002:a54:4887:: with SMTP id r7mr626259oic.124.1633026622101;
 Thu, 30 Sep 2021 11:30:22 -0700 (PDT)
MIME-Version: 1.0
References: <CY1P110MB08211A4EDC3FF3B5A0C29EC8E3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
 <db842876-79a2-4807-fdf3-d86d03f2e29f@gmail.com> <CY1P110MB0821105DB4342C7D8C5A4AFCE3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <CY1P110MB0821105DB4342C7D8C5A4AFCE3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 30 Sep 2021 14:30:11 -0400
Message-ID: <CAB__hTSQL_ozNwJLnvyj+gpY+Nqo9xmj-=4Q1Njb98Nq-v2i5w@mail.gmail.com>
To: "Adam Bader (Proxy)" <adam.bader@oroliads.com>
Message-ID-Hash: 4ZVBCESDZAFCDZRD7YJBTZFLX55SZAYE
X-Message-ID-Hash: 4ZVBCESDZAFCDZRD7YJBTZFLX55SZAYE
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Amount of Radio Buffer in 4.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4ZVBCESDZAFCDZRD7YJBTZFLX55SZAYE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6741338318098335829=="

--===============6741338318098335829==
Content-Type: multipart/alternative; boundary="000000000000b8595205cd3aa32d"

--000000000000b8595205cd3aa32d
Content-Type: text/plain; charset="UTF-8"

So, then it sounds like you could use the stock version of benchmark_rate
(rather than your modified version) to demonstrate the issue.  Is this
correct? And, it sounds like the streaming is failing for just a single
channel at 62.5MS/s?
Rob

On Thu, Sep 30, 2021 at 2:13 PM Adam Bader (Proxy) <adam.bader@oroliads.com>
wrote:

> Setting has_time_spec to false after the initial send shows no change in
> behavior
>
> *Adam Bader*
>
> Principal Software Engineer, Orolia Defense & Security
>
> 1610 SW Main St Suite 202
>
> Ankeny, IA 50023
>
> ------------------------------
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Thursday, September 30, 2021 11:41 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: Amount of Radio Buffer in 4.1
>
> *CAUTION:* External email to ODS
>
> On 2021-09-30 11:21 a.m., Adam Bader (Proxy) wrote:
>
> We are having issues trying to run our application with the current
> version 4 releases of UHD. We are running successfully on version 3.13.
> I've been trying to create a simplified test scenario using a single output
> on a N310 and continue to see underruns and time errors on version 4.1.
>
> I'm using a modified benchmark_rate application trying to model our
> streaming implementation. My testing has been on a system running Ubuntu
> 18.04. The computer has a 10Gb card connected directly to port sfp1 on the
> radio. The radio is running the default HG fpga image. MTU is set to 9000.
>
> Data is transmitted at 62.5Msps in a continuous burst. Every packet is
> sent with an up to date time_spec. Our application builds up and sends 1ms
> worth of samples to the radio repeatedly (trying to pass the whole ms to
> send() as well as break them up into max_num_samp chunks shows no change in
> timing behavior). After resetting radio time to 0 the initial packet is
> time spec'd to 1.8 seconds to prime the radio buffer. There is no rx stream
> involved.
>
> I had the sample application poll radio time in parallel with sending data
> to the radio. The radio time thread prints out the result from get_time_now
> every 100ms. The transmission thread prints out the time_spec that was just
> transmitted once send returns. In 4.1 I can see streaming is effectively
> handling everything in 'real-time'. The radio times being printed line up
> identically with the time_spec that was just transmitted. Any delay in
> transmission results in immediate underruns and time errors. This same test
> when done with the 3.13 host library and another N310 using the 3.13
> firmware shows the sample just written being 150-200ms ahead of what the
> current radio time is.
>
> Is there anything that can be done to increase the amount of buffer
> available on the radio with the stock FPGA firmware? Is there something we
> need to rethink in our streaming implementation in UHD4? Appreciate any
> insights.
>
>
>
>
>
> *Are you able to do continuous (not-timed) streaming at 62.5Msps in your
> current configuration? *
>
> *CAUTION:* This email originated from outside of ODS. Do not click links
> or open attachments unless you recognize the sender and know the content is
> safe.
> _____________________________________
> The information contained in this e-mail and any attachments from Orolia
> may contain confidential and/or proprietary information, and is intended
> only for the named recipient to whom it was originally addressed. If you
> are not the intended recipient, any disclosure, distribution, or copying of
> this e-mail or its attachments is strictly prohibited. If you have received
> this e-mail in error, please notify the sender immediately by return e-mail
> and permanently delete the e-mail and any attachments.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b8595205cd3aa32d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>So, then it sounds like you could use the stock versi=
on of benchmark_rate (rather than your modified version) to demonstrate the=
 issue.=C2=A0 Is this correct? And, it sounds like the streaming is failing=
 for just a single channel at 62.5MS/s?</div><div>Rob</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 30, 2021=
 at 2:13 PM Adam Bader (Proxy) &lt;<a href=3D"mailto:adam.bader@oroliads.co=
m">adam.bader@oroliads.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Setting has_time_spec to false after the initial send shows no change in be=
havior</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_6662363519354545030Signature">
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<p style=3D"text-align:start;background-color:rgb(255,255,255);color:rgb(33=
,33,33);font-size:11pt;font-family:Calibri,sans-serif;margin:0px">
<b><span style=3D"margin:0px;font-size:10pt;font-family:Arial,sans-serif,se=
rif,EmojiFont;color:rgb(29,55,135)">Adam Bader</span></b></p>
<p style=3D"text-align:start;background-color:rgb(255,255,255);color:rgb(33=
,33,33);font-size:11pt;font-family:Calibri,sans-serif;margin:0px">
<span style=3D"margin:0px;font-size:10pt;font-family:Arial,sans-serif,serif=
,EmojiFont;color:rgb(127,127,127)">Principal Software=C2=A0Engineer, Orolia=
 Defense &amp; Security</span></p>
<p style=3D"text-align:start;background-color:rgb(255,255,255);color:rgb(33=
,33,33);font-size:11pt;font-family:Calibri,sans-serif;margin:0px">
</p>
<p style=3D"text-align:start;background-color:rgb(255,255,255);color:rgb(33=
,33,33);font-size:11pt;font-family:Calibri,sans-serif;margin:0px">
<span style=3D"margin:0px;font-size:9pt;font-family:Arial,sans-serif,serif,=
EmojiFont;color:gray">1610 SW Main St Suite 202</span></p>
<p style=3D"text-align:start;background-color:rgb(255,255,255);color:rgb(33=
,33,33);font-size:11pt;font-family:Calibri,sans-serif;margin:0px">
<span style=3D"margin:0px;font-size:9pt;font-family:Arial,sans-serif,serif,=
EmojiFont;color:gray">Ankeny, IA 50023</span></p>
<br>
</div>
</div>
</div>
</div>
<div id=3D"gmail-m_6662363519354545030appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_6662363519354545030divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From=
:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
<b>Sent:</b> Thursday, September 30, 2021 11:41 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Re: Amount of Radio Buffer in 4.1</font>
<div>=C2=A0</div>
</div>
<div>
<table cellspacing=3D"0" cellpadding=3D"0" align=3D"left" width=3D"&quot;10=
0%&quot;" style=3D"background-color:blue">
<tbody>
<tr>
<td width=3D"&quot;100%&quot;" style=3D"width:100%"><span style=3D"color:rg=
b(255,255,255)"><b>CAUTION:</b> External email to ODS</span></td>
</tr>
</tbody>
</table>
<br>
<br>
<div>
<div>On 2021-09-30 11:21 a.m., Adam Bader (Proxy) wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<span style=3D"margin:0px;font-size:12pt;color:rgb(0,0,0);background-color:=
rgb(255,255,255)">We are having issues trying to run our application with t=
he current version 4 releases of UHD. We are running successfully on versio=
n 3.13. I&#39;ve been trying to create
 a simplified test scenario using a single output on a N310 and continue to=
 see underruns and time errors on version 4.1.</span>
<div style=3D"margin:0px;font-size:12pt;color:rgb(0,0,0);background-color:r=
gb(255,255,255)">
<br>
</div>
<div style=3D"margin:0px;font-size:12pt;color:rgb(0,0,0);background-color:r=
gb(255,255,255)">
I&#39;m using a modified benchmark_rate application trying to model our str=
eaming implementation.<span>=C2=A0</span><span style=3D"margin:0px;backgrou=
nd-color:rgb(255,255,255);color:rgb(0,0,0);display:inline">My testing has b=
een on a system running Ubuntu
 18.04. The computer has a 10Gb card connected directly to port sfp1 on the=
 radio. The radio is running the default HG fpga image. MTU is set to 9000.=
</span></div>
<div style=3D"margin:0px;font-size:12pt;color:rgb(0,0,0);background-color:r=
gb(255,255,255)">
<br>
</div>
<div style=3D"margin:0px;font-size:12pt;color:rgb(0,0,0);background-color:r=
gb(255,255,255)">
Data is transmitted at 62.5Msps in a continuous burst. Every packet is sent=
 with an up to date time_spec. Our application builds up and sends 1ms wort=
h of samples to the radio repeatedly (trying to pass the whole ms to send()=
 as well as break them up into max_num_samp
 chunks shows no change in timing behavior). After resetting radio time to =
0 the initial packet is time spec&#39;d to 1.8 seconds to prime the radio b=
uffer. There is no rx stream involved.</div>
<div style=3D"margin:0px;font-size:12pt;color:rgb(0,0,0);background-color:r=
gb(255,255,255)">
<br>
</div>
<div style=3D"margin:0px;font-size:12pt;color:rgb(0,0,0);background-color:r=
gb(255,255,255)">
I had the sample application poll radio time in parallel with sending data =
to the radio. The radio time thread prints out the result from get_time_now=
 every 100ms. The transmission thread prints out the time_spec that was jus=
t transmitted once send returns.
 In 4.1 I can see streaming is effectively handling everything in &#39;real=
-time&#39;. The radio times being printed line up identically with the time=
_spec that was just transmitted. Any delay in transmission results in immed=
iate underruns and time errors. This same
 test when done with the 3.13 host library and another N310 using the 3.13 =
firmware shows the sample just written being 150-200ms ahead of what the cu=
rrent radio time is.</div>
<div style=3D"margin:0px;font-size:12pt;color:rgb(0,0,0);background-color:r=
gb(255,255,255)">
<br>
</div>
<span style=3D"margin:0px;font-size:12pt;color:rgb(0,0,0);background-color:=
rgb(255,255,255)">Is there anything that can be done to increase the amount=
 of buffer available on the radio with the stock FPGA firmware? Is there so=
mething we need to rethink in our
 streaming implementation in UHD4? Appreciate any insights.</span><br>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<br>
</div>
</blockquote>
<b>Are you able to do continuous (not-timed) streaming at 62.5Msps in your =
current configuration?<br>
<br>
<br>
</b></div>
<br>
<table cellspacing=3D"0" cellpadding=3D"0" align=3D"left" width=3D"&quot;10=
0%&quot;" style=3D"background-color:blue">
<tbody>
<tr>
<td width=3D"&quot;100%&quot;" style=3D"width:100%"><span style=3D"color:rg=
b(255,255,255)"><b>CAUTION:</b> This email originated from outside of ODS. =
Do not click links or open attachments unless you recognize the sender and =
know the content is safe.</span></td>
</tr>
</tbody>
</table>
</div>
<div>_____________________________________<br>
The information contained in this e-mail and any attachments from Orolia ma=
y contain confidential and/or proprietary information, and is intended only=
 for the named recipient to whom it was originally addressed. If you are no=
t the intended recipient, any disclosure,
 distribution, or copying of this e-mail or its attachments is strictly pro=
hibited. If you have received this e-mail in error, please notify the sende=
r immediately by return e-mail and permanently delete the e-mail and any at=
tachments.
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000b8595205cd3aa32d--

--===============6741338318098335829==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6741338318098335829==--
