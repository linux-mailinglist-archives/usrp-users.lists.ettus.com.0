Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 522872B5E73
	for <lists+usrp-users@lfdr.de>; Tue, 17 Nov 2020 12:35:34 +0100 (CET)
Received: from [::1] (port=43862 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kezGj-0002bh-9b; Tue, 17 Nov 2020 06:35:29 -0500
Received: from mail-il1-f176.google.com ([209.85.166.176]:40104)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <superme991@gmail.com>)
 id 1kezGf-0002Up-Dd
 for usrp-users@lists.ettus.com; Tue, 17 Nov 2020 06:35:25 -0500
Received: by mail-il1-f176.google.com with SMTP id n5so18253255ile.7
 for <usrp-users@lists.ettus.com>; Tue, 17 Nov 2020 03:35:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=3hhkgowDHGrfgLpcojec8M5pOrz5xQ0Y6JJtclyJlnU=;
 b=VM96QQnTeZkXxM0lQcawseEUuTnPKiIWFwC41DpKCzlSboBKdrHe3x/MCw/qIeBlrW
 v3ORk8aRYIrGg7z3aQcz4ncn97QD4JiAO9y+rnsu2TpOB85yeUThvysucLpapMHfgYT/
 Fo4OBk9Ocv/yTWjJBNhGRx1URKVfMPbR+Z88mYgmWCgO3COYP13F5NDYFVYlpgsgr+6G
 TsX9/5dW3NJjkk6k24gsh+aVFKqhypeDz6rM01L5VIX0sKXuW/Mk5+U8bSgSeWHHBdZU
 iAqAaIJQwM1mzQI7jJKPLihyhpIKv376Wtk8ADzntnEeQExgeqo6FY3kxILWekB/zzKS
 N8kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=3hhkgowDHGrfgLpcojec8M5pOrz5xQ0Y6JJtclyJlnU=;
 b=BhGu6/AMl/Dv8OSzZgz8jOxByYYDNTy9p7a9KCD9sDTI6Bj3YnF684w+mt/HMKkax5
 RDLLZlIX6ZWS6L+ITKxxb3ihglaWxM8g7TFLkKd8c4L8ycSP1Wzaz5S6PGn3OJcINuPk
 3TLXQqBn4bdFRiRgbsDe6ejBTXYD4aDmBQnJZlCfNarqW9vsFIAv1203F5EgV0rM+w9A
 EF3/GbGPpQTwemXtvCiVPYDFq7dLTCHcv6mk73Bw3l7b7fGJHXsjlivV/NO5rTAnb0Os
 9BZHzM3qHIqvefXnwnyvfDrvi6OsACjrQhfYYhnlRPgSAHTO0VwlARo+qo7u65br/npF
 1VhA==
X-Gm-Message-State: AOAM5313tk+mvpqoHf1ZzlUJiom8NNhc172WziN2IovIJjt+bLCrj5VQ
 ZXvwZGaqOKzv4JSfq9n8oNtTJBMZ1ZOPWvYEskLnnJjfaxjPKg==
X-Google-Smtp-Source: ABdhPJw6mdsB69FyNwjzsngATM1/0/cvvpFrAe2Ky7hCZdHd09jzlfKICr2UaLL5KaASdfOxfMgdfhSWbV6AobvJDWM=
X-Received: by 2002:a05:6e02:ead:: with SMTP id
 u13mr11772971ilj.152.1605612884233; 
 Tue, 17 Nov 2020 03:34:44 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 17 Nov 2020 19:34:37 +0800
Message-ID: <CALbO1t07fYWAnS+Y6WWEtT-ftoURyzFDPsLJGMQHzUCe6yyY2A@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] Is it able to use RFNoC Replay Block on the receiver
 chain?
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
From: Jorge Chen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jorge Chen <superme991@gmail.com>
Content-Type: multipart/mixed; boundary="===============7807145932617192863=="
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

--===============7807145932617192863==
Content-Type: multipart/alternative; boundary="0000000000009c954d05b44be14a"

--0000000000009c954d05b44be14a
Content-Type: text/plain; charset="UTF-8"

Hi USRP users,

In the example "rfnoc_replay_samples_from_file.cpp", we connect SEP and NoC
blocks as follows: (Tx_streamer)=>[Replay#0:0]=>[DUC#0:0]=>[Radio#0:0].
It first sends samples from host and records them to the on board memory,
then replays them from the on board memory continuously.

We'd also like to offload the traffic and avoid overflow while
receiving.Something like saving the samples outputs from DDC to the on
board memory first,and then receive them from the on board memory to host.

I'm wondering if I can use the same concept on the receiver chain by the
replay block?If so, how to do that?

Thanks and regards!
Jorge

--0000000000009c954d05b44be14a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi USRP users,<div><br></div><div>In the example &quot;rfn=
oc_replay_samples_from_file.cpp&quot;, we connect SEP and NoC blocks as fol=
lows: (Tx_streamer)=3D&gt;[Replay#0:0]=3D&gt;[DUC#0:0]=3D&gt;[Radio#0:0].</=
div><div><div>It first sends samples from host and records them to the on b=
oard memory,</div><div>then replays them from the on board memory continuou=
sly.</div><div><br></div><div>We&#39;d also like to=C2=A0offload=C2=A0the t=
raffic and avoid overflow while receiving.Something like saving the samples=
 outputs from DDC to the on board memory first,and then receive them from t=
he on board memory to host.</div><div><br></div><div>I&#39;m wondering if I=
 can use the same concept on the receiver chain by the replay block?If so, =
how to do that?<br></div><div></div><div><br></div><div>Thanks and regards!=
</div><div>Jorge</div><div><br></div><div dir=3D"ltr" class=3D"gmail_signat=
ure" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"l=
tr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v dir=3D"ltr"></div></div></div></div></div></div></div></div></div></div><=
/div>

--0000000000009c954d05b44be14a--


--===============7807145932617192863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7807145932617192863==--

