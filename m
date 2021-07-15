Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA27B3CAE32
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jul 2021 22:59:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0B4F384165
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jul 2021 16:59:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Dz3k/N8t";
	dkim-atps=neutral
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 14C0F38412F
	for <usrp-users@lists.ettus.com>; Thu, 15 Jul 2021 16:58:31 -0400 (EDT)
Received: by mail-qt1-f171.google.com with SMTP id z12so5569835qtj.3
        for <usrp-users@lists.ettus.com>; Thu, 15 Jul 2021 13:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=H5nX/Vv6V8y4o8TDyxiKr9MkerzaBFq3sU8aljSxVb4=;
        b=Dz3k/N8tbPIJNliC9Gu3dEXXVIoSiAkjqpJXsUcAHNrjMKPBlfsdmFu3JWym99Pxp0
         y5Tm1T6Fp2UjpC8pAHUeGKZZ9mXoQK6DNXs/QzSGr9nX3X+SsJ6qwFv4QAHh6qgx2GlT
         cR5AyPW046g/XgLbpul3hEIftXHqpF73uUiFCkikNCKepNTlHIvpcP/+F0V27YoVKdg1
         90FkoBTbHemhfJUbRUGjksy4t1qpnMSdbJtLxUy2l9lFrVg8OP2x1BhneHHSI9LOUHhK
         niUZor83VGJoSdDEi+hl5RQRsT1sLQaTazQBerf3JjMxf/zwxspsNjL8aNEzHmGZpaAN
         QjDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=H5nX/Vv6V8y4o8TDyxiKr9MkerzaBFq3sU8aljSxVb4=;
        b=jdkUcWAb2mP/DojIE0ol2hwaQpq37pixYjKy4VkfJ1O1S3D5skNoHNRZr6p1XJoVza
         h1XtKyOVRorrRgor4UfozDNybFFHTLV4YeVRI4vJFvQ9WxmtfmdjugaULZ0/BWZn+s30
         paWZWUqOoxa1DAYVN9TDNNjs/20H/kX7QXbQDor8t5iklIG1cCUF6pmStnlXytfaflf6
         uTn7OsePxvKB+0/Ql+Gvn+VPMzgpMOC/ytJNwzK8pe9PqDU7ikPWPvYhCN7BIy+jzxyA
         r3PQpReAiDUpFWgK5tTKlSFm+Ec7jq7I6riPK2eax1MW0kgzQxGhsncj7y1uCzIMCGuA
         xMtw==
X-Gm-Message-State: AOAM531ci0s/04QyYR4jvX172ppEZ9L2JjM7bQvu9qWbF3hS4C5ZQejx
	XlDAAKRH9NnSZ5har+Nk9ugvyHAC4smxAA==
X-Google-Smtp-Source: ABdhPJzYiF/31buGjzf35T8IsaGnGyuH/cPi7xUJVHaq4R7BLDfb9C4rHCN7NBU4CsdPsbrcU065Lg==
X-Received: by 2002:a05:622a:9:: with SMTP id x9mr5844262qtw.9.1626382711317;
        Thu, 15 Jul 2021 13:58:31 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id v5sm2555872qtp.25.2021.07.15.13.58.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Jul 2021 13:58:30 -0700 (PDT)
Message-ID: <60F0A175.7050905@gmail.com>
Date: Thu, 15 Jul 2021 16:58:29 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CO6PR19MB48018F401C16D7665A626F37C6129@CO6PR19MB4801.namprd19.prod.outlook.com>
In-Reply-To: <CO6PR19MB48018F401C16D7665A626F37C6129@CO6PR19MB4801.namprd19.prod.outlook.com>
Message-ID-Hash: ZAWDWNQKGSLUVHUUXVVJGSYCHB5F3HDJ
X-Message-ID-Hash: ZAWDWNQKGSLUVHUUXVVJGSYCHB5F3HDJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Setting the TX SPP to reduce underruns
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZAWDWNQKGSLUVHUUXVVJGSYCHB5F3HDJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6191457158280894395=="

This is a multi-part message in MIME format.
--===============6191457158280894395==
Content-Type: multipart/alternative;
 boundary="------------020301030402030205040505"

This is a multi-part message in MIME format.
--------------020301030402030205040505
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/15/2021 04:52 PM, Jerrid Plymale wrote:
>
> Hello All,
>
> So I have been running some tests today using the benchmark_rate test 
> to try and find the solution to the underruns I am getting when 
> executing a GRC flowgraph. I am trying to get the flowgraph to run at 
> a 25 MHz sampling rate using a USRP X310 without any underruns. I 
> found that by changing the spp value using --tx_stream_args with the 
> benchmark_rate tests, I was able to stop the underruns I was seeing 
> when using a 25 MHz sampling rate with the default spp value.
>
> Now my question is, how can I go about changing this value within my 
> GRC flowgraph? Is this a value I can set within the UHD USRP Sink 
> block? How can I determine mathematically what the best spp value 
> would be to maximize the performance of the GRC flowgraph?
>
> Any help or insight I can get for this problem would be greatly 
> appreciated.
>
> Best Regards,
>
> Jerrid
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
There's a "Stream Args" field in both UHD Source and Sink in GRC.

Just put "spp=<your-value>" in the stream args field.

Determining optimal numbers is going to be environment depending. 
Generally larger is better, keeping in mind MTU, and the effects on
   latency (it takes longer to stuff and send a larger packet compared 
to a smaller one).



--------------020301030402030205040505
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 07/15/2021 04:52 PM, Jerrid Plymale
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CO6PR19MB48018F401C16D7665A626F37C6129@CO6PR19MB4801.namprd19=
.prod.outlook.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">So I have been running some tests today
          using the benchmark_rate test to try and find the solution to
          the underruns I am getting when executing a GRC flowgraph. I
          am trying to get the flowgraph to run at a 25 MHz sampling
          rate using a USRP X310 without any underruns. I found that by
          changing the spp value using --tx_stream_args with the
          benchmark_rate tests, I was able to stop the underruns I was
          seeing when using a 25 MHz sampling rate with the default spp
          value.
          <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Now my question is, how can I go about
          changing this value within my GRC flowgraph? Is this a value I
          can set within the UHD USRP Sink block? How can I determine
          mathematically what the best spp value would be to maximize
          the performance of the GRC flowgraph? <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Any help or insight I can get for this
          problem would be greatly appreciated.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
        <p class=3D"MsoNormal">Jerrid<o:p></o:p></p>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">_______________________________________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    There's a "Stream Args" field in both UHD Source and Sink in GRC.<br>
    <br>
    Just put "spp=3D&lt;your-value&gt;" in the stream args field.<br>
    <br>
    Determining optimal numbers is going to be environment depending.=A0
    Generally larger is better, keeping in mind MTU, and the effects on<b=
r>
    =A0 latency (it takes longer to stuff and send a larger packet
    compared to a smaller one).<br>
    <br>
    <br>
  </body>
</html>

--------------020301030402030205040505--

--===============6191457158280894395==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6191457158280894395==--
