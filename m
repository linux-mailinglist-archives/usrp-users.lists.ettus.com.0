Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E924A1E03FF
	for <lists+usrp-users@lfdr.de>; Mon, 25 May 2020 01:52:19 +0200 (CEST)
Received: from [::1] (port=60610 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jd0Pf-0001Te-Uu; Sun, 24 May 2020 19:52:15 -0400
Received: from mail-qv1-f51.google.com ([209.85.219.51]:46812)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jd0Pb-0001QX-Su
 for usrp-users@lists.ettus.com; Sun, 24 May 2020 19:52:11 -0400
Received: by mail-qv1-f51.google.com with SMTP id dh1so7372777qvb.13
 for <usrp-users@lists.ettus.com>; Sun, 24 May 2020 16:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=VxOKTPQTYDjHWLkk4KpWY6wwowMCpaeCeEKbTtKPM8E=;
 b=tFhRBzUyxvnkf8zS7Xp26qVjN96j/DlS7duvhaoRh72ipsf81d2N7cPGEqNRrKiH63
 ouhRs7PA/ExADIoDblpoPDzgu34UgfosOju2knAahZ6lqnYEeQLsBpWVZCboFP8z4tKm
 rgjl9YgjbUrGh6OuEvm/g5k5J/fvt4xjknSUpOmBzUWm7v7zJ10yyXhidvo8WNoknsYG
 3cPLsHijzh8rqfe8WWcSuNkalKxNQwkuugwWEDamZd3hbx+xuZCPEHdlm1BbQqVLj81z
 5iEuQoT2yz2qrNTl05itQdH40MpN5TwRksVo7jcG2CLXbaMmpszQeSmwCNfE1LsnIXAW
 1H2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=VxOKTPQTYDjHWLkk4KpWY6wwowMCpaeCeEKbTtKPM8E=;
 b=ugIvwwdOhqbi4MHOrPQJ/u2gkJfTfuJbK/+8fm3kPzvi2LC6YYXcx3DTOnSJlqWcC4
 yDZrwN/12CXk1JB6El9aV9ItrEImXeDU1Slxr8Mn9Ura3K4Afem2DvKhMSuH/58pC+u8
 bDmhdhGeX5cFjdxPGIvSRtJCGHwF3R0cnVA0ebtJHDYtunZWCl1cVa5+Ot3GyE+WZfw3
 D1tsvE3DQjA0pu5EGWdw9TAYLxm/tA6aTPNLXXnb0xeLS3addYkzzok5+2kJeeO+EsZK
 zpEHzWphEtv6q0d2e2rYTIwUaKDfy+YyYqC8wIUbEgz4bGDwQAmsvoxdEayFWawUV6Yk
 9c2g==
X-Gm-Message-State: AOAM53186oaZrl8dIlR/8vnsq2T4pVNQUa8D5G0AYQGX+sDt5TPLixff
 W9OcxfC5WNfgv4b4A+l4D0FFMptG
X-Google-Smtp-Source: ABdhPJzSWxRLZi6wpME9Dq73f3p1PxyjNEnLbC8hrhLDx9HjqPfhxZW6gse8xycwCZ1BOorGXVHm9A==
X-Received: by 2002:a05:6214:90e:: with SMTP id
 dj14mr13172181qvb.3.1590364291142; 
 Sun, 24 May 2020 16:51:31 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-12-103.dsl.bell.ca.
 [174.95.12.103])
 by smtp.googlemail.com with ESMTPSA id l1sm7517983qtl.3.2020.05.24.16.51.30
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 24 May 2020 16:51:30 -0700 (PDT)
Message-ID: <5ECB0882.1040001@gmail.com>
Date: Sun, 24 May 2020 19:51:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAMEXhvdDFbmOZWeNh8+FJEAX2eyTvSo9ynZL--yRP0JBoSqFpQ@mail.gmail.com>
In-Reply-To: <CAMEXhvdDFbmOZWeNh8+FJEAX2eyTvSo9ynZL--yRP0JBoSqFpQ@mail.gmail.com>
Subject: Re: [USRP-users] Latency when accessing the property tree in USRP
 X310
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
Content-Type: multipart/mixed; boundary="===============1769001284711812046=="
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
--===============1769001284711812046==
Content-Type: multipart/alternative;
 boundary="------------000005090903040304050804"

This is a multi-part message in MIME format.
--------------000005090903040304050804
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 05/24/2020 01:50 PM, Jiaxin Liang via USRP-users wrote:
> Hi all,
>
> I am using an X310 connecting to a host PC with a 10Gbps Ethernet 
> cable. I would like to know the delay when I call functions like 
> /get_time_now()/ or /get_bandwidth()/ provided by UHD.
>
> I have checked the source code in UHD. It seems that these functions 
> will finally get the value from a pointer pointing to the 
> property_tree. But I would like to know whether the functions actually 
> send request packets to the USRP hardware (i.e. FPGA) through the 
> Ethernet cable or not because that will affect the delay I would like 
> to measure.
>
> Best regards,
> Jiaxin
>
>
In the case of get_time_now(), that's giving you the value of a register 
within the FPGA, so it necessarily *MUST* include a network transaction.

Others may not require any transaction against the hardware.




--------------000005090903040304050804
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/24/2020 01:50 PM, Jiaxin Liang
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAMEXhvdDFbmOZWeNh8+FJEAX2eyTvSo9ynZL--yRP0JBoSqFpQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi all,
        <div><br>
        </div>
        <div>I am using an X310 connecting to a host PC with a 10Gbps
          Ethernet cable. I would like to know the delay when I call
          functions like <i>get_time_now()</i> or <i>get_bandwidth()</i> provided
          by UHD.</div>
        <div><br>
        </div>
        <div>I have checked the source code in UHD. It seems that these
          functions will finally get the value from a pointer pointing
          to the property_tree. But I would like to know whether the
          functions actually send request packets to the USRP hardware
          (i.e. FPGA) through the Ethernet cable or not because that
          will affect the delay I would like to measure.</div>
        <div><br>
        </div>
        <div>Best regards,</div>
        <div>Jiaxin</div>
      </div>
      <br>
      <br>
    </blockquote>
    In the case of get_time_now(), that's giving you the value of a
    register within the FPGA, so it necessarily *MUST* include a network
    transaction.<br>
    <br>
    Others may not require any transaction against the hardware.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------000005090903040304050804--


--===============1769001284711812046==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1769001284711812046==--

