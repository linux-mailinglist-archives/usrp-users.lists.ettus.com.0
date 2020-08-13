Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79918243F7A
	for <lists+usrp-users@lfdr.de>; Thu, 13 Aug 2020 21:47:58 +0200 (CEST)
Received: from [::1] (port=45154 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k6JCe-0005xz-IC; Thu, 13 Aug 2020 15:47:56 -0400
Received: from mail-yb1-f177.google.com ([209.85.219.177]:37300)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cherif.chibane@gmail.com>)
 id 1k6JCa-0005rb-AN
 for USRP-users@lists.ettus.com; Thu, 13 Aug 2020 15:47:52 -0400
Received: by mail-yb1-f177.google.com with SMTP id e14so3956454ybf.4
 for <USRP-users@lists.ettus.com>; Thu, 13 Aug 2020 12:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=U2MJA5WzWxO+IjMjelczWPXaX5RsJlp9cNQLnVWwJ+M=;
 b=MvjpjApNj7NApOFBpEoFkvrvoG5NlMKp9d+pDP5Zj1BHtw7lE5Cx/t3c/JwZZ03522
 RV+hOkL+bdh+ab+RXHIMmdJMZixVD7qGDmTIyH3a901Byz1cTUZokaGEG+pBZJ0x6ZC+
 9w+5xf2h+B3eUU7kRyewxbPctF9kyLd3xTaKMna0XV7WxPrn4xQDeIRKY4bmQs5Rm/nf
 xLbGpJ6nB2IzQdclLq9+LCtudrVnFEGIOGm5cUrvs0KMN+0f2egawFXZf6v7Vm7AxQB/
 At5BkN1v2RF+HwrhZnS2MVl4LbiRXC4rVScbJX1h7Atj16GYNKJxJFtQhmCYHLK65BLv
 Z7kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=U2MJA5WzWxO+IjMjelczWPXaX5RsJlp9cNQLnVWwJ+M=;
 b=drGn+3Ra8+lT8SdrtSamirhN+LEbE7okHm9NZzE5Uh4WxiCEeq5dFTP97IjYuggHy0
 3y4lqqqkS69ePTltsp4e0W8KO1djdXfOGWGPFxlsDEmMSBHOBTVcJ4XggzcuJlEj2Ntz
 sf81z2siLABP/iiGLO6eHPX9roU6pkGiDOiYLMzRPZodiMrNNBKj2f4Bt6wCzs5IVMpS
 KsGgSQl8UIlHiyhc1Em/OyUlSshE59fXMFSN7TdQM9lq+2/AabuPmQt9Nzajqaw5mZOq
 ++VMby0W6XxAF73ysSYtZQRDfTXY9U6pMpq0vBRU88a03/UPjxwlkrEQfmFs3GHufCN3
 Xh5A==
X-Gm-Message-State: AOAM532Wxe2C5wCR24kIQK5vCZDVQVKKYYw4exRRRnrJ2NlHFV4ZrRFU
 19hRw+ShTE3fltkG8dfYAV9v7fyxltsQio4XFWpY7A==
X-Google-Smtp-Source: ABdhPJzHg22/Xw56wHurAYyso3cd0FlkVWMAVEF85jzfCD8PMYAY2KowB3s5Lgey/vfB1CVjFS1p2GyFJh+tImofshg=
X-Received: by 2002:a25:c60b:: with SMTP id k11mr8697593ybf.482.1597348031466; 
 Thu, 13 Aug 2020 12:47:11 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 13 Aug 2020 15:47:00 -0400
Message-ID: <CAN6+Rz=SZQ9UMYk5Nr_8L-ACG4n6nu3NcfNiVMMULzjCa3=bVw@mail.gmail.com>
To: usrp-users <USRP-users@lists.ettus.com>
Subject: [USRP-users] Version for UHD, GNU radio and Gr-Ettus
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
From: cherif chibane via USRP-users <usrp-users@lists.ettus.com>
Reply-To: cherif chibane <cherif.chibane@gmail.com>
Content-Type: multipart/mixed; boundary="===============5387521083677922955=="
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

--===============5387521083677922955==
Content-Type: multipart/alternative; boundary="000000000000ff918305acc79101"

--000000000000ff918305acc79101
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello folks,

Following up on yesterday=E2=80=99s discussion, can somebody send me the ri=
ght
versions for GNU radio and gr-ettus to use with UHD 3.15.LTS.

Thanks
Cherif
--=20
____________
Cherif Chibane

--000000000000ff918305acc79101
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello folks,</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Following up on yesterday=E2=80=99s discussion, can somebody send me=
 the right versions for GNU radio and gr-ettus to use with UHD 3.15.LTS.</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks</div><div dir=3D"au=
to">Cherif</div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><div>____________</div>Cherif Ch=
ibane</div></div>

--000000000000ff918305acc79101--


--===============5387521083677922955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5387521083677922955==--

