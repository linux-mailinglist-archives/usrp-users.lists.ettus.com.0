Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3697630F767
	for <lists+usrp-users@lfdr.de>; Thu,  4 Feb 2021 17:17:10 +0100 (CET)
Received: from [::1] (port=40636 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l7hJb-00069q-4t; Thu, 04 Feb 2021 11:17:07 -0500
Received: from mail-qv1-f43.google.com ([209.85.219.43]:41512)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l7hJX-00065r-DI
 for usrp-users@lists.ettus.com; Thu, 04 Feb 2021 11:17:03 -0500
Received: by mail-qv1-f43.google.com with SMTP id h21so1952490qvb.8
 for <usrp-users@lists.ettus.com>; Thu, 04 Feb 2021 08:16:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=D+85NH8OKDErQF8+69ntRcMCaK049yHxjFk+clNscO4=;
 b=a48z2OufZ6ht+ZpqMwpSV6F00YhGdHiTsexF5lbv9BLwGAdjvORjx10mJ0oeRQa3F+
 WQt4+rnCKEv5aj6gagEDnpVuwLnecuH15h+ABofEbUbsUEc4sIUouBmw/sAMaoxSB3dV
 SpVQGO1PyzS2Leje0K/x6RbvRjqVprAS6eOt3RUkQWqvX/r08M1jYOXKtAsfg9zSD3ap
 Qi4chGSavrjDeDJ1tbrLdswGzwuOzN+rzR3L9xVluiNL9VEgJ6C0EN/5aevMQ7H2AT0P
 AoV9a5blyM8HsL0tm2qP0XT301eLcKKGnoPbVvDcOb7nMdnihAJSjG8SajbZLUVX1HYn
 T7gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=D+85NH8OKDErQF8+69ntRcMCaK049yHxjFk+clNscO4=;
 b=q0ymaf+2xMbAUOye4wOyo5LgA1nMNjDhxWhxZJpMWLvqQ5kMNVKa8gq0wHSJEK7HBC
 C9Ugc4BIBbB0g8UBUEYtdMwvpz5hOVcIrrmPXUy5dFmX3lcM8z+GB88AVjt2Oep59XBA
 rT46UsDvGtik/+u4xqeWOtpaVP+Y246+Zz45+KYtPgmWRxih1jgso5sF1lEth6+cOxzB
 j8yvwEH3S14kUDlFu9sAMab/AukDaaLgr8OvEiHoIe/ekxiFohkblemde5tab0zqw2zO
 0Qcb1NWqdtPjUGCHKeD4YGyT30gCoRZMeHf2AXPxxMlHklpUH27GUdJttS+vemZDi2Ur
 Jv7Q==
X-Gm-Message-State: AOAM531hvi+KfR/OQLhJ6soU0xe+X1L0EZ/sDMYmijHuscc2ReGMlLwt
 9ZXHxPAsGw0aeGc7D5KpsWD/LXVX9+c=
X-Google-Smtp-Source: ABdhPJzO50vtiHlsu6MPObJrkJnyXPQX7HG9Q7l9i6AawbotbZv6GVAz76wq0DUtq+YGPiMeAXkvqA==
X-Received: by 2002:a0c:9ac2:: with SMTP id k2mr8330172qvf.3.1612455382601;
 Thu, 04 Feb 2021 08:16:22 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id r44sm4347105qtb.28.2021.02.04.08.16.22
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Feb 2021 08:16:22 -0800 (PST)
Message-ID: <601C1DD5.2030801@gmail.com>
Date: Thu, 04 Feb 2021 11:16:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <AM0P193MB030882ECBD91A33E06D06D28BDB49@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>
 <601ACAC4.3050407@gmail.com>
 <AM0P193MB030854D432F79CEC7F687598BDB39@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>
 <AM0P193MB03082904B54E9522CBC57115BDB39@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>
In-Reply-To: <AM0P193MB03082904B54E9522CBC57115BDB39@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] GPSDO and PPS on USRP N300
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
Content-Type: multipart/mixed; boundary="===============6156660651767574349=="
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
--===============6156660651767574349==
Content-Type: multipart/alternative;
 boundary="------------020602090600070302010601"

This is a multi-part message in MIME format.
--------------020602090600070302010601
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 02/04/2021 03:30 AM, Puertas Blanco, Roberto via USRP-users wrote:
>
> Hi Marcus,
>
> My goal is to get NTP daemon running on N300 synced with GPSDO and 
> PPS. Could it be that the GPSDO time is internally latched with the 
> PPS line? If this is the case then I guess that it would not be 
> necessary to read the PPS.
>
> I have seen the “Device Synchronization” section  and “sync_to_gps”  
> example in the USRP HW Driver and USRP Manual but  I am not sure if I 
> have to do this if I just want to synchronize the NTP and system time 
> on just one USRP N300.
>
> Thanks,
>
> Roberto
>
>
Indeed, it depends on *why* you want NTPD/GSPD on the *HOST* to "see" a 
1PPS signal.

If you want precise radio syncrhonization, that's already accomplished 
with the procedure used in sync_to_gps.**Using that procedure in
   your applications will guarantee that the timestamp-clock on your 
radio is precisely aligned to GPS time.  Placing the LInux host
   "in the loop" will not contribute to precise time-stamps.

*
*In USRPs, the GPSDO module exists for the benefit of the radio, and 
only secondarily for the benefit of the embedded Linux host--
   if it has one.

--------------020602090600070302010601
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/04/2021 03:30 AM, Puertas Blanco,
      Roberto via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:AM0P193MB03082904B54E9522CBC57115BDB39@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
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
	font-family:"Calibri",sans-serif;
	color:black;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML con formato previo Car";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
span.HTMLconformatoprevioCar
	{mso-style-name:"HTML con formato previo Car";
	mso-style-priority:99;
	mso-style-link:"HTML con formato previo";
	font-family:Consolas;
	color:black;
	mso-fareast-language:EN-US;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
span.EstiloCorreo21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EstiloCorreo22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EstiloCorreo23
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US">Hi
            Marcus, <o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US">My
            goal is to get NTP daemon running on N300 synced with GPSDO
            and PPS. Could it be that the GPSDO time is internally
            latched with the PPS line? If this is the case then I guess
            that it would not be necessary to read the PPS.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US">I
            have seen the “Device Synchronization” section  and
            “sync_to_gps”  example in the USRP HW Driver and USRP Manual
            but  I am not sure if I have to do this if I just want to
            synchronize the NTP and system time on just one USRP N300.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US">Thanks,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US">Roberto<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <br>
      </div>
    </blockquote>
    Indeed, it depends on *why* you want NTPD/GSPD on the *HOST* to
    "see" a 1PPS signal.<br>
    <br>
    If you want precise radio syncrhonization, that's already
    accomplished with the procedure used in sync_to_gps.<b>  </b>Using
    that procedure in<br>
      your applications will guarantee that the timestamp-clock on your
    radio is precisely aligned to GPS time.  Placing the LInux host<br>
      "in the loop" will not contribute to precise time-stamps.<br>
    <br>
    <b><br>
    </b>In USRPs, the GPSDO module exists for the benefit of the radio,
    and only secondarily for the benefit of the embedded Linux host--<br>
      if it has one.  <br>
  </body>
</html>

--------------020602090600070302010601--


--===============6156660651767574349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6156660651767574349==--

