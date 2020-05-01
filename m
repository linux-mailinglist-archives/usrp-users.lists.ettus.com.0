Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EC51C1243
	for <lists+usrp-users@lfdr.de>; Fri,  1 May 2020 14:37:49 +0200 (CEST)
Received: from [::1] (port=59080 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jUUvL-0004o9-SL; Fri, 01 May 2020 08:37:47 -0400
Received: from mail-lj1-f180.google.com ([209.85.208.180]:38933)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adongare@andrew.cmu.edu>)
 id 1jUUvI-0004V0-2h
 for usrp-users@lists.ettus.com; Fri, 01 May 2020 08:37:44 -0400
Received: by mail-lj1-f180.google.com with SMTP id u6so2473754ljl.6
 for <usrp-users@lists.ettus.com>; Fri, 01 May 2020 05:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cmu-edu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=weo0iPoiD3tcUf9ZY8NOpUYQFXlwAIY7cNQq1sqnNxg=;
 b=qlCIGYNlTmyrbVq4SJlKyxQTlTGfGUN+K8OIqWWFhs3HbFIaV/4jweWyRwdMlLzad0
 SY0865XKIkkTVoLZav/oAz8Njpa2t/0ttyFL+HieoYtkFm1/qXmnEGamvMdxOJIrldj2
 8RVf5Ip/5T6Tw+m89mtTDrmIpwtJBWMNFc/tpsb/QCiyhik26S8PT0hly3rQIyhuaszn
 ttxXR8pXrebTeIsTtv3BOWZrF3lely7pvzOHvXCueuKVNn/ItJ+tQtB6ZdnWs1hdbmhk
 Z7loMyDqD6HNq5lLlPwniw2Z/82bARre3yzaE41MSgkH3GobF3D+xKVbICQ3Ml2Ytfi0
 JMOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=weo0iPoiD3tcUf9ZY8NOpUYQFXlwAIY7cNQq1sqnNxg=;
 b=dGerex6Om4Y/FVE3faeXsOdkkjb5sybywKFMCY+aWX/mjOdsBEFBxRrAG5qZeGMOMZ
 4IVsfl4Lmi/m39IFMvdQEK2RuUvQYheOtgUO/t6cVnks7yPjT7Rlcg0AWoPbs8snyEVn
 4V6ZI2tGEXza6cRAUk2FMaD84zJGHFAUFuxZjP6TbmiePwdDXptMGvVNacRCZiBWZ5Q0
 0K9DnJzRQ3SnWjiNbk3U5jw28yhYy5Xyvyhs+5YojWA+3lmg2Pm06L42xVQDucEDZYVK
 v3w/LzaDbfspC5BpYOnMaKM6pCxNa23ysmh79t80BadxvLBrzZyVHuGzUMzN1nrvU1lo
 D5fg==
X-Gm-Message-State: AGi0PuYxoLSZwtRXAUrcrcNDq1PxQfgQc8VeElxqf+2fKABmTmSvNZO5
 FBWTZAufoc+9p7dStt3X8Q/a/Nd6oTPq6/9ep+HvmVSUIEg=
X-Google-Smtp-Source: APiQypIhWOxWt/6aVXhqeFSbj4TT2vuBow1KH4pr0PLwPVV7WbGRSZ8vs1030iEXW/kIMYQiWPFf1KlOZX1UnMcR3W4=
X-Received: by 2002:a2e:920e:: with SMTP id k14mr2427593ljg.288.1588336622259; 
 Fri, 01 May 2020 05:37:02 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 1 May 2020 08:36:51 -0400
Message-ID: <CAMV94_JRS9itZATG095eOmG8NG6RFFhdd5ut=5OM0NUbtTsAAw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Keeping clock and time source settings after host
 session is closed
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
From: Adwait Dongare via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Adwait Dongare <adongare@cmu.edu>
Content-Type: multipart/mixed; boundary="===============4808431501350924792=="
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

--===============4808431501350924792==
Content-Type: multipart/alternative; boundary="0000000000002774a605a49570eb"

--0000000000002774a605a49570eb
Content-Type: text/plain; charset="UTF-8"

Hi all,
Is there any way to maintain the clock source and time source settings
(used for synchronizing multiple USRPs through, say, an external GPSDOs)
after the a host session has finished. I'm particularly interested in
maintaining the settings used here:
https://files.ettus.com/manual/page_sync.html#sync_commonref_pps

Platform: USRP N210 with SBX or WBX card talking to a Linux host over
ethernet.
USRP is always connected to an external GPSDO with 1PPS and 10 Mhz coax
connections.

Some more context:
I'm building a complex application that involves first synchronizing a
bunch of USRP devices and then performing a chain of sampling operations.
Each USRP always has a connection (10 MHz + 1PPS) to an external GPSDO. I
was hoping to simplify this application by separating it out into two
explicit parts which could hopefully be called seperately: 1. a
synchronization app and 2. the sampling app. However, I've noticed that the
clock and time sources revert back to their default 'internal' setting
after the synchronization app's session has completed (because the usrp
virtual device has been destroyed).

I'm wondering if there is a way to maintain their synchronization sources
even after the usrp device is closed so other applications that would run
later could benefit from the previous synchronization (every application
would not have to run synchronization again and which would also reduce
latency). I'm not particularly talking about writing to USRP's permanent
memory (though if is the way to achieve this result, I'd be open to it) but
in this scenario, the USRP is always powered while different applications
on a host computer start, terminate and perform some UHD operations (not at
the same time).

Cheers,

--0000000000002774a605a49570eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div>Is there any way to maintain the cl=
ock source and time source settings (used for synchronizing multiple USRPs =
through, say, an external GPSDOs) after the a host session has finished. I&=
#39;m particularly interested in maintaining the settings used here:<br><a =
href=3D"https://files.ettus.com/manual/page_sync.html#sync_commonref_pps">h=
ttps://files.ettus.com/manual/page_sync.html#sync_commonref_pps</a></div><d=
iv><br></div><div><div>Platform: USRP N210 with SBX or WBX card talking to =
a Linux host over ethernet.</div><div>USRP is always connected to an extern=
al GPSDO with 1PPS and 10 Mhz coax connections.<br></div></div><div><br></d=
iv><div>Some more context:</div><div>I&#39;m building a complex application=
 that involves first synchronizing a bunch of USRP devices and then perform=
ing a chain of sampling operations. Each USRP always has a connection (10 M=
Hz + 1PPS) to an external GPSDO. I was hoping to simplify this application =
by separating it out into two explicit parts which could hopefully be calle=
d seperately: 1. a synchronization app and 2. the sampling app. However, I&=
#39;ve noticed that the clock and time sources revert back to their default=
 &#39;internal&#39; setting after the synchronization app&#39;s session has=
 completed (because the usrp virtual device has been destroyed).</div><div>=
<br></div><div>I&#39;m wondering if there is a way to maintain their synchr=
onization sources even after the usrp device is closed so other application=
s that would run later could benefit from the previous synchronization (eve=
ry application would not have to run synchronization again and which would =
also reduce latency). I&#39;m not particularly talking about writing to USR=
P&#39;s permanent memory (though if is the way to achieve this result, I&#3=
9;d be open to it) but in this scenario, the USRP is always powered while d=
ifferent applications on a host computer start, terminate and perform some =
UHD operations (not at the same time).<br></div><div><br></div><div>Cheers,=
<br></div><div></div></div>

--0000000000002774a605a49570eb--


--===============4808431501350924792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4808431501350924792==--

