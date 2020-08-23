Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0523524EAC0
	for <lists+usrp-users@lfdr.de>; Sun, 23 Aug 2020 03:27:06 +0200 (CEST)
Received: from [::1] (port=38590 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k9emj-0003Pt-QR; Sat, 22 Aug 2020 21:27:01 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:34344)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k9emf-0003LD-R4
 for usrp-users@lists.ettus.com; Sat, 22 Aug 2020 21:26:57 -0400
Received: by mail-qk1-f173.google.com with SMTP id x69so4626584qkb.1
 for <usrp-users@lists.ettus.com>; Sat, 22 Aug 2020 18:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=YPHAOocI6mHqh9HuPiPKlXaSKPPoBT/J5FiyYYUjJBg=;
 b=Z+LwttOfCE2TBB0Ei9L5ZP/1u5ht8aahgjUKizBtuQ/7RcjZEcqGlUhuxX3SxYV9JW
 vhWS/6CKWz/CLp/xqmpwCL7th9LrMVjLY7L1mjGd094EGLTFw3n4NTcKjcRCzNr4Ayir
 eITaHS+s0YtVw/q/+Q/kNuZlKrCNp6ZdrZTQ48GTZ04T7pSgfxrEhmwbbiclnpUxktSY
 WRqRbO+44T2EYRubogxIDG7Sv8+Ph5JK7YybXvzQtQZifgi19Gr24nwBU3N9fFqM5F4Y
 X2qAoWFwDAMxUx6jAVkmIKbWbsiREHAJzbNlIQ5HlXsjT0L+TUZV/zWv9Jsxg4euark7
 9ekQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=YPHAOocI6mHqh9HuPiPKlXaSKPPoBT/J5FiyYYUjJBg=;
 b=ADR6EWhCuv0/Mipyb1ZfN/YM/cW5aIVh0RSV/FQatpb5cXgcimT7txEMBCA4gSZ2ZY
 bk2NPS9SrKrw+0k4Pv2QRcYrhWeF+q0Rov6wITmvmjTKggnv50N7FL1lWAtWra9crDn0
 hVMXrfzrTRsAilXfEvEhiuKqT22HJ1fT+hxcOVBmvt9pvQSD/1Q6Gy/LCnI87aJd/IYu
 rErsXsgq4atst3ShFh5moj2GiLUq12+628t863m9Xdk38QAa+0XXpEnt4wWgaplNJtNE
 9wATCSmDBsaSKPhN/cW/HZRSMi72/sM8RYQl0FGpcl1QlT+l/Ml4jeONYRJk8cAEsUCa
 93hw==
X-Gm-Message-State: AOAM5337hHBgld5/3T9zh8ELcQKdYs4U+nFuDZFqezxOnTttD2J+e4BD
 CPh7py9io2Ap0wiK+1hijXKeLPxFtabk4w==
X-Google-Smtp-Source: ABdhPJyhHbEehBlWuHbFohCeU1h+3k9reekI91VXeI6XceFkCZw0yzK6OVUhLU9F/7ARP28H9HwUfQ==
X-Received: by 2002:ae9:e641:: with SMTP id x1mr8327508qkl.424.1598145976938; 
 Sat, 22 Aug 2020 18:26:16 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id n128sm6118075qke.8.2020.08.22.18.26.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 22 Aug 2020 18:26:16 -0700 (PDT)
Message-ID: <5F41C5B7.9030201@gmail.com>
Date: Sat, 22 Aug 2020 21:26:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: kpras@trilcomm.com, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <53F074DDB8EF9CF2.b08124db-1501-4661-9a63-6aee26d65445@mail.outlook.com>
In-Reply-To: <53F074DDB8EF9CF2.b08124db-1501-4661-9a63-6aee26d65445@mail.outlook.com>
Subject: Re: [USRP-users] USRP B210: getting RX samples with gradually
 increase delay
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
Content-Type: multipart/mixed; boundary="===============1000684563523297670=="
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
--===============1000684563523297670==
Content-Type: multipart/alternative;
 boundary="------------060409040008000109020007"

This is a multi-part message in MIME format.
--------------060409040008000109020007
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/22/2020 09:08 PM, kpras@trilcomm.com wrote:
> Yes relative delay between samples in buffer.
> While detecting SYNC signal of 5G periodically, it  detects gradually 
> increased delay from its expected position.
> It means expected to receive at  2280 position of buffer but its keep 
> detecting away from expected position, 2281,2282,2284,........ and so on.
>
> Thanks,
> Prasad.
>
My guess is that you have an off-by-one error in your buffer-harvesting 
code.  This has nothing to do with the device.



--------------060409040008000109020007
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/22/2020 09:08 PM,
      <a class="moz-txt-link-abbreviated" href="mailto:kpras@trilcomm.com">kpras@trilcomm.com</a> wrote:<br>
    </div>
    <blockquote
cite="mid:53F074DDB8EF9CF2.b08124db-1501-4661-9a63-6aee26d65445@mail.outlook.com"
      type="cite">
      <div style="color: rgb(33, 33, 33); background-color: rgb(255,
        255, 255); text-align: left;" dir="auto">Yes relative delay
        between samples in buffer.</div>
      <div style="color: rgb(33, 33, 33); background-color: rgb(255,
        255, 255); text-align: left;" dir="auto">While detecting SYNC
        signal of 5G periodically, it  detects gradually increased delay
        from its expected position.</div>
      <div style="color: rgb(33, 33, 33); background-color: rgb(255,
        255, 255); text-align: left;" dir="auto">It means expected to
        receive at  2280 position of buffer but its keep detecting away
        from expected position, 2281,2282,2284,........ and so on.</div>
      <div style="color: rgb(33, 33, 33); background-color: rgb(255,
        255, 255); text-align: left;" dir="auto"><br>
      </div>
      <div style="color: rgb(33, 33, 33); background-color: rgb(255,
        255, 255); text-align: left;" dir="auto">Thanks,</div>
      <div style="color: rgb(33, 33, 33); background-color: rgb(255,
        255, 255); text-align: left;" dir="auto">Prasad.</div>
      <br>
    </blockquote>
    My guess is that you have an off-by-one error in your
    buffer-harvesting code.  This has nothing to do with the device.<br>
    <br>
    <br>
  </body>
</html>

--------------060409040008000109020007--


--===============1000684563523297670==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1000684563523297670==--

