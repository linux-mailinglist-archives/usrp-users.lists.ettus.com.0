Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 904255895F
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jun 2019 19:58:58 +0200 (CEST)
Received: from [::1] (port=58722 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hgYfc-00056o-FN; Thu, 27 Jun 2019 13:58:52 -0400
Received: from mail-qk1-f180.google.com ([209.85.222.180]:46211)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hgYfY-000517-KC
 for usrp-users@lists.ettus.com; Thu, 27 Jun 2019 13:58:48 -0400
Received: by mail-qk1-f180.google.com with SMTP id x18so2473962qkn.13
 for <usrp-users@lists.ettus.com>; Thu, 27 Jun 2019 10:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=CwobMukKCG4baXStqTnrIS/sWWE1audTAogzBLDlu3M=;
 b=WAey4lEozWyIAl6hKFgNIT4owF+T3yg5elCm0p0XWeZ/kF61CG8RVOLrmyXRC4WQbA
 5y+YIxJMkT7XVa7c7Wf5LIgcHLtM/c22BDiCytZpUEi5yIjBf/MZlkDg5wEdJhTug9Ti
 XDxega6bBUbYlwUYQJfZPV8cZAays7dYYMHRbyjp7U9uxNbe7gel6bSvygbRcOjx0XJh
 G5nyY/GQYZsSzddBQENFLvszm9Qqtjqo04Z3gASMDyjsZ4r8o4/qAikSHHPF6Yv49qZe
 +/+Vg36+0IJb9WUqevzyAuKBSImcLdK73iFLkTvXCVzaj3RRVvvsz451fHmFCKsOs+C7
 ybrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=CwobMukKCG4baXStqTnrIS/sWWE1audTAogzBLDlu3M=;
 b=BfKgn4cTTWMYCHZ9BS9oLxlPvHbCUGRSffMfpVcei5AdBS5BmGdXZ4Li+Wujg9CLhv
 pUr0F4L98NvQsQOIRee872kHsY/x7Wd24s7VANAYV5WfL3ev73AqssOWOV84Xcex0A9i
 a4wfmykqDP+dN3f2VwnVlD2XRw18cVYcS9YESUZ3r98NOvy8k3TYBISj8uv8kUoXtLKU
 pnBmeNX+EoyqAPDfFszZxhNp6LNJV314AVptqFpkK/tRNt4yZdnMamoVxZctTEHUulFl
 q7AsxiovSWtJey3vA+PoZBynelx6GUuujDNSmZpEdIm8m4Qv15MO+ZalP8bgsONR66cf
 UC2w==
X-Gm-Message-State: APjAAAVXVcDimM7pVm4es9SJsp7PxaE7r1Dya8K+2T1s0b+RwVVLdymT
 89fZJUOfVjmx7HMTivDCSa+bl43s
X-Google-Smtp-Source: APXvYqx3nuB9V5bGKJug6WtUXz67/0gFXOwB6pmQw0g9MiU+UbDgPEpH/8/uH+M0qPN2MZ0RGpyWsg==
X-Received: by 2002:a37:9f14:: with SMTP id i20mr4577447qke.211.1561658287835; 
 Thu, 27 Jun 2019 10:58:07 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id r36sm1319712qte.71.2019.06.27.10.58.07
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 10:58:07 -0700 (PDT)
Message-ID: <5D1503AE.5030802@gmail.com>
Date: Thu, 27 Jun 2019 13:58:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <87aeadc1d01642b5b0181da373262f33@Bayard.toshiba-trel.local>
In-Reply-To: <87aeadc1d01642b5b0181da373262f33@Bayard.toshiba-trel.local>
Subject: Re: [USRP-users] X310 with CBX 120 daughter board looses uplink RF
 Connection
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Content-Type: multipart/mixed; boundary="===============2223306735852558359=="
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
--===============2223306735852558359==
Content-Type: multipart/alternative;
 boundary="------------090302000109030901000201"

This is a multi-part message in MIME format.
--------------090302000109030901000201
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/27/2019 12:22 PM, Jaya Thota via USRP-users wrote:
>
> Hi all,
>
> I have a two X310 with CBX-120 daughter board running on UHD version 
> 3.13.0 on Ubuntu 16.04.
>
> I am using it to tx/rx LTE 5MHz BW and 10 MHz BW signals at 2.85MHz 
> using directional LP0965 antennas.
>
> However after few minutes the USRP looses uplink RF connection.
>
> Do I need to calibrate them?
>
> I did send the following commands without any RF connectors to 
> calibrate. But I have the same issue.
>
> The master clock rate for LTE is 184.32e6 Hz. Do I need to send this 
> as well.
>
> Any suggestions will be helpful.
>
> 1. sudo uhd_cal_rx_iq_balance --verbose --args="addr=192.168.40.2" 
> --freq_start 2.4e9 --freq_stop 2.9e9 --freq_step 1e6
>
> 2. sudo uhd_cal_tx_iq_balance --verbose --args="addr=192.168.40.2" 
> --freq_start 2.4e9 --freq_stop 2.9e9 --freq_step 1e6
>
> 3. sudo uhd_cal_tx_dc_offset --verbose --args="addr=192.168.40.2" 
> --freq_start 2.4e9 --freq_stop 2.9e9 --freq_step 1e6
>
> Regards
>
> Jaya
>
There are a LOT of reasons for a complex system like LTE to lose its RF 
link.  Does the underlying LTE application provide any hints?
   Perhaps a debugging mode?

This likely IS NOT related to underlying UHD or hardware, per se, but 
probably some environmental issue, and the app should be able to help
   you debug it.


>
> ------------------------------------------------------------------------
>
> NOTE: The information in this email and any attachments may be 
> confidential and/or legally privileged. This message may be read, 
> copied and used only by the intended recipient. If you are not the 
> intended recipient, please destroy this message, delete any copies 
> held on your system and notify the sender immediately.
>
> Toshiba Research Europe Limited, registered in England and Wales 
> (2519556). Registered Office 208 Cambridge Science Park, Milton Road, 
> Cambridge CB4 0GZ, England. Web: www.toshiba.eu/research/trl
>
>
>
> ------------------------------------------------------------------------
> This email has been scanned for email related threats and delivered 
> safely by Mimecast.
> For more information please visit http://www.mimecast.com
> ------------------------------------------------------------------------
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------090302000109030901000201
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/27/2019 12:22 PM, Jaya Thota via
      USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:87aeadc1d01642b5b0181da373262f33@Bayard.toshiba-trel.local"
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Hi all,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I have a two X310 with CBX-120 daughter
          board running on UHD version 3.13.0 on Ubuntu 16.04.<o:p></o:p></p>
        <p class="MsoNormal">I am using it to tx/rx LTE 5MHz BW and 10
          MHz BW signals at 2.85MHz using directional LP0965 antennas.<o:p></o:p></p>
        <p class="MsoNormal">However after few minutes the USRP looses
          uplink RF connection.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Do I need to calibrate them?<o:p></o:p></p>
        <p class="MsoNormal">I did send the following commands without
          any RF connectors to calibrate. But I have the same issue.
          <o:p></o:p></p>
        <p class="MsoNormal">The master clock rate for LTE is 184.32e6
          Hz. Do I need to send this as well.<o:p></o:p></p>
        <p class="MsoNormal">Any suggestions will be helpful.<o:p></o:p></p>
        <p class="MsoNormal"
          style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">1.
          sudo uhd_cal_rx_iq_balance --verbose
          --args="addr=192.168.40.2" --freq_start 2.4e9 --freq_stop
          2.9e9 --freq_step 1e6<o:p></o:p></p>
        <p class="MsoNormal"
          style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">2.
          sudo uhd_cal_tx_iq_balance --verbose
          --args="addr=192.168.40.2" --freq_start 2.4e9 --freq_stop
          2.9e9 --freq_step 1e6<o:p></o:p></p>
        <p class="MsoNormal"
          style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">3.
          sudo uhd_cal_tx_dc_offset --verbose --args="addr=192.168.40.2"
          --freq_start 2.4e9 --freq_stop 2.9e9 --freq_step 1e6<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Regards<o:p></o:p></p>
        <p class="MsoNormal">Jaya</p>
      </div>
    </blockquote>
    There are a LOT of reasons for a complex system like LTE to lose its
    RF link.  Does the underlying LTE application provide any hints?<br>
      Perhaps a debugging mode?<br>
    <br>
    This likely IS NOT related to underlying UHD or hardware, per se,
    but probably some environmental issue, and the app should be able to
    help<br>
      you debug it.<br>
    <br>
    <br>
    <blockquote
      cite="mid:87aeadc1d01642b5b0181da373262f33@Bayard.toshiba-trel.local"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p></o:p></p>
      </div>
      <br>
      <hr>
      <font color="Gray" face="Arial" size="3"><br>
        NOTE: The information in this email and any attachments may be
        confidential and/or legally privileged. This message may be
        read, copied and used only by the intended recipient. If you are
        not the intended recipient, please destroy this message, delete
        any copies held on your system and notify the sender
        immediately.<br>
        <br>
        Toshiba Research Europe Limited, registered in England and Wales
        (2519556). Registered Office 208 Cambridge Science Park, Milton
        Road, Cambridge CB4 0GZ, England. Web:
        <a class="moz-txt-link-abbreviated" href="http://www.toshiba.eu/research/trl">www.toshiba.eu/research/trl</a><br>
        <br>
      </font>
      <br>
      <br>
      <span style="font-family:Arial; Font-size:10.0pt">
        <hr width="100%"> This email has been scanned for email related
        threats and delivered safely by Mimecast.<br>
        For more information please visit <a moz-do-not-send="true"
          href="http://www.mimecast.com">http://www.mimecast.com</a>
        <hr width="100%"> </span>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------090302000109030901000201--


--===============2223306735852558359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2223306735852558359==--

