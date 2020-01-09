Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA2013629E
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jan 2020 22:33:53 +0100 (CET)
Received: from [::1] (port=33658 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipfR7-0004nD-9K; Thu, 09 Jan 2020 16:33:49 -0500
Received: from mail-qk1-f182.google.com ([209.85.222.182]:40680)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ipfR3-0004h4-Pu
 for usrp-users@lists.ettus.com; Thu, 09 Jan 2020 16:33:45 -0500
Received: by mail-qk1-f182.google.com with SMTP id c17so7483939qkg.7
 for <usrp-users@lists.ettus.com>; Thu, 09 Jan 2020 13:33:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=rmFPT2+HS0z12xFbzgfdemkRzVdGHsBB9Eac4gNAvgQ=;
 b=fnE5lEnTcWE9OnqdhhMV3UOPnr5lDs90B12SIfTWytIb1qgc1g5PIRpOrHAJXKYfnu
 dZUwxA6LPw4pRcVrUwgunSSedCv7D/VC7K7amj/5BBgW3PHL69fNONoeufaSAoOGxJB0
 JiouLKO4Qhu3A9UxcWusgMj3d5Kg2bvCN7Q+5Fx8vUB5+cx/iOax2BycqRMFwVjFRaO0
 C334iB4RWfZWPXEsXJ6rj7/UUT9orAN1Dxv4Hz/OAbR/BNdDxgiaxEcB2w+KuDzYlK/2
 ifTo8IQsGJPpKZ8G3WFP/EluC/DLqbE3ZwmWRXjCOcK07Jv7Bi3cJX4BliARWx01eYjt
 iEkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=rmFPT2+HS0z12xFbzgfdemkRzVdGHsBB9Eac4gNAvgQ=;
 b=tJ+jvILquWXEjpo0FXBO0IO/p8FqZbRgjCCy1g/iDdhWU+UKMQqLPCxpjjsPJZtl34
 BbFgVh0ZQ5FJkCIieugskW6rL6tJh8MHCKc/ZCiLefJ/EJiQ3UnptlOUjDT92Ow9peiT
 V1zATmTyrHoonLSmP8SIJ/hprse1PGb6qy+A9sQAKAc6wmAy676sr+YB7IIVKghrwSs4
 KnUv+smE8KiJosdAVSryWcCyli3kyj+FW+MQ0O1K3ng9xCfwPZOkiTqE2clwXdyyF5re
 ttpQKcDhyJD1fDgpg2CRM7UfduIehmXxbweBrCMyqSOth0TjNc+7Wtd/HKMM0epH1TxL
 lyMQ==
X-Gm-Message-State: APjAAAX3Ed6RrFNkCbkE08VYOvt29GbSl6yDShMdQe5bMOrvms1kIyQR
 fewlOJY4iK336vD4HtGuKM0jVcv4o/M=
X-Google-Smtp-Source: APXvYqzLnA8z9y6EHPyAy5iV0aj5fEInUvnD6+SVEQrjFB8uJy30PxSQBcYwvd1bllMmCJdlYOaShQ==
X-Received: by 2002:a37:a5c7:: with SMTP id
 o190mr11742705qke.355.1578605585093; 
 Thu, 09 Jan 2020 13:33:05 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id l85sm3668388qke.103.2020.01.09.13.33.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 Jan 2020 13:33:04 -0800 (PST)
Message-ID: <5E179C0F.8010909@gmail.com>
Date: Thu, 09 Jan 2020 16:33:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: voonna santosh <santu_voonna@yahoo.com>
References: <1258262887.8487449.1578490158766@mail.yahoo.com>
 <12EB7A0E-F5F7-4FC8-A6CD-92A42E52F6B0@gmail.com>
 <900064020.8665629.1578507448504@mail.yahoo.com> <5E163E65.70104@gmail.com>
 <1693583403.8730630.1578516321483@mail.yahoo.com>
 <5E163FC9.4000802@gmail.com> <373709061.9116148.1578581344482@mail.yahoo.com>
In-Reply-To: <373709061.9116148.1578581344482@mail.yahoo.com>
Subject: Re: [USRP-users] tx_samples_from_file : Issue with repeat option
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7639988144608103007=="
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
--===============7639988144608103007==
Content-Type: multipart/alternative;
 boundary="------------020506050606080203040905"

This is a multi-part message in MIME format.
--------------020506050606080203040905
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/09/2020 09:49 AM, voonna santosh wrote:
> Hi Marcus,
>    Build is failing for 3.14.1.1 and the reason is that "uhd_dpdk.c" 
> is written in C99 mode.
> BR,
> Santosh
>
If you aren't actually using DPDK, which you wouldn't have been with UHD 
3.10, then when you're building, in the CMake step, use
    -DENABLE_DPDK=OFF


> On Wednesday, January 8, 2020, 08:47:07 PM GMT, Marcus D. Leech 
> <patchvonbraun@gmail.com> wrote:
>
>
> On 01/08/2020 03:45 PM, voonna santosh wrote:
>> Hi Marcus,
>>   Which version would you suggest? Also can you please confirm 
>> whether it would work on 3.10.1.0 ?
>> BR,
>> Santosh
>>
>>
>>
> It should work, but my recollection is that there are issues with TX 
> for X300 that have been fixed since 3.10.1.0.
>
> Something recent, like 3.14.1.1  should be tried.
>
>
>


--------------020506050606080203040905
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/09/2020 09:49 AM, voonna santosh
      wrote:<br>
    </div>
    <blockquote
      cite="mid:373709061.9116148.1578581344482@mail.yahoo.com"
      type="cite">
      <div class="ydpaab9d6c7yahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:16px;">
        <div dir="ltr" data-setdir="false">Hi Marcus,</div>
        <div dir="ltr" data-setdir="false">   Build is failing for
          3.14.1.1 and the reason is that "uhd_dpdk.c" is written in C99
          mode.</div>
        <div dir="ltr" data-setdir="false">BR,</div>
        <div dir="ltr" data-setdir="false">Santosh</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    If you aren't actually using DPDK, which you wouldn't have been with
    UHD 3.10, then when you're building, in the CMake step, use<br>
       -DENABLE_DPDK=OFF<br>
    <br>
    <br>
    <blockquote
      cite="mid:373709061.9116148.1578581344482@mail.yahoo.com"
      type="cite">
      <div class="ydpaab9d6c7yahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:16px;"> </div>
      <div id="yahoo_quoted_9183161140" class="yahoo_quoted">
        <div style="font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Wednesday, January 8, 2020, 08:47:07 PM GMT, Marcus
            D. Leech <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id="yiv0516350217">
              <div>
                <div class="yiv0516350217yqt1622953141"
                  id="yiv0516350217yqtfd80784">
                  <div class="yiv0516350217moz-cite-prefix">On
                    01/08/2020 03:45 PM, voonna santosh wrote:<br
                      clear="none">
                  </div>
                </div>
                <blockquote type="cite">
                  <div class="yiv0516350217yqt1622953141"
                    id="yiv0516350217yqtfd46840"> </div>
                  <div class="yiv0516350217ydp27ebd4ceyahoo-style-wrap"
                    style="font-family:Helvetica Neue, Helvetica, Arial,
                    sans-serif;font-size:16px;">
                    <div class="yiv0516350217yqt1622953141"
                      id="yiv0516350217yqtfd62190">
                      <div dir="ltr">Hi Marcus,</div>
                      <div dir="ltr">  Which version would you suggest?
                        Also can you please confirm whether it would
                        work on 3.10.1.0 ?</div>
                      <div dir="ltr">BR,</div>
                    </div>
                    <div dir="ltr">
                      <div class="yiv0516350217yqt1622953141"
                        id="yiv0516350217yqtfd81969">Santosh</div>
                      <br clear="none">
                    </div>
                    <div><br clear="none">
                    </div>
                  </div>
                  <br clear="none">
                </blockquote>
                It should work, but my recollection is that there are
                issues with TX for X300 that have been fixed since
                3.10.1.0.<br clear="none">
                <br clear="none">
                Something recent, like 3.14.1.1  should be tried.
                <div class="yiv0516350217yqt1622953141"
                  id="yiv0516350217yqtfd34950"><br clear="none">
                  <br clear="none">
                  <br clear="none">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------020506050606080203040905--


--===============7639988144608103007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7639988144608103007==--

