Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34425228EAD
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 05:38:30 +0200 (CEST)
Received: from [::1] (port=46498 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jy5aJ-0004hL-4v; Tue, 21 Jul 2020 23:38:23 -0400
Received: from mail-yb1-f198.google.com ([209.85.219.198]:35302)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mikio@dolphinsystem.jp>)
 id 1jy5aE-0004aH-9y
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 23:38:18 -0400
Received: by mail-yb1-f198.google.com with SMTP id t7so957002ybk.2
 for <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 20:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dolphinsystem-jp.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=gsA4Mh0M1zxGJLEPBfWOvs//cBpT8+NTGmSeBcYO95I=;
 b=jQ87puR59YGab99wetJjnMSo90bhgWfsFvJvWKajGjH/wgYhK5LKKYPlNErE8PVGtk
 Yi1AI2fwBMy/HP1uAuBOCcC/Y3H2dIIBuzXZGMKobEGFN+rgcHTTZA/8nF6GQm5OeAOB
 4ZGetQLs6Z91BtIzWHmwBgszi2WXrVK9bUhAxbvXwI1I08S6cz6seiwURG/Fb3fCrVCF
 MpNVKPRl54ckk1VZgsGf0Sv3vUyAR2gvt3I8OvK6ZFc6VkGzgclbzGogwJDGfpQYt71T
 ASPuSVpWQ/APU/MfCCcAPQVpwka8KasyaAOrBp4sXqKJmeQ3jeWPVhsunY2o01qCSOdA
 0x8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=gsA4Mh0M1zxGJLEPBfWOvs//cBpT8+NTGmSeBcYO95I=;
 b=YS1drI70/I/6bDV/NuCo8lVVFXKGFRmSdizIwjOAkMT41Z87P78mrvu8JTfeht6x6c
 +6Qfoxqdx3XteRu6lAJqKtPdtaO8qrqEN08d1JiRLJtzZUrmAAm8dqSFjui6Pc249SWT
 0BF8LeZBiqtgpqP0uG2+DOwljXOqHXcmL7mAOsg8Q/Q6+UKpW/yrUel+L6ns9pg2YY2f
 pUjbUgbA1M8zlEV42tIC0pWuWkFhOK5DU1WBQtcG9S0i3NZo9NzyYhqCUi79pcTQrMMi
 BtFw7GO5ViYoApbKBldMxlNLNku8w0Wcl9s2ORt9q1HgKueK51U455hsZQfeXviX5Muv
 w06g==
X-Gm-Message-State: AOAM531pfqa5buHo6kHhIr09y2ULuh7XMiTtqcCpJQwhNI8VvoOsW+UG
 6PHJmPZSPyzlIBrnRgLibGlJ4bmMLoHZ2tTk3639aZBkpc2otA==
X-Google-Smtp-Source: ABdhPJzGxx8ZM2bL43sXp3P1gVbQSPiFoSSPKh6mQ5+hKh533u1L7kX3H1Ej3fFwS1kos9fOImibFJ6jZQlLPndz+dc=
X-Received: by 2002:a05:6902:6c8:: with SMTP id
 m8mr44001981ybt.85.1595389057219; 
 Tue, 21 Jul 2020 20:37:37 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 22 Jul 2020 12:37:01 +0900
Message-ID: <CABfZwcfbOcm6LckJRg71KOO_LkD2U7HJoCsQvokJcTUuWFsyaA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] How to suppress the overflow indicator "O"
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
Content-Type: multipart/mixed; boundary="===============6200301450458753856=="
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

--===============6200301450458753856==
Content-Type: multipart/alternative; boundary="00000000000008d31d05aaff76f6"

--00000000000008d31d05aaff76f6
Content-Type: text/plain; charset="UTF-8"

Hi,
UHD device driver prints the indicator "O" while overflow to stdout.
How to supress this printing of the indicator?

Mikio Fukushima

--00000000000008d31d05aaff76f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>UHD device driver prints the indicator =
&quot;O&quot; while overflow to stdout.<br>How to supress this printing of =
the indicator?<br></div><div dir=3D"ltr" class=3D"gmail_signature" data-sma=
rtmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=
=3D"ltr"><div><br></div><div>Mikio Fukushima</div><div><br></div></div></di=
v></div></div></div></div>

--00000000000008d31d05aaff76f6--


--===============6200301450458753856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6200301450458753856==--

