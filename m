Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A460F4BA14
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2019 15:35:25 +0200 (CEST)
Received: from [::1] (port=53740 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdakE-0001Y5-Ii; Wed, 19 Jun 2019 09:35:22 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:41942)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <cavalledor@gmail.com>)
 id 1hdakA-0001SM-Km
 for usrp-users@lists.ettus.com; Wed, 19 Jun 2019 09:35:18 -0400
Received: by mail-qk1-f174.google.com with SMTP id c11so10884029qkk.8
 for <usrp-users@lists.ettus.com>; Wed, 19 Jun 2019 06:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=bunGeooljTXbRcN6wDOWtVqEhvaQqFLxP06Wsoo2vDM=;
 b=PgIfjm4F9tfyNoxczCccDWpHA5NA+MBKsI/ot6RQr/DzYFX5ecJzZrk5NqgbegacCA
 8ht5U/LxTmPN22hmQ+xn7cL3hJt8eRQBTZHQnnxjBrk3QEJnR5CRbXcXQOr6bPqLqEP1
 CDdxPkJfwVys+5C7uUx6V4OxkKS+UQbAP9RE38aV60nDHWTun9Mt/fhVx2CW/yjX1RyK
 65MWNiX5/zXRfWPsGoQUj/wnaPTxCbLdieHvcjSIeJxLrykzuXMbF1UAk//onX4Uyn/a
 KiSF+3FOSYShQpnJsGGxkEKK5W7amxUML6SN55SB5c4MJUOMxXGYEPjnWTwA3W7lzmrm
 tM0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=bunGeooljTXbRcN6wDOWtVqEhvaQqFLxP06Wsoo2vDM=;
 b=PYb3di38pDpajMdWBwzdR9JdgnyXMyKf8Vm+y5E31qaE2E27tk7EUesDyCF1H60Dxa
 GXlTtL63d9pV+UpI8oGP+y+FWHqhbjUPWHRTEv1jEjBh+qCCy8EhnYowehKV4hQ3EtHu
 zsM8bs7yonjHiiPXwHj7VDmAPjsppiZKz6jskc3pE9q0M8EwofyayBnXcJLgSDey7ae9
 RU202gotbQziHRwgtp6kk+k6LDY2sl55xuNxpRJnyT0mDa+MqrMUhHi5Pvumqaiw7Gj+
 +jWdrU1X5ZAw1aKrJ9/Kmphddb319FdprCUifjmRYV3HbLV2sH8PVJBM6gNl4+h3REMu
 j4gQ==
X-Gm-Message-State: APjAAAXyQHJ3iwb4I2hrFbB7LiJUsyuv5H5BAabssjfJcepgwg44qXJu
 0OlhuUle3NxH1dc4MPdWKsxuBHlQSEqIku0BXXuX/rUq
X-Google-Smtp-Source: APXvYqyVXZTr4qq1GQXfSB2phYWOCCfyWjWJbk88ROal2dYuGZqvys72mpN8hl9DigfIPPQWqb+0B+7jba1mbt4fi8U=
X-Received: by 2002:a37:be85:: with SMTP id o127mr3363181qkf.194.1560951277749; 
 Wed, 19 Jun 2019 06:34:37 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 19 Jun 2019 09:34:26 -0400
Message-ID: <CACV8bbcuwx4eT6YtJZEpnUBgZUcZjZLeWw1UZAABM0VK8+iAPQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Registering Block Controllers to UHD
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
From: Christian Valledor via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Christian Valledor <cavalledor@gmail.com>
Content-Type: multipart/mixed; boundary="===============6741060202838135772=="
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

--===============6741060202838135772==
Content-Type: multipart/alternative; boundary="0000000000006c1eff058bad4adf"

--0000000000006c1eff058bad4adf
Content-Type: text/plain; charset="UTF-8"

Hi All,

I'm developing a few custom RFNoC Blocks for a UHD application I'm working
on, and I've hit a snag getting UHD to work with my block controllers. Note
that I went the C++ route instead of using nocscript and the default block
controller to handle some more complex cases.

The only way I have been able to get my application to work is if I move my
custom controller files into the UHD directory, and re-compile. Otherwise
it sees my block and XML, but doesn't register a key, and loads the default
block controller.

Is there another way to get UHD to play nice with my block without
re-compiling it each time?

thanks,
-Christian

--0000000000006c1eff058bad4adf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,<br></div><div><br></div><div>I&#39;m developi=
ng a few custom RFNoC Blocks for a UHD application I&#39;m working on, and =
I&#39;ve hit a snag getting UHD to work with my block controllers. Note tha=
t I went the C++ route instead of using nocscript and the default block con=
troller to handle some more complex cases.</div><div><br></div><div>The onl=
y way I have been able to get my application to work is if I move my custom=
 controller files into the UHD directory, and re-compile. Otherwise it sees=
 my block and XML, but doesn&#39;t register a key, and loads the default bl=
ock controller.</div><div><br></div><div>Is there another way to get UHD to=
 play nice with my block without re-compiling it each time?</div><div><br><=
/div><div>thanks,</div><div>-Christian</div></div>

--0000000000006c1eff058bad4adf--


--===============6741060202838135772==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6741060202838135772==--

