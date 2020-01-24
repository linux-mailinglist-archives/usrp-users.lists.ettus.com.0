Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95763147A66
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2020 10:33:14 +0100 (CET)
Received: from [::1] (port=41290 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iuvKx-0005dy-IV; Fri, 24 Jan 2020 04:33:11 -0500
Received: from resqmta-po-06v.sys.comcast.net ([96.114.154.165]:32826)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <w6rz@comcast.net>) id 1iuvKt-0005Yu-8E
 for usrp-users@lists.ettus.com; Fri, 24 Jan 2020 04:33:07 -0500
Received: from resomta-po-02v.sys.comcast.net ([96.114.154.226])
 by resqmta-po-06v.sys.comcast.net with ESMTP
 id uvKDiMUuY92XYuvKDiIRqJ; Fri, 24 Jan 2020 09:32:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1579858345;
 bh=B2GKhhkWx/9eGM46Qo6fLnnLRpCkHJrKX+CZeHxeO/I=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=mjEsjOSu+rpn39O0TvBbEs5Y5et5ycoBPFF379A0Pa54JAyV5jKmq71Zy/GTeUlK5
 7g2bWWzF2+Z0fS2EMHuyDXKQ4ZQ3oYknXJnhadwZTe8bMUC2LgwsDS0PJiCWkrbXlX
 i8Wqfh3h6PK8FdR92GsKi9CKZX3mdKvey0XdWpzhq3j1Yi2zNf76gEmyi9BDET99B0
 sjklSXazNU3g50+sHN3l9AT85UkzuyrJth0P49xXeGNjaM6Dh6+xINu2P7jIP2+SsN
 YW0taH71FePOAZHLKIEE0rsAOopp6c3aQ6Js0Z29sfXZ3UKgTlUd8hyddomolbMUvt
 QqGtyoP4YbnVw==
Received: from [IPv6:2601:647:4200:ea30:344a:d5e4:785:4f54]
 ([IPv6:2601:647:4200:ea30:344a:d5e4:785:4f54])
 by resomta-po-02v.sys.comcast.net with ESMTPSA
 id uvKCiyHAItZw9uvKDi5U97; Fri, 24 Jan 2020 09:32:25 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <CAM+1jtdo-KXz2+NXw28cwk09omQygpBvdk0K2uGEc2i_3Hvj3g@mail.gmail.com>
Message-ID: <ff91fc83-8926-7009-1b8d-2aaab8326dc7@comcast.net>
Date: Fri, 24 Jan 2020 01:32:24 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAM+1jtdo-KXz2+NXw28cwk09omQygpBvdk0K2uGEc2i_3Hvj3g@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] block parameters of UHD
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============6685332857565069320=="
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
--===============6685332857565069320==
Content-Type: multipart/alternative;
 boundary="------------8ADB1AE6FA06058E3F984A58"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8ADB1AE6FA06058E3F984A58
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

You can get the gain capabilities with the shell command:

uhd_usrp_probe

Setting a specific power output is not possible unless you calibrate 
with an external measuring device like a spectrum analyzer. However, 
once you are calibrated, the internal attenuator is pretty accurate.

Ron

On 1/24/20 00:50, massoud pourmandi via USRP-users wrote:
>
> Dear colleagues,
>
> Let’s set the sinusoidal signal with amplitude =1 and set gain values 
> for USRP Sink and USRP source 10 and 20.
>
> First: what are the upper limits and lower limits of gain value? (I 
> just blindly set a number to it).
>
> Second: what is the relation between output power and amplitude. For 
> example, how can I set the parameters for a specific power?
>
> The schematic is attached.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------8ADB1AE6FA06058E3F984A58
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>You can get the gain capabilities with the shell command:</p>
    <p>uhd_usrp_probe</p>
    <p>Setting a specific power output is not possible unless you
      calibrate with an external measuring device like a spectrum
      analyzer. However, once you are calibrated, the internal
      attenuator is pretty accurate.<br>
    </p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 1/24/20 00:50, massoud pourmandi via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAM+1jtdo-KXz2+NXw28cwk09omQygpBvdk0K2uGEc2i_3Hvj3g@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:12pt;font-family:&quot;Times
          New Roman&quot;,serif">Dear colleagues,</p>
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:12pt;font-family:&quot;Times
          New Roman&quot;,serif">Let’s set the sinusoidal signal with
          amplitude =1 and set
          gain values for USRP Sink and USRP source 10 and 20.</p>
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:12pt;font-family:&quot;Times
          New Roman&quot;,serif">First: what are the upper limits and
          lower limits of gain value?
          (I just blindly set a number to it).</p>
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:12pt;font-family:&quot;Times
          New Roman&quot;,serif">Second: what is the relation between
          output power and
          amplitude. For example, how can I set the parameters for a
          specific power?</p>
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:12pt;font-family:&quot;Times
          New Roman&quot;,serif">The schematic is attached.</p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------8ADB1AE6FA06058E3F984A58--


--===============6685332857565069320==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6685332857565069320==--

