Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E88D42F7585
	for <lists+usrp-users@lfdr.de>; Fri, 15 Jan 2021 10:34:42 +0100 (CET)
Received: from [::1] (port=43146 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l0LV8-0005wq-BN; Fri, 15 Jan 2021 04:34:38 -0500
Received: from mail-qt1-f182.google.com ([209.85.160.182]:47050)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l0LV3-0005qH-VT
 for usrp-users@lists.ettus.com; Fri, 15 Jan 2021 04:34:33 -0500
Received: by mail-qt1-f182.google.com with SMTP id h19so5538728qtq.13
 for <usrp-users@lists.ettus.com>; Fri, 15 Jan 2021 01:34:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=Sf3yyzTrg/lIFc6EkCE4Lzx02JsVwAqqLN4vf+/cd1o=;
 b=NG0f/4+pRRc4hvSofX0dpzN1Ypry5zKmSur0WIdbgEuHxdUkEuWm3NayrayabrWWUA
 pVnm8FCuhLWwU8nmhk+ZZHefZBJ7lay9v6FDpoUk6oq8N8CZIcOK5uAiPPf0TkZ02893
 g/w706bE2wI+5Mjj/RkXtpRzusJjCUSMn/dvwhPVtu7kCZrlmoIe3Km5vO/BPRoJPn9w
 g8A5yTQ00itzgjAtWH/Aa/FZqEWTXmFz1Bl7WcQ+CIFQD49L7DFU8DjQpcyZJTBXRLAK
 b7qlQSK0kQ5sjVF5ZF5OpFGmSHHVr8XZY+JXfouFbI9PJvGQWqgrdHjK+9F5mqTTeWYm
 Ckww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=Sf3yyzTrg/lIFc6EkCE4Lzx02JsVwAqqLN4vf+/cd1o=;
 b=O5mQIZyDNg6BwJolZm8lW1t3tdiWt9cVUaqbQVUFDKxEDelbT1pEQUcgpMVzaZLp2w
 JxUIsGa7Pq2mH/2MGARKe8wMnrJNI89uU/1bE6bA/RyKp1h45hQRqBTXXqhIs8ijYLbd
 bLxiYtCeLK52qtMfaQKN0SW9avyeY1sfM97a9DzW7s8f/ipf5VCvi3jlZqgBmJ9NEPbf
 fuWFEHfb3YgQkon8P89S/S9Gv4BTMnJj7GTnzW4bgNyOr8sn1u4NZsH2SYfNLD/34VkW
 QV6bfNKSKttVOdo3u3EczA8vftVIp/voATvzKPKHuCcJNV7FU4zZJuOXgKSVzLDnfEFw
 3iHA==
X-Gm-Message-State: AOAM533h2zHwjIsexUL4grGa7ToT2scxbpQu5nmc5cPLLjb8+Jqc8WWK
 au7A6so6ar8fsAKRlJRkUvajE0Nw3iY=
X-Google-Smtp-Source: ABdhPJzkSgtLIJpB5eVPh5Rus20DBI/Q2B5IbSgUKPG3FbggqtNAGGQIpF4Mjo7lFsB7QzDx0wJeTQ==
X-Received: by 2002:ac8:1386:: with SMTP id h6mr10792100qtj.95.1610703233139; 
 Fri, 15 Jan 2021 01:33:53 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id n14sm4435432qtr.9.2021.01.15.01.33.52
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 Jan 2021 01:33:52 -0800 (PST)
Message-ID: <6001617F.8050805@gmail.com>
Date: Fri, 15 Jan 2021 04:33:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <LNXP123MB372474BC72EC550495B41F29CAA70@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
In-Reply-To: <LNXP123MB372474BC72EC550495B41F29CAA70@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] Setting E320 to use fixed IP Address on RJ45 eth0
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
Content-Type: multipart/mixed; boundary="===============4674516369890016172=="
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
--===============4674516369890016172==
Content-Type: multipart/alternative;
 boundary="------------050303020107010501040909"

This is a multi-part message in MIME format.
--------------050303020107010501040909
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 01/15/2021 04:06 AM, Mark D via USRP-users wrote:
>
> Hi,
>
> I’m trying to set an E320 USRP to use a fixed IP address on the RJ45 port.
>
> I’ve tried following the instructions in the USRP Manual at 
> https://files.ettus.com/manual/page_usrp_e3xx.html
>
> The manual says that settings for the SFP+ port is stored in 
>  /etc/systemd/networkd/sfp0.network.
>
> My E320 doesn’t have that folder, there is one “/etc/systemd/network/” 
> but no “/etc/systemd/networkd/” (i.e. no d after network). I think 
> maybe  is a typing error in the manual and the folder name should be 
> network.
>
> The folder at this location is empty, so doesn’t contain the SFP+ 
> setting file.
>
> I have created in this folder a file eth0.network with the following 
> content:
>
> ---------------------------
>
> [Match]
>
> Name=eth0
>
> [Network]
>
> Address=192.168.1.60
>
> --------------------------------
>
> However this doesn’t seem to have any effect. When I use ifconfig to 
> show the status of network connections eth0 is showing as 
> “UP-BRAODACST RUNNING MULTICAST” but no IP address is set.
>
> Any ideas on how I can set a fixed address?
>
> Mark
>
>
I don't have one of these, but it seems like there's both an SFP port 
(for high-speed sample transport), and a "management" port with
   an ordinary RJ-45 connector.  Which one do you want to set?

Also, what does:

ifconfig


produce?  We want to get a list of the network interface names on the 
machine.



--------------050303020107010501040909
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/15/2021 04:06 AM, Mark D via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:LNXP123MB372474BC72EC550495B41F29CAA70@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM"
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hi,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I’m trying to set an E320 USRP to use a
          fixed IP address on the RJ45 port.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I’ve tried following the instructions in
          the USRP Manual at
          <a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/page_usrp_e3xx.html">https://files.ettus.com/manual/page_usrp_e3xx.html</a><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">The manual says that settings for the SFP+
          port is stored in  /etc/systemd/networkd/sfp0.network.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">My E320 doesn’t have that folder, there is
          one “/etc/systemd/network/” but no “/etc/systemd/networkd/”
          (i.e. no d after network). I think maybe  is a typing error in
          the manual and the folder name should be network.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">The folder at this location is empty, so
          doesn’t contain the SFP+ setting file.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I have created in this folder a file
          eth0.network with the following content:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">---------------------------<o:p></o:p></p>
        <p class="MsoNormal">[Match]<o:p></o:p></p>
        <p class="MsoNormal">Name=eth0<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">[Network]<o:p></o:p></p>
        <p class="MsoNormal">Address=192.168.1.60<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">--------------------------------<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">However this doesn’t seem to have any
          effect. When I use ifconfig to show the status of network
          connections eth0 is showing as “UP-BRAODACST RUNNING
          MULTICAST” but no IP address is set.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Any ideas on how I can set a fixed address?<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Mark<o:p></o:p></p>
        <br>
      </div>
    </blockquote>
    I don't have one of these, but it seems like there's both an SFP
    port (for high-speed sample transport), and a "management" port with<br>
      an ordinary RJ-45 connector.  Which one do you want to set?<br>
    <br>
    Also, what does:<br>
    <br>
    ifconfig<br>
    <br>
    <br>
    produce?  We want to get a list of the network interface names on
    the machine.<br>
    <br>
    <br>
  </body>
</html>

--------------050303020107010501040909--


--===============4674516369890016172==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4674516369890016172==--

