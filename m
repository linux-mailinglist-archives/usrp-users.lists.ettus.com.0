Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE5026B7F4
	for <lists+usrp-users@lfdr.de>; Wed, 16 Sep 2020 02:33:07 +0200 (CEST)
Received: from [::1] (port=44084 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kILNh-0003H4-3S; Tue, 15 Sep 2020 20:33:05 -0400
Received: from mail-qt1-f196.google.com ([209.85.160.196]:33794)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kILNc-0002wf-Op
 for usrp-users@lists.ettus.com; Tue, 15 Sep 2020 20:33:00 -0400
Received: by mail-qt1-f196.google.com with SMTP id 19so4836860qtp.1
 for <usrp-users@lists.ettus.com>; Tue, 15 Sep 2020 17:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=QcQBbbauys9rzzy0t8QDBc1PyL1H4HHbiKUdHKXXzNw=;
 b=NtSTQgGdk9CBKNMU5h3nL79x5zPqPMNkp26hxDTpTn/qglAp/581eTJmmgqRZ4Kx2H
 YtrmnjgPBn7h8u/pFwpFaysRDSd4DLXQ6UWS0dP5H2EREf4zajSesF/aPYD/QLWWUD5f
 e8DhTfeSwd1ZOJlwVQfLwCw2u+XqVaHrgI63ljlryxfZEJxjRxzGsI+qkTsIII8DlyV4
 a8d4e/zx8cp2PJ3pYUv8qQop8R70NLaLODn2pRme5Z3KjkH6+7Vr+I1/UOk9BwcKsmFM
 xMvo1iFT8dDTJMXAZGr2vjbq/6AMI0jzaj587M2DPwVxr/QWsxL7gEGpQgRh20YQPZw9
 mu1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=QcQBbbauys9rzzy0t8QDBc1PyL1H4HHbiKUdHKXXzNw=;
 b=HhnpkSB9xyKwwJdnfYWtvP126a7DNVDdAIC4i0xLh4NOJ8zNdAoQMuSJ/rDcbQOgYp
 PmbMx17pFyXAJ01/QUjKdKHoEloOJUurbszEPGfmVVVPqZs4OTDa2cnaIMRwxclTcT7g
 VWfOEa+MQocM2JYiQeZl4oplcBhsVXMJRWYIR+u9tBobx76NmcRVDaHem8FeToplbo0D
 kVAEuPCD62C80vIjtKu285XGlHyazcrKCelDDIQYN2RE3GIpONI7nweycADUzBHJXkLq
 q0bJ4X/Wpkl6unX4ruJYDHIE64LrHFrj232ngGZJU10pY1lB8chTu/aQEKAzH2rxeX1O
 2zMQ==
X-Gm-Message-State: AOAM532Fct2W/C+khvppm4DwR7hAaVFapjhOWbYJ7nAbR9Bk6VZUE7bs
 t+BGn2yOkubF/AnB9rPnxJpek5sKqlgs7g==
X-Google-Smtp-Source: ABdhPJzhQjIY1xekxmlLnXxFoaoDXnxuUYtHYAEy+QiJkOIvEcHlcWE0a9Pz96vFsTMDW8nYlCHseQ==
X-Received: by 2002:ac8:3fee:: with SMTP id v43mr20625000qtk.192.1600216339933; 
 Tue, 15 Sep 2020 17:32:19 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id i62sm18658433qkf.36.2020.09.15.17.32.19
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Sep 2020 17:32:19 -0700 (PDT)
Message-ID: <5F615D12.4040300@gmail.com>
Date: Tue, 15 Sep 2020 20:32:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BYAPR03MB4678CA6B6C59C6C3CC1FF2BBD3200@BYAPR03MB4678.namprd03.prod.outlook.com>
 <BYAPR03MB4678DD52A6F64FCF2081BD33D3200@BYAPR03MB4678.namprd03.prod.outlook.com>
In-Reply-To: <BYAPR03MB4678DD52A6F64FCF2081BD33D3200@BYAPR03MB4678.namprd03.prod.outlook.com>
Subject: Re: [USRP-users] R: UHD and GPUs
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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
Content-Type: multipart/mixed; boundary="===============7778089973046969327=="
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
--===============7778089973046969327==
Content-Type: multipart/alternative;
 boundary="------------080607020301020904020500"

This is a multi-part message in MIME format.
--------------080607020301020904020500
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/15/2020 07:37 PM, Minutolo, Lorenzo via USRP-users wrote:
>
> Hi All,
>
> Is there any plan (or ~simple way) to use GPUDirect to make USRP 
> samples go to and from an Nvidia GPU memory without passing through 
> the CPU?
>
> My application, which heavily relies on GPU for processing, is 
> currently limited by the round trip latency. Since we have a new 
> streaming protocol with UHD 4.0 I thought there could be an update on 
> the topic.
>
> Any suggestion is appreciated,
>
> Best,
>
> Lorenzo
>
>
Supporting GPUDirect for network devices, which is what we're mostly 
talking about, would be the job of network-card driver developers and
   maintainers.  Has there been any commitment to do this for Linux 
compatible network cards that might be of interest to UHD users?

UHD hasn't traditionally been a place for "DSP things to happen directly 
in" so I'm not sure this would be anything that would be considered by
   the UHD team.  Having said *that*, DPDK has been making some inroads 
into improving performance by bypassing kernel drivers so it's
   not exactly "way out of scope" or anything, just perhaps a bit more 
"out there" than might have been considered up to this point.

Speaking as a tech-support person for NI/Ettus I see this as a support 
nightmare.  But perhaps that's just my (experience-informed)
   pessimism kicking in...





--------------080607020301020904020500
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/15/2020 07:37 PM, Minutolo,
      Lorenzo via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:BYAPR03MB4678DD52A6F64FCF2081BD33D3200@BYAPR03MB4678.namprd03.prod.outlook.com"
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
span.StileMessaggioDiPostaElettronica19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
        <p class="MsoNormal">Hi All,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Is there any plan (or ~simple way) to use
          GPUDirect to make USRP samples go to and from an Nvidia GPU
          memory without passing through the CPU?<o:p></o:p></p>
        <p class="MsoNormal">My application, which heavily relies on GPU
          for processing, is currently limited by the round trip
          latency. Since we have a new streaming protocol with UHD 4.0 I
          thought there could be an update on the topic.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Any suggestion is appreciated,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Best,<o:p></o:p></p>
        <p class="MsoNormal">Lorenzo<o:p></o:p></p>
      </div>
      <br>
    </blockquote>
    Supporting GPUDirect for network devices, which is what we're mostly
    talking about, would be the job of network-card driver developers
    and<br>
      maintainers.  Has there been any commitment to do this for Linux
    compatible network cards that might be of interest to UHD users?<br>
    <br>
    UHD hasn't traditionally been a place for "DSP things to happen
    directly in" so I'm not sure this would be anything that would be
    considered by<br>
      the UHD team.  Having said *that*, DPDK has been making some
    inroads into improving performance by bypassing kernel drivers so
    it's<br>
      not exactly "way out of scope" or anything, just perhaps a bit
    more "out there" than might have been considered up to this point.<br>
    <br>
    Speaking as a tech-support person for NI/Ettus I see this as a
    support nightmare.  But perhaps that's just my (experience-informed)<br>
      pessimism kicking in...<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------080607020301020904020500--


--===============7778089973046969327==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7778089973046969327==--

