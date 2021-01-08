Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3642EED70
	for <lists+usrp-users@lfdr.de>; Fri,  8 Jan 2021 07:24:30 +0100 (CET)
Received: from [::1] (port=49796 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kxlCD-0004US-AC; Fri, 08 Jan 2021 01:24:25 -0500
Received: from mail-oi1-f181.google.com ([209.85.167.181]:41992)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <zh.heng96@gmail.com>) id 1kxlC9-0004PI-D4
 for usrp-users@lists.ettus.com; Fri, 08 Jan 2021 01:24:21 -0500
Received: by mail-oi1-f181.google.com with SMTP id l200so10243451oig.9
 for <usrp-users@lists.ettus.com>; Thu, 07 Jan 2021 22:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=qoIVt78a1n9oyTQ5ppXOr+1pLtV3ZyMW8NqQX8FxMBI=;
 b=N5gRQaru5m+GmZ4UlAIfUB9a+AEbFfHrawQoQCCpnY6JNr51rmn+RJ5RF0uTaSJzAd
 5lUSZswyEBla3CX7TiGT5ammw2wtcgGGa3FqhLj480Mzn8H+28NGbSoiYzIbs9bZPE0P
 zck27hv8Ft1UKSp1pRo5/IrtW3IfWtz9eihQdbRgs1ruiSN5q4VZf06GXJzLpELUJu1H
 j3ODHG6QaN3aILxfC4E7zZgXDqIJzDqZX4L3f01S4lWJTiEEKkWajOvNpcmfehb6bkvD
 KkwCQubmxpoBgql+cWJaDgJBwdG1p1dFqfxYcTovdHwqlmIITYASY7pJRvD2iTKLXptT
 +YKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=qoIVt78a1n9oyTQ5ppXOr+1pLtV3ZyMW8NqQX8FxMBI=;
 b=t3I22it7Ro3+9Tf+Yxcg8bhEryugC6VhzAYEbTjxIS/Pd7ZJD+r+PkTZPM/04DSAjo
 oeoL5hRnqtFmrC45VoSiAxmF8JqMfPkzw0IgCH2xSVxuybWdyv/FdeeBTd5T5OoeBiog
 Xj+CJtZdw0J8r+SHRxHYBtNPlQGPyXqRyjbrZRPuHkNVp/xbXGz60m6IGMNmqe2Zxkp4
 jPCtILYSAKBzsZSr320kMO3cejYoBFs16yZp2GnMj5m2R2OOjmf7O0x4r5dBa8mAkd5R
 qW/b6meYBhl5QN8qWAp+mvR8pUS3KMDhpM7NbD2xrxfV3wQ8g1E8OWpG0JPhSC5gSAPe
 TZEA==
X-Gm-Message-State: AOAM530HTrnSpe+Vl+MU2F3PcDNXeHwiRzP5cOOpC1mraftJtnSPqEIS
 7XgXESOdAm1tDl5nWRJo7UGHZM68ZmYAOE5dSruneKpaduT94Q==
X-Google-Smtp-Source: ABdhPJyYg9VbT9lCdJGV9005PKTwGCpxVYjJE3DLFO7EiXT++x2/BkaVD34BjZozZgxR6QV1zNj3u+ZpmGCLSnfiM3k=
X-Received: by 2002:aca:4303:: with SMTP id q3mr1428930oia.133.1610087020226; 
 Thu, 07 Jan 2021 22:23:40 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 8 Jan 2021 14:23:29 +0800
Message-ID: <CAAM_mTSojJ9OCdMqLqp+q_wp5Dy7J+b4hK59aj=ct=63cP0hmQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] USRP N310 cannot start after reboot when updating the
 Linux File System
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
From: Heng Zhang via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Heng Zhang <zh.heng96@gmail.com>
Content-Type: multipart/mixed; boundary="===============6240173498355902334=="
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

--===============6240173498355902334==
Content-Type: multipart/alternative; boundary="000000000000e5ebab05b85d9822"

--000000000000e5ebab05b85d9822
Content-Type: text/plain; charset="UTF-8"

Dear community,
I try to update the Linux File System of USRP N310 with mender following
http://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide.
Everything seems ok when updating the file system with "mender -rootfs
/home/root/usrp_n3xx_fs.mender".
However, I reboot the USRP after mender command was successful and I found
the USRP cannot start. After a few hours, I try to manually start it and
also failed. Does anyone know why the problem happens?  I wondered if there
was something wrong with my USRP. Is there any place to provide testing and
repair services? I am in Shanghai, China.



Regards,
Heng

--000000000000e5ebab05b85d9822
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear community,<div>I try to update the Linux File System =
of USRP N310 with mender following <a href=3D"http://kb.ettus.com/USRP_N300=
/N310/N320/N321_Getting_Started_Guide">http://kb.ettus.com/USRP_N300/N310/N=
320/N321_Getting_Started_Guide</a>.=C2=A0 Everything seems ok when updating=
 the file system with &quot;mender -rootfs /home/root/usrp_n3xx_fs.mender&q=
uot;.=C2=A0=C2=A0</div><div>However, I reboot the USRP after mender command=
 was successful and I found the USRP cannot start. After a few hours, I try=
 to manually start it and also failed. Does anyone know why the problem hap=
pens?=C2=A0=C2=A0I wondered if there was something wrong with my USRP.=C2=
=A0Is there any place to provide testing and repair services? I am in Shang=
hai, China.</div><div><br></div><div><br></div><div><br></div><div>Regards,=
</div><div>Heng</div></div>

--000000000000e5ebab05b85d9822--


--===============6240173498355902334==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6240173498355902334==--

