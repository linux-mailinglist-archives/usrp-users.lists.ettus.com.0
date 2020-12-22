Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AFD2E0DCA
	for <lists+usrp-users@lfdr.de>; Tue, 22 Dec 2020 18:18:56 +0100 (CET)
Received: from [::1] (port=56680 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1krlJD-0005Wn-AE; Tue, 22 Dec 2020 12:18:51 -0500
Received: from mail-lf1-f44.google.com ([209.85.167.44]:37718)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wjubbels@gmail.com>) id 1krlJA-0005Mt-0L
 for usrp-users@lists.ettus.com; Tue, 22 Dec 2020 12:18:48 -0500
Received: by mail-lf1-f44.google.com with SMTP id o17so33751211lfg.4
 for <usrp-users@lists.ettus.com>; Tue, 22 Dec 2020 09:18:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=9VWQ/7pE26Tway6fhTuCtjzzw+UrX6titFaMx1joxq0=;
 b=hbREt+LndZVkUhojGAKJOi/sW8zYaMgL+mMoPNvDmBv8V0zZhd1uD0zqKSo592ZiVl
 1CHjB0W0lp7q/08Tv73AULL6C7k/EXdGIEfthRQh16jJJcGTzbsbradDk+ecoydHMBqk
 pMRJxD5OmZz21tuK9XUWtqz78Ph/W5o/Bqt6fxMP8FTGFOfZmZZTmwN7dBk5OzHOgVHk
 vxEXkssCvzxthf/Q4uJPEQOmXOWF7jgtOLWJGVESTeZjhUqHbwT1nQPolCOwxsKZNtah
 8llwvXJ+L9ucEK6+70Nm1QAq4ohdFs/77ThvV9qrjzsm42/K/7Egcfob5h774x93dTSK
 8Dqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9VWQ/7pE26Tway6fhTuCtjzzw+UrX6titFaMx1joxq0=;
 b=E+llE/RRyimRazt8HDOf7HBjyPKnXyhUEnI4uHSopROU7UBAQbH1EZ5Fg6NY6cyCvs
 1F8Q8nWY//+EQLZtmaUuEeMkQu7aoVDwibfhDidllpvONsduXjvJJXND5G6+4CrJ/Chv
 tKYjrN0Dfp1Y9uRrtVxgHCTGsEG0w7Rcjk8YAneF6itRm6FJoO955ZanTApAwCvOa8v7
 cziHFcldxa12I6VUr/DTJtOyn56dzRJxquAqXJauXNEL5DF/BzEVx6PEGuzRu6w30gIs
 WEep3+nfi17ZPyoep5ao4NLNfph0TGuRICuwnLPXleM3jhL3ZeS/CFE79Yf4zQr10up4
 5Epg==
X-Gm-Message-State: AOAM532Gxm7VrXIVzJtS3214sjDivq1Y2t9dB6bTMfhCsXf3C2idGXXw
 lH3ViavM0apXQ/Sq3qfXgR/q6oIW67h6MxIan7Bnw8xgfgHA5g==
X-Google-Smtp-Source: ABdhPJwPbory1jgo4NCNM5st+3ISs2/KiByOCIPCsnmgrERR4xmEYQs8eqWfEpsWoX+gEuS+7ycIkGPJxb/MvnkuMT8=
X-Received: by 2002:a2e:a494:: with SMTP id h20mr10378775lji.145.1608657486569; 
 Tue, 22 Dec 2020 09:18:06 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 22 Dec 2020 18:17:55 +0100
Message-ID: <CABmbpx7A9oRM=F1NFGp0gnqnpVXV+iwMwJOBYyPtM3+N4e-2RQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] UHD4 rfnoc-devel build issue
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
From: Wouter Jan Ubbels via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wouter Jan Ubbels <wjubbels@gmail.com>
Content-Type: multipart/mixed; boundary="===============4923021083905450154=="
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

--===============4923021083905450154==
Content-Type: multipart/alternative; boundary="0000000000000d647305b710c22c"

--0000000000000d647305b710c22c
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am trying to build UHD4.0 from the rfnoc-devel branch on Ubuntu 20.04,
but it complains that dependencies for the LibUHD Python API are not met.
The master branch builds perfectly fine. Any pointers appreciated. Error
message is as follows:

CMake Error at cmake/Modules/UHDComponent.cmake:56 (MESSAGE):
  Dependencies for required component LibUHD - Python API not met.
Call Stack (most recent call first):
  CMakeLists.txt:433 (LIBUHD_REGISTER_COMPONENT)

Many thanks,

Wouter PE4WJ

--0000000000000d647305b710c22c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I am trying to build=
 UHD4.0 from the rfnoc-devel branch on=20
Ubuntu 20.04, but it complains that dependencies for the LibUHD Python API =
are not met. The master branch builds perfectly fine. Any pointers apprecia=
ted. Error message is as follows:</div><div><br></div><div>CMake Error at c=
make/Modules/UHDComponent.cmake:56 (MESSAGE):<br>=C2=A0 Dependencies for re=
quired component LibUHD - Python API not met.<br>Call Stack (most recent ca=
ll first):<br>=C2=A0 CMakeLists.txt:433 (LIBUHD_REGISTER_COMPONENT)<br></di=
v><div><br></div><div>Many thanks,</div><div><br></div><div>Wouter PE4WJ<br=
></div></div>

--0000000000000d647305b710c22c--


--===============4923021083905450154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4923021083905450154==--

