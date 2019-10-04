Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 51703CC233
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2019 19:56:30 +0200 (CEST)
Received: from [::1] (port=47224 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iGRoa-0000lp-8b; Fri, 04 Oct 2019 13:56:28 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:39196)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iGRoW-0000a6-AL
 for usrp-users@lists.ettus.com; Fri, 04 Oct 2019 13:56:24 -0400
Received: by mail-qk1-f177.google.com with SMTP id 4so6605114qki.6
 for <usrp-users@lists.ettus.com>; Fri, 04 Oct 2019 10:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=+IDlL2Fpd65FI+fQN27cQ8fsdG4++/i0ocjKCqgigYc=;
 b=OUK4iyeKDL7MkMTS1U6sSDK6JkahArphVJlKycZjbT+UnaBiqPIpAN2F0miOsiVnXG
 0cuEtuOmUPCIwpltSyInLkiPAfQNyhDRNl9O4zz/L6ifZeVfiw0gfo3xg8UhQfpM1Dgn
 ROCwwkz9Pv/l7FoFC219Ign05pK+QtPJZKtILuyEt6hA46/qK2fygYKcUFV2s1OADVxb
 c/sKE+TPvsE3PUMbGDDLLBTvchq5PYZk+86T1JnjKMy/NPqir+aqI5ZZ1ASU9q+5XS/h
 aqKAE7DUqfdP9AhBrjizbcLPxWgkERak42Tp8YrO+BU/4B9Os8tQ9NtwmWJGeyMqZfMl
 4Q3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=+IDlL2Fpd65FI+fQN27cQ8fsdG4++/i0ocjKCqgigYc=;
 b=tuzTHWS8FAlkZ32Dfls9WlpGjnfCKlB0aGO5c69BMxVCcATg0AA3lHOZHN6twCY3pb
 uNwEePm8gxn0HiklaiQ9ygUh8Qbk+RNUTgU2Wsk81I3Itoe+1xNYJ+6AfxNiaZhgLhFd
 1RBNLBieXbx4k8tnzmKVYs2d3LfDlf0+TgEwv/Kqr3GBYjPMEL/lnkeBEwEBtPakB/Ny
 /+guJa4WKb3pJoLTa31YORwnE/vfxTTfoRAclf0K8ft5MOL/f63SeWShndGvbzIJBtMa
 1RmZEEuFnIlsXQObaZHNLabi8mT1lBi7ttTSoiSUWNd+92aJSf8V/75vwblmDMAF3MB8
 BtKg==
X-Gm-Message-State: APjAAAVBxLXqyTZCvjhWVZwKh0W+o82VWCZkbdbstxAybccQqV4K+/Eg
 NHtwO28XwfxMT3lzZoLyzZ1N9fQgF6Y=
X-Google-Smtp-Source: APXvYqya2UYshxgLo8DkdfU0WBMeg+Z8OK95gkk3bQJ3fA0pcrORgF2jzhIphICZ4D/QouQdA755xw==
X-Received: by 2002:a37:9203:: with SMTP id u3mr10300157qkd.304.1570211743632; 
 Fri, 04 Oct 2019 10:55:43 -0700 (PDT)
Received: from lab.localdomain ([24.146.32.18])
 by smtp.googlemail.com with ESMTPSA id d205sm3289477qke.96.2019.10.04.10.55.43
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 10:55:43 -0700 (PDT)
Message-ID: <5D97879D.7000303@gmail.com>
Date: Fri, 04 Oct 2019 13:55:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <A97E90B7-48D8-425C-A071-25D24FEF2DB1@contoso.com>
In-Reply-To: <A97E90B7-48D8-425C-A071-25D24FEF2DB1@contoso.com>
Subject: Re: [USRP-users] usrp probe and find commands
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
Content-Type: multipart/mixed; boundary="===============0172332334412335432=="
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
--===============0172332334412335432==
Content-Type: multipart/alternative;
 boundary="------------020209020005030800040709"

This is a multi-part message in MIME format.
--------------020209020005030800040709
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 10/04/2019 01:17 PM, Mark Koenig via USRP-users wrote:
>
> Does anyone have any idea why I can only probe my radio if I include 
> the address string?
>
> Uhd_usrp_probe àyields no results
>
> Uhd_usrp_probe –args “addr=192.168.10.2” àfind the radio and yields 
> results
>
> Also, the uhd_find_devices command does not return anything.
>
> Thanks for the quick feedback.
>
> Mark
>
>
The "find" commands and the "probe" command when not given an address 
argument uses a subnet-broadcast packet
   to try to locate devices. That is often blocked not by the firewall, 
but by privilege rules in the network stack--try running
   as root to see if that changes behavior.



--------------020209020005030800040709
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/04/2019 01:17 PM, Mark Koenig via
      USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:A97E90B7-48D8-425C-A071-25D24FEF2DB1@contoso.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Title" content="">
      <meta name="Keywords" content="">
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Calibri",sans-serif;}
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
span.msoIns
	{mso-style-type:export-only;
	mso-style-name:"";
	text-decoration:underline;
	color:teal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
      <div class="WordSection1">
        <p class="MsoNormal"><span style="font-size:11.0pt">Does anyone
            have any idea why I can only probe my radio if I include the
            address string?
            <o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">Uhd_usrp_probe
          </span><span style="font-size:11.0pt;font-family:Wingdings">à</span><span
            style="font-size:11.0pt"> yields no results<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">Uhd_usrp_probe
            –args “addr=192.168.10.2”
          </span><span style="font-size:11.0pt;font-family:Wingdings">à</span><span
            style="font-size:11.0pt"> find the radio and yields results<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">Also, the
            uhd_find_devices command does not return anything.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">Thanks for
            the quick feedback.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">Mark<o:p></o:p></span></p>
      </div>
      <br>
    </blockquote>
    The "find" commands and the "probe" command when not given an
    address argument uses a subnet-broadcast packet<br>
      to try to locate devices. That is often blocked not by the
    firewall, but by privilege rules in the network stack--try running<br>
      as root to see if that changes behavior.<br>
    <br>
    <br>
  </body>
</html>

--------------020209020005030800040709--


--===============0172332334412335432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0172332334412335432==--

