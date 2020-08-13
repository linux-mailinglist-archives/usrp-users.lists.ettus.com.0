Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2704244026
	for <lists+usrp-users@lfdr.de>; Thu, 13 Aug 2020 22:54:11 +0200 (CEST)
Received: from [::1] (port=45720 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k6KEj-0004IX-4W; Thu, 13 Aug 2020 16:54:09 -0400
Received: from mail-qk1-f172.google.com ([209.85.222.172]:35455)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k6KEf-0004BF-IO
 for usrp-users@lists.ettus.com; Thu, 13 Aug 2020 16:54:05 -0400
Received: by mail-qk1-f172.google.com with SMTP id p25so6519713qkp.2
 for <usrp-users@lists.ettus.com>; Thu, 13 Aug 2020 13:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=3wMvG8G2y5Q1A9fzsz2tLyj61dnrafF+uZNC9ORVVUk=;
 b=sWWUrMTphjzjoO2wsRTj/jMiupVspt2txnvwYLBndtfcKMxHFH9cSz7o6Jr9Y86kfB
 Yp9ReXuZT1EiMYmE3k1G7qgDIdJCySLR6m+TdhsNz77cLiMxGmD1NBBo1P+wfE23yCKa
 h9fDAuutP2WSaoLtP+PpLxZpnHoH/dp/fbe8fmVpf+TP3nAosGeHcyxQr33Yl6iV1EsF
 b9CFyZSCLGZZTm1TF3PX7YytLa1aF3USEFJkNYU6Zcp9Y2icvP+YFW40yEPSkdgt96kX
 rq3cvZkNNwfepvfGJqHodFyHrlQ9WBtllKt7J2RgPC0uHkWOIGxeRhTUCR9npyHqldwd
 Q9Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=3wMvG8G2y5Q1A9fzsz2tLyj61dnrafF+uZNC9ORVVUk=;
 b=SYTpO4/DwVCAvpzUYHtvJIGEv534kcwifZ8cJqPzF9x/MTiZjsNLyHsT2dr/zGdiDD
 aSy23RBEqLuULXzE8QI7SvPcB9KN1WmF6f3zbGkxzxtOZTXIxhTThbRxciM3s8bHQCZe
 PzSyR/WEiqFN050kokHItHuaEtwRAK4teU0ffT8ABDAUe13mGj9039hhZISaYaPBzUjB
 Hoy7exf5XdoS95GOA4tGmkmu2WsMgf8RqaDb8rlydliYDx5XX5nypKIbXzs8xzSnxBuH
 VUS/2ZXQCxsoATXxwAupuk/sCL5HQ7xiEagxhCH6P8DU5ywjpH2N04oCYA0Amkl9J4CZ
 pNSQ==
X-Gm-Message-State: AOAM5311gTx1jvMv6RtDvi5hRhsu5x4XKOqGfdrugj5iP5Hvd0z+Mlwj
 MrPEdtrFE0bUoPEPKbsldsdcWd8NFjM=
X-Google-Smtp-Source: ABdhPJwdnIxEq+TqzvnnP1qi0zNlcnJy0g9InI0Dsc94b+7AGOltYKwNz6dI5UysgnESBi5rItdWmw==
X-Received: by 2002:a37:a292:: with SMTP id l140mr5787705qke.79.1597352004770; 
 Thu, 13 Aug 2020 13:53:24 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id m17sm7220678qkn.45.2020.08.13.13.53.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Aug 2020 13:53:24 -0700 (PDT)
Message-ID: <5F35A843.8020903@gmail.com>
Date: Thu, 13 Aug 2020 16:53:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Aaron Holtzman <aholtzma@gmail.com>
CC: usrp-users@lists.ettus.com
References: <CAEhVi8TCn4NxFeb5hnCjfxG6Hbc37pwzzBhEkNcj9Ju=Eyi2DA@mail.gmail.com>
 <5F3590F8.1020907@gmail.com>
 <CAEhVi8T+obpC2KiLkD2qsqrv++ATCuXxctqUNCvzk_U=M8Mh5Q@mail.gmail.com>
In-Reply-To: <CAEhVi8T+obpC2KiLkD2qsqrv++ATCuXxctqUNCvzk_U=M8Mh5Q@mail.gmail.com>
Subject: Re: [USRP-users] b200mini 1pps lock problem
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
Content-Type: multipart/mixed; boundary="===============3934626422154314741=="
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
--===============3934626422154314741==
Content-Type: multipart/alternative;
 boundary="------------050500050409050904010008"

This is a multi-part message in MIME format.
--------------050500050409050904010008
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/13/2020 04:09 PM, Aaron Holtzman wrote:
> On Thu, Aug 13, 2020 at 3:14 PM Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     How are you detecting "lock" 
>
>
> By querying the "ref_locked" sensor, and also looking at the LED which 
> is consistent.
>
>     Could you share a code snippet of how you set up the clocking
>     parameters?
>
>
> uhd_usrp_set_time_source(radio.usrp, "external", 0);
>
>      Have you tried a different 1PPS source?
>
>
> I've tried two different GPS. NB the GPS stays powered always between 
> application restarts and unplugging.
>
>
Has it always had this problem, or did it develop over time?

If you revert to UHD 3.14 does it display the same issue?



--------------050500050409050904010008
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/13/2020 04:09 PM, Aaron Holtzman
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAEhVi8T+obpC2KiLkD2qsqrv++ATCuXxctqUNCvzk_U=M8Mh5Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">
            <div dir="ltr">On Thu, Aug 13, 2020 at 3:14 PM Marcus D.
              Leech via USRP-users &lt;<a moz-do-not-send="true"
                href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
              wrote:<br>
            </div>
            <div class="gmail_quote">
              <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">How
                are you detecting "lock" </blockquote>
              <div><br>
              </div>
              <div>By querying the "ref_locked" sensor, and also looking
                at the LED which is consistent.</div>
              <div> </div>
              <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">
                Could you share a code snippet of how you set up the
                clocking parameters?</blockquote>
              <div><br>
              </div>
              <div>
                <div>uhd_usrp_set_time_source(radio.usrp, "external",
                  0);</div>
              </div>
              <div><br>
              </div>
              <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex"> Have
                you tried a different 1PPS source?</blockquote>
              <div><br>
              </div>
              <div>I've tried two different GPS. NB the GPS stays
                powered always between application restarts and
                unplugging.</div>
              <div><br>
              </div>
              <br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Has it always had this problem, or did it develop over time?<br>
    <br>
    If you revert to UHD 3.14 does it display the same issue?<br>
    <br>
    <br>
  </body>
</html>

--------------050500050409050904010008--


--===============3934626422154314741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3934626422154314741==--

