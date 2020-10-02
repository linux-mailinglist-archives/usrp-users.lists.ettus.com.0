Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2D6280D52
	for <lists+usrp-users@lfdr.de>; Fri,  2 Oct 2020 08:14:23 +0200 (CEST)
Received: from [::1] (port=37072 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kOEKf-0004Cs-6n; Fri, 02 Oct 2020 02:14:17 -0400
Received: from mail-wm1-f48.google.com ([209.85.128.48]:36967)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jayant17154@iiitd.ac.in>)
 id 1kOEKb-000493-5C
 for usrp-users@lists.ettus.com; Fri, 02 Oct 2020 02:14:13 -0400
Received: by mail-wm1-f48.google.com with SMTP id j136so405278wmj.2
 for <usrp-users@lists.ettus.com>; Thu, 01 Oct 2020 23:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iiitd.ac.in; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=QLSr8NQ6j4/OTvfiba/QstKPrOK1k03RxtPASuHf9yU=;
 b=fJLSsUFftSSFm5XsJXihZoDxoJzTtLmRnyjS3Za1n9zq667j1L+ADWABnSJyO2iZGs
 Gd1MIUWI0wbZTM5FG0IWEG4m4lCk0i9l5ZRlhbtEgb+S456PuNqqW/FnHjmV9PQrh+ES
 iJeNiqgu2K9VrXt0bNt38apIZc+Oq5IetTsdE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=QLSr8NQ6j4/OTvfiba/QstKPrOK1k03RxtPASuHf9yU=;
 b=irdaPJFRouOPgNQrUhDGJEImPLtKxlkGrxfguYbsufI2P5DRnWrEPBH6FLNsX6LSSu
 87Nltc+2XhEFRMflbEuLkSmQp8mMhs8HxQHWNA8l4XtdnQzHYJHans8Z8+v7SJ5zQnWM
 QADr2vAec77wuiTzNpSRKFOipKWIWARjJr2EdEt46FrIEBnLcogb+Ik/FfwK2fKZmhPB
 5Sg1t1yKhzQ+oxWIKs9R3JHr6gXG0xVrSjuDRM2v7hi+4+2gsGNYqKu96s3NMQKkbiLr
 ZnqV8h0ZcurGWsRsBaqajnmWxFnaNfsNl0eYzwv6HMMkBIEKgD7tSE1nWTLxCqsHcI1t
 Fq9w==
X-Gm-Message-State: AOAM5331Jm7p3bAvUqJjP1WI7pF/wdikJgNJmWA2ZtW+9/neI5tkpYFq
 4kNioa5rlzAWS04TUib0/XAvKOL9ArAVmn4gvDbj4LuHrxQ=
X-Google-Smtp-Source: ABdhPJw+aJODWZzhL9VnJGC1joUViqdWdp3OwWcD9expp/ve/xceljUt9hovYNYXRel1wboVYcE96r+DFLGJnKKaMtk=
X-Received: by 2002:a1c:18e:: with SMTP id 136mr925124wmb.22.1601619211493;
 Thu, 01 Oct 2020 23:13:31 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 2 Oct 2020 11:43:20 +0530
Message-ID: <CAKwrT9T96Z6aHHd1haebhn0AiazSNiKNDZRhx7p0G6wiCHOFOg@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] Benchmarking RFNoC Blocks
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
From: Jayant Chhillar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jayant Chhillar <jayant17154@iiitd.ac.in>
Content-Type: multipart/mixed; boundary="===============7249283674564448467=="
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

--===============7249283674564448467==
Content-Type: multipart/alternative; boundary="0000000000002ac17305b0aa08e3"

--0000000000002ac17305b0aa08e3
Content-Type: text/plain; charset="UTF-8"

Hi everyone,
I wanted to know if there is a way to benchmark the performance of
different RFNoC blocks?
Basically, I want to compare the performance (time taken) by the RFNoC
blocks as compared to their counterparts in GNURadio.

Also, what factors should I keep in mind that might affect the benchmarking
results, for example, streaming samples from blocks to sending as vectors
(GNURADIO) or the mtu size, etc.

Thanks,
Jayant

--0000000000002ac17305b0aa08e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi everyone,</div><div dir=3D"auto">I wanted to know if t=
here is a way to benchmark the performance of different RFNoC blocks?</div>=
<div dir=3D"auto">Basically, I want to compare the performance (time taken)=
 by the RFNoC blocks as compared to their counterparts in GNURadio.=C2=A0</=
div><div dir=3D"auto"><br></div><div dir=3D"auto">Also, what factors should=
 I keep in mind that might affect the benchmarking results, for example, st=
reaming samples from blocks to sending as vectors (GNURADIO) or the mtu siz=
e, etc.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks,</d=
iv><div dir=3D"auto">Jayant</div>

--0000000000002ac17305b0aa08e3--


--===============7249283674564448467==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7249283674564448467==--

