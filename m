Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C5D26D06C
	for <lists+usrp-users@lfdr.de>; Thu, 17 Sep 2020 03:11:33 +0200 (CEST)
Received: from [::1] (port=55851 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kIiSP-000889-LZ; Wed, 16 Sep 2020 21:11:29 -0400
Received: from mail-qv1-f54.google.com ([209.85.219.54]:38583)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kIiSM-0007yV-1X
 for usrp-users@lists.ettus.com; Wed, 16 Sep 2020 21:11:26 -0400
Received: by mail-qv1-f54.google.com with SMTP id p15so193487qvk.5
 for <usrp-users@lists.ettus.com>; Wed, 16 Sep 2020 18:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=Z8aF2AyzRWaTrDx2+GjqYrHcIKrDjPHgHlEU9yDQP6Y=;
 b=HI1o9EaMhDFf69pFMJufjvk7ZF/Gwq3UX6nsbWNKZCcTGgLwudHAdu1MCsWknHzLEW
 rkg/O9xrPBQN4Gl2dcVGP+VbSe5RBv8SDntHkLseJyp7ZpLcBVYuV7skPQ6/9rFJK3bt
 0TYiqBqh28y0MCxyYviNCtDQsFWhxiTkaGb2XBezTg0eKAHkCsSMgi11NI3IslQOzWvv
 cg/9FYg1gxIcijdjcvgUYiCKjhjHfdR+eESVG/KVy9iKDAtkVUHmZP8bSxGJFHTZh5u6
 ogYm5hrpC1A2RA6hMwmHBQYnP5ur1ag0gzlVRTx9xyR48GLRn9EoLAHQSWeNRx4EWWWI
 H5nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=Z8aF2AyzRWaTrDx2+GjqYrHcIKrDjPHgHlEU9yDQP6Y=;
 b=aYibjZJELpbKrSKL9L9czl5X4Dn6l23dVzQdT+Pf9Dxll54AqiFfs6u22cjSPvvyWj
 POxrmvF+JumcFPv15o4HWQGrDx35/CW6+H82OqhWNKv132KM5wqwG8CYS69YzRLLZZV+
 98vK+R6geVT5znaqEPhnf5cbu8yhvXBTFex+VJTDm4cVPTbKPPwDZIjSDMxi0Yj1PISu
 uK1/fGwT18m5ZkvXHlK5NhF67wWmThHANWX1BRFOVYbNQOVFHFD/YEWYQWUbZiVAaCQY
 /YcoVydW06KGpIRjHdC1HFHNyxj2Rogqra/BlF3YJ77OoLI+LGOSLcgafRlOmkHHadfu
 v86w==
X-Gm-Message-State: AOAM533gV0kOrl+1cJ4B0HNtEJjIvGz84IFPQMOEdrc8+JSda1Gp51wa
 ZHz36s9WmHhZak/7Hvl/wPXDVW0ScRxEmw==
X-Google-Smtp-Source: ABdhPJyzFP+YhXb6tRdT+q23SVOxGRfKmS4nTaj+cMfQAckAGqIkRewrZ/wQP3be54FBk3T8j9cFDw==
X-Received: by 2002:a0c:e5cf:: with SMTP id u15mr25792622qvm.24.1600305045174; 
 Wed, 16 Sep 2020 18:10:45 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id g14sm20507354qkk.38.2020.09.16.18.10.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 16 Sep 2020 18:10:44 -0700 (PDT)
Message-ID: <5F62B793.3060007@gmail.com>
Date: Wed, 16 Sep 2020 21:10:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Minutolo, Lorenzo" <minutolo@caltech.edu>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BYAPR03MB4678CA6B6C59C6C3CC1FF2BBD3200@BYAPR03MB4678.namprd03.prod.outlook.com>
 <BYAPR03MB4678DD52A6F64FCF2081BD33D3200@BYAPR03MB4678.namprd03.prod.outlook.com>
 <5F615D12.4040300@gmail.com>
 <BYAPR03MB46783BF6778A8128B6AB97BAD3210@BYAPR03MB4678.namprd03.prod.outlook.com>
 <5F62692B.5000906@gmail.com>
 <BYAPR03MB467882E1EA3CB16AB84583C2D3210@BYAPR03MB4678.namprd03.prod.outlook.com>
 <5F62AFE9.5070400@gmail.com>
 <BYAPR03MB4678F980B66EAAA15FEC96E1D33E0@BYAPR03MB4678.namprd03.prod.outlook.com>
In-Reply-To: <BYAPR03MB4678F980B66EAAA15FEC96E1D33E0@BYAPR03MB4678.namprd03.prod.outlook.com>
Subject: Re: [USRP-users] R: R: R:  R: UHD and GPUs
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
Content-Type: multipart/mixed; boundary="===============3191216709775536564=="
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
--===============3191216709775536564==
Content-Type: multipart/alternative;
 boundary="------------030403010909080406050007"

This is a multi-part message in MIME format.
--------------030403010909080406050007
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 09/16/2020 09:00 PM, Minutolo, Lorenzo wrote:
>
> The GPU does the signal demodulation (specific for each detector). The 
> phase shift has the strongest response usually, a representation of 
> the resonator in phase magnitude is available here 
> <http://www.its.caltech.edu/%7Eminutolo/server_docs/images/resonator_model.html>. 
>
>
> In this 
> <http://www.its.caltech.edu/%7Eminutolo/server_docs/images/screenshot_calib_diag.html> 
> other plot you can see a VNA overlapped to a noise acquisition in 
> which we make the phonon flux oscillate.
>
> Tone tracking comes into play when the resonator does not shift few 
> kHz from the original resonant frequency but ~2MHz: using a fixed tone 
> on resonance, say 300MHz, we will detect very small variation in the 
> S21 if the resonator moves from 301MHz to 302MHz.
>
Is the resonator drift due to photon flux, or some physical non-ideality 
in the physical implementation of the resonators? They're supercooled,
   so I wouldn't expect temperature effects--but I'm not a physicist.  I 
just play one on the Internet....
>
> An FPGA firmware has the downside of not being programmable in simple 
> languages like python or cuda and would fail the original flexibility 
> of the project.
>
> I’m curious anyway: suppose I want to implement a tone tracking 
> firmware: would I still have space on a N321 to keep the stock 
> firmware? In other words: can I add functionalities without discarding 
> all the UHD api already in place?
>
I'm not sure what the "headroom" is on the N321.  It has generally been 
the case that really-exotic "stuff" in the FPGA tends to cause one
   to "throw stuff out", but there may be enough room on the N321 to 
make that not a thing.

Please copy the list on this dialog, since there are others on the list 
better situated to answer questions about FPGA "headroom", etc.  I've done
   so on this reply.


> Lorenzo
>
>


--------------030403010909080406050007
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/16/2020 09:00 PM, Minutolo,
      Lorenzo wrote:<br>
    </div>
    <blockquote
cite="mid:BYAPR03MB4678F980B66EAAA15FEC96E1D33E0@BYAPR03MB4678.namprd03.prod.outlook.com"
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
	font-family:"Calibri",sans-serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
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
        <p class="MsoNormal"><span style="color:windowtext">The GPU does
            the signal demodulation (specific for each detector). The
            phase shift has the strongest response usually, a
            representation of the resonator in phase magnitude is
            available
            <a moz-do-not-send="true"
href="http://www.its.caltech.edu/%7Eminutolo/server_docs/images/resonator_model.html">here</a>.
            <o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:windowtext">In <a
              moz-do-not-send="true"
href="http://www.its.caltech.edu/%7Eminutolo/server_docs/images/screenshot_calib_diag.html">this</a>
            other plot you can see a VNA overlapped to a noise
            acquisition in which we make the phonon flux oscillate.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:windowtext">Tone
            tracking comes into play when the resonator does not shift
            few kHz from the original resonant frequency but ~2MHz:
            using a fixed tone on resonance, say 300MHz, we will detect
            very small variation in the S21 if the resonator moves from
            301MHz to 302MHz.</span></p>
      </div>
    </blockquote>
    Is the resonator drift due to photon flux, or some physical
    non-ideality in the physical implementation of the resonators? 
    They're supercooled,<br>
      so I wouldn't expect temperature effects--but I'm not a
    physicist.  I just play one on the Internet....<br>
    <blockquote
cite="mid:BYAPR03MB4678F980B66EAAA15FEC96E1D33E0@BYAPR03MB4678.namprd03.prod.outlook.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><span style="color:windowtext"><o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:windowtext"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:windowtext">An FPGA
            firmware has the downside of not being programmable in
            simple languages like python or cuda and would fail the
            original flexibility of the project.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:windowtext">I’m curious
            anyway: suppose I want to implement a tone tracking
            firmware: would I still have space on a N321 to keep the
            stock firmware? In other words: can I add functionalities
            without discarding all the UHD api already in place?</span></p>
      </div>
    </blockquote>
    I'm not sure what the "headroom" is on the N321.  It has generally
    been the case that really-exotic "stuff" in the FPGA tends to cause
    one<br>
      to "throw stuff out", but there may be enough room on the N321 to
    make that not a thing.<br>
    <br>
    Please copy the list on this dialog, since there are others on the
    list better situated to answer questions about FPGA "headroom",
    etc.  I've done<br>
      so on this reply.<br>
    <br>
    <br>
    <blockquote
cite="mid:BYAPR03MB4678F980B66EAAA15FEC96E1D33E0@BYAPR03MB4678.namprd03.prod.outlook.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><span style="color:windowtext"><o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:windowtext"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:windowtext">Lorenzo<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:windowtext"><o:p> </o:p></span></p>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------030403010909080406050007--


--===============3191216709775536564==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3191216709775536564==--

