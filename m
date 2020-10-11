Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCEA28A4E8
	for <lists+usrp-users@lfdr.de>; Sun, 11 Oct 2020 03:05:25 +0200 (CEST)
Received: from [::1] (port=47190 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kRPnd-0002vv-Kr; Sat, 10 Oct 2020 21:05:21 -0400
Received: from mail-qt1-f180.google.com ([209.85.160.180]:36558)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kRPna-0002rF-4L
 for usrp-users@lists.ettus.com; Sat, 10 Oct 2020 21:05:18 -0400
Received: by mail-qt1-f180.google.com with SMTP id c5so11059157qtw.3
 for <usrp-users@lists.ettus.com>; Sat, 10 Oct 2020 18:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=PQu6o0743fplZzsVmZU+03uKgxhgj3mlh0AxhfXv5FA=;
 b=SrlC3VJYhKoQjAr7+SpT5587wdhNXt44we+V4nlCnYqL4lt3WOo3RjKVK4+1DOpOAR
 ozX2MSwtMbx4Jq/o9hzlkaUnqaXxYuumWgGd5qogxF9hzywXE6a53uqvTR1bqN+vV0aS
 CxKzMxIb3JHLuhhbT2JRBDfqGMh62WKICYaJ+gAM2RLI94H3fEEbcztr5zot7FHJR1sI
 he4YmzCCRmavEH4xCMvdU5FiFJP3aqGzNaackOTmlZSPw+8mT5rC4WToFCxfcD+m251C
 ZAsC9+ul2zBzW0IlRdhUgRbIUjEFCSqzpOslmCjcKX9H3oBAnQeq/ZaJH+DHE/b0V0HU
 qrFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=PQu6o0743fplZzsVmZU+03uKgxhgj3mlh0AxhfXv5FA=;
 b=ccuvpZuGK0PoGmyv5iWppu8d/D8TjN8uYzYEGt1ez/j2qJBnckn1oowdGQPnw7XLQP
 jydkKaPCGmgHwngb4CFkuw/EKgjZxtZPpiJflRBAa3zn2KbiWDAHuvd8c5D02fxuZLjp
 qKWMN/KeO5J/tXzb/+a94GmzoqmBBnUEcCW/3w/KHNM/mjX6yvWl+RP92M/f8Y7YzdGL
 w/wmk/2uUrWtLv3Z6MN3nFlfnt7P6EDq8CIaW4hSaSkPbUMWqzB3+gJXzJmYRcHVKDuO
 bHZqjTD3BHRU0YQh1nnE8Soz0cg2ilW4k78BxMKujdL86zZ0PuvQX0kveq4W8W1HrBtx
 pcXA==
X-Gm-Message-State: AOAM533W7olqey6PiRN0ieDtmF/IW7YQLpWfixgxUAMmnaK9tKKjXDGT
 SbAf3/nHrrVBQdkea6TPhdha7PJ4a1AZvA==
X-Google-Smtp-Source: ABdhPJxIEp0r/HX/neHuf8R4SkAeH01ndRXNSf7AHNxU6zDkgHzNyDXpDnEJvgtb3ILK9zgKogMHcw==
X-Received: by 2002:aed:2ce5:: with SMTP id g92mr4575552qtd.107.1602378277145; 
 Sat, 10 Oct 2020 18:04:37 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id g5sm9421728qtx.43.2020.10.10.18.04.36
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 10 Oct 2020 18:04:36 -0700 (PDT)
Message-ID: <5F825A23.2010901@gmail.com>
Date: Sat, 10 Oct 2020 21:04:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <1140635092.131635.1602365919984.ref@mail.yahoo.com>
 <1140635092.131635.1602365919984@mail.yahoo.com>
In-Reply-To: <1140635092.131635.1602365919984@mail.yahoo.com>
Subject: Re: [USRP-users] B210 FPGA access
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
Content-Type: multipart/mixed; boundary="===============4869005386144493398=="
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
--===============4869005386144493398==
Content-Type: multipart/alternative;
 boundary="------------020404020500080806010105"

This is a multi-part message in MIME format.
--------------020404020500080806010105
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/10/2020 05:38 PM, Jay Labhart via USRP-users wrote:
> I am in the process of modifying the b210 fpga files and would like to 
> know if there is an interface that has been established for the FPGA 
> and host to communicate with each other.  I have seen a poke64 and 
> peek64 but have also seen set_user_register().
>
> Can anyone share if the b210 has the FPGA to host interface?
>
> Thanks
> Jay
>
You'll likely need to muck about with:

./host/lib/usrp/cores/user_settings_core_3000.cpp


My understanding of peek/poke is that they're conceptually reserved for 
UHD driver code that "knows" where things are inside the FPGA
   in question and that the preferred path is the user_settings stuff.

But I'm not an FPGA guy so that's about as much as I know.



--------------020404020500080806010105
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/10/2020 05:38 PM, Jay Labhart via
      USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:1140635092.131635.1602365919984@mail.yahoo.com"
      type="cite">
      <div class="yahoo-style-wrap" style="font-family:Helvetica Neue,
        Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir="ltr" data-setdir="false">I am in the process of
          modifying the b210 fpga files and would like to know if there
          is an interface that has been established for the FPGA and
          host to communicate with each other.  I have seen a poke64 and
          peek64 but have also seen set_user_register().</div>
        <div dir="ltr" data-setdir="false"><br>
        </div>
        <div dir="ltr" data-setdir="false">Can anyone share if the b210
          has the FPGA to host interface?</div>
        <div dir="ltr" data-setdir="false"><br>
        </div>
        <div dir="ltr" data-setdir="false">Thanks</div>
        <div dir="ltr" data-setdir="false">Jay<br>
        </div>
      </div>
      <br>
    </blockquote>
    You'll likely need to muck about with:<br>
    <br>
    ./host/lib/usrp/cores/user_settings_core_3000.cpp<br>
    <br>
    <br>
    My understanding of peek/poke is that they're conceptually reserved
    for UHD driver code that "knows" where things are inside the FPGA<br>
      in question and that the preferred path is the user_settings
    stuff.<br>
    <br>
    But I'm not an FPGA guy so that's about as much as I know.<br>
    <br>
    <br>
  </body>
</html>

--------------020404020500080806010105--


--===============4869005386144493398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4869005386144493398==--

