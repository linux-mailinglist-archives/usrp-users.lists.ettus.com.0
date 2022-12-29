Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E25658E49
	for <lists+usrp-users@lfdr.de>; Thu, 29 Dec 2022 16:22:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E2921381809
	for <lists+usrp-users@lfdr.de>; Thu, 29 Dec 2022 10:22:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672327342; bh=i2pT6HwX+Dv62+78jTgYi38UVI8AWf8/iQYwWfyLC38=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=txlquj0+lMex72fdJxFKEFaBbvP+CnYj1Mnv4DlpMPYh6VxR4b/yX7lSotoNVsWrL
	 8C+p7RgEcZN+DMOrBJxB40+zOYSXaQ3C/uBVv+gA0rRdWfpHJzzpqNlIvd6oOlb9QP
	 O57agE9oorHjacFpHmIGP5UWd/NfXHGCLnzOo9+Gve8etnOEC/H3NE46RVSw/a0iOZ
	 Gd02FngV/5Py/PTe7vntYJPmEnv05abt+Kq/aq+MG9RWL/h/i9JbCKqDrvsIav/CKf
	 gPrJnguXZPA1Rz6D+2KstvyVYjkzZqQyOx0S19FXgirQGCto89Q1XAafmOzTeZASRP
	 zkLVLRnpqB9vg==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id E5476380C74
	for <usrp-users@lists.ettus.com>; Thu, 29 Dec 2022 10:21:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="l7Oyax+R";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id jo4so45656551ejb.7
        for <usrp-users@lists.ettus.com>; Thu, 29 Dec 2022 07:21:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rp5nzR9kJomAf3Lqgx46xKHzL+a6ECedOm1xgBMlB1Y=;
        b=l7Oyax+RM1U31KN4uuiLhSyMRtSwYJTczGv+09Lsz3sqle53I3VEWySQBnHXAR+pIm
         skTSh8aZm8gKRWWehcP5ZRZhAWdB/duE1PWvazmqZ6rd5l73PcL0I/FYOl0zZGKtXQHk
         Z/azN1FpB0K14SdZ1s1b2VEoLoQWuYIXb2XE9vAsZ2fet4yv/i2v2gdBNsLPj1bkE8fG
         N7BPbeummAuGXUkimqOu2HLUTvBO+6R/oMSZNBrnFQRsshs0zqsiKCLbYYV+GEQAXfhF
         mf6zQIM3XiJMF5/6tO2dUmSddG0Nv4W1XrTtjK9hwGAnfi3tOq6lgGVGIuw2Se6pIV6s
         4Omg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rp5nzR9kJomAf3Lqgx46xKHzL+a6ECedOm1xgBMlB1Y=;
        b=bk6Mzunk2Rx1q3jFXhhU8lNmDtO/u4LakkllcQtJRt55jfAQYO0FZu8hih//Da+rg5
         TXwCvLyINkyNLb+f6RE/H801kRIWBltUgFTgKJkhHaLSucxkN6qPuL0BkKTo84XNXHJ9
         lIYXvrSN2lviCV0am+w7nS+rWKpxbckVHuSvAVQdpihFXEQcsUIqcBdLnGRaqd3HQ31J
         eBC8bbWWS+FQlSC5sA2pfWtG1IZTTVEp66784YDGJFK26OXuIJJEuv9yLb9Sr/HadJD6
         JTOuan2ZZHhP9Qy7flSylt0FHhl0vIo9LicxsJCYiNZmv22ByRr/lFlEMCwDeoyR4z+1
         mN/w==
X-Gm-Message-State: AFqh2kqxKYxBhXONO7Lubo0xZCz05nwVtKCjQDoW/tJZSK1Hti96bTaP
	n59a9STfF5otDqKp7vtm4ccn3ky5xV5LyrhyowFwUp0w
X-Google-Smtp-Source: AMrXdXtYv0XivJ9+vLFgO5YBmyrs7Ff10SdDS9rOcSO5+vEPUriR+JASdppdYmLVDbPwgusT5l93S54cn36DO0pym1Q=
X-Received: by 2002:a17:907:8745:b0:83f:5f77:8fff with SMTP id
 qo5-20020a170907874500b0083f5f778fffmr1642658ejc.293.1672327262396; Thu, 29
 Dec 2022 07:21:02 -0800 (PST)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 29 Dec 2022 10:20:50 -0500
Message-ID: <CAEXYVK7+9nOrxQyhTziEHpXowH89ow7DNU1uRwnHT4jTK14_XA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: B73HAOT5MXBFGHX24SE2LWCVBJPDXLCG
X-Message-ID-Hash: B73HAOT5MXBFGHX24SE2LWCVBJPDXLCG
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC OOT Xilinx IP not XCI Based
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B73HAOT5MXBFGHX24SE2LWCVBJPDXLCG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2665405402622134085=="

--===============2665405402622134085==
Content-Type: multipart/alternative; boundary="0000000000006c673f05f0f908ae"

--0000000000006c673f05f0f908ae
Content-Type: text/plain; charset="UTF-8"

I really don't like using XCI files for IP projects since Vivado wants to
target them specifically for a single device and a single version of
Vivado.  Instead, I like being able to define the IP in a tcl script.

With that being said, is there a way to tell rfnoc_image_builder to source
some set of tcl scripts to create the IP I want after creating the project,
but before building it?

Thanks,
Brian

--0000000000006c673f05f0f908ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I really don&#39;t like using XCI files for IP projects si=
nce Vivado wants to target them specifically=C2=A0for a single device and a=
 single version of Vivado.=C2=A0 Instead, I like being able to define the I=
P in a tcl script.<div><br></div><div>With that being said, is there a way =
to tell rfnoc_image_builder to source some set of tcl scripts to create the=
 IP I want after creating the project, but before building it?</div><div><b=
r></div><div>Thanks,</div><div>Brian</div></div>

--0000000000006c673f05f0f908ae--

--===============2665405402622134085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2665405402622134085==--
