Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5029022014D
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jul 2020 02:24:00 +0200 (CEST)
Received: from [::1] (port=55162 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jvVDH-0008Pi-S4; Tue, 14 Jul 2020 20:23:55 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:35600)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <101science@gmail.com>)
 id 1jvVDD-0008Kh-3R
 for usrp-users@lists.ettus.com; Tue, 14 Jul 2020 20:23:51 -0400
Received: by mail-qt1-f177.google.com with SMTP id b25so395766qto.2
 for <usrp-users@lists.ettus.com>; Tue, 14 Jul 2020 17:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:date:message-id:subject:from:to:user-agent;
 bh=urjKgXw5rRUrCxGjH7QtYDwUgY115g5WP/6tpxcxN1M=;
 b=O5UEfEW8Lb/xowvoYuMDLvgfdw+5jRW4bYv3F5Q19Wc3tL+0eWZj1IMEz5EENVG7KR
 2ZWelaiH9bda0hd8XMY+hTBcxNrgphXhswbaGpTuNIovV+nXKdHyin69Lc+eHm8xv9Tf
 TsDWh/qYstjYqE+NZdiHpKkEXReOZT6R2sc8WQceTIEvwkbWEEgk8l++mzmD+zn0kBC/
 iiJKq4vaPmrGEWHaOlIahAHk8MuRUQLEsB+rqG3J+9ELnP/p/gfsBst6SskOj0P7Xp+j
 oXqLCwj4ol1lYIt66/WWMFQmEBpHPRtJM5F1cUyf/aS5nGN1r/RVSHCfS7hP5xsqBmAK
 3dCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to
 :user-agent;
 bh=urjKgXw5rRUrCxGjH7QtYDwUgY115g5WP/6tpxcxN1M=;
 b=DK6xjmcv+74PLV70M/dLZt5iCcSkuJW3OJU9IboupWezHdcm0VruVw04SiGy4vBtTE
 uF7gefJW8MBDxLnd+hqzpuHqXNoO+9/bRoiB9jBV/8I1s9NhkPS5wnmmyDBNbifxnU6y
 ZaVhqTJxdrB54I2q4iYpvkwI/Z/54XqUKjgHtzMdXTDMGTJp9oDf+ZhZRjMk3LbYTpA8
 QaIjG+kGr/ldUQb+v406pFD6oZ0ZUx7bFHUUiCZ9CEGhxA1xFMjK7Zd/GNNcWNVKFI6R
 dsFifiKWaQCKM7Uul8mncCaIpFZaXg+y+jP2Lb3BKTLnaiA2uhmtFoiewFbgz4Q/Tn7F
 N+hQ==
X-Gm-Message-State: AOAM530kJh1U7MAQgpcs46LYbb+P/D0z8uNr7B31nIRydFpREICJo8Hr
 8minGVZrBLroLnjKxC20J+KC7+zwe3A=
X-Google-Smtp-Source: ABdhPJz3IsIF9Nfs1KcsKT03Q8lFW5Dtw5vblkw6Flx+ORKZIkx9gEbyriHY4yPy+cB5iRfrciMuDg==
X-Received: by 2002:ac8:1972:: with SMTP id g47mr7451951qtk.180.1594772589843; 
 Tue, 14 Jul 2020 17:23:09 -0700 (PDT)
Received: from [192.168.1.24] ([207.89.11.117])
 by smtp.gmail.com with ESMTPSA id z18sm800997qta.51.2020.07.14.17.23.08
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Jul 2020 17:23:09 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 14 Jul 2020 19:23:08 -0500
Message-ID: <Mailbird-2d4fe5f5-044e-4c4d-b2f9-16306054419b@gmail.com>
To: "" <usrp-users@lists.ettus.com>
User-Agent: Mailbird/2.8.23.0
X-Mailbird-ID: Mailbird-2d4fe5f5-044e-4c4d-b2f9-16306054419b@gmail.com
Subject: [USRP-users] Compiling UHD Error
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
From: Larry Dodd via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Larry Dodd <101science@gmail.com>
Content-Type: multipart/mixed; boundary="===============7537014756924501700=="
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

--===============7537014756924501700==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_30769194.293086512258"

------=_NextPart_30769194.293086512258
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Using Cmake I get the following error.
CMake Error: The source directory "C:/uhd-master/uhd-master/build/CMakeFile=
s" does not appear to contain CMakeLists.txt.
Specify --help for usage, or press the help button on the CMake GUI.

I searched the computer and can not find CMakeFiles.txt anywhere.
Larry, K4LED
------=_NextPart_30769194.293086512258
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-family: Ar=
ial;color: #000000">Using Cmake I get the following error.<div class=3D"mb_=
sig"></div><div><span style=3D" color:#ff0000;">CMake Error: The source dir=
ectory "C:/uhd-master/uhd-master/build/CMakeFiles" does not appear to conta=
in CMakeLists.txt.<br>Specify --help for usage, or press the help button on=
 the CMake GUI.</span><br></div><div><span style=3D" color:#ff0000;">I sear=
ched the computer and can not find CMakeFiles.txt anywhere.</span></div><di=
v><span style=3D" color:#ff0000;">Larry, K4LED</span></div></div>
------=_NextPart_30769194.293086512258--


--===============7537014756924501700==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7537014756924501700==--

