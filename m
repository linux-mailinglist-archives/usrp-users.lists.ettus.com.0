Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E938659CC4
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2019 15:15:37 +0200 (CEST)
Received: from [::1] (port=50358 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hgqj3-00074T-0x; Fri, 28 Jun 2019 09:15:37 -0400
Received: from mail-qk1-f182.google.com ([209.85.222.182]:43691)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hgqiz-0006fh-Cn
 for usrp-users@lists.ettus.com; Fri, 28 Jun 2019 09:15:33 -0400
Received: by mail-qk1-f182.google.com with SMTP id m14so4714291qka.10
 for <usrp-users@lists.ettus.com>; Fri, 28 Jun 2019 06:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=NYxHPfStnqXzxxoD1KMlikGirUjHpG9U6tpvyj7GLRM=;
 b=RkIVoGuYnvrtCMkrCrQezN9R5favZiXFHna8wY69CNKX3N7LvU93emAWd/x/umWUkT
 w9W21cxZtPDgYZKJfNW2qBpzSXfapBmIazi85bBMM+Br/LA56/qY5V83pP6QJHPOKFkG
 rUVtR9ppOTOEi1Cp2VLksQV0AGcndDvy3cS9gi00wJ+ufbS75ykPSUgHwAOAjn68DcTD
 t21UeWtwt6lqhxJrW0QkaiZdJwpgaaP+Cui2f+j1XEDYExkfvMB6LMDlJP6FhxJ7Y+91
 Y3wnqueSQrUWTRGAtiLWDyQvYuGllhGgkv0h9KIJwgq1qFue2PVXHEOatxbguTwjAhbQ
 X/qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=NYxHPfStnqXzxxoD1KMlikGirUjHpG9U6tpvyj7GLRM=;
 b=cO4pwL4B6DW4cpsxpMwb3+wt4u+ru2a6GvKPAdzPTlXc3dWwXx5B06yZxKonLFglU+
 6NMVRYa2Ed7Rcs9r7WrncVvwzLgbquVUkSWp4+INTbhIkCBueXedh7qUi/sxspqFQKUn
 VZll4DK8fgz1NIR0Aah/Idb1Pn8KZG744vhECHaCyZp5VIsH5/RvASaEqQa39q5fxnTf
 WtkdPNa+9IPOnshHDjznrhV1sl9Fiev7HXCrfGSR8W83l9YKeL4A6fXJqugqCLXzFHed
 wo9W5pcA1/JcbPE80HaiLx3xv0utxDPwvt5wfyBJ0oNdrk4gLwPY6M5pOCJZLVfFUipS
 3ydQ==
X-Gm-Message-State: APjAAAW4Vw5uQPD3LUr3nWnUUJ7Qkr74hCws6cMVG8BSW6yEdAL9IPSK
 0LRTg86yC3vMfh8pT6QBRRmpZ45E
X-Google-Smtp-Source: APXvYqwpc8XEYxcwnq6GGv2kY+EHq49RkOBrb1lY0Hj96FBVaXm+HGu79yKPn5f+Lsw0oeV+J5p/ig==
X-Received: by 2002:ae9:f702:: with SMTP id s2mr8623543qkg.28.1561727692826;
 Fri, 28 Jun 2019 06:14:52 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id q29sm1034623qkq.77.2019.06.28.06.14.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 06:14:52 -0700 (PDT)
Message-ID: <5D1612CB.4050009@gmail.com>
Date: Fri, 28 Jun 2019 09:14:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jaya Thota <jaya.thota@toshiba-trel.com>, 
 'Robin Coxe' <coxe@quanttux.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <87aeadc1d01642b5b0181da373262f33@Bayard.toshiba-trel.local>
 <5D1503AE.5030802@gmail.com>
 <CAKJyDkJ6zmrz2rrgkVgOyRmasfDMkgwM6P53EF6x7tfCOqH5xQ@mail.gmail.com>
 <862833c66cb44040a94ae8eae6253ae8@Bayard.toshiba-trel.local>
In-Reply-To: <862833c66cb44040a94ae8eae6253ae8@Bayard.toshiba-trel.local>
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
Content-Type: multipart/mixed; boundary="===============7324564207730123558=="
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
--===============7324564207730123558==
Content-Type: multipart/alternative;
 boundary="------------080702000600030803030206"

This is a multi-part message in MIME format.
--------------080702000600030803030206
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/28/2019 05:10 AM, Jaya Thota wrote:
>
> Thanks Marcus. Shall I perform the calibration (uhd_cal_tx_iq_balance 
> , uhd_cal_tx_dc_offset ) with 30dB attenuator connected between TX/RX 
> and RX? Do you this will help?
>
No, leave the ports unconnceted when you are doing the CAL sequence.


> *From:*USRP-users <usrp-users-bounces@lists.ettus.com> *On Behalf Of 
> *Robin Coxe via USRP-users
> *Sent:* 27 June 2019 19:07
> *To:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Cc:* Ettus Mail List <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] X310 with CBX 120 daughter board looses 
> uplink RF Connection
>
> One debugging technique you could try would be to connect Tx to Rx 
> directly via an SMA cable with ~30dB of inline attenuation to 
> eliminate any RF propagation effects.
>
> On Thu, Jun 27, 2019 at 10:58 AM Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     On 06/27/2019 12:22 PM, Jaya Thota via USRP-users wrote:
>
>         Hi all,
>
>         I have a two X310 with CBX-120 daughter board running on UHD
>         version 3.13.0 on Ubuntu 16.04.
>
>         I am using it to tx/rx LTE 5MHz BW and 10 MHz BW signals at
>         2.85MHz using directional LP0965 antennas.
>
>         However after few minutes the USRP looses uplink RF connection.
>
>         Do I need to calibrate them?
>
>         I did send the following commands without any RF connectors to
>         calibrate. But I have the same issue.
>
>         The master clock rate for LTE is 184.32e6 Hz. Do I need to
>         send this as well.
>
>         Any suggestions will be helpful.
>
>         1. sudo uhd_cal_rx_iq_balance --verbose
>         --args="addr=192.168.40.2" --freq_start 2.4e9 --freq_stop
>         2.9e9 --freq_step 1e6
>
>         2. sudo uhd_cal_tx_iq_balance --verbose
>         --args="addr=192.168.40.2" --freq_start 2.4e9 --freq_stop
>         2.9e9 --freq_step 1e6
>
>         3. sudo uhd_cal_tx_dc_offset --verbose
>         --args="addr=192.168.40.2" --freq_start 2.4e9 --freq_stop
>         2.9e9 --freq_step 1e6
>
>         Regards
>
>         Jaya
>
>     There are a LOT of reasons for a complex system like LTE to lose
>     its RF link.  Does the underlying LTE application provide any hints?
>       Perhaps a debugging mode?
>
>     This likely IS NOT related to underlying UHD or hardware, per se,
>     but probably some environmental issue, and the app should be able
>     to help
>       you debug it.
>
>
>
>         ------------------------------------------------------------------------
>
>
>         NOTE: The information in this email and any attachments may be
>         confidential and/or legally privileged. This message may be
>         read, copied and used only by the intended recipient. If you
>         are not the intended recipient, please destroy this message,
>         delete any copies held on your system and notify the sender
>         immediately.
>
>         Toshiba Research Europe Limited, registered in England and
>         Wales (2519556). Registered Office 208 Cambridge Science Park,
>         Milton Road, Cambridge CB4 0GZ, England. Web:
>         www.toshiba.eu/research/trl <http://www.toshiba.eu/research/trl>
>
>
>         ------------------------------------------------------------------------
>
>         This email has been scanned for email related threats and
>         delivered safely by Mimecast.
>         For more information please visit http://www.mimecast.com
>         <http://www.mimecast.com>
>
>         ------------------------------------------------------------------------
>
>         _______________________________________________
>
>         USRP-users mailing list
>
>         USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>
>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
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


--------------080702000600030803030206
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/28/2019 05:10 AM, Jaya Thota
      wrote:<br>
    </div>
    <blockquote
      cite="mid:862833c66cb44040a94ae8eae6253ae8@Bayard.toshiba-trel.local"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	mso-fareast-language:EN-GB;}
span.EmailStyle20
	{mso-style-type:personal-reply;
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
        <p class="MsoNormal"><span style="mso-fareast-language:EN-US">Thanks
            Marcus. Shall I perform the calibration (</span>uhd_cal_tx_iq_balance
          , uhd_cal_tx_dc_offset )
          <span style="mso-fareast-language:EN-US">with 30dB attenuator
            connected between TX/RX and RX? Do you this will help?</span></p>
      </div>
    </blockquote>
    No, leave the ports unconnceted when you are doing the CAL sequence.<br>
    <br>
    <br>
    <blockquote
      cite="mid:862833c66cb44040a94ae8eae6253ae8@Bayard.toshiba-trel.local"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><span style="mso-fareast-language:EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal"><span style="mso-fareast-language:EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><b><span lang="EN-US">From:</span></b><span
            lang="EN-US"> USRP-users
            <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users-bounces@lists.ettus.com">&lt;usrp-users-bounces@lists.ettus.com&gt;</a>
            <b>On Behalf Of </b>Robin Coxe via USRP-users<br>
            <b>Sent:</b> 27 June 2019 19:07<br>
            <b>To:</b> Marcus D. Leech <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
            <b>Cc:</b> Ettus Mail List
            <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
            <b>Subject:</b> Re: [USRP-users] X310 with CBX 120 daughter
            board looses uplink RF Connection<o:p></o:p></span></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <p class="MsoNormal">One debugging technique you could try
            would be to connect Tx to Rx directly via an SMA cable with
            ~30dB of inline attenuation to eliminate any RF propagation
            effects.<o:p></o:p></p>
          <div>
            <p class="MsoNormal"><o:p> </o:p></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <div>
            <p class="MsoNormal">On Thu, Jun 27, 2019 at 10:58 AM Marcus
              D. Leech via USRP-users &lt;<a moz-do-not-send="true"
                href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
              wrote:<o:p></o:p></p>
          </div>
          <blockquote style="border:none;border-left:solid #CCCCCC
            1.0pt;padding:0cm 0cm 0cm
            6.0pt;margin-left:4.8pt;margin-right:0cm">
            <div>
              <div>
                <p class="MsoNormal">On 06/27/2019 12:22 PM, Jaya Thota
                  via USRP-users wrote:<o:p></o:p></p>
              </div>
              <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
                <div>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Hi
                    all,<o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">I
                    have a two X310 with CBX-120 daughter board running
                    on UHD version 3.13.0 on Ubuntu 16.04.<o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">I
                    am using it to tx/rx LTE 5MHz BW and 10 MHz BW
                    signals at 2.85MHz using directional LP0965
                    antennas.<o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">However
                    after few minutes the USRP looses uplink RF
                    connection.<o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Do
                    I need to calibrate them?<o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">I
                    did send the following commands without any RF
                    connectors to calibrate. But I have the same issue.
                    <o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">The
                    master clock rate for LTE is 184.32e6 Hz. Do I need
                    to send this as well.<o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Any
                    suggestions will be helpful.<o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">1.
                    sudo uhd_cal_rx_iq_balance --verbose
                    --args="addr=192.168.40.2" --freq_start 2.4e9
                    --freq_stop 2.9e9 --freq_step 1e6<o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">2.
                    sudo uhd_cal_tx_iq_balance --verbose
                    --args="addr=192.168.40.2" --freq_start 2.4e9
                    --freq_stop 2.9e9 --freq_step 1e6<o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">3.
                    sudo uhd_cal_tx_dc_offset --verbose
                    --args="addr=192.168.40.2" --freq_start 2.4e9
                    --freq_stop 2.9e9 --freq_step 1e6<o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Regards<o:p></o:p></p>
                  <p class="MsoNormal"
                    style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Jaya<o:p></o:p></p>
                </div>
              </blockquote>
              <p class="MsoNormal">There are a LOT of reasons for a
                complex system like LTE to lose its RF link.  Does the
                underlying LTE application provide any hints?<br>
                  Perhaps a debugging mode?<br>
                <br>
                This likely IS NOT related to underlying UHD or
                hardware, per se, but probably some environmental issue,
                and the app should be able to help<br>
                  you debug it.<br>
                <br>
                <br>
                <br>
                <o:p></o:p></p>
              <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
                <p class="MsoNormal"><o:p> </o:p></p>
                <div class="MsoNormal" style="text-align:center"
                  align="center">
                  <hr align="center" size="3" width="100%">
                </div>
                <p class="MsoNormal" style="margin-bottom:12.0pt"><span
style="font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif;color:gray"><br>
                    NOTE: The information in this email and any
                    attachments may be confidential and/or legally
                    privileged. This message may be read, copied and
                    used only by the intended recipient. If you are not
                    the intended recipient, please destroy this message,
                    delete any copies held on your system and notify the
                    sender immediately.<br>
                    <br>
                    Toshiba Research Europe Limited, registered in
                    England and Wales (2519556). Registered Office 208
                    Cambridge Science Park, Milton Road, Cambridge CB4
                    0GZ, England. Web:
                    <a moz-do-not-send="true"
                      href="http://www.toshiba.eu/research/trl"
                      target="_blank">www.toshiba.eu/research/trl</a><br>
                    <br>
                    <br>
                  </span><span
                    style="font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif"><o:p></o:p></span></p>
                <div class="MsoNormal" style="text-align:center"
                  align="center"><span
                    style="font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">
                    <hr align="center" size="3" width="100%">
                  </span></div>
                <p class="MsoNormal"><span
                    style="font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">This
                    email has been scanned for email related threats and
                    delivered safely by Mimecast.<br>
                    For more information please visit <a
                      moz-do-not-send="true"
                      href="http://www.mimecast.com" target="_blank">
                      http://www.mimecast.com</a> <o:p></o:p></span></p>
                <div class="MsoNormal" style="text-align:center"
                  align="center"><span
                    style="font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">
                    <hr align="center" size="3" width="100%">
                  </span></div>
                <p class="MsoNormal" style="margin-bottom:12.0pt"><o:p> </o:p></p>
                <pre>_______________________________________________<o:p></o:p></pre>
                <pre>USRP-users mailing list<o:p></o:p></pre>
                <pre><a moz-do-not-send="true" href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><o:p></o:p></pre>
                <pre><a moz-do-not-send="true" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><o:p></o:p></pre>
              </blockquote>
              <p class="MsoNormal"><o:p> </o:p></p>
            </div>
            <p class="MsoNormal">_______________________________________________<br>
              USRP-users mailing list<br>
              <a moz-do-not-send="true"
                href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
              <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><o:p></o:p></p>
          </blockquote>
        </div>
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
    </blockquote>
    <br>
  </body>
</html>

--------------080702000600030803030206--


--===============7324564207730123558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7324564207730123558==--

