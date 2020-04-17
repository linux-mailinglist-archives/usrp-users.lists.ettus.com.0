Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A84691ADE17
	for <lists+usrp-users@lfdr.de>; Fri, 17 Apr 2020 15:15:57 +0200 (CEST)
Received: from [::1] (port=52766 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jPQqW-0004VE-UH; Fri, 17 Apr 2020 09:15:52 -0400
Received: from mail-io1-f42.google.com ([209.85.166.42]:38603)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1jPQqS-0004OG-SJ
 for usrp-users@lists.ettus.com; Fri, 17 Apr 2020 09:15:48 -0400
Received: by mail-io1-f42.google.com with SMTP id f19so2232351iog.5
 for <usrp-users@lists.ettus.com>; Fri, 17 Apr 2020 06:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=QNoqNZZG8KvOVYuCJk82KgY7ceUnur7IgRHDyYGJIGA=;
 b=iKXZjT015GyPu7rvGmD61vSkLXeQRtEOCv/90pDzn4lIJiBCAli28I+ygx+WLaQQMG
 drwVcTWIOlAtDuEZ+ZnHuUvQxoWLnHxPUvNg47xXn8hd0CsCN6hnom98GHKV9IxVy3dq
 chj/LlhPCdtqLJEhPm1jKR18BC1I2G5AtTETdPDo6/qfXiDZADu+/GIoKNxyxXpt1D8K
 xaGHy70dGOR2Eksc14QdmUpQy66K46jhehvPqdEZAiVPwQTWZbI+4x0GWPi++ERcEtN2
 TZBfDRPl6JhT0s8/U0KC55CeAUeT/UV18TUKPvZiB3iuqxIuubT1d70PnSmK4R+NsltS
 TKmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=QNoqNZZG8KvOVYuCJk82KgY7ceUnur7IgRHDyYGJIGA=;
 b=fNsDV8Iebdy0L0QwFJQVFFZh84SvHfBhwFwRvVOzOt05I47H7DRzf0ohxHTNjhXQBo
 zukQrh+raWGVeRglpD2VWhfUU+mpkvLE5P09Y+h6f7Xgv2216ge4DWl4DeMvTiW7p4ez
 NhUFhNS1/iqYuKyiDt8/2fSlS3dSyHf7krllYd8E8PwAe5qutdYwpl8670t4ULu8lHFp
 xoGBw2JHIN7z3Z8+fBwWiJQuNDWRfMmd0kJ6rjoV9RKHhu4hzErb9oBJmCM2EtBDBrt8
 FtRv4cXGPoTJMyDr436llZ3qGBesVpgSNPeinlObw7akVEzcbL+wAB66IN/hrDGIe/3f
 znTg==
X-Gm-Message-State: AGi0PuY0PW6cUHuWPcenqROm47dhnYBDFwzTDZyG4FSXpinFBJrQuQN6
 FZ9xuiK8WGnH+gVslNVrobKF2/D62KFj18Kvmw0uFDku25U=
X-Google-Smtp-Source: APiQypL9GJvHjBFD0S3kyF9Yp6lKCHmOQRpzF41BcR37kQYQwvp47VJbhn+q4V43QxKn1ZQw1zK/BN+XJPgH0Mh0J6I=
X-Received: by 2002:a02:d82:: with SMTP id 124mr3296288jax.52.1587129305133;
 Fri, 17 Apr 2020 06:15:05 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 17 Apr 2020 16:14:54 +0300
Message-ID: <CAPRRyxupfiy8YpfrZR_xfAq4jQdhQq-JaaF_CUK3B6X820F6=g@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Subject: [USRP-users] GPIO setup via gnuradio
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
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Content-Type: multipart/mixed; boundary="===============3456774644417356715=="
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

--===============3456774644417356715==
Content-Type: multipart/alternative; boundary="00000000000071f6ed05a37c56b4"

--00000000000071f6ed05a37c56b4
Content-Type: text/plain; charset="UTF-8"

Hello. Please tell me if it is possible to configure GPIO using gnuradio. I
want to use RFNOC blocks and switch an external device using GPIO

--00000000000071f6ed05a37c56b4
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Hello. Please tell me if it is possible to configure  GPIO using gnuradio. I want to use RFNOC blocks and switch an external device using GPIO</div>

--00000000000071f6ed05a37c56b4--


--===============3456774644417356715==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3456774644417356715==--

