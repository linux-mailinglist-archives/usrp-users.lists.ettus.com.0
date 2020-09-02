Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3496125B73F
	for <lists+usrp-users@lfdr.de>; Thu,  3 Sep 2020 01:25:34 +0200 (CEST)
Received: from [::1] (port=48310 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kDc8B-0003h7-A7; Wed, 02 Sep 2020 19:25:31 -0400
Received: from mail-qk1-f180.google.com ([209.85.222.180]:46096)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kDc87-0003ai-Lc
 for usrp-users@lists.ettus.com; Wed, 02 Sep 2020 19:25:27 -0400
Received: by mail-qk1-f180.google.com with SMTP id f142so1380410qke.13
 for <usrp-users@lists.ettus.com>; Wed, 02 Sep 2020 16:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=Lmr0JgW8tOqSdL6cm0wLs74ZCIGlPRTW0QyOgj+k8lQ=;
 b=IA+zL/H16feIMqtyDqd8rU6kFtawk1j3lIwCIm7BpQtDiHxxbJRd4X9ww2ESxo9cOk
 sep5/W01QForiuxZRPmtBls0b+BnB8YJJkBECmVVReiPSLPhEc+VYAjB/QvY0a0uXPri
 Fg56d/zWoO/fUwjI2ogZFBmA0nuZ35syHej9PM9XqWHf1CQhwdqEqdpZhHXyF6XIY2Sb
 nBGnMV2j/wQHHPg8DSTWVvrrX8tRRHQ3p0XWD6yd4oyaJhWHOodCRj6RtTrcpOGiyMwW
 vY9xdkj+DVvFOil/7KtnY9GifNReX3KYvKVB5UJqLqSAjsB5/LF1HuNmlfAMl+9q6wXB
 pGEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=Lmr0JgW8tOqSdL6cm0wLs74ZCIGlPRTW0QyOgj+k8lQ=;
 b=BK/qYbFcanOSclhHOTiUbKFWPnzgfDJsKKDQt/cF+dmfeCyLpbysmVY6OLg4yIjMZP
 jaG3bfVC3mkaLYHa6/YjexDtGBc2f1+36fU09jf4FFjIflm/8C/iRs9jpjuwCVDHzs1P
 x9JWd2jalfMCKCbtv2QXFZvMJHoGh2KM+u9sz59QM0NdDEkptYK3xBVcBq+O4cfhnBqo
 8L4UrF4nWsItK6gSLIr5qQQANiap689qYLyKTUUpJ88RHXb8J1gUBTIb1Qy09mdza3CI
 mTZLtRbSX6E9sQ0SddqWaofHC/NH6Z4h7AKvw+REqOyiBUcHBXjqwzA+NYLWm00eLRqI
 xIdQ==
X-Gm-Message-State: AOAM532qWx72pMGVUxD1LEW3o/AZ5x0fdknKiuRhCpEt75OJN5KbzTZn
 sXi3eXxcGjJc2dmELfst+ycIFm3E+Sc=
X-Google-Smtp-Source: ABdhPJyMH+YMG9PSANRpO1n7HvF5jUx83SuGKxuIq3UwshpmzPOMYgNXL0Rm6lLtbYywBvVskAe2Mg==
X-Received: by 2002:a37:c09:: with SMTP id 9mr405297qkm.471.1599089086828;
 Wed, 02 Sep 2020 16:24:46 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id a203sm885540qkg.30.2020.09.02.16.24.46
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Sep 2020 16:24:46 -0700 (PDT)
Message-ID: <5F5029BD.7030105@gmail.com>
Date: Wed, 02 Sep 2020 19:24:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CANYmVj-oSiMz_v-EpodsX173Q2iMKBPM-WVf2BsSOrZnPQtvUw@mail.gmail.com>
 <CANYmVj8vkBEry_XrQsz4QxYu29bd-mr1uVpwqdPsFLxQ1vSjRA@mail.gmail.com>
In-Reply-To: <CANYmVj8vkBEry_XrQsz4QxYu29bd-mr1uVpwqdPsFLxQ1vSjRA@mail.gmail.com>
Subject: Re: [USRP-users] Link going up and down periodically every 45
 seconds on USRP N310
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
Content-Type: multipart/mixed; boundary="===============1126588616152672567=="
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
--===============1126588616152672567==
Content-Type: multipart/alternative;
 boundary="------------080600050101030503050406"

This is a multi-part message in MIME format.
--------------080600050101030503050406
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/02/2020 07:01 PM, Venkatesh Sathyanarayanan via USRP-users wrote:
> Hi,
>
> Small correction:
>
> *Questions:*
> I notice that the test stops when the link goes down every 45 seconds. 
> This happens for all types of tests(with and without GUI).
> Kindly let me know how to debug this - i.e. why the link goes down 
> every 45 seconds?
>
> Regards
> Venkatesh
>
You probably have a faulty link of some sort.

Check the configuration on your host computer--what does 'dmesg' report 
in terms of the link state on your host computer?





--------------080600050101030503050406
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/02/2020 07:01 PM, Venkatesh
      Sathyanarayanan via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CANYmVj8vkBEry_XrQsz4QxYu29bd-mr1uVpwqdPsFLxQ1vSjRA@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi,
        <div><br>
        </div>
        <div>Small correction:</div>
        <div><br>
        </div>
        <div>
          <div><font size="4"><b>Questions:</b></font><br>
          </div>
          <div>I notice that the test stops when the link goes down
            every 45 seconds. This happens for all types of tests(with
            and without GUI).</div>
        </div>
        <div>Kindly let me know how to debug this - i.e. why the link
          goes down every 45 seconds?</div>
        <div><br>
        </div>
        <div>Regards</div>
        <div>Venkatesh</div>
      </div>
      <br>
    </blockquote>
    You probably have a faulty link of some sort.<br>
    <br>
    Check the configuration on your host computer--what does 'dmesg'
    report in terms of the link state on your host computer?<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------080600050101030503050406--


--===============1126588616152672567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1126588616152672567==--

