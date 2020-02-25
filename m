Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2B116F2C6
	for <lists+usrp-users@lfdr.de>; Tue, 25 Feb 2020 23:54:04 +0100 (CET)
Received: from [::1] (port=53424 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6j5U-0002ck-7J; Tue, 25 Feb 2020 17:54:00 -0500
Received: from mail-qk1-f171.google.com ([209.85.222.171]:40843)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1j6j5Q-00021V-LZ
 for usrp-users@lists.ettus.com; Tue, 25 Feb 2020 17:53:56 -0500
Received: by mail-qk1-f171.google.com with SMTP id b7so843763qkl.7
 for <usrp-users@lists.ettus.com>; Tue, 25 Feb 2020 14:53:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=OIInWdc1FpELfi8jeczg6DAQpHxdvBC4XxuSGU92EWY=;
 b=TtqhU71Z0sakyXaG+tejnYar6/PJl4fCNL5R+/hr0cN+aN15dudW3/SbU2vVDbVjcs
 CvTFxcGtqhYvSw0hEpSiQ+R5Ey2rsE68GiDprfhqikmgjfmPBcYdl/6+Wd+MKFP75jiV
 Ls51qh33seaZ/JlOctWqlX6XND1rSqJmgPF26PpazuyrCFyn3s4kvS0LWEqk/Cv5P3PM
 nttenlQjkKJH6OvKflSPJS0DAJK8Z/snKbCZ7Fa3fIObEGWZNHd0ysU9ENY8m3tUtkcj
 kSjXv0zA6/tfFjMSncWoTLj3hlvqtG+lOk6H6miQ/CaLrluMnG3GKFOn9CiZueAFwctf
 OMLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=OIInWdc1FpELfi8jeczg6DAQpHxdvBC4XxuSGU92EWY=;
 b=ILCdtgg8oYbYD8J4GwLrBgJAq0Lkhs/LgIPj/OfH3LdlrB9jUQyWt30W9xb6eWQ+Jy
 kepYonU2tPAkMW4m5Q/XM4BowAdtG123jcW+Tq2Xt7lvUbAjHeZjQ/1uNtpl8AhAJmEw
 uI0+rn+JiFWYIGGDZMoqXO3j3DWfATi4ikBun5v7nRR25YZNUJY5/e7tMXuEgQbpca0U
 JpPimqV0nTgATDnc2pAdAZwicMaiTlMUDZ0qHbPjUnfKqED3XJkeTOnEtFxdeCH8iOWV
 75XwBwTG6lRoJTHO/lNqKx/qpsxzSwelLm2Jp4jqnnkyP6KKOCh1CLsOAlDKv2NGaZZm
 dKhA==
X-Gm-Message-State: APjAAAXde91ah1LQzScY7k5xru4wxwbkYwb891GzqwvDiyQApt4AQ3VH
 Wjp+eF+RLLhPjJHkQyNc4Lr89S3nuh0=
X-Google-Smtp-Source: APXvYqynP2jus8aDtKqa4mbH/A/ixBOqEKsqycUQSkfeEO6dCKHg5pHzQbjgoVie4diL8Mzk5dEw7Q==
X-Received: by 2002:ae9:dcc1:: with SMTP id q184mr1446048qkf.480.1582671195897; 
 Tue, 25 Feb 2020 14:53:15 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id e20sm57028qka.39.2020.02.25.14.53.15
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Feb 2020 14:53:15 -0800 (PST)
Message-ID: <5E55A55A.3080009@gmail.com>
Date: Tue, 25 Feb 2020 17:53:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <245301d5ec1e$8889e490$999dadb0$@sdr-radio.com>
In-Reply-To: <245301d5ec1e$8889e490$999dadb0$@sdr-radio.com>
Subject: Re: [USRP-users] Closing Connection, X310 Problem
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
Content-Type: multipart/mixed; boundary="===============1611790969103763360=="
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
--===============1611790969103763360==
Content-Type: multipart/alternative;
 boundary="------------030700020903040501050401"

This is a multi-part message in MIME format.
--------------030700020903040501050401
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 02/25/2020 03:59 PM, Simon G4ELI via USRP-users wrote:
>
> Hi,
>
> Question is in two related parts.
>
> 1 Closing Connection
>
> In 3.10.0 when I was finished streaming data I would call
>
>  1. m_usrp->reset() and
>  2. m_rx_stream->reset()
>
> but in 3.15 LTS I don’t see a way to reset / discard the pointers 
> returned from uhd::usrp::multi_usrp::make and m_usrp->get_rx_stream. 
> The reset calls no longer exist.
>
> So, how do I correctly do this?
>
You should just be able to call the destructor:

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a6c904057108e52d685b27496a11518db


> 2 X310
>
> [Note – only a problem with the X310, B200 works well]
>
> When I want to change the sample rate, for example from 1 Msps to 10 Msps:
>
>  1. Close (see above)
>  2. Create new m_usrp via uhd::usrp::multi_usrp::make
>  3. Set new sample rate
>  4. Call m_usrp->get_rs_stream but I get an exception: exception
>     0000054F (1359), RuntimeError: On node 0/DDC_0, output port 0 is
>     already connected
>
> So this refers back to 1 – how do I get the connection to the X310 
> fully closed?
>
The X310 takes 15-20 seconds to reset itself internally when you close 
the session with it.  There's never any reason to recreate the USRP
   object just to change the sample rate.  So if your frequency-changing 
code does that, and expects the USRP to "come back" immediately
   after you've reset it, there'll be some strange behavior at the 
network level.  So, yeah, sample-rate change shouldn't need anything so
   "drastic".




> TIA
>
> Simon Brown, G4ELI
>
> https://www.sdr-radio.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------030700020903040501050401
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/25/2020 03:59 PM, Simon G4ELI via
      USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:245301d5ec1e$8889e490$999dadb0$@sdr-radio.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
/* List Definitions */
@list l0
	{mso-list-id:1163278703;
	mso-list-type:hybrid;
	mso-list-template-ids:1368578720 134807567 134807577 134807579 134807567 134807577 134807579 134807567 134807577 134807579;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:1467039996;
	mso-list-type:hybrid;
	mso-list-template-ids:-1858019480 134807553 134807555 134807557 134807553 134807555 134807557 134807553 134807555 134807557;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l2
	{mso-list-id:2074110930;
	mso-list-type:hybrid;
	mso-list-template-ids:1733442374 134807567 134807555 134807557 134807553 134807555 134807557 134807553 134807555 134807557;}
@list l2:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hi,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Question is in two related parts.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">1 Closing Connection<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">In 3.10.0 when I was finished streaming
          data I would call<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <ol style="margin-top:0cm" start="1" type="1">
          <li class="MsoListParagraph"
            style="margin-left:0cm;mso-list:l2 level1 lfo3">m_usrp-&gt;reset()
            and <o:p></o:p></li>
          <li class="MsoListParagraph"
            style="margin-left:0cm;mso-list:l2 level1 lfo3">m_rx_stream-&gt;reset()<o:p></o:p></li>
        </ol>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">but in 3.15 LTS I don’t see a way to reset
          / discard the pointers returned from
          uhd::usrp::multi_usrp::make and m_usrp-&gt;get_rx_stream. The
          reset calls no longer exist.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">So, how do I correctly do this? <o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
    </blockquote>
    You should just be able to call the destructor:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a6c904057108e52d685b27496a11518db">https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a6c904057108e52d685b27496a11518db</a><br>
    <br>
    <br>
    <blockquote cite="mid:245301d5ec1e$8889e490$999dadb0$@sdr-radio.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">2 X310<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">[Note – only a problem with the X310, B200
          works well]<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">When I want to change the sample rate, for
          example from 1 Msps to 10 Msps:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <ol style="margin-top:0cm" start="1" type="1">
          <li class="MsoListParagraph"
            style="margin-left:0cm;mso-list:l0 level1 lfo2">Close (see
            above)<o:p></o:p></li>
          <li class="MsoListParagraph"
            style="margin-left:0cm;mso-list:l0 level1 lfo2">Create new
            m_usrp via uhd::usrp::multi_usrp::make<o:p></o:p></li>
          <li class="MsoListParagraph"
            style="margin-left:0cm;mso-list:l0 level1 lfo2">Set new
            sample rate<o:p></o:p></li>
          <li class="MsoListParagraph"
            style="margin-left:0cm;mso-list:l0 level1 lfo2">Call
            m_usrp-&gt;get_rs_stream but I get an exception: exception
            0000054F (1359), RuntimeError: On node 0/DDC_0, output port
            0 is already connected <o:p></o:p></li>
        </ol>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">So this refers back to 1 – how do I get the
          connection to the X310 fully closed?</p>
      </div>
    </blockquote>
    The X310 takes 15-20 seconds to reset itself internally when you
    close the session with it.  There's never any reason to recreate the
    USRP<br>
      object just to change the sample rate.  So if your
    frequency-changing code does that, and expects the USRP to "come
    back" immediately<br>
      after you've reset it, there'll be some strange behavior at the
    network level.  So, yeah, sample-rate change shouldn't need anything
    so<br>
      "drastic".<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote cite="mid:245301d5ec1e$8889e490$999dadb0$@sdr-radio.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">TIA<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><span style="mso-fareast-language:EN-GB">Simon
            Brown, G4ELI<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="mso-fareast-language:EN-GB"><a class="moz-txt-link-freetext" href="https://www.sdr-radio.com">https://www.sdr-radio.com</a><o:p></o:p></span></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
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

--------------030700020903040501050401--


--===============1611790969103763360==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1611790969103763360==--

