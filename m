Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A492B7DEC
	for <lists+usrp-users@lfdr.de>; Wed, 18 Nov 2020 13:56:38 +0100 (CET)
Received: from [::1] (port=54960 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfN0n-0000ll-Gh; Wed, 18 Nov 2020 07:56:37 -0500
Received: from mail-ot1-f41.google.com ([209.85.210.41]:36195)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jarroyo@gradiant.org>)
 id 1kfN0k-0000f1-3i
 for usrp-users@lists.ettus.com; Wed, 18 Nov 2020 07:56:34 -0500
Received: by mail-ot1-f41.google.com with SMTP id n89so1616863otn.3
 for <usrp-users@lists.ettus.com>; Wed, 18 Nov 2020 04:56:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gradiant-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=8zB11Idv6KXq8C21lLMZITSC2LqtBz/pcTgPjChzB2o=;
 b=2JdSxJHHZj6MPuYxE/L3d3yn8a5zttQWBmwuQ4HvfXIyODQediiNHPsgtChCLFhpif
 QeIuJb1BNgndNFmhhhmISThYMGmukZhZTxCVS/v4HAFeEGTdOv7xjIpmyMUM1cW8BsnY
 6GE3SslDrqF/gV96ECtngCBUvcji9kARVXvqSQkuRjbtgiWDdg3m0L+rLtR5Nqw7A5qw
 9agF46crplzcRGw7helhp2jCULAR44PHbB3L3GcTtQEe+wj1x9tX0QMPDIXn+AU2Cp0g
 niU2IcUf0sNTZKCiHdIguD6tJ56vi7Ubv6woW31Ml9R7UYEkBCgYlf0AU7SJ29yTpMmK
 dtbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=8zB11Idv6KXq8C21lLMZITSC2LqtBz/pcTgPjChzB2o=;
 b=K0NxM7FdfCuvo1dnQX43/SfY9Padne5kFJ1kV4RNOz+OvAIktvkwMoJSRjbpmYvNkZ
 1TyjzAafZd7d86gX4pGzpMYe9ghXxId29/FFMunYnn0hD9OMLDy/5+A31fq9Dk/kYukj
 bwaWqAVpoSKoJHtSnB6AQdFHuaQsaVp8KPTHwXMQKrY3dJHpTtDwRe9f2kgvgDA4ry3U
 JNMXq06Z8OO3xr60k5YzCvopcEzlKymUsrWgez4DnBKQm/+5I3ExEPM26WWvMhbfyw63
 93ZtFJY1aeSHqBtVqVVJork/mo/zyxbmCU0G8vzsIKJNKuU+sE+flftFwvewa4mh0TPr
 k4XQ==
X-Gm-Message-State: AOAM533Iev7ChatqsIVDtSzcFM4J2ajrtoNAFDpZuot4cOz1/xXUpWUr
 0ihUMGCho1WRW6HOzb0EII77gvcuh7+lBQ9rsH96pJkwnj2M07Xb
X-Google-Smtp-Source: ABdhPJw70b8VWRQn9qerQu+9ZPXYfVsYEJo6c//r5nswgXO99kS31mE1gxbfYZZZGtwIUYBVt834J/HCuQ/Pjrsfpz8=
X-Received: by 2002:a9d:7a8:: with SMTP id 37mr5949464oto.201.1605704153227;
 Wed, 18 Nov 2020 04:55:53 -0800 (PST)
MIME-Version: 1.0
References: <CAOx6OK0Mz1E1MRyi1LxBo4MuGjsye_J6g+w3Z3FSoeaZABTfAA@mail.gmail.com>
 <CAB__hTTwqjd==Aj=S-w17t48vSMM3KdCWwMeCmnBHZV+qQhgAw@mail.gmail.com>
 <CAOx6OK2XjgoCGoRydFs+AP30HdK33n-PHjMfv960L8QYhtk5TA@mail.gmail.com>
 <CAB__hTR7rd9AChyU-9u4J_Kz6C4c_nLKoE5a+sWDT83T85qipA@mail.gmail.com>
 <CAOx6OK37gLOmTt1EEb7FhZaJrizDfrRt7LiPxibpEq4wAMs6xw@mail.gmail.com>
In-Reply-To: <CAOx6OK37gLOmTt1EEb7FhZaJrizDfrRt7LiPxibpEq4wAMs6xw@mail.gmail.com>
Date: Wed, 18 Nov 2020 13:55:37 +0100
Message-ID: <CAOx6OK3mm0-3LD399=1uOdeXwjPQ77hQDe_otq4M8cONpy98pQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] RFNoC loopback without radio cores in C++
 (UHD-3.15.LTS)
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
From: Jorge Arroyo Giganto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jorge Arroyo Giganto <jarroyo@gradiant.org>
Content-Type: multipart/mixed; boundary="===============8476890599487691942=="
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

--===============8476890599487691942==
Content-Type: multipart/alternative; boundary="000000000000aaf96d05b46121f6"

--000000000000aaf96d05b46121f6
Content-Type: text/plain; charset="UTF-8"

Hi,

In case anyone finds this unresolved entry, I think I found the error I was
making, it probably had to do with thread handling. I would recommend
always creating a thread group (boost::thread_group tg), and then calling
two separate threads, one for RX
(tg.create_thread(boost::bind(&receive_thread,...)) and the other for TX
(tg.create_thread(boost::bind(&send_thread,...)). Still, I'm not sure if
that was the real issue, but it's what's working for me.

Best regards,

Jorge

--000000000000aaf96d05b46121f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,</div><br><div>In case anyone finds th=
is unresolved entry, I think I found the error I was making, it probably ha=
d to do with thread handling. I would recommend always creating a thread gr=
oup (boost::thread_group tg), and then calling two separate threads, one fo=
r RX (tg.create_thread(boost::bind(&amp;receive_thread,...)) and the other =
for TX (tg.create_thread(boost::bind(&amp;send_thread,...)). Still, I&#39;m=
 not sure if that was the real issue, but it&#39;s what&#39;s working for m=
e.</div><div><br></div><div>Best regards,</div><div><br></div><div>Jorge<br=
></div></div>

--000000000000aaf96d05b46121f6--


--===============8476890599487691942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8476890599487691942==--

