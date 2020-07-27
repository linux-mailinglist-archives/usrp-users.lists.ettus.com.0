Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 566F622F43E
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jul 2020 18:02:09 +0200 (CEST)
Received: from [::1] (port=46306 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k05Zn-00016s-Du; Mon, 27 Jul 2020 12:02:07 -0400
Received: from mail-qt1-f175.google.com ([209.85.160.175]:44751)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k05Zk-0000yR-A9
 for usrp-users@lists.ettus.com; Mon, 27 Jul 2020 12:02:04 -0400
Received: by mail-qt1-f175.google.com with SMTP id h21so6189610qtp.11
 for <usrp-users@lists.ettus.com>; Mon, 27 Jul 2020 09:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=PvKRCkUtvcPniVtFvnPBKRl8HAeSHx2HpooEdmGRaaA=;
 b=Socr96Y/xFp8S+58KBeZ53duzg/FiFbr0xg37k0WDxB9hLTceR1RwEZ7mgXbpeYB78
 JHLxUyATAYVY6Xn2lp5h40tmKIOQr3h/gJWQHq/Sdt1GuYfjaUDGa2aNZAGF1Dzlza9W
 A7AO2dVyhR0cMFejci3e8P1IpoacdYZlWC/eDsfwagTKBQi32eQ9vIy+QSVh2go2wS0m
 bQXLoLInZXFSCGJzttZulMrCdJZy4uzHe0wXfM1XZCueCy1x1ENyaoqjTRfxS7LxjrnS
 FB7fvXT/v9sdcNuOXxPb/QX/W76/n2oXQnO/h1Q5RtZPYO/qkJdZ5cuNKbD8WI+Y/MaH
 bxSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=PvKRCkUtvcPniVtFvnPBKRl8HAeSHx2HpooEdmGRaaA=;
 b=tuCljO6CX/wMWlP+Z4hLzeUYBjGUaNdWQ0M/S6+0ORw9WkzryXmTBOxgfe8/IJdaAM
 xbwkbH8g78p8bY4IO8minrZ4yB4u1Hkt56qHvbeiDliNv0MsnFoZVJlF0LtGluilJRS9
 wX3Y5115SDL17EQAnLgvNgtiAgVGTSoD8Rgz3+zPZzSP+JJxuHyoVopUb1j1R3XFBUv2
 6GNglYMS9pJIHweL0FL5nPk1qK1+fkLBzqcwDd5zoHvcAKJeT/F9bHqmh7o0j0R27siS
 kQ7+O9JZqCCOFp/EgK2SlU8hlRfewkmLL3QB04wUiVHAuxm6x/i/uUpf5gB2rjLBGOxT
 BpDw==
X-Gm-Message-State: AOAM5337Clv5Kh3NAL1WzLBEAQ+QDcHuZYaW4pMXywslFec18GvHx9nE
 Lv87TFEUzfIjxrSGF2D+0ZzxfBr3SG0=
X-Google-Smtp-Source: ABdhPJyv/N7asR5O4SrduIhe4iOHIDoN7/BPnwt0CIU629eJXNB9EqQyqR43TGZyGCn8GzJyZDTXig==
X-Received: by 2002:ac8:1c08:: with SMTP id a8mr22637425qtk.323.1595865683359; 
 Mon, 27 Jul 2020 09:01:23 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id y50sm16906742qtk.29.2020.07.27.09.01.22
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 Jul 2020 09:01:22 -0700 (PDT)
Message-ID: <5F1EFA52.2090108@gmail.com>
Date: Mon, 27 Jul 2020 12:01:22 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <MA1PR01MB25881E21C70C5AC940E50E9F90720@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB25881E21C70C5AC940E50E9F90720@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] Maximum phase offset in usrp channels
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
Content-Type: multipart/mixed; boundary="===============5712311552758022822=="
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
--===============5712311552758022822==
Content-Type: multipart/alternative;
 boundary="------------080201040005000808090806"

This is a multi-part message in MIME format.
--------------080201040005000808090806
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/27/2020 06:26 AM, Koyel Das (Vehere) via USRP-users wrote:
> Hi,
>
> Normally usrp is phase coherent that is instrumental phase offset 
> between two channels is constant in any one run of the application. I 
> want to know if this phase offset can be any value from -pi to pi or 
> can be more than that?
>
> Regards,
> Koyel
>
> Get Outlook for iOS <https://aka.ms/o0ukef>
>
Phase offset (if any) would be limited to +/- pi



--------------080201040005000808090806
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/27/2020 06:26 AM, Koyel Das
      (Vehere) via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:MA1PR01MB25881E21C70C5AC940E50E9F90720@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div>
          <div>Hi,</div>
          <div dir="ltr"><br>
          </div>
          <div dir="ltr">Normally usrp is phase coherent that is
            instrumental phase offset between two channels is constant
            in any one run of the application. I want to know if this
            phase offset can be any value from -pi to pi or can be more
            than that?</div>
          <div dir="ltr"><br>
          </div>
          <div dir="ltr">Regards,</div>
          <div dir="ltr">Koyel </div>
          <div><br>
          </div>
          <div class="ms-outlook-ios-signature"
            id="ms-outlook-mobile-signature">Get <a
              moz-do-not-send="true" href="https://aka.ms/o0ukef">
              Outlook for iOS</a></div>
        </div>
      </div>
      <br>
    </blockquote>
    Phase offset (if any) would be limited to +/- pi<br>
    <br>
    <br>
  </body>
</html>

--------------080201040005000808090806--


--===============5712311552758022822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5712311552758022822==--

