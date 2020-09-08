Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9AB261244
	for <lists+usrp-users@lfdr.de>; Tue,  8 Sep 2020 16:02:12 +0200 (CEST)
Received: from [::1] (port=50004 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kFeCJ-0000LF-A7; Tue, 08 Sep 2020 10:02:11 -0400
Received: from mail-qk1-f176.google.com ([209.85.222.176]:37692)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kFeCF-0000E7-Bt
 for usrp-users@lists.ettus.com; Tue, 08 Sep 2020 10:02:07 -0400
Received: by mail-qk1-f176.google.com with SMTP id 16so5996254qkf.4
 for <usrp-users@lists.ettus.com>; Tue, 08 Sep 2020 07:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=6t4rrMmOMDXBMCP3nk47KykXHKUwBuNa6wlWVkoAts0=;
 b=QK3Gj2yXdS0zozVg3r1+3Z/mcEOU/L5gt94hB1MneohNERwwcV7cJ2S4sy6reTsemo
 KPK0X/2cT/isteqX0tL5/PduhaQtXLKbOm5YawQMcZb9GbStqBmF0h2pW1LcAEhNa7D4
 C9pWogDJej5LE6aPj+zLhpg86VTtYuaKN/8bNhn2cPNUTKi5rjldUiVBOnP5JGPMl1sa
 2Zog7jMNArnsRMWd4oWGxyf2K3fRHqcCFGw7ACYCoPub4hiJC++MSUPrG45mEuKjPYqp
 rOUImJIDlNDZ8wpj3EYopvlYH5O5mu8i1ILmVtr1W1gkI1wNRglLSJzKJYZHEWpn42Tf
 9QAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=6t4rrMmOMDXBMCP3nk47KykXHKUwBuNa6wlWVkoAts0=;
 b=Ch0xFJE5fzhzyK2eXdElhjQedchdJCuQ2PkqsyvyFQhY4Vtfz5rpOPb7HgFowZERhS
 VwjEuZR5VObQx2SBvXy7UAUIeMUR9EGHFrxb1cf8ebTFKLLU4UX/DSgOdvjJaBL/YPJs
 vB8JulgjkrubK6ITwX9jIkmogvJfSvDMC6MczZ7uXmVz8SCpMe6g+JLzFzq+yASwGt73
 U/JkLCkgp4i1oOYHtYyfU4pHZTThhuc7cwq4PuUhju1ZebiSliign7MAyEqMiffRYwTL
 /X+mOqeP6jeTErlpev/jLgoHVIIpqrONxvtI2KZKPjyPVSfgkjhRUB6TMn4GeoWqMsey
 PXtQ==
X-Gm-Message-State: AOAM5327L9jvPlNf6mGcy/1iz/2ksfckMzVRrRuVl/6DsrtQhPmHp2gL
 kefz0/Z83tAT3f/aCYvDpvbRjU78rac=
X-Google-Smtp-Source: ABdhPJzfQLGPkZvQvhhvgqH3pOeKiAcVawi+inKAxHBYHDQJPI73lL0jsIUFZtdlQSteVV4CmKGDfw==
X-Received: by 2002:a37:a00d:: with SMTP id j13mr156762qke.349.1599573686550; 
 Tue, 08 Sep 2020 07:01:26 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id g37sm14710114qtk.76.2020.09.08.07.01.26
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 08 Sep 2020 07:01:26 -0700 (PDT)
Message-ID: <5F578EB5.2020308@gmail.com>
Date: Tue, 08 Sep 2020 10:01:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BM1PR01MB07697B6272A4EC36F8DA7F388B290@BM1PR01MB0769.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR01MB07697B6272A4EC36F8DA7F388B290@BM1PR01MB0769.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] Problem in detecting the USRP from my system
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
Content-Type: multipart/mixed; boundary="===============4242944851666254090=="
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
--===============4242944851666254090==
Content-Type: multipart/alternative;
 boundary="------------000704040108020406010703"

This is a multi-part message in MIME format.
--------------000704040108020406010703
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/08/2020 06:15 AM, Sourin Mondal (Vehere) via USRP-users wrote:
> Hi,
> 2 days back I have used a C++ code which can acquire data from Antenna 
> via USRP 2955. Previously that code works fine in another machine. But 
> when I tried to run in another machine, it was showing "no device 
> found" when I run the command "*uhd_find_devices*". Even when i run 
> the command "*uhd_usrp_probe*" it is showing no device found. But when 
> I run the command -> uhd_usrp_probe --args="addr=192.168.10.2" , it is 
> detecting the device as well as showing all the details.
> The OS of my system is Ubuntu 18.04.
> Dependencies to run this code : g++, uhd-3.14.1.0, NI Linux driver 2020.
> Communication from USRP to system is done via PCI e cable.
>
> Can you please help me why this is happening & how to solve this? I 
> can ensure that there is no problem in that code neither in any 
> dependency's installation.
>
> with regards,
> Sourin Mondal
>
>
If it's responding at that address, then it clearly isn't connected via 
PCI-e.

Now, if it isn't 'auto finding' that address, then it means your 
firewall configuration in the system is blocking subnet broadcast packets.




--------------000704040108020406010703
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/08/2020 06:15 AM, Sourin Mondal
      (Vehere) via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:BM1PR01MB07697B6272A4EC36F8DA7F388B290@BM1PR01MB0769.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
        font-size:12pt; color:rgb(0,0,0)">
        Hi,</div>
      <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
        font-size:12pt; color:rgb(0,0,0)">
        2 days back I have used a C++ code which can acquire data from
        Antenna via USRP 2955. Previously that code works fine in
        another machine. But when I tried to run in another machine, it
        was showing "no device found" when I run the command "<b>uhd_find_devices</b>".

        Even when i run the command "<b>uhd_usrp_probe</b>" it is
        showing no device found. But when I run the command -&gt;
        uhd_usrp_probe --args="addr=192.168.10.2" , it is detecting the
        device as well as showing all the details.</div>
      <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
        font-size:12pt; color:rgb(0,0,0)">
        The OS of my system is Ubuntu 18.04. <br>
      </div>
      <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
        font-size:12pt; color:rgb(0,0,0)">
        Dependencies to run this code : g++, uhd-3.14.1.0, NI Linux
        driver 2020.</div>
      <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
        font-size:12pt; color:rgb(0,0,0)">
        Communication from USRP to system is done via PCI e cable.</div>
      <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
        font-size:12pt; color:rgb(0,0,0)">
        <br>
      </div>
      <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
        font-size:12pt; color:rgb(0,0,0)">
        Can you please help me why this is happening &amp; how to solve
        this? I can ensure that there is no problem in that code neither
        in any dependency's installation.<br>
      </div>
      <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
        font-size:12pt; color:rgb(0,0,0)">
        <br>
      </div>
      <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
        font-size:12pt; color:rgb(0,0,0)">
        with regards,</div>
      <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
        font-size:12pt; color:rgb(0,0,0)">
        Sourin Mondal<br>
      </div>
      <br>
      <br>
    </blockquote>
    If it's responding at that address, then it clearly isn't connected
    via PCI-e.<br>
    <br>
    Now, if it isn't 'auto finding' that address, then it means your
    firewall configuration in the system is blocking subnet broadcast
    packets.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------000704040108020406010703--


--===============4242944851666254090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4242944851666254090==--

