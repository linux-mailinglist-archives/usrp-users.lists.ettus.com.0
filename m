Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 615878D58F
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2019 16:05:23 +0200 (CEST)
Received: from [::1] (port=33424 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxttx-0002Zl-Qn; Wed, 14 Aug 2019 10:05:21 -0400
Received: from mail-qt1-f176.google.com ([209.85.160.176]:39791)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hxttu-0002V2-37
 for usrp-users@lists.ettus.com; Wed, 14 Aug 2019 10:05:18 -0400
Received: by mail-qt1-f176.google.com with SMTP id l9so110138728qtu.6
 for <usrp-users@lists.ettus.com>; Wed, 14 Aug 2019 07:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=Wl8X8DjMNPS96pd++Qkll4s6CKmaa0IlPmUGbc5i9Uw=;
 b=VQ7t30nWMI95PLqWtKcg9TKw1P/Zd0tQ8o1oKBC4lgyVAacavd17WJVQ8didXhKsnW
 SaXDt5590XJ/6RVETMjRVEdXtYuiP8VaWi1DlxPdYGswT863GUCLb5IsjCxCnelokbjL
 ni38+qJ/BQmGsfVPZkxFUrphBvoaIwR7jKEqaLymXU1DMZLIwYCnorj+OauVOK2p8akR
 GaNoZRctPCgbusoXWAqkRAlzYAb66Mzsa1tkZExDGgaT0g0wBbWeUDFeI6b+40iDXk05
 lWlVGFc22YGI/Hj5+3o9+axrnfi1pzV+0HthB+5KWr3ROd8xPW5+SMarqfZtjU9Rjf0g
 q+fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=Wl8X8DjMNPS96pd++Qkll4s6CKmaa0IlPmUGbc5i9Uw=;
 b=ZeYXEycNNG+d7hPT4GiKYqyS63oHaGmG1jnULQiCQjYWoz/p2MFGMsIaBIq6xi91XP
 t0J4hViAAyrp7x9FG3mryPgL3TuNYpwGIzPwJhkUT02a3AIZAhWXv7xsFvZTKQhn9CXA
 8swF6HUUqicdIXq4BGfZSkMzkdTlK22l7CsU/z7RjUkWVfh0Gov+SID9ze0tueRz6c+I
 Mvqm5josG+ZbBm57a1NPlJiYDWKDyKON8VSSHqq+xvGtb8U0QAgKkZvjLmejNtVm2wM+
 Jh4MK/A+l9jwYFG11nxv7Iisl/4k91W24AAiKVqDqkzX6SOZXgvRy1+xX/N7WgmjvABu
 WBKA==
X-Gm-Message-State: APjAAAWHQTBlhNvNG+v97nZyjJZ4ubfRIwH29erg5RiUPVvE3q+KxJqj
 cKTldRaFmn+U+JC0xgq0hi9eFizJ
X-Google-Smtp-Source: APXvYqySImOXIsKivxU//cTqqAVDZ4ZCVKmDyKHGpmlFClMYQsxGpHhVEs9gZCM2az3WUyU3JaQi8A==
X-Received: by 2002:aed:22d5:: with SMTP id q21mr15564195qtc.199.1565791477476; 
 Wed, 14 Aug 2019 07:04:37 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id l11sm2360991qtr.11.2019.08.14.07.04.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 07:04:36 -0700 (PDT)
Message-ID: <5D5414F4.6070501@gmail.com>
Date: Wed, 14 Aug 2019 10:04:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Tellrell White <t_whit_87@yahoo.com>, usrp-users@lists.ettus.com
References: <1754624003.3660157.1565753634913.ref@mail.yahoo.com>
 <1754624003.3660157.1565753634913@mail.yahoo.com> <5D5382D4.60007@gmail.com>
 <451633320.3650050.1565757496009@mail.yahoo.com>
In-Reply-To: <451633320.3650050.1565757496009@mail.yahoo.com>
Subject: Re: [USRP-users] UHD Error with X310
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
Content-Type: multipart/mixed; boundary="===============0440955095468641594=="
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
--===============0440955095468641594==
Content-Type: multipart/alternative;
 boundary="------------020400040508040402020906"

This is a multi-part message in MIME format.
--------------020400040508040402020906
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/14/2019 12:38 AM, Tellrell White wrote:
> Marcus
>
>
>
> However, I re-flashed the device with " uhd_image_loader --args 
> type=x300" , power cycled and after running uhd_usrp_probe
> get what's shown below. This doesn't seem to be the new image. It's 
> showing RFNoC blocks from a previous image that was installed prior to 
> my use and when I try to run a flowgraph I'm getting the same error as 
> mentioned in my previous message. Ideas??
These just look like the standard RFNOC blocks for X310.   Keep in mind 
that internally, for several releases, UHD uses RFNOC, even if your
   code doesn't.

What type of hardware is this running on?  What kind of ethernet 
interface is connected to the X310?

What sample rate are you using?

What OS version?  Within a VM, or on raw hardware?



--------------020400040508040402020906
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/14/2019 12:38 AM, Tellrell White
      wrote:<br>
    </div>
    <blockquote
      cite="mid:451633320.3650050.1565757496009@mail.yahoo.com"
      type="cite">
      <div class="ydpfeed99a8yahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;"> </div>
      <div class="ydpfeed99a8yahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;" dir="ltr" data-setdir="false">Marcus </div>
      <br>
      <div class="ydpfeed99a8yahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;"><br>
      </div>
      <div class="ydpfeed99a8yahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;"><br>
      </div>
      <div class="ydpfeed99a8yahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;" dir="ltr" data-setdir="false">
        <div class="ydpfeed99a8yahoo-style-wrap" style="text-align:
          left; color: rgb(0, 0, 0); text-transform: none; text-indent:
          0px; letter-spacing: normal; font-family: Helvetica
          Neue,Helvetica,Arial,sans-serif; font-size: 13px; font-style:
          normal; font-variant: normal; font-weight: 400;
          text-decoration: none; word-spacing: 0px; white-space: normal;
          orphans: 2;" dir="ltr" data-setdir="false">However, I
          re-flashed the device with " <span><span
              style="background-color: rgb(255, 255, 255); color:
              rgb(29, 34, 40); display: inline; float: none;
              font-family: Helvetica Neue,Helvetica,Arial,sans-serif;
              font-size: 13px; font-style: normal; font-variant: normal;
              font-weight: 400; letter-spacing: normal; orphans: 2;
              text-align: left; text-decoration: none; text-indent: 0px;
              text-transform: none; white-space: normal; word-spacing:
              0px;">uhd_image_loader --args type=x300</span></span>" ,
          power cycled and after running uhd_usrp_probe </div>
      </div>
      <div class="ydpfeed99a8yahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;" dir="ltr" data-setdir="false"> get
        what's shown below. This doesn't seem to be the new image. It's
        showing RFNoC blocks from a previous image that was installed
        prior to my use and when I try to run a flowgraph I'm getting
        the same error as mentioned in my previous message. Ideas??</div>
    </blockquote>
    These just look like the standard RFNOC blocks for X310.   Keep in
    mind that internally, for several releases, UHD uses RFNOC, even if
    your<br>
      code doesn't.<br>
    <br>
    What type of hardware is this running on?  What kind of ethernet
    interface is connected to the X310?<br>
    <br>
    What sample rate are you using?<br>
    <br>
    What OS version?  Within a VM, or on raw hardware?<br>
    <br>
    <br>
  </body>
</html>

--------------020400040508040402020906--


--===============0440955095468641594==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0440955095468641594==--

