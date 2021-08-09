Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97AAC3E4A83
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 19:07:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB48B383670
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 13:07:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jRSsmK6d";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 7B4AB38447B
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 13:06:46 -0400 (EDT)
Received: by mail-qk1-f172.google.com with SMTP id t68so19164526qkf.8
        for <usrp-users@lists.ettus.com>; Mon, 09 Aug 2021 10:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=S3dFo2dUqXOnwR+Gba/Kb9NN9S0iAUqQhhqvdEPyx2k=;
        b=jRSsmK6dmeA+B7PCBA0/WtjIf0Csi0Qsc0NKEif1CXyRe65MYxHCdWWqpKqY3u+eXU
         gplIAYcgd4wjyn0T3mJus2UwOIe/QVHOAUQFuio9DPb6pMI5uXek0tZ3xf80gPlJL7KC
         tCNPm27sIPWsZYw4uEXBsBrMV1xxo2ZDX/CTcrHwf9780cDNk8ANZHMju+Fw5u4jp20I
         iuErKQ/p/UghT8ZiURpZ6NDFQTXrZIie6k+BfOU5xlhUqLJAd9QhsL0fR2qZcAan3WOL
         I2obmeY1axVb6AhinPBbNp+A6Ptk2ilYyKNjMlhkmsYZ2hNFej8+/UG0UyQdWvuDUUU2
         Zlag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=S3dFo2dUqXOnwR+Gba/Kb9NN9S0iAUqQhhqvdEPyx2k=;
        b=hSIxCI400vlBw7J9U1zRAkaIhKjtq5Ok6OfPr/ZLJS6DuVoe/Am8vymriDjEwRJ+Mr
         N6unHPZIDoFl1qM8nRVbIDPTrV565Y778mX1FLjG9/4PQkdbCTxXneHHkOM1mUj/rHsW
         lAzIn6bkmQ2+pgq2Swxrl1/fgouM0yBxG/mM+vopYLrEAAbJUqquuG33rfyp4yITAZW6
         SQwvIDFnKfBqhySEFXHTV5Sv0UOob1BFVxlsdiM5DLZ7e7L8tgnzvX5ERDcQ8KacCA6B
         z1g87nQedz8slNesNVPUQBAJ0AsClBvtzqDB0MPI3VQxS8L99/3AzCDjfc9+aHSNkLxL
         Xw1g==
X-Gm-Message-State: AOAM532E9P6glZtE5zfSBg9dWbnsLmmrymGKaku/IDKqkRB5yFE86iOE
	myBxzdu6IchztTQLOkOP9AExzGIccpSosA==
X-Google-Smtp-Source: ABdhPJwQEx1GwzYPlkIfiQB942DkZgjojxkbLMwG2ggjcgbuF+JmWvqgz3HAlp6mdNIBVj8T4H8f/A==
X-Received: by 2002:a05:620a:1099:: with SMTP id g25mr24680852qkk.467.1628528805783;
        Mon, 09 Aug 2021 10:06:45 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id s13sm454281qta.64.2021.08.09.10.06.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Aug 2021 10:06:45 -0700 (PDT)
Message-ID: <611160A4.7080202@gmail.com>
Date: Mon, 09 Aug 2021 13:06:44 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <015c01d78d45$aa24fe90$fe6efbb0$@gmail.com>
In-Reply-To: <015c01d78d45$aa24fe90$fe6efbb0$@gmail.com>
Message-ID-Hash: RKEE55E6WYBTVXW4EUWPG5Y6FLB57IDQ
X-Message-ID-Hash: RKEE55E6WYBTVXW4EUWPG5Y6FLB57IDQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: FPGA as OctoClock-G
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RKEE55E6WYBTVXW4EUWPG5Y6FLB57IDQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0948509637334367992=="

This is a multi-part message in MIME format.
--===============0948509637334367992==
Content-Type: multipart/alternative;
 boundary="------------070903030602030001030602"

This is a multi-part message in MIME format.
--------------070903030602030001030602
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/09/2021 01:40 PM, zhang.weit3@gmail.com wrote:
>
> Hi,
>
> I am thinking of using FPGA to generate 1PPS and 10MHz signals for 
> multi-USRP, which plays the same functionality as that of the 
> OctoClock-G module. Will there be any potential shortcomings to use 
> FPGA compared to OctoClock-G?
>
> Thank you,
>
> Weit
>
>
You mean use your own FPGA board to generate these signals?

The only thing to watch out for are:

   (A) What is the quality of your input clock?
   (B) How jittery is the output of your 10MHz reference signal?

If this were my problem, I find an economical GPSDO board, and then use 
simple HC-series logic chips as buffers for both 1PPS and 10MHz outputs
   for as many outputs as I needed.  No FPGA required.  But that's just 
me...



--------------070903030602030001030602
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/09/2021 01:40 PM,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:zhang.weit3@gm=
ail.com">zhang.weit3@gmail.com</a> wrote:<br>
    </div>
    <blockquote cite=3D"mid:015c01d78d45$aa24fe90$fe6efbb0$@gmail.com"
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">I am thinking of using FPGA to generate
          1PPS and 10MHz signals for multi-USRP, which plays the same
          functionality as that of the OctoClock-G module. Will there be
          any potential shortcomings to use FPGA compared to
          OctoClock-G?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
        <p class=3D"MsoNormal">Weit<o:p></o:p></p>
      </div>
      <br>
    </blockquote>
    You mean use your own FPGA board to generate these signals?=A0 <br>
    <br>
    The only thing to watch out for are:<br>
    <br>
    =A0 (A) What is the quality of your input clock?<br>
    =A0 (B) How jittery is the output of your 10MHz reference signal?<br>
    <br>
    If this were my problem, I find an economical GPSDO board, and then
    use simple HC-series logic chips as buffers for both 1PPS and 10MHz
    outputs<br>
    =A0 for as many outputs as I needed.=A0 No FPGA required.=A0 But that=
's
    just me...<br>
    <br>
    <br>
  </body>
</html>

--------------070903030602030001030602--

--===============0948509637334367992==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0948509637334367992==--
