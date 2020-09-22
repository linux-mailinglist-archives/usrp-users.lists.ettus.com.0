Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B381274A1E
	for <lists+usrp-users@lfdr.de>; Tue, 22 Sep 2020 22:29:34 +0200 (CEST)
Received: from [::1] (port=59290 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kKoum-0002W1-48; Tue, 22 Sep 2020 16:29:28 -0400
Received: from mail-lf1-f43.google.com ([209.85.167.43]:33652)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <chfl5156@colorado.edu>)
 id 1kKouj-0002Rt-18
 for usrp-users@lists.ettus.com; Tue, 22 Sep 2020 16:29:25 -0400
Received: by mail-lf1-f43.google.com with SMTP id 77so12176994lfj.0
 for <usrp-users@lists.ettus.com>; Tue, 22 Sep 2020 13:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=colorado.edu; s=google;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=kZG6pcLPwDSBWLd27Hl198sU0DCEkR6Pf+eLI1Kys0w=;
 b=YLNXhYA7NTW/mdzOyq6hc1lkE6w17+amw/nwPYpP97A3AGCB1Wr+jEbVZDH0B4mG8k
 QnVfD2lLE1ss/9DVCdUJ4rpKw7sa10bOUXvcbpCPtg4a1SZ4FNvRDGndXolVTDXwe7a/
 S566hZ6+4IF/Ln8mEucmcU0SJ9pElOJ4BI9Do4xDD2uHcfYFtOn92mO77O3N2MzXFBnE
 wo7jihQ4tVIpqZnJhgewH1esDn6oF2HDG/JQTAb8mhZwSEuQy+OAhZQJHQM+znP3cA4p
 FqpKhhrFboYob2h/tVj/TrpCZFxIv3dZR1sLoHRWjPv/zNkDgru9H4CAwvUxCjeMmf7E
 jZ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=kZG6pcLPwDSBWLd27Hl198sU0DCEkR6Pf+eLI1Kys0w=;
 b=VoCiea32Q8booPQ2W8xAlsfspxqKGT8nD8ROO6OVyvUD79LlxAoRV+pRFx/u++/6pS
 Q0XoUI6xs3KCnlU6A6XVoEEkrtGNMYbukK2E3T4pdhkv5ZNR+f302p2uzXuv4FPVREiC
 eq5UZ6mlrR2RJrZ47zuibMCGD9gY+RnwgClUcFEJ2qqvidoy7N78ozBTxNVsPSH4Mqgh
 OOL8HbMvJSE2tk3CkbNo5jafRt78p6SHjj4oG8LRG5g3D1xF6azG+ilnSRJQfnzgtZ1J
 d1dro2bI1PTktd2oepIIODsbRknhw+5N5+oSasS77Bv3RDfWLOjryhHVDchgZwOv6XZ4
 wptg==
X-Gm-Message-State: AOAM531kng9Sg6SkgkuXvEJ5e7mDZtcePeSw+tSk6SLAHzebDnoV8kWM
 S/AWQyyyUJOC9Rjp6Yv9o0EI6plR6FO9/rJyRpnDMIvufnYLSg==
X-Google-Smtp-Source: ABdhPJzLQkmpJjZiFNzPwm86fKDENf+yF6r3C8HQ01MF2O9GZb0HkX+nK5poa28tArDBOnZrAFmwqTjXDKx6ryA5sA8=
X-Received: by 2002:a05:6512:31c4:: with SMTP id
 j4mr2061323lfe.323.1600806523040; 
 Tue, 22 Sep 2020 13:28:43 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 22 Sep 2020 14:28:32 -0600
Message-ID: <CAM+cdhJsqS=h8E1KruwNC0gHk-fvb6TLt_r64W9aR4Vk4ZZ22Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Ettus N310: Tuning in GNU Radio
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
From: Christopher Flood via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Christopher.Flood@colorado.edu
Content-Type: multipart/mixed; boundary="===============8167154961200966634=="
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

--===============8167154961200966634==
Content-Type: multipart/alternative; boundary="000000000000290d8805afecd037"

--000000000000290d8805afecd037
Content-Type: text/plain; charset="UTF-8"

Hi all,

I had some questions about the tuning accuracy I should expect in GNU
radio. I have a 10MHz sinusoidal signal coming into an RX port on the N310.
I am interfacing with the SDR through GNU radio and the UHD: USRP Source
block. In the RF Options box of the source block I am using the following
command as the center frequency: uhd.tune_request(fCenter, loOff) where
fCenter = 10MHz + 100Hz and loOff = 250kHz. The resulting signal from this
operation is nominally a 100Hz signal. However, when I make phase /
frequency measurements of this signal, it is off by ~1Hz, which seems high.

I would expect the measured frequency offset of the incoming signal to
reflect the stability of the incoming signal. However, based on the source
of the incoming signal I have reason to believe that this offset is too
large.

Has anyone else had problems with this? How accurate should I expect the
tuning process to be?

Thanks,

Chris

--000000000000290d8805afecd037
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I had some questions about the =
tuning accuracy I should expect in GNU radio. I have a 10MHz sinusoidal sig=
nal coming into an RX port on the N310. I am interfacing with the SDR throu=
gh GNU radio and the UHD: USRP Source block. In the RF Options box of the s=
ource block I am using the following command as the center frequency: uhd.t=
une_request(fCenter, loOff) where fCenter =3D 10MHz=C2=A0+=C2=A0100Hz and l=
oOff =3D 250kHz. The resulting signal from this operation is nominally a 10=
0Hz signal. However, when I make phase / frequency measurements of this sig=
nal, it is off by ~1Hz, which seems high.=C2=A0</div><div><br></div><div>I =
would expect the measured frequency offset of the incoming signal to reflec=
t=C2=A0the stability of the incoming signal. However, based on the source o=
f the incoming signal I have reason to believe that this offset is too larg=
e.=C2=A0</div><div><br></div><div>Has anyone else had problems with this? H=
ow accurate should I expect the tuning process to be?=C2=A0</div><div><br><=
/div><div>Thanks,</div><div><br></div><div>Chris</div><div><br></div><div><=
br></div></div>

--000000000000290d8805afecd037--


--===============8167154961200966634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8167154961200966634==--

