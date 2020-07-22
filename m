Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C569229DD5
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 19:06:33 +0200 (CEST)
Received: from [::1] (port=52736 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyICO-0005fh-8E; Wed, 22 Jul 2020 13:06:32 -0400
Received: from mail-qt1-f170.google.com ([209.85.160.170]:43531)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jyICK-0005Y6-Ag
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 13:06:28 -0400
Received: by mail-qt1-f170.google.com with SMTP id k18so2323985qtm.10
 for <usrp-users@lists.ettus.com>; Wed, 22 Jul 2020 10:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=uV/7jq51XZUzt2rMhSHePQYHvMC+h/88Z5ksLkUiEsI=;
 b=PLKeaBD784YrV+BTO06xJNwkVt8ekTJMBm60Q1FzyR/xJga1gA8vteOHUnDfIqggZ+
 c0Ud2EjnDgSkd0i6txWixCbDj+Ifs7bA3FLuWLQDFd+Fi5EYFbQyo60tzMOOm9+dIs+b
 P1OCVZ4EZXQcjI89d+zmn+SAEUazr9+L/MR/0h0TAWeE2Edql5+aQCWG0yxyeaw9WfIy
 wvWl3Y2Y1AfN9ahvU9wnt0gVgfHs8NeHLKNEiSgNzJXE2L7giJvhH2U0gK4JcDwlG9wW
 /WgxSf5YlLU/nDpnwP/JgM3L9xUVObGNuTmGO9a5ee20QbUqX7yifcPtSWCwwKoNVW/K
 Whaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=uV/7jq51XZUzt2rMhSHePQYHvMC+h/88Z5ksLkUiEsI=;
 b=ebpOzBLxE0m/ukUWM4chAB+7/XTKneIsSokvP0T9MNGEZHc2pL1tIXQRKOvHIC6liE
 Q/QG0peRJyjgzkCW4DRAJHM8Fzw+IwXYfA2CTzdqEbe4ueFu0GP9WAacVkdo6ZKjf/L0
 X4QchQaUJqKNuJYOKAasqNXELjKRhiyWcsf16oh6mLKQbaamYGOdoWTqO08Rv4LhdgYo
 7KtoH8X36OmDtOcpjGTcuQU3YESH0emEm37ZUhXUbrtZtKnVjgH7IQH0JBlgHeGIuo/p
 js64Ho52HsS1U9JUARQ89nMyolM3DEUa+AfkVKBWPukqN+vu++TyB195X69X44kmn/3v
 wNZw==
X-Gm-Message-State: AOAM532CIqbIw1lyE49CLrJOntpos1BgTPpjNXodB2b6OCP34skhGXIx
 8JHeVP7buMn7aCp/T5wiD1isg7N/OeA=
X-Google-Smtp-Source: ABdhPJyXnODJvJX4N7uFNHBb6nEtG9D1S/TrMmZD+yuzup0B3Xa7acU08Fs/ovAtYCVslPnaSILMwQ==
X-Received: by 2002:aed:3621:: with SMTP id e30mr333552qtb.190.1595437547023; 
 Wed, 22 Jul 2020 10:05:47 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id l31sm211759qtc.33.2020.07.22.10.05.46
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Jul 2020 10:05:46 -0700 (PDT)
Message-ID: <5F1871E9.30802@gmail.com>
Date: Wed, 22 Jul 2020 13:05:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <PU1PR06MB2133D7FA64F75E34E3CCB8A28E790@PU1PR06MB2133.apcprd06.prod.outlook.com>
In-Reply-To: <PU1PR06MB2133D7FA64F75E34E3CCB8A28E790@PU1PR06MB2133.apcprd06.prod.outlook.com>
Subject: Re: [USRP-users] Planning to buy USRP
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
Content-Type: multipart/mixed; boundary="===============7986226232636097139=="
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
--===============7986226232636097139==
Content-Type: multipart/alternative;
 boundary="------------010805090207040808090205"

This is a multi-part message in MIME format.
--------------010805090207040808090205
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/22/2020 04:45 AM, Kumari, Surabhi via USRP-users wrote:
>
> Hi,
>
> I was working with LimeSDR with OpenAirInterface, We are not getting 
> the desired result. We are planning to buy USRP. Please suggest which 
> USRP shall we buy which should be compatible with openairinterface as 
> well as free5GC.
>
> Please let me know what are the other hardware requirements to work 
> with USRP.
>
> Regards,
>
> Surabhi
>
>
You may want to augment whatever USRP you buy with a GPSDO module, since 
I think most of these "stacks" are sensitive to timing quality.

Without knowing exactly what problems you encountered with the LimeSDR, 
it's hard to make recommendations.  I hate to do this on a technical
   list, but sales@ni.com might be your best bet.



--------------010805090207040808090205
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/22/2020 04:45 AM, Kumari, Surabhi
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:PU1PR06MB2133D7FA64F75E34E3CCB8A28E790@PU1PR06MB2133.apcprd06.prod.outlook.com"
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
        <p class="MsoNormal">Hi,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I was working with LimeSDR with
          OpenAirInterface, We are not getting the desired result. We
          are planning to buy USRP. Please suggest which USRP shall we
          buy which should be compatible with openairinterface as well
          as free5GC.<o:p></o:p></p>
        <p class="MsoNormal">Please let me know what are the other
          hardware requirements to work with USRP.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Regards,<o:p></o:p></p>
        <p class="MsoNormal">Surabhi<o:p></o:p></p>
      </div>
      <br>
    </blockquote>
    You may want to augment whatever USRP you buy with a GPSDO module,
    since I think most of these "stacks" are sensitive to timing
    quality.<br>
    <br>
    Without knowing exactly what problems you encountered with the
    LimeSDR, it's hard to make recommendations.  I hate to do this on a
    technical<br>
      list, but <a class="moz-txt-link-abbreviated" href="mailto:sales@ni.com">sales@ni.com</a> might be your best bet.<br>
    <br>
    <br>
  </body>
</html>

--------------010805090207040808090205--


--===============7986226232636097139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7986226232636097139==--

