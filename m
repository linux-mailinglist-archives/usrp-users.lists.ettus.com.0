Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B85DC241218
	for <lists+usrp-users@lfdr.de>; Mon, 10 Aug 2020 23:08:22 +0200 (CEST)
Received: from [::1] (port=39900 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k5F1m-0006jr-BH; Mon, 10 Aug 2020 17:08:18 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:39873)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cpatel@vt.edu>) id 1k5F1i-0006f5-To
 for usrp-users@lists.ettus.com; Mon, 10 Aug 2020 17:08:14 -0400
Received: by mail-ot1-f54.google.com with SMTP id z18so8438142otk.6
 for <usrp-users@lists.ettus.com>; Mon, 10 Aug 2020 14:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vt-edu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=IdFUkmD5u4LJr6GRU9d/A+4FeAyr7OgecV3/ZceZGFo=;
 b=hlUMAbDx025layVYlzIZKHGS1UrzFmpeE/Rau9l3LcS8ie/RBjXTu6kechuUgb5TWM
 j6jufDQY1nyLgqtnM39Hrx/HgqiG7d53G5MKGx2r44TCJsRJZoNrWxArFhDLAbCbStKJ
 iijwIKH+lLyiacxLzrnRqO6PmVCbY0mjIveDTwI5wyjQ8rAwgy/VGAxLOCMFrc4CUux7
 CyuKgeUUr/NHbxUyEY9AxzQjb+niiFM4WiME99jIglE/hmwn4vDiV+gdkpmcsLcSmzsc
 87Kaf5mXNrDtAwgw1W04YyLXif2FyxVNvCpsM/2FnrZjWI2ymt65VXfnfYiyL+9K4E0x
 4Ruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=IdFUkmD5u4LJr6GRU9d/A+4FeAyr7OgecV3/ZceZGFo=;
 b=H8AqIQZW/OUi4HoyJg5er91QFBZ7BkGHQFYBaK3HKtqlgXNxGzyGcNoYRq3M3tQ8oo
 Wd7mxJnWuxC1+cNLUQw1tgUC4C3vGormQvVBKByXpJIRrbmbxJzMbZHAFBjsxCyV7slV
 I+hHRJTB/fvNDojddaN2zZGtw+pb/AvCHkbRFZ1OOh0vJQi5RhmfBDnr3xRZAWgL6rh+
 bpzhSMgYy4LbvM4zl5llcx+1Npy1RKyTA0m0uzcttsTcnkhMSrmanzskP0B2FgaYlcmS
 7a7qRuBkqZH247Oyc4HKf3IlSmluLNSYkStq5r5y8zmITXgZYqk0b39HE6dSTVfUQneS
 H6sw==
X-Gm-Message-State: AOAM532JcKmdVaaiLjZxxAqOitxcrTAS70sL9VQ2EJltuNR+rtF/RqZ9
 ljG8aHVYLY+ADKTfi0VTGcXkzteX4oAZ4quBTHaFqtvo
X-Google-Smtp-Source: ABdhPJwKLxu+4PoCbqkRDMu9/3hqZXnsvV55c1lhgh7aDCS3Xb+9y+1BsK8hN6fypJdlMdPSExeYjFe1g+I3iWg1lW4=
X-Received: by 2002:a05:6830:119a:: with SMTP id
 u26mr2324658otq.67.1597093653700; 
 Mon, 10 Aug 2020 14:07:33 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 10 Aug 2020 17:07:37 -0400
Message-ID: <CAOJfBDcLntSSPf1Ng8u4j8hvxOtfDApcnQk5tM+SP_zkb3reMA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] E320 GNUradio question
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
From: Chintan Patel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Chintan Patel <cpatel@vt.edu>
Content-Type: multipart/mixed; boundary="===============1495068681507063856=="
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

--===============1495068681507063856==
Content-Type: multipart/alternative; boundary="000000000000e6f70805ac8c5732"

--000000000000e6f70805ac8c5732
Content-Type: text/plain; charset="UTF-8"

Hi,

In the flow-graphs that use RFNOC blocks for E320 devices, is GRC installed
on the Zynq processor on the SOC or a separate PC/host?

Thanks
Chintan

--000000000000e6f70805ac8c5732
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>In the flow-graphs that use RFNOC b=
locks for E320 devices, is GRC installed on the Zynq processor on the SOC o=
r a separate PC/host?=C2=A0=C2=A0</div><div><br></div><div>Thanks</div><div=
>Chintan</div></div>

--000000000000e6f70805ac8c5732--


--===============1495068681507063856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1495068681507063856==--

