Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A2A2D9E2B
	for <lists+usrp-users@lfdr.de>; Mon, 14 Dec 2020 18:50:56 +0100 (CET)
Received: from [::1] (port=57358 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1korzr-0008Cr-Cn; Mon, 14 Dec 2020 12:50:55 -0500
Received: from mail-qk1-f172.google.com ([209.85.222.172]:39978)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1korzm-00086k-ID
 for usrp-users@lists.ettus.com; Mon, 14 Dec 2020 12:50:50 -0500
Received: by mail-qk1-f172.google.com with SMTP id z11so16396370qkj.7
 for <usrp-users@lists.ettus.com>; Mon, 14 Dec 2020 09:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=1rUj8oU8c1axc0VjWxx30FgtGjL+JoyEuqhGHB3FHYA=;
 b=RD8jsVxFfl46/mq3QuM7V2WUhqUt7zZcWrSHBySdLZx3//re6pWruIjxmRgN4wR0Fp
 81M0fqqOo3DlEX3mLe1G2xOfI7mtP3UeiqHt60Y4UeS63P+4vgUV/7vndgtFbxwd7ftI
 2OEq7YobnWWQCyFUSrh9WmcJ3SGIgI7YZNg/SxNr52zYEC96OAbWY21Xwu71LQXDJbvk
 l9LFeqEyHAb45NxoNHBjFf7BuRihtn82mYR5Rcew3voPS7sTooc8JNp9ZEvixAFg72y0
 kPxizUuqh5uvhvXB3+93nN3/lKFZcHiKU7Z59SHayVdu2Wo90iTqOJYR7CG1FFha+GFD
 qZKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=1rUj8oU8c1axc0VjWxx30FgtGjL+JoyEuqhGHB3FHYA=;
 b=ceJNthIT3tGa7pxwPmRACedCYRNR7c1HdJMWFizaAzg6tShB4386l+KuhjQTb+jzLV
 tuMWOp/pckmgQq/c4s05DvzubG2K0V/sGWlhiMJ3opkeAWmveMBQBwL06g623faAlnqY
 ua9+GJPlfOtoC2s9usg1VjMKihDAmkHN9nNqnRH6Thl2Ht3T3dYxqhK1T7yn//AN0qhJ
 uabgfGGFVGBL/k+wXCov8SIg3iBvea2ou8/SOEhcXGWzi34XBTP80hJfVhHIvADem3rR
 VemhwrkYUjxvN7wHb+1mAMIrhoUYJ5oq8ADU2KelT42ZSy/QcS0Aj7Nw36aDtljS+YHw
 W4sw==
X-Gm-Message-State: AOAM530ezf7LV3WFgh+5XLQdSUA3cFbaliOE7xBnM0pvmb9972o/wm35
 59QCvEuvfhxoVkIrCwP10cE+Dwi/9J8=
X-Google-Smtp-Source: ABdhPJydVTqTQVPVVvwztJi51mf0A0tUAtvEuEw95IW5Nto/kZLwBG5BlnaH+PDTqia+xieQ6GoV/w==
X-Received: by 2002:a05:620a:805:: with SMTP id
 s5mr34352161qks.80.1607968209824; 
 Mon, 14 Dec 2020 09:50:09 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id
 w127sm10453871qkb.133.2020.12.14.09.50.09
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 14 Dec 2020 09:50:09 -0800 (PST)
Message-ID: <5FD7A5D0.4080409@gmail.com>
Date: Mon, 14 Dec 2020 12:50:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <5d1326921305455b8405632fffdc7c2c@mail03.iis.fhg.de>
In-Reply-To: <5d1326921305455b8405632fffdc7c2c@mail03.iis.fhg.de>
Subject: Re: [USRP-users] B210 USRP TX Spectrum Channel Differences
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
Content-Type: multipart/mixed; boundary="===============3623471241770420064=="
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
--===============3623471241770420064==
Content-Type: multipart/alternative;
 boundary="------------010502020107010508090308"

This is a multi-part message in MIME format.
--------------010502020107010508090308
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 12/14/2020 09:44 AM, Nieland, Michael via USRP-users wrote:
>
> Dear all,
>
> we are using two B210 USRP’s to generate and receive DQPSK Signals at 
> 1.53 GHz (two TX and two  RX channels). The USRP’s use FW Version 8.0 
> and FPGA Version 16.0 (Hardware Revision 4). We found that there are 
> quite significant differences in spurious output between the two tx 
> channels on the B210. I attached screenshots of my spectrum analyzer 
> measurements demonstrating this behavior.
>
> A couple of more details about the setup:
>
> -              USRP connected and powered via USB3
>
> -              No external reference used for the above measurements
>
> -              The signals are generated using a GnuRadio flowgraph
>
> The spurious signals are always present and independent of the TX Gain 
> setting, the digital signal amplitude and the signal frequency. We 
> observed the same behavior on another B210 USRP. We are assuming this 
> is hardware related but are wondering if UHD settings also play a role 
> here and if there is a way to possibly improve the performance of 
> channel 2 in particular (~20 dB difference at 1.52 GHz spur between 
> channel 1 and channel 2).
>
> Best regards
>
> Michael Nieland
>
>
This is probably just a hardware quirk of the AD9361 chip that forms 
nearly the entirety of the RF chain on the B2xx series USRPs.

The spur on the 2nd channel looks like it's still about -40dBc, which I 
believe is "in spec" for the AD9361 chip.




--------------010502020107010508090308
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 12/14/2020 09:44 AM, Nieland,
      Michael via USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:5d1326921305455b8405632fffdc7c2c@mail03.iis.fhg.de"
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Dear all, <br>
          <br>
          <o:p></o:p></p>
        <p class="MsoNormal"><span lang="EN-US">we are using two B210
            USRP’s to generate and receive DQPSK Signals at 1.53 GHz
            (two TX and two  RX channels). The USRP’s use FW Version 8.0
            and FPGA Version 16.0 (Hardware Revision 4). We found that
            there are quite significant differences in spurious output
            between the two tx channels on the B210. I attached
            screenshots of my spectrum analyzer measurements
            demonstrating this behavior.
            <o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">A couple of more details
            about the setup:
            <o:p></o:p></span></p>
        <p class="MsoNormal" style="text-indent:35.4pt"><span
            lang="EN-US">-              USRP connected and powered via
            USB3<o:p></o:p></span></p>
        <p class="MsoNormal" style="text-indent:35.4pt"><span
            lang="EN-US">-              No external reference used for
            the above measurements<o:p></o:p></span></p>
        <p class="MsoNormal" style="text-indent:35.4pt"><span
            lang="EN-US">-              The signals are generated using
            a GnuRadio flowgraph<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">The spurious signals are
            always present and independent of the TX Gain setting, the
            digital signal amplitude and the signal frequency. We
            observed the same behavior on another B210 USRP. We are
            assuming this is hardware related but are wondering if UHD
            settings also play a role here and if there is a way to
            possibly improve the performance of channel 2 in particular
            (~20 dB difference at 1.52 GHz spur between channel 1 and
            channel 2).
            <br>
            <br>
            <o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Best regards <o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Michael Nieland<o:p></o:p></span></p>
      </div>
      <br>
    </blockquote>
    This is probably just a hardware quirk of the AD9361 chip that forms
    nearly the entirety of the RF chain on the B2xx series USRPs.<br>
    <br>
    The spur on the 2nd channel looks like it's still about -40dBc,
    which I believe is "in spec" for the AD9361 chip.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------010502020107010508090308--


--===============3623471241770420064==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3623471241770420064==--

