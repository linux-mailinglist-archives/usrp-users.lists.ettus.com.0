Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF01512B96
	for <lists+usrp-users@lfdr.de>; Thu, 28 Apr 2022 08:31:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 48DCD384741
	for <lists+usrp-users@lfdr.de>; Thu, 28 Apr 2022 02:31:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651127518; bh=VdVKNcC85gdQCNXWIPXFWYx7IJAJjg54Ak38r382Qy4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=UyWx+QUA/qx/ycGtk+Eks+Cpf+DF0aDRQLMFgoIa2Gn5v2p1BLxcpk/bh7pJfPp08
	 TJhLMpe1djuPgIRQlDm6kzaGjNd424zLYaKP+rydV/3hCHXW7bm3giK/T58WXPujyT
	 vKPIoDwn7902AoGgY689T3+zoQEWg67YwBxfdmFj/PzAwLsjPMqcAgnEaBkltQePGd
	 RJZEntunZJfdBl+tggaUy3hQ9EEByAiBzuc1ikFI75HlROyyClMuMO9vGVVGMedKxP
	 9fYwcvMI/UmVPeKpD5zU4fOv1dRjMw4UiMFq1Az0oIsP9FcCc4fAfaOlDaepqBTwMJ
	 n1cB/kd+kwwbQ==
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 97FB5384617
	for <usrp-users@lists.ettus.com>; Thu, 28 Apr 2022 02:30:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=sabra-microsystems-com.20210112.gappssmtp.com header.i=@sabra-microsystems-com.20210112.gappssmtp.com header.b="pME1LAUo";
	dkim-atps=neutral
Received: by mail-wm1-f47.google.com with SMTP id bg25so2313579wmb.4
        for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 23:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sabra-microsystems-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=HnTEVQI6/F0gBW1i1d62jRquo1HCgN8fGmU+Ky7th1Y=;
        b=pME1LAUojaixYINDLudNtCnI/IZO8Hk1hy8ouH5vS0uVn/pv5WHHcZJIKu2XUYEDzb
         thzo57DG2V1HYU0YeHzZagffQ4iAF05TS7zH/vvhhfH6goa9YBI7H7ArmNOlnER84z/w
         ysiU5eyQDXH9trtES6KUtjJICNMDtZjIwbmvYYsXUtM3NB9lzP25adRcCOhjlpWZPDy1
         iL8oEqRv2SqGHmoXOc5G2xWUtpbmzjcU0W67VcJOtKIp9SQiw9K+NDrLoQ8XtS4S9le9
         vCMmtDj0rtyvKhukP8tesv1BWBSz5ToQkC+ZyHpRpSyO+cGwFiUExzOIVMgOhwkLDaMj
         oi0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=HnTEVQI6/F0gBW1i1d62jRquo1HCgN8fGmU+Ky7th1Y=;
        b=AVNSsZVT/vW2/jBnD0jCKBUd6m6LrDo4dlaWh8gr5Mpl1SvTWAQgli+BZth2buMtJb
         NpMe6C0Wr+jthXusvESXw8dVmYCPT5C7imqdPctHEDhVzpzOC1OAmQ3tOvlkGXLXzKvz
         FUcTnLnsaIliBzEghzLReMSCEoHfor4jhnjv4v0T2zWFTH6Eeo5uLDzMu9MUYlhKKwrC
         7bBIVXdTRqYewG2QxmqDXGNxsCkfEP0JWqOR25R/EzUIjt/Ndszxs/RH0r1t40hTi3Jh
         nN3cK2jVCn7EeJJ0JRbq12HT2mFgUABqoB1k4h9xD6TZWQZNXODIsSHm6d2yAwICRVZ3
         fFzw==
X-Gm-Message-State: AOAM533os+2Cv7VBOzW3TJKLRoRDOJKSm4bilxUeR4ivfDNBMQIgRteF
	wACBUSWJ4yOziGMCX6iPv1ZMKhnfTb3RT5Fl2TeEHvK8AkM+
X-Google-Smtp-Source: ABdhPJx5BrBUvTIB3w1ROPGl5Ie442IEAFX5MDxjhY/8IvY1eIvEYtBAsLS4hq3VNC+7mn/0Z4I7itlWZJQLM+6509c=
X-Received: by 2002:a1c:5401:0:b0:38e:bf1c:d25c with SMTP id
 i1-20020a1c5401000000b0038ebf1cd25cmr29175269wmb.119.1651127443112; Wed, 27
 Apr 2022 23:30:43 -0700 (PDT)
MIME-Version: 1.0
From: Meni Dali <meni.dali@sabra-microsystems.com>
Date: Thu, 28 Apr 2022 09:30:32 +0300
Message-ID: <CAArc5woo_Z8OnZvjSmTqt-uERMsPJujL2m3DCiVoHL8oiDWSaw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: IADLVDIHCIDJ3YXF5WALMGPE4YS7GOC2
X-Message-ID-Hash: IADLVDIHCIDJ3YXF5WALMGPE4YS7GOC2
X-MailFrom: meni.dali@sabra-microsystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RfNoc gpio + chdr
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IADLVDIHCIDJ3YXF5WALMGPE4YS7GOC2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2024171400652571699=="

--===============2024171400652571699==
Content-Type: multipart/alternative; boundary="000000000000b9ecce05ddb11038"

--000000000000b9ecce05ddb11038
Content-Type: text/plain; charset="UTF-8"

Hi

I am interested in creating a RfNoc module for X410 FPGA that will add a
simple counter that depends on external gpio to the CHDR header.

In addition, I am required to read this value on any uhd packet on my host
application (Written in C ++, UHD 4).

I've searched online for a user guide without any success.
Can anyone guide me how to do this?
(It's not described in the "Getting Started with RFNoC" guid)

Thanks in advance.

--000000000000b9ecce05ddb11038
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><div style=3D"direction:ltr">Hi</div><div style=3D"directi=
on:ltr"><br></div><div style=3D"direction:ltr">I am interested in creating =
a RfNoc module for X410 FPGA that will add a simple counter that depends on=
 external gpio to the CHDR header.</div><div style=3D"direction:ltr"><br></=
div><div style=3D"direction:ltr">In addition, I am required to read this va=
lue on any uhd packet on my host application (Written in C ++, UHD 4).</div=
><div style=3D"direction:ltr"><br></div><div style=3D"direction:ltr">I&#39;=
ve searched online for a user guide without any success.</div><div style=3D=
"direction:ltr">Can anyone guide me how to do this?</div><div style=3D"dire=
ction:ltr">(It&#39;s not described in the &quot;Getting Started with RFNoC&=
quot; guid)</div><div style=3D"direction:ltr"><br></div><div style=3D"direc=
tion:ltr">Thanks in advance.</div></div>

--000000000000b9ecce05ddb11038--

--===============2024171400652571699==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2024171400652571699==--
