Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E4226F5D2
	for <lists+usrp-users@lfdr.de>; Fri, 18 Sep 2020 08:20:18 +0200 (CEST)
Received: from [::1] (port=40510 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kJ9kj-0002vR-TZ; Fri, 18 Sep 2020 02:20:13 -0400
Received: from mail-qt1-f178.google.com ([209.85.160.178]:44470)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kJ9kg-0002pI-G7
 for USRP-users@lists.ettus.com; Fri, 18 Sep 2020 02:20:10 -0400
Received: by mail-qt1-f178.google.com with SMTP id e7so4106216qtj.11
 for <USRP-users@lists.ettus.com>; Thu, 17 Sep 2020 23:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=NAliJ0k5BsErD8UrSbRvKHRvI1AnfAfD9LBXCjebmA0=;
 b=AaFMQRqTySPmI11B2Kn2n5TM3Vn2lgh0+jaAbyD+cRKclW5ND9VlUD3xOiUx1G2gOj
 FD1ROyUwc2C66TesVv88o7V4xJ96bHGxM9UerLCZ4+ijVfYAj/JP13YV/fFglU0o5KWl
 Q62ouz/pTUnpDPsF5vKJP0lcyxsdhPxfBnk8BczHwsm0+93bRf9qdKv8Z9xLcw3Gw5Gx
 ig4JlaDrYERWPa+LHkjMF55fwPIGiLTprJLOGJrmtaq023oEuDbjKCS+s434FKj0eoZa
 LYhzMwi0KGgTcfjcgm83ukPvBp6U9/EhHtYXgorZFfFdpvfyPmd+2/joBE/29UypYp0Z
 r6PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=NAliJ0k5BsErD8UrSbRvKHRvI1AnfAfD9LBXCjebmA0=;
 b=fKIYphMjq39elUtXnPe9mK9GnUD1ynB+iFsmyS6ZmRZ/w3wU8aPXuDt5GnaKzEmoWd
 IdfG0HnR458BV+UaLRxAoY2e38W6+5Qw7C9NrP1Yb4ueHFlHvPaV0exIeQvl851rjDAq
 wYpK48IQtdMEhmLDNHOyDddNweUJ1nklxcE0F7svm1QP/wL98XLDBKSyn09KQm4Ox87j
 /zfYQuDJJl2r8PkfaacwxbwMqTsnyOlZ+e5VIqSYmvy+A5rqH82CNmC4ICuz32ASmkJj
 oL8dh4L2G812Fr41rmooI7rk0Nd1mY0U2+d5RSAiM7bBJ7it+8Vqeu6752OOGsOmyJ0W
 DYKg==
X-Gm-Message-State: AOAM531qfc29JErDgXu7dbzxMSUNFZqpHtaUjKoTOaVtqucEVeVT7kKE
 3+0wiyLhDBHVISpsJKrhyhCCmsFYVeYvPQ==
X-Google-Smtp-Source: ABdhPJxDJPugIy65kvOtLNt2neUJ1rrRr+m6BR3wJhESiSRakSTEGHM2I8Ch3mEWhdlltAlPAuEXHA==
X-Received: by 2002:aed:2964:: with SMTP id s91mr31588955qtd.247.1600409969566; 
 Thu, 17 Sep 2020 23:19:29 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id d12sm1490250qka.34.2020.09.17.23.19.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 17 Sep 2020 23:19:29 -0700 (PDT)
Message-ID: <5F645170.7000801@gmail.com>
Date: Fri, 18 Sep 2020 02:19:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Thomas james <james_ttfun@hotmail.com>, 
 "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
References: <HK0PR03MB5091FC4CE234C553C0B88B319D3E0@HK0PR03MB5091.apcprd03.prod.outlook.com>,
 <5F638040.9080705@gmail.com>
 <HK0PR03MB50919AB20089C910BEC329AE9D3F0@HK0PR03MB5091.apcprd03.prod.outlook.com>
In-Reply-To: <HK0PR03MB50919AB20089C910BEC329AE9D3F0@HK0PR03MB5091.apcprd03.prod.outlook.com>
Subject: Re: [USRP-users] 
 =?utf-8?b?5Zue5aSNOiAgd2hhdCBpcyB0aGUgVFBNIHVzZWQg?=
 =?utf-8?q?for_N310?=
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
Content-Type: multipart/mixed; boundary="===============3695144947324667558=="
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
--===============3695144947324667558==
Content-Type: multipart/alternative;
 boundary="------------070406070405050902090004"

This is a multi-part message in MIME format.
--------------070406070405050902090004
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 09/17/2020 11:19 PM, Thomas james wrote:
> HI Marcus,
> thanks. and is the source code of stm32  and cpld  avaiable?
>
I don't believe that any of the CPLD code is available, but the STM32 
code might be.  I can ask R&D.


> ------------------------------------------------------------------------
> *发件人:* USRP-users <usrp-users-bounces@lists.ettus.com> 代表 Marcus 
> D. Leech via USRP-users <usrp-users@lists.ettus.com>
> *发送时间:* 2020年9月17日 23:26
> *收件人:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *主题:* Re: [USRP-users] what is the TPM used for N310
> On 09/17/2020 08:41 AM, Thomas james via USRP-users wrote:
>> Hi,
>> i learned that N310 have the version with or without TPM. i want to 
>> know more about it. what is the TPM used for?
>>
> Nothing as far as I know--it's available to be used for custom 
> applications.
>


--------------070406070405050902090004
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/17/2020 11:19 PM, Thomas james
      wrote:<br>
    </div>
    <blockquote
cite="mid:HK0PR03MB50919AB20089C910BEC329AE9D3F0@HK0PR03MB5091.apcprd03.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        HI Marcus,<br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        thanks. and is the source code of stm32  and cpld  avaiable?<br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
    </blockquote>
    I don't believe that any of the CPLD code is available, but the
    STM32 code might be.  I can ask R&amp;D.<br>
    <br>
    <br>
    <blockquote
cite="mid:HK0PR03MB50919AB20089C910BEC329AE9D3F0@HK0PR03MB5091.apcprd03.prod.outlook.com"
      type="cite">
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
      </div>
      <hr style="display:inline-block;width:98%" tabindex="-1">
      <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
          color="#000000" face="Calibri, sans-serif"><b>发件人:</b>
          USRP-users <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users-bounces@lists.ettus.com">&lt;usrp-users-bounces@lists.ettus.com&gt;</a> 代表
          Marcus D. Leech via USRP-users
          <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>发送时间:</b> 2020年9月17日 23:26<br>
          <b>收件人:</b> <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>主题:</b> Re: [USRP-users] what is the TPM used for N310</font>
        <div> </div>
      </div>
      <div style="background-color:#FFFFFF">
        <div class="x_moz-cite-prefix">On 09/17/2020 08:41 AM, Thomas
          james via USRP-users wrote:<br>
        </div>
        <blockquote type="cite">
          <style type="text/css" style="display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Hi,</div>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            i learned that N310 have the version with or without TPM. i
            want to know more about it. what is the TPM used for?<br>
          </div>
          <br>
        </blockquote>
        Nothing as far as I know--it's available to be used for custom
        applications.<br>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------070406070405050902090004--


--===============3695144947324667558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3695144947324667558==--

