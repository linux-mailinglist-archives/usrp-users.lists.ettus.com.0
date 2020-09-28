Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE1927A8F9
	for <lists+usrp-users@lfdr.de>; Mon, 28 Sep 2020 09:46:55 +0200 (CEST)
Received: from [::1] (port=58386 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kMns3-0001jo-Ld; Mon, 28 Sep 2020 03:46:51 -0400
Received: from mail-pj1-f65.google.com ([209.85.216.65]:34873)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <shinge.chen@gmail.com>)
 id 1kMnrz-0001IF-9Y
 for usrp-users@lists.ettus.com; Mon, 28 Sep 2020 03:46:47 -0400
Received: by mail-pj1-f65.google.com with SMTP id jw11so155112pjb.0
 for <usrp-users@lists.ettus.com>; Mon, 28 Sep 2020 00:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Jznf83RPRcZiDSyIbsN9L9Pp7YBYaKMojgEMTS20L/o=;
 b=Cg6OtpNvJ94rv9pR6iR22MsXND+y3KsnnEXMXEkBq5t+iYxoGgwSnmBbQtaxHaiCWX
 z5PPSSHsh8XL8eXIaFnzdYg1GrGvs9xe/VW87zQ9XgKRK1a3Ax13PEkUaCV7NujdAhyl
 GMdugfGUYydwfyUltwBUMHbSLB/yoH0VwvuCG+1sZMg9oF6g9simCeMavirRoMMN778u
 zV7kDEzoRsWKyxgcQQLjVDX39LUlp13i8aq0OpY7+vaI+rQhGa6Thk9NDw4I2lsr6MEm
 6RdgBAImKpeinAzqXCNVZrSwAbr2ipkbyCFU9YAh3FN1R7Y7KB1bv1Pxf3k8O8dqMf6M
 MSAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Jznf83RPRcZiDSyIbsN9L9Pp7YBYaKMojgEMTS20L/o=;
 b=cwmaHsH8xn2lTf1hm8pGIcD61VgshKBizuokvA5nnxYAlfz+aj89hQAEKZs1N6K51H
 d4rrc7owLAJqNXi4XZMeVKR9aPVZu+h6Nm8EQLYdoWLEzjuxuOUU2wgMcufYJn95zHfQ
 jOcxOfG9F0omnlNWAHS6LSrPco/IsR2gol78Rl4VGoTjxRMitZIVuvzUptxMreXzG0m2
 XcL044qGS7FVVYLMIcAOUCgPUjTMsk2FuYWNegz4by1gKLgn8xVWAHFwT7n9s4V6efgY
 VwS1H++LlM5UiMAOFkIC2np0ZnvTpDg07ObtuX7YHOOO9XEj21MHuA+tFiWkEbfc9Y3t
 AxWQ==
X-Gm-Message-State: AOAM531nSdYl9rOCw8waopvfso27LvjBNshBqGycKAuznS2OyrGAlWQc
 nV8Jm7fy3zpNqOAd0s7jYMMWhpR1RJ7achcgPY1sI9bQdVc/HQ==
X-Google-Smtp-Source: ABdhPJxsmtvLgSyTIJPISEzxEUasBupW2yxMxwVcpjldg7En4YZ2tiqWc6fvRqC6EVZnxfWp//B1uARaABrOUhiuWIY=
X-Received: by 2002:a17:90a:d812:: with SMTP id
 a18mr229158pjv.228.1601279165864; 
 Mon, 28 Sep 2020 00:46:05 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 28 Sep 2020 00:45:55 -0700
Message-ID: <CABV9QyLeTdpvOftdh2s49nKNhAVkukRo3eMq1bwv6ch0e8oajA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Segmentation fault when calling
 usrp->get_device()->get_tree()->access<bool>
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
From: Yu-Hsuan Chen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Yu-Hsuan Chen <shinge.chen@gmail.com>
Content-Type: multipart/mixed; boundary="===============5212280196147374306=="
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

--===============5212280196147374306==
Content-Type: multipart/alternative; boundary="000000000000de1fdb05b05adbda"

--000000000000de1fdb05b05adbda
Content-Type: text/plain; charset="UTF-8"

Hi,

I try to build LO distribution using N321/N320 and follow the
https://kb.ettus.com/USRP_N320/N321_LO_Distribution

But, I got the Segmentation fault at
usrp->get_device()->get_tree()->access<bool>("mboards/0/dboards/A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export").set(true);

I am using the linux; GNU C++ version 7.5.0; Boost_106501;
UHD_4.0.0.HEAD-0-g90ce6062.

Please help me to figure it out.

Thanks,
YH

--000000000000de1fdb05b05adbda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I try to build LO distribution usin=
g N321/N320 and follow the=C2=A0<a href=3D"https://kb.ettus.com/USRP_N320/N=
321_LO_Distribution">https://kb.ettus.com/USRP_N320/N321_LO_Distribution</a=
></div><div><br></div><div>But, I got the=C2=A0Segmentation fault at=C2=A0<=
/div><div>usrp-&gt;get_device()-&gt;get_tree()-&gt;access&lt;bool&gt;(&quot=
;mboards/0/dboards/A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export=
&quot;).set(true);</div><div><br></div><div>I am using the linux; GNU C++ v=
ersion 7.5.0; Boost_106501; UHD_4.0.0.HEAD-0-g90ce6062.</div><div><br></div=
><div>Please help me to figure it out.</div><div><br></div><div>Thanks,</di=
v><div>YH</div><div><br></div><div><br></div><br></div>

--000000000000de1fdb05b05adbda--


--===============5212280196147374306==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5212280196147374306==--

