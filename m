Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9E02B2633
	for <lists+usrp-users@lfdr.de>; Fri, 13 Nov 2020 22:06:00 +0100 (CET)
Received: from [::1] (port=42936 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kdgGd-0004xw-6R; Fri, 13 Nov 2020 16:05:59 -0500
Received: from mail-qk1-f173.google.com ([209.85.222.173]:46168)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kdgGZ-0004rx-A4
 for usrp-users@lists.ettus.com; Fri, 13 Nov 2020 16:05:55 -0500
Received: by mail-qk1-f173.google.com with SMTP id k4so287720qko.13
 for <usrp-users@lists.ettus.com>; Fri, 13 Nov 2020 13:05:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=CLYR6PkEmhjS0e3feDnoJIRoDILu+cSj1Txc4oUGm/w=;
 b=a+9yHHsRx1GlZGFMlPhGBVvKs4QL/NQdc2u3wyAj10b6fHa7uh8/7DNWhj2aFX6OH5
 81rAbEMQMyUuGDAiEPYVYzQuc1/DoPgTgBtalc7KZEXMwOlsKkyRy3OXB7tRow8g9fdT
 ACOtUancGCdfoPifNKyTyOmfQYXxyrayfIsdpKH9ywJ4tGrHZTYDRrKXA1OjavGlhF/Y
 gOahUKNedwUBq4WVA6oqhU9LmttPRWwf2BUyzZ1xAw7j4AXb315i4oerAVntLwIfl2gZ
 wIfZH3pUeiySwC5ea3Fz4YdftszpsWZPa9Mxp4ORYqfZGTlIKt9q4WodpdTALjq+Gs1R
 BC/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=CLYR6PkEmhjS0e3feDnoJIRoDILu+cSj1Txc4oUGm/w=;
 b=BwGHmg0sLY4FTJY78avp0S2peQPyfbcJ8+Q4HXG2XsqzJbLxNGSIB+RK4TNdHUHQSn
 mxcasx4wDvxV2ruHnKBq4PZzvXfPVqYnwVIXHTKY2uxJwnzIiuF3RZFqCkfj95vFqjvv
 hZPf5OUd3uvY52F0Z2GFe6esKyi8k7d9CiI4JXAF5XEIYt6URx+UAQCrJODIRjYzgqQg
 EpSyZKNf4bEljVSF5qjpZnLqcA0PkUT5w2t+/x/PkICSiQoeNcuQr1j/erLJee/9XZd9
 OpNlcHfgQp2Qe+84Oohm10wV4GQSbVEFCGJavCTBiptyBOtEVlRCQqM8C+hIF/qI8wNE
 wlxQ==
X-Gm-Message-State: AOAM5317jIAglqQ3U2k73zEwMvfJa34NcyNBIQHhUKGKVfKBAlQ7dZxs
 cM1AR/2d/nkZzsxUnaEejTM1MShnp9Q=
X-Google-Smtp-Source: ABdhPJzgoCKB0tvUzk3epna9jRNN4MmeL6mzQjaTrtUPJ06J7VDoLU6GU9cgTyyjkXq4Zc6Q/bqjMQ==
X-Received: by 2002:a37:7cd:: with SMTP id 196mr4119260qkh.246.1605301514474; 
 Fri, 13 Nov 2020 13:05:14 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id j19sm7439182qkk.119.2020.11.13.13.05.13
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Nov 2020 13:05:13 -0800 (PST)
Message-ID: <5FAEF509.8060709@gmail.com>
Date: Fri, 13 Nov 2020 16:05:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <SA0PR19MB4382E98531C1FD25FA6C10FEC6E60@SA0PR19MB4382.namprd19.prod.outlook.com>
In-Reply-To: <SA0PR19MB4382E98531C1FD25FA6C10FEC6E60@SA0PR19MB4382.namprd19.prod.outlook.com>
Subject: Re: [USRP-users] Expected FPGA Compatibility number 36, but got 38
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
Content-Type: multipart/mixed; boundary="===============7561127785976980610=="
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
--===============7561127785976980610==
Content-Type: multipart/alternative;
 boundary="------------070902010205000007040908"

This is a multi-part message in MIME format.
--------------070902010205000007040908
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 11/13/2020 03:48 PM, Jerrid Plymale via USRP-users wrote:
>
> Hello All,
>
> So I have been working on transitioning to using UHD 4.0 from 3.15, 
> and I am running into a problem. I was able to get the software 
> updated without issue, then I downloaded the new FPGA images using the 
> uhd_image_downloader and updated the two USRP X310’s I am working 
> with. After that I tried running one of my flowgraphs in GRC and I get 
> the following: RuntimeError: Expected FPGA Compatibility number 36, 
> but got 38. So do I need to update UHD again to a newer version, or is 
> there a way I can install the older versions of the FPGA Image?
>
> Best Regards,
>
> Jerrid
>
>
My guess is that while you compiled/built/installed UHD 4.0, your Gnu 
Radio environment is still linked against UHD 3.15.

You'll need to at least re-link.



--------------070902010205000007040908
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 11/13/2020 03:48 PM, Jerrid Plymale
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:SA0PR19MB4382E98531C1FD25FA6C10FEC6E60@SA0PR19MB4382.namprd19.prod.outlook.com"
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
        <p class="MsoNormal">Hello All,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">So I have been working on transitioning to
          using UHD 4.0 from 3.15, and I am running into a problem. I
          was able to get the software updated without issue, then I
          downloaded the new FPGA images using the uhd_image_downloader
          and updated the two USRP X310’s I am working with. After that
          I tried running one of my flowgraphs in GRC and I get the
          following: RuntimeError: Expected FPGA Compatibility number
          36, but got 38. So do I need to update UHD again to a newer
          version, or is there a way I can install the older versions of
          the FPGA Image?<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Best Regards,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Jerrid<o:p></o:p></p>
      </div>
      <br>
    </blockquote>
    My guess is that while you compiled/built/installed UHD 4.0, your
    Gnu Radio environment is still linked against UHD 3.15.<br>
    <br>
    You'll need to at least re-link.<br>
    <br>
    <br>
  </body>
</html>

--------------070902010205000007040908--


--===============7561127785976980610==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7561127785976980610==--

