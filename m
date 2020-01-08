Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 768E8134DBC
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2020 21:39:05 +0100 (CET)
Received: from [::1] (port=60706 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipI6Z-0002CR-3a; Wed, 08 Jan 2020 15:39:03 -0500
Received: from mail-qk1-f179.google.com ([209.85.222.179]:39530)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ipI6W-000290-Cj
 for usrp-users@lists.ettus.com; Wed, 08 Jan 2020 15:39:00 -0500
Received: by mail-qk1-f179.google.com with SMTP id c16so3933011qko.6
 for <usrp-users@lists.ettus.com>; Wed, 08 Jan 2020 12:38:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=O0gj8AKPPxBkmv/k+waRz7kVRaTYRagkfaWBQcaEfds=;
 b=reQUE52Tbi/TE4tMW8vqbcMi2OlcRdsvbCfIvtCfcbqRSFwtjYuwXmI2fnH4tTxmj3
 m1MSs6z3AXQ+RWl+ApZkxeZA8a8aeu08q9BKLTvwUTAZBWmAd3ek7InyZKmhSAMM2jhK
 SxEsitUIw8fuouuvOVFlgiKzuFcaCVzbBZVMcK9TcRts4LXaoDCTGMdfdI7YpypDH/aj
 WZIYImJ3DZTE/rOGyttyAYPzAlBKg2idJMJi470TuHx1G4iFzdY/clOPTsJbCY0MNvHj
 I62y2MEvdPh8hrPjdXdms4NL9fmZVpQnlyCyJG/+DmDqLJ10eTeVyai99Jq/zF/kwl3s
 OS0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=O0gj8AKPPxBkmv/k+waRz7kVRaTYRagkfaWBQcaEfds=;
 b=ptPyz1H/1P/QQTm2kFeyedoL+isA//Qy4Q1R6Hhob9NqbIHvJUvmqp6vUHbV1/6pDZ
 LvA0XLz9kt0iYVqLE6dSeONMz2wqGChiAglqkizIgH4oDeu6Bt2x+KKhsihnfsUhurSX
 UEZQ0YntUHKQNC4+e0RyqigQIEy2XmoDLX1Hg8ATiSQRhHKquwaPmekiQEctY/qKqRLX
 oVfaZ/vra0Nwxd3Ulh4fX444l48+SSETV8BdwPyygEcCjIvEtqFa6hRhVDKrMNwzin5E
 58muD+PFyVJI3TV3cCjPLBywEvdY5GZphETKDma6jML3fHsBgGr/LP6JRGAZvqJWvHHo
 Zw2w==
X-Gm-Message-State: APjAAAW3Tx7bRTVIU9LPGS0NUWfbmCVKdpf2t7GLpMLt5FxnZ3m7r4ZH
 RzavQO2Ig8BWzTjQhx6+oky1Q5jqMXE=
X-Google-Smtp-Source: APXvYqycvnGSPaS4KBFqeNidC/KunYiEqawFPfHMfKSN/vrXIp4M9zadLCUPRr3cbAEzCUSAPPp38Q==
X-Received: by 2002:a05:620a:128d:: with SMTP id
 w13mr6110413qki.289.1578515899616; 
 Wed, 08 Jan 2020 12:38:19 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id v24sm2172235qtq.14.2020.01.08.12.38.19
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Jan 2020 12:38:19 -0800 (PST)
Message-ID: <5E163DBA.2070806@gmail.com>
Date: Wed, 08 Jan 2020 15:38:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <MW2PR1901MB2137AE9C2C1CA529D36C3D18C63E0@MW2PR1901MB2137.namprd19.prod.outlook.com>
In-Reply-To: <MW2PR1901MB2137AE9C2C1CA529D36C3D18C63E0@MW2PR1901MB2137.namprd19.prod.outlook.com>
Subject: Re: [USRP-users] Daughterboard configuration options
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============0731044830580842260=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============0731044830580842260==
Content-Type: multipart/alternative;
 boundary="------------000004060406050307040508"

This is a multi-part message in MIME format.
--------------000004060406050307040508
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/08/2020 02:49 PM, Jerrid Plymale via USRP-users wrote:
>
> Hey All,
>
> So I was wondering if anyone could tell me if the UBX Daughterboards 
> are configurable at all, and if so how? For example, looking at the 
> block diagram for the UBX 40 Daughterboard, it seems like some of the 
> clock parameters and filter parameters are that should be controllable 
> but I have not found any documentation on this. If someone can point 
> me in the right direction for this information it would be greatly 
> appreciated.
>
> Best Regards,
>
> Jerrid
>
The pre-ADC bandwidth of the UBX is fixed by the hardware 
implementation--there are fixed hardware low-pass filters either side of
   the ADC buffer amplifier.

In terms of clock, that *MIGHT* be possible, but it would require a fair 
amount of surgery in the drivers--there's a daughterboard clock
   that comes from the motherboard, which on some motherboards is 
somewhat-reconfigurable, and on others is not.

What is your actual goal?

-Marcus



--------------000004060406050307040508
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/08/2020 02:49 PM, Jerrid Plymale
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:MW2PR1901MB2137AE9C2C1CA529D36C3D18C63E0@MW2PR1901MB2137.namprd19.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
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
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hey All,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">So I was wondering if anyone could tell me
          if the UBX Daughterboards are configurable at all, and if so
          how? For example, looking at the block diagram for the UBX 40
          Daughterboard, it seems like some of the clock parameters and
          filter parameters are that should be controllable but I have
          not found any documentation on this. If someone can point me
          in the right direction for this information it would be
          greatly appreciated.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Best Regards,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Jerrid<o:p></o:p></p>
      </div>
    </blockquote>
    The pre-ADC bandwidth of the UBX is fixed by the hardware
    implementation--there are fixed hardware low-pass filters either
    side of<br>
      the ADC buffer amplifier.<br>
    <br>
    In terms of clock, that *MIGHT* be possible, but it would require a
    fair amount of surgery in the drivers--there's a daughterboard clock<br>
      that comes from the motherboard, which on some motherboards is
    somewhat-reconfigurable, and on others is not.<br>
    <br>
    What is your actual goal?<br>
    <br>
    -Marcus<br>
    <br>
    <br>
  </body>
</html>

--------------000004060406050307040508--


--===============0731044830580842260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0731044830580842260==--

