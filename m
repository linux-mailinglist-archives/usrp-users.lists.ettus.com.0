Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C81FA7C7B2
	for <lists+usrp-users@lfdr.de>; Wed, 31 Jul 2019 17:56:43 +0200 (CEST)
Received: from [::1] (port=54764 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hsqxz-00020M-Fy; Wed, 31 Jul 2019 11:56:39 -0400
Received: from mail-qt1-f182.google.com ([209.85.160.182]:42296)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hsqxv-0001uS-Sq
 for usrp-users@lists.ettus.com; Wed, 31 Jul 2019 11:56:35 -0400
Received: by mail-qt1-f182.google.com with SMTP id h18so67095661qtm.9
 for <usrp-users@lists.ettus.com>; Wed, 31 Jul 2019 08:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=I2h9ZSTljqHpC0/+XTL+W7r05Dcap9iHPvtU2F2bFFE=;
 b=Pf5aNZ8t7T9yjgqonqIg/rj4nNmNb/IF5sJpSzeX5dzgYiMxCV2qC5snu9tnRT3WY2
 Y7dsx1K76V6SeBIuE8kz2GrAlW3UMO92v5UmXLR8rBM9J9iOnN12OLqgMVRD7n0IdwNn
 hm8apatLR/k7IbSyHnltRmzl+RZfgiwbzD0ErP0qiUHKyBZAg43aLG1W/WVIge1/VKRS
 c+z/RckNBH5kVkHiAqcqFBhSDSoKgtoNmaBqJHf/YOHoxZtffEj0RKeOCrIReOVrAYj6
 Q5QJrKu0iahLVSx0jYe8mj/hFCHNmBBXJPke3PNTJPN8iR0x1UFS7kr/wna5nmoJB3Wp
 A3Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=I2h9ZSTljqHpC0/+XTL+W7r05Dcap9iHPvtU2F2bFFE=;
 b=tJqaEKBjnfQZWQe3ojeE5EdtXY6aZBuwNLTkWJBPh0JNj7bDBr/CyGvvJjdXOrs2sT
 OTX4Q8Hb7u1htJorjFKDazqOIpiSQB45iANx9M995LTFFyhLQ5gJkUynl46stDNpkbGR
 YU1qILnYn7RkzWJxLpeMZ8S1xg9XFjvQz59RsvRu0wfbjpI5KWdEQ4suChxQYi7aiPFC
 DZ9+yTAhi4xwrU7xWc7C1J7Wlx8K8uU7HNFq8X/V3u7mBCXQCshUWrCObMk/9digW7nH
 nnq9qH+23o1y/NeL/kqdZtSqTlIo/JzE+c7jMGxtqMUbSRP7fABVsy+8rMZfAy8fJ8Fk
 2zVw==
X-Gm-Message-State: APjAAAUoJCAJqZFvmS6/6Balt9hMJaVnuW/BVUGs4Wzgmeeu7BfVh5Jh
 FwRSXNUTbXcznJSJW2bWa+HaPXa742g=
X-Google-Smtp-Source: APXvYqwxgt4BLZpgI54oqcndlT6DOgNaZWsYXAuydMCg9X9srMRya4gpIP6vWjvH8dR7yiRVgvwGNg==
X-Received: by 2002:ac8:2b10:: with SMTP id 16mr84440140qtu.351.1564588555350; 
 Wed, 31 Jul 2019 08:55:55 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id p3sm45452620qta.12.2019.07.31.08.55.54
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 08:55:54 -0700 (PDT)
Message-ID: <5D41BA0A.90308@gmail.com>
Date: Wed, 31 Jul 2019 11:55:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <59D30F9F-0B3C-4897-B219-CB286A811371@contoso.com>
In-Reply-To: <59D30F9F-0B3C-4897-B219-CB286A811371@contoso.com>
Subject: Re: [USRP-users] Connecting X310 to VM Problems
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
Content-Type: multipart/mixed; boundary="===============0917675943167135715=="
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
--===============0917675943167135715==
Content-Type: multipart/alternative;
 boundary="------------040208040103040809010904"

This is a multi-part message in MIME format.
--------------040208040103040809010904
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 07/31/2019 10:20 AM, Leong, Kirsten - 0551 - MITLL via USRP-users wrote:
>
> Hi,
>
> I’m trying to connect an X310 to a Linux VM through VMWare Fusion. I 
> currently have the USRP connected to a Mac Pro via USB 3.0/Gigabit 
> Ethernet. I added the USB device to the VM and running ifconfig -a, 
> the VM, which has a static ip set to 192.168.10.1, can see the 
> ethernet connection though no IP is assigned. I can’t ping 
> 192.168.10.2 through the VM. I’m not sure what steps I am missing in 
> this setup.
>
> Thanks,
>
> Kirsten
>
>
>
First step would be to verify connectivity in the non-VM case--do you 
have that?




--------------040208040103040809010904
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/31/2019 10:20 AM, Leong, Kirsten
      - 0551 - MITLL via USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:59D30F9F-0B3C-4897-B219-CB286A811371@contoso.com"
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
        <p class="MsoNormal"><span style="font-size:11.0pt">Hi,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">I’m trying
            to connect an X310 to a Linux VM through VMWare Fusion. I
            currently have the USRP connected to a Mac Pro via USB
            3.0/Gigabit Ethernet. I added the USB device to the VM and
            running ifconfig -a, the VM, which has a static ip set to
            192.168.10.1, can see the ethernet connection though no IP
            is assigned. I can’t ping 192.168.10.2 through the VM. I’m
            not sure what steps I am missing in this setup.
            <o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">Thanks,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">Kirsten <o:p></o:p></span></p>
      </div>
      <br>
      <br>
    </blockquote>
    First step would be to verify connectivity in the non-VM case--do
    you have that?<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------040208040103040809010904--


--===============0917675943167135715==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0917675943167135715==--

