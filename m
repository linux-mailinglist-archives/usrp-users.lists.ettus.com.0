Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7E42B5ACB
	for <lists+usrp-users@lfdr.de>; Tue, 17 Nov 2020 09:13:05 +0100 (CET)
Received: from [::1] (port=41708 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kew6n-0001I3-Sw; Tue, 17 Nov 2020 03:13:01 -0500
Received: from mail-yb1-f200.google.com ([209.85.219.200]:34365)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mikio@dolphinsystem.jp>)
 id 1kew6j-0001CR-GW
 for usrp-users@lists.ettus.com; Tue, 17 Nov 2020 03:12:57 -0500
Received: by mail-yb1-f200.google.com with SMTP id w7so3354295ybk.1
 for <usrp-users@lists.ettus.com>; Tue, 17 Nov 2020 00:12:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dolphinsystem-jp.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=rLu4DvziYTYXxcrdHXgEFgsHZcE9C2eDT0LKKAKPtLI=;
 b=z6j8lHvpk/9sRsI8wHkgq1dKtzfB3pL3PjphgugDg/9U6pdHPPpyQg5ruAEwpvzUGo
 MzA/46rTVwS3D9K3PU5D+JvMuLI3JQtomPj+9i5aAcwY497FtCE92S4+9xUlpLYoWmWg
 l/f+umStxiLWv0Q6RgQd3EktfQh2a2UkX8SM+hzVfyN8dz2hiCsN8r/PBo5dlf0gPq9c
 4fudm4CyTAaQIwHNDJi4cnBs6mpA1K2hNfDZAdZGTr7Uy0MllTyfXFWSLT22uU1TdnJB
 scGgDeEahfm+RBBILIMYWL8/eP5GoY3xsj60VEpF7gDiOUWctM/A3YQhEsOVy2qBK+yk
 MHKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=rLu4DvziYTYXxcrdHXgEFgsHZcE9C2eDT0LKKAKPtLI=;
 b=jOU2ZgcS9uEATD/j4YbV3BveosfSXnNLxNMTQ4SscJI908+6XyXgOhI/pxh+0IG98Q
 gFF+KUmu9ZavJXkW8qFth0+WFKc5vUbkkI7rOnEgbnfly2Gp1sE0tqi5RyozU6LXKvlW
 hythjD6W4+VvDVkdm4XRmZC6FMre9Y0NRpJEHm0tQ52463FwdOrsadR3HrdF8v9woEDS
 JcUO1yLAIJNf5obji+kiFc1I2HaDu+iuhJmT76N5S4aFuf/C3soSZccDwQGb2e4rhljY
 l6QDdwWD2fuz6nsrPmtJuclqNSTruAa3WW1rTlhpI59439+NIlfQvvepHK34utOnnUGr
 bZ2g==
X-Gm-Message-State: AOAM531DPypNYvhLSHOit3s9nTjRrixv9uSbilV7dkN6h4QHQIAV040+
 87SbYy6bRtJ0BUD1eMl4gcFrFZzcU+JRxoBcwDm2oo+7OsNLLPRV
X-Google-Smtp-Source: ABdhPJyYI1BKNTGZ6hj4mzodc7YA89x4MNK5a88n0SMH19h+t+X3JIoB7UPm8ptMOJwIcOFvUvt4gm9Wb8SKqH4mb74=
X-Received: by 2002:a25:6dc6:: with SMTP id
 i189mr30087893ybc.299.1605600736451; 
 Tue, 17 Nov 2020 00:12:16 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 17 Nov 2020 17:11:41 +0900
Message-ID: <CABfZwcf=W+i1ZO6LO+TrYh386cxy--GtKgggPO3__DQhf8pF0g@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] How can I get an error by send method?
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
From: Mikio Fukushima via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mikio Fukushima <mikio@dolphinsystem.jp>
Content-Type: multipart/mixed; boundary="===============6056218008369462128=="
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

--===============6056218008369462128==
Content-Type: multipart/alternative; boundary="0000000000008c3c6805b4490dd2"

--0000000000008c3c6805b4490dd2
Content-Type: text/plain; charset="UTF-8"

Hi.

rx_stream->recv method returns an error code. but tx_stream->send method
doesn't return an error code.
I want to detect an underflow. How can I get an error code by send method?

Regards,

Mikio Fukushima

--0000000000008c3c6805b4490dd2
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>Hi.</div><div><br></div>rx_stream-&gt;recv method returns an error code. but tx_stream-&gt;send method doesn&#39;t return an error code.<br>

I want to detect an underflow.

How can I get an error code by send method?<br><div><br></div><div>Regards,</div><div><br></div><div>Mikio Fukushima<br><br></div></div>

--0000000000008c3c6805b4490dd2--


--===============6056218008369462128==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6056218008369462128==--

