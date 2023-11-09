Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA50F7E6CD8
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 16:05:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6997385615
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 10:05:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699542307; bh=I405+mBL5KkxjmycQeXTImaVeT2YpfwYM+UtdXL3TJI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=F0ARJBK4/M6jC8XjnxlT7yAQtdMw1GDYjmcfh7TtaqC/qXBSOSU7XogjEhyUSrQ4M
	 EQYsnvXgSpc8+RoNiWTEO6HUHaBeJDUt5lJ6HSkp9iA4VuL6Mv2jMj/3UsOUptTTSV
	 TfuSJ4lkpXFgj5NC/KrUUyvGfMEwSeBuwKvD8iq/Kep/54JMYJOxBP/8y86XBSTQPK
	 rBP34QPsSZSywaF+vXkuUY20nGmTWRla9eWXbzQJ3SIoIG+pWKcL7PLh/OCr5YMWvk
	 dBsFUOGJo+hiwNTSHhyw18+OhIv0gtPDJbEjr+ikExu0W3W2ufdedm4OT97CZAIumi
	 XaNyeoZ4rrQig==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 33AAA3851A6
	for <usrp-users@lists.ettus.com>; Thu,  9 Nov 2023 10:04:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jONHSY7A";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-670e7ae4a2eso17598686d6.1
        for <usrp-users@lists.ettus.com>; Thu, 09 Nov 2023 07:04:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699542269; x=1700147069; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hKhXGwWN3hQ0LjJoNhLNSQXSTTOdkuo/5pw+WgPriSA=;
        b=jONHSY7ABU5+f7zAfmfDLaF2knPqJGZ/tBMeTJoum8fc2TODAKXvT+dDDL/R9L/zcN
         aXXOsnZm1ko+5WfA9LSp3ilHWeAGWOBkrXeFx6s3YMI+nG0KlymnMsOXwcJn1rdDrMq7
         AUs5At9wzWXXedNwFdBxMcXZE+em5jlc3Jw0qodGaqYdqKzMDDpPr78GqniZHRr6npMF
         Tb07O8yrOPm1uLQSrUubnb2fUViSqaO8wBvuOPmBucHcG9JZBnL0ZOJ27ZXhMCnrgz0H
         70XmZkJYvtRY4dw3SvgMi4GaVJ36ZS6bprY4oryYtWD+eZ887+hroy5oHAx8VvfN55Jb
         VP+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699542269; x=1700147069;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hKhXGwWN3hQ0LjJoNhLNSQXSTTOdkuo/5pw+WgPriSA=;
        b=M6Ecs8naEO96X0XtL+cQgitcRup4zwa4JxvdqvWAT3xqWquVX4g3akdfJlkZbPCe3f
         Yqd2dOqxIVrIm881H0gUgJ3TFBzEES0JPmMoC1loTBHOOvL5maZuxux4YXzNu5xFVTCO
         l63rnx9nJ6V2xOc0K6sVfIeLfcAGQ+WAbOafQjndX98JOv4kt1z7LtUAl1EuXtIl1zzI
         KfIOydrWT9FNv2cvLZPPfE4q9tjzbgw2ju17TuyeFPmnJvwA23ih2naNIlLUALzZPWYW
         0fsmrq8BGMmc3fIuVnLrwNVSLf3+CKRdSbdMK+R6r1DpayoFNB7np88bjUPImUWpMD7k
         37WQ==
X-Gm-Message-State: AOJu0Yw8/Hk96LUExNNAJsrmZNnyzA6DNN6+OOtwN7KRB39YTKPYX5Bx
	aUwqGWm2lazAmRTG0Eo5pEBwtsfGaVg=
X-Google-Smtp-Source: AGHT+IFqwayZdIrh3LndQb1r/r0wa3ega1Sf4LyalAK85D2A5Vfrv01pUGH1EQhObWoMwPGZ8o5iuw==
X-Received: by 2002:ad4:5d6b:0:b0:66f:ac87:73b8 with SMTP id fn11-20020ad45d6b000000b0066fac8773b8mr7209741qvb.5.1699542269239;
        Thu, 09 Nov 2023 07:04:29 -0800 (PST)
Received: from [192.168.2.196] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id mm11-20020a0562145e8b00b00670fd658739sm2150644qvb.38.2023.11.09.07.04.28
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 07:04:29 -0800 (PST)
Message-ID: <ba3be4c0-5598-4df1-9d3c-6574ed016649@gmail.com>
Date: Thu, 9 Nov 2023 10:04:19 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <657abf57860f42a89ed48d996d60af45@L3Harris.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <657abf57860f42a89ed48d996d60af45@L3Harris.com>
Message-ID-Hash: RMA6T53PQGHVUVWQP4BDP5CGOULTAOXS
X-Message-ID-Hash: RMA6T53PQGHVUVWQP4BDP5CGOULTAOXS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus Transmit Sample Streaming
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RMA6T53PQGHVUVWQP4BDP5CGOULTAOXS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7701918568123332373=="

This is a multi-part message in MIME format.
--===============7701918568123332373==
Content-Type: multipart/alternative;
 boundary="------------gSclzzAL6L7ScVtcbaB8vOTp"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------gSclzzAL6L7ScVtcbaB8vOTp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 09/11/2023 09:45, Swannick, Matthew (FP) - IC via USRP-users wrote:
>
> Hi,
>
> I have previously sent the same message via e-mail so please discard=20
> one of the messages.
>
> I am performing testing of transmit streaming using Ettus SDRs and=20
> encountering underruns, which I would like to eliminate.
>
> I believe the problem is related to the rate at which samples are=20
> being read from the storage or host OS scheduling (rather than=20
> configuration of the Ettus itself), but was wondering whether you may=20
> still have some suggestions please.
>
> I am doing the following:
>
> =C2=B75 * Ettus B205mini SDRs are connected to a Linux based host compu=
ter=20
> via 5 independent USB 3.0 connections.
>
> =C2=B7The host is simultaneously streaming samples to each of the 5 SDR=
s.
>
> =C2=B7The samples are being streamed from 5 different sample files, one=
=20
> file for each SDR.
>
> =C2=B7The sample files are stored on a fast SSD on the host.
>
> =C2=B7The SDRs are transmitting at different sample rates (between 20MH=
z=20
> and 55MHz).
>
> =C2=B7The code being run by the host is based on the Ettus example prog=
ram=20
> - tx_samples_from_file.cpp, but has been enhanced to run 5 separate=20
> transmit streamers simultaneously.
>
> The problem:
>
> =C2=B7For debug purposes the streaming code running on the host measure=
s=20
> the time taken to read each buffer of samples from the SSD.
>
> =C2=B7Some of the times taken to perform a read can be quite high =E2=80=
=93 a few=20
> 1000us. This causes the underruns.
>
> =C2=B7The average time to read a buffer is much smaller than this - jus=
t a=20
> few us. So the vast majority of reads are fast enough and do not underr=
un.
>
> =C2=B7There is a large variety in the buffer read times - I would like =
the=20
> buffer read times to be consistent, which should eliminate the underrun=
s.
>
> =C2=B7The measurements show that the SSD/USB/host CPU, etc, are=20
> fundamentally fast enough, but some individual reads of the sample=20
> buffer can be slow.
>
> =C2=B7I believe I can fix this in software via a queuing system to coun=
ter=20
> the variations in read times, but would prefer to find a root cause=20
> and if possible fix the source of the high read times.
>
> I was wondering whether Ettus could have encountered this sort of=20
> thing before and whether there are any suggestions please?
>
> Hopefully the description makes sense, please let me know if any=20
> further information would be useful.
>
> Many thanks
>
> Matthew Swannick
>
>
> CONFIDENTIALITY NOTICE: This email and any attachments are for the=20
> sole use of the intended recipient and may contain material that is=20
> proprietary, confidential, privileged or otherwise legally protected=20
> or restricted under applicable laws. Any review, disclosure,=20
> distributing or other use without expressed permission of the sender=20
> is strictly prohibited. If you are not the intended recipient, please=20
> contact the sender and delete all copies without reading, printing, or=20
> saving.
>
> L3Harris Technologies UK Limited is a private company registered in=20
> England with the company number 11111631 whose registered office is at=20
> 100 New Bridge Street, London, United Kingdom, EC4V 6JA.
>
> For information on our Privacy & Cookie Policies, please visit our=20
> website: https://www.l3harris.com/en-gb/privacy-policy
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

You might spend some time studying Linux performance tuning with respect=20
to file I/O:

https://www.yugabyte.com/blog/linux-performance-tuning-memory-disk-io/

And likely dozens of other articles like it.


--------------gSclzzAL6L7ScVtcbaB8vOTp
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 09/11/2023 09:45, Swannick, Matthew
      (FP) - IC via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:657abf57860f42a89ed48d996d60af45@L3Harris.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}p.MsoListParagraph, li.MsoListParagraph, div.=
MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:36.0pt;
	mso-add-space:auto;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}p.MsoListParagraphCxSpFirst, li.MsoListParag=
raphCxSpFirst, div.MsoListParagraphCxSpFirst
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}p.MsoListParagraphCxSpMiddle, li.MsoListPara=
graphCxSpMiddle, div.MsoListParagraphCxSpMiddle
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}p.MsoListParagraphCxSpLast, li.MsoListParagr=
aphCxSpLast, div.MsoListParagraphCxSpLast
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:36.0pt;
	mso-add-space:auto;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0cm;}ul
	{margin-bottom:0cm;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi,<o:p></o:p></p>
        <p class=3D"MsoNormal">I have previously sent the same message vi=
a
          e-mail so please discard one of the messages.<o:p></o:p></p>
        <p class=3D"MsoNormal">I am performing testing of transmit
          streaming using Ettus SDRs and encountering underruns, which I
          would like to eliminate.
          <o:p></o:p></p>
        <p class=3D"MsoNormal">I believe the problem is related to the
          rate at which samples are being read from the storage or host
          OS scheduling (rather than configuration of the Ettus itself),
          but was wondering whether you may still have some suggestions
          please.<o:p></o:p></p>
        <p class=3D"MsoNormal">I am doing the following:=C2=A0 <o:p></o:p=
></p>
        <p class=3D"MsoListParagraphCxSpFirst"
          style=3D"text-indent:-18.0pt;mso-list:l0 level1 lfo1">
          <!--[if !supportLists]--><span style=3D"font-family:Symbol"><sp=
an
              style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]-->5 * Ettus B205mini SDRs
          are connected to a Linux based host computer via 5 independent
          USB 3.0 connections.
          <o:p></o:p></p>
        <p class=3D"MsoListParagraphCxSpMiddle"
          style=3D"text-indent:-18.0pt;mso-list:l0 level1 lfo1">
          <!--[if !supportLists]--><span style=3D"font-family:Symbol"><sp=
an
              style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]-->The host is
          simultaneously streaming samples to each of the 5 SDRs.
          <o:p></o:p></p>
        <p class=3D"MsoListParagraphCxSpMiddle"
          style=3D"text-indent:-18.0pt;mso-list:l0 level1 lfo1">
          <!--[if !supportLists]--><span style=3D"font-family:Symbol"><sp=
an
              style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]-->The samples are being
          streamed from 5 different sample files, one file for each SDR.<=
o:p></o:p></p>
        <p class=3D"MsoListParagraphCxSpMiddle"
          style=3D"text-indent:-18.0pt;mso-list:l0 level1 lfo1">
          <!--[if !supportLists]--><span style=3D"font-family:Symbol"><sp=
an
              style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]-->The sample files are
          stored on a fast SSD on the host.<o:p></o:p></p>
        <p class=3D"MsoListParagraphCxSpMiddle"
          style=3D"text-indent:-18.0pt;mso-list:l0 level1 lfo1">
          <!--[if !supportLists]--><span style=3D"font-family:Symbol"><sp=
an
              style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]-->The SDRs are
          transmitting at different sample rates (between 20MHz and
          55MHz).<o:p></o:p></p>
        <p class=3D"MsoListParagraphCxSpLast"
          style=3D"text-indent:-18.0pt;mso-list:l0 level1 lfo1">
          <!--[if !supportLists]--><span style=3D"font-family:Symbol"><sp=
an
              style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]-->The code being run by
          the host is based on the Ettus example program -
          tx_samples_from_file.cpp, but has been enhanced to run 5
          separate transmit streamers simultaneously.<o:p></o:p></p>
        <p class=3D"MsoNormal">The problem:<o:p></o:p></p>
        <p class=3D"MsoListParagraphCxSpFirst"
          style=3D"text-indent:-18.0pt;mso-list:l1 level1 lfo2">
          <!--[if !supportLists]--><span style=3D"font-family:Symbol"><sp=
an
              style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]-->For debug purposes the
          streaming code running on the host measures the time taken to
          read each buffer of samples from the SSD.<o:p></o:p></p>
        <p class=3D"MsoListParagraphCxSpMiddle"
          style=3D"text-indent:-18.0pt;mso-list:l1 level1 lfo2">
          <!--[if !supportLists]--><span style=3D"font-family:Symbol"><sp=
an
              style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]-->Some of the times taken
          to perform a read can be quite high =E2=80=93 a few 1000us. Thi=
s
          causes the underruns.<o:p></o:p></p>
        <p class=3D"MsoListParagraphCxSpMiddle"
          style=3D"text-indent:-18.0pt;mso-list:l1 level1 lfo2">
          <!--[if !supportLists]--><span style=3D"font-family:Symbol"><sp=
an
              style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]-->The average time to
          read a buffer is much smaller than this - just a few us. So
          the vast majority of reads are fast enough and do not
          underrun.<o:p></o:p></p>
        <p class=3D"MsoListParagraphCxSpMiddle"
          style=3D"text-indent:-18.0pt;mso-list:l1 level1 lfo2">
          <!--[if !supportLists]--><span style=3D"font-family:Symbol"><sp=
an
              style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]-->There is a large
          variety in the buffer read times - I would like the buffer
          read times to be consistent, which should eliminate the
          underruns.<o:p></o:p></p>
        <p class=3D"MsoListParagraphCxSpMiddle"
          style=3D"text-indent:-18.0pt;mso-list:l1 level1 lfo2">
          <!--[if !supportLists]--><span style=3D"font-family:Symbol"><sp=
an
              style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]-->The measurements show
          that the SSD/USB/host CPU, etc, are fundamentally fast enough,
          but some individual reads of the sample buffer can be slow.<o:p=
></o:p></p>
        <p class=3D"MsoListParagraphCxSpLast"
          style=3D"text-indent:-18.0pt;mso-list:l1 level1 lfo2">
          <!--[if !supportLists]--><span style=3D"font-family:Symbol"><sp=
an
              style=3D"mso-list:Ignore">=C2=B7<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]-->I believe I can fix
          this in software via a queuing system to counter the
          variations in read times, but would prefer to find a root
          cause and if possible fix the source of the high read times.<o:=
p></o:p></p>
        <p class=3D"MsoNormal">I was wondering whether Ettus could have
          encountered this sort of thing before and whether there are
          any suggestions please?<o:p></o:p></p>
        <p class=3D"MsoNormal">Hopefully the description makes sense,
          please let me know if any further information would be useful.<=
o:p></o:p></p>
        <p class=3D"MsoNormal">Many thanks<o:p></o:p></p>
        <p class=3D"MsoNormal">Matthew Swannick=C2=A0 <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
      <br>
      <span>=C2=A0</span>
      <div>CONFIDENTIALITY NOTICE: This email and any attachments are
        for the sole use of the intended recipient and may contain
        material that is proprietary, confidential, privileged or
        otherwise legally protected or restricted under applicable laws.
        Any review, disclosure, distributing or other use without
        expressed permission of the sender is strictly prohibited. If
        you are not the intended recipient, please contact the sender
        and delete all copies without reading, printing, or saving.
        <div><br>
          <div>L3Harris Technologies UK Limited is a private company
            registered in England with the company number 11111631 whose
            registered office is at 100 New Bridge Street, London,
            United Kingdom, EC4V 6JA.
            <div><br>
              <div>For information on our Privacy &amp; Cookie Policies,
                please visit our website:
                <a class=3D"moz-txt-link-freetext" href=3D"https://www.l3=
harris.com/en-gb/privacy-policy">https://www.l3harris.com/en-gb/privacy-p=
olicy</a>
              </div>
            </div>
          </div>
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
    <br>
    You might spend some time studying Linux performance tuning with
    respect to file I/O:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://www.yugabyte.com/blog/=
linux-performance-tuning-memory-disk-io/">https://www.yugabyte.com/blog/l=
inux-performance-tuning-memory-disk-io/</a><br>
    <br>
    And likely dozens of other articles like it.<br>
    <br>
    <br>
  </body>
</html>

--------------gSclzzAL6L7ScVtcbaB8vOTp--

--===============7701918568123332373==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7701918568123332373==--
