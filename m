Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6E527154
	for <lists+usrp-users@lfdr.de>; Wed, 22 May 2019 23:05:31 +0200 (CEST)
Received: from [::1] (port=35058 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hTYQM-0004uB-59; Wed, 22 May 2019 17:05:22 -0400
Received: from mail-qk1-f170.google.com ([209.85.222.170]:33011)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <ryan@lmarlow.com>) id 1hTYPo-0004od-TH
 for usrp-users@lists.ettus.com; Wed, 22 May 2019 17:05:18 -0400
Received: by mail-qk1-f170.google.com with SMTP id p18so2485507qkk.0
 for <usrp-users@lists.ettus.com>; Wed, 22 May 2019 14:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lmarlow-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=7tj4cDu3n+WO6c2vOsBugcXaMDY1UZJVpWTI68oxCgk=;
 b=HDvkL8QypURfzrHrg4BzrEoioT4RzNgpZnz2+RpT/GXHgyM/VDg6wKWjHFQ/5VAvuM
 f546JwuyTgc1Rj2FR4LerbOx2EZQeH5h1HWtmUTkXVgwcpAfDwlXng0D5otw0UsEYYf7
 TPY2GiXQbGgCv2UVRCgUtdrgQVai8VcQiq6SxgF1yg6CyT03Ph5hVXUZdpVQ/UBUxzy3
 9qTQqpjb6EFfxrpsj0n8Ac1p8BNJ+WWc39fK5nDwnFEceBMZJyBgtaZxN0CDraVDIH2G
 XCLpdDxd3CvoWSfka3sRdhCyyqiIkFqc7rbXOG3nMyfCheE0mJkLKMvZ/6YFUU/wRxUB
 17UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=7tj4cDu3n+WO6c2vOsBugcXaMDY1UZJVpWTI68oxCgk=;
 b=MxHZLJfUMlwEVx7NgtdZK3UpOysCEAnzOr6CJQEPq3dOYNUekrNj+E8TgNBIf3MCfM
 SsJ3cmx52jU5TSQfMP2S/7RlFRng+gdFDBhRMuYuLiHaXus9vjTn6wBj0vpUG/lkG5Je
 s2dJ9MKUUF8DYbPPP+zcH2Fl+87FE3TPjVp3P62s4pQn9WdGvsWUy8N8BWl3kHiUcqls
 vcFTk4QX+RtLs9ebESbwY06lN2zj8jz/Y2Fbyu9TowkO2J3WHStvQMk++4qGX6ODH7Tj
 08n1ucz0KVM14DRIiQ+EhPMMphzfazSKWW8BASiFQeD8cyClptugxN7eQLPn3+8nCqgQ
 9pMQ==
X-Gm-Message-State: APjAAAXnN/t6T6DWnJjZd5HnFJLIOYuyAZm8YTUziElo/T1KO2G7Xmp3
 n/Jrcr0xbuGPAnkCOj0XbZ5G+QN1TdSpLzmy5cVIxgMr7A==
X-Google-Smtp-Source: APXvYqwiw5zxTCzkXQ+EwxMDXkkEWrj7D9wHweP2bBpGMdMH7opdedNozLz5LiQ2eSHnxov/P8/lPvqM6WZM6oYQskM=
X-Received: by 2002:a37:a555:: with SMTP id o82mr47633762qke.93.1558559047881; 
 Wed, 22 May 2019 14:04:07 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 22 May 2019 17:03:57 -0400
Message-ID: <CAOHuk9CKGKwhW-cYRpNpCVAZpvm_bNK53=0dW1sDeuVLVgkqMA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] X300 RFNoC integer-N tuning
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ryan Marlow via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ryan Marlow <ryan@lmarlow.com>
Content-Type: multipart/mixed; boundary="===============2178676115748329652=="
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

--===============2178676115748329652==
Content-Type: multipart/alternative; boundary="0000000000006a20bc0589804e1f"

--0000000000006a20bc0589804e1f
Content-Type: text/plain; charset="UTF-8"

Hey All,
I'm trying to figure out a way to enable integer-N tuning in my RFNoC
application. My understanding is that rfnoc radio_ctrl object that
interfaces with the Radio noc block on the device does not support the use
of a tune_request object to pass in the mode_n=integer argument. See:
https://github.com/EttusResearch/uhd/blob/UHD-3.13/host/lib/rfnoc/radio_ctrl_impl.cpp#L150
vs
https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/multi_usrp.cpp#L1917
Is there another way I can pass this setting in to an rfnoc/device3
application that I am overlooking?
Thanks,
Ryan Marlow

-- 
Ryan L. Marlow
R L Marlow Consulting LLC
rlmarlow.com

--0000000000006a20bc0589804e1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey All,</div><div>I&#39;m trying to figure out a way=
 to enable integer-N tuning in my RFNoC application. My understanding is th=
at rfnoc radio_ctrl object that interfaces with the Radio noc block on the =
device does not support the use of a tune_request object to pass in the mod=
e_n=3Dinteger argument. See:<br><a href=3D"https://github.com/EttusResearch=
/uhd/blob/UHD-3.13/host/lib/rfnoc/radio_ctrl_impl.cpp#L150">https://github.=
com/EttusResearch/uhd/blob/UHD-3.13/host/lib/rfnoc/radio_ctrl_impl.cpp#L150=
</a><br>vs<br><a href=3D"https://github.com/EttusResearch/uhd/blob/master/h=
ost/lib/usrp/multi_usrp.cpp#L1917">https://github.com/EttusResearch/uhd/blo=
b/master/host/lib/usrp/multi_usrp.cpp#L1917</a><br> Is there another way I =
can pass this setting in to an rfnoc/device3 application that I am overlook=
ing?</div><div>Thanks,</div><div>Ryan Marlow<br></div><div><br>-- <br><div =
dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><d=
iv dir=3D"ltr"><div>Ryan L. Marlow</div><div>R L Marlow Consulting LLC</div=
><div><a href=3D"http://rlmarlow.com" target=3D"_blank">rlmarlow.com</a><br=
></div></div></div></div></div>

--0000000000006a20bc0589804e1f--


--===============2178676115748329652==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2178676115748329652==--

