Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5F4315939
	for <lists+usrp-users@lfdr.de>; Tue,  9 Feb 2021 23:17:15 +0100 (CET)
Received: from [::1] (port=39110 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9bJo-0008HE-SV; Tue, 09 Feb 2021 17:17:12 -0500
Received: from mail-oi1-f176.google.com ([209.85.167.176]:46179)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ashutoshsingh7589@gmail.com>)
 id 1l9bJk-0008AI-Pf
 for usrp-users@lists.ettus.com; Tue, 09 Feb 2021 17:17:08 -0500
Received: by mail-oi1-f176.google.com with SMTP id k25so21146074oik.13
 for <usrp-users@lists.ettus.com>; Tue, 09 Feb 2021 14:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=1vm1Cukdq9WC6nXny8QOxkikIifL6DX0MRQJ9SE7oD0=;
 b=ptGbc+izOnq6ugVAfBkzMXN8lHyts1Fa1ZvK1zijsv3LIQoMV6mVkZXtDTkhgW8kq5
 WhMUf5m63G41EKXxTqGx4Vs0D2+tq19L7EgDaiihoNCZyOjtI8+2YRxgSqKn5QzSEXjo
 YtCZAPBcLdio3SZB7rXU8CyCcw4qBepcBMvPnmP0fZaJfUWzkxufICBuupJhZj6XZHgG
 YvVPY2sv395NGK1tj+yf6r7pcA44/NboP1hg6u1CgAnSX64Uh6ArUocXkVlL6V6NnCqi
 kFjXhse7EF5PArv9V+9omvecTWrcBDMsO+aPwFKtMIrpZiJ44CRfl2NRHzncDwzvJJxK
 VMeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=1vm1Cukdq9WC6nXny8QOxkikIifL6DX0MRQJ9SE7oD0=;
 b=ZIdT8PL+2D6eHoqtbfdBWLaLgH5QUSArvifItyPIDVUzrajdCg+58uURigJ0RisTQc
 ED3P8DK/eDMI2gE8EhMFAv7uMEgUvkaxheLT4R8DcOV0u5jCCisUF6dBH5vCLHiV8VDN
 IOx/UN09/uYOj8GBXKHl5vRTMZQqSXHzrEfCoboIqHrioCCkoCm7xmyVxjxFhmEfM4Nx
 InHlFu3CJ+VGmjL+bD2rpiAxJcgIrHwDzKWxCIWVxjj/Pf02Qsex8DxNbmFAjQU+gAj8
 ksKbUOYXEo4OTnhWP2z6m74uR3LQQZaL8oTNM0RsSXcB8OSSydDMDLVF8DIMA9vXwmTS
 M9Fg==
X-Gm-Message-State: AOAM530j8X2BYZTI7BgW/tVbiTr+depolvwTtTEAkLpBaoOmng+nXqXF
 DUJK2QEexY5SP0CgJ6AAf0CseTPnUqmdWLdMrxsUHEnxHTgrNg==
X-Google-Smtp-Source: ABdhPJww8Y2+jTk48wMhYucR0OX5mSz5D8rAQGyfbo8L/e4GQcyDiTaJM4rKjd9s6MxIWyO38Qgozu72SdMCZcpuhnc=
X-Received: by 2002:a05:6808:147:: with SMTP id
 h7mr3974395oie.142.1612908988031; 
 Tue, 09 Feb 2021 14:16:28 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 9 Feb 2021 23:16:17 +0100
Message-ID: <CAO38sJ4HGZE3auk_j-tkREhG+h2-Me_5XwJnQB+Z2PBCL_Zx=Q@mail.gmail.com>
To: openair5g-user <openair5g-user@lists.eurecom.fr>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] Usrp b210 without duplexer
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
From: Ashutosh Singh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ashutosh Singh <ashutoshsingh7589@gmail.com>
Content-Type: multipart/mixed; boundary="===============6875015923432354956=="
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

--===============6875015923432354956==
Content-Type: multipart/alternative; boundary="00000000000049676905baeea39c"

--00000000000049676905baeea39c
Content-Type: text/plain; charset="UTF-8"

Hi all ,
If I use my USRP b210 without duplexer to transmit and receive  the signals
from other USRP , will it not damage my USRP ?

Thanks

--00000000000049676905baeea39c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all ,<div dir=3D"auto">If I use my USRP b210 without duplexer to transmi=
t and receive =C2=A0the signals from other USRP , will it not damage my USR=
P ?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks=C2=A0</div>

--00000000000049676905baeea39c--


--===============6875015923432354956==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6875015923432354956==--

