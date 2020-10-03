Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DE528243A
	for <lists+usrp-users@lfdr.de>; Sat,  3 Oct 2020 15:10:49 +0200 (CEST)
Received: from [::1] (port=49988 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kOhJE-0001ef-8F; Sat, 03 Oct 2020 09:10:44 -0400
Received: from mail-ed1-f41.google.com ([209.85.208.41]:35936)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <danielozer22@gmail.com>)
 id 1kOhJA-0001Gs-0R
 for usrp-users@lists.ettus.com; Sat, 03 Oct 2020 09:10:40 -0400
Received: by mail-ed1-f41.google.com with SMTP id w1so4789825edr.3
 for <usrp-users@lists.ettus.com>; Sat, 03 Oct 2020 06:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=oR2BS8h1fh+A7+axqQuHMfQAWkhy5roSmVgA+c5Vty8=;
 b=dEukOFwBVvp55wonMCzthxvnSNJRiThfIi1wRvArNSSVZhFgUt/l2D/u/Jp9E6nh3O
 V8omBOyYAgaOcux5GhURi7/Oq4tfEW9x6PfMhrf2ZXlQ7cqLIzjqU0cQxlc3NnHvLoHL
 63XstTAkCgExql8jDaA/kvK/LLR5wkvdCkmqPcnawXyDB3ZS+Uzhr+PBMPJHK/hilgag
 rskbDUMYuAWlkiBOE+yJSOAVQU6Jn4G3F7Nq5jo3EuxMlGXUtESepCBADof+5UNZGVQA
 VwRZwT9UYjVt+UBoDW+w5qMfueQsaclDk0kbAa8aVY2AgXprOtkIDjaNjya1IFkmLYnE
 6eKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=oR2BS8h1fh+A7+axqQuHMfQAWkhy5roSmVgA+c5Vty8=;
 b=Qp+Ilb+BR8A8sUFTcHfut0sbG6tHeWSv7XlbwXrxefKzWNr+f9z/xSKTzwXL9+IsFE
 0zFDot+5KgLlX7/xKjbF8vvZtuV87nGmc0wdL1lAKIadWqH0vXla59zx+eRrfSEZB46d
 yAEGPjI8VncRtzdEKJptv9SUhrmqisOCv4lMpnW+QU+YqqU2btkJsB6d5PvidEUJYRV7
 197Nsz2Ih6vfaJ14e3I/a9fdBlFyWeFeNFC8a2mzMs9L8q9iy7r/lCTecJju/wvFxx29
 Zan0ngjwCy7RKBkP0F5zz6RE47vO0YA4cml4CSI8InWtavH4NxuoX4MeFOBj9Tp+gaCh
 G/Hg==
X-Gm-Message-State: AOAM533XtHyTNnFy1loNBZwXOdBQc7IncKQ67z/Gg3GrQj7u6woRFGFc
 VV+yEX7VPZZp1JQ8/yOQ7/zPVqqp6O5UG/lwUSFmbCjRUoM=
X-Google-Smtp-Source: ABdhPJxMUvVqXAw7BicYLLuQ0GNhlZ1snsQkE1qGuu4Kwi8m+XLtwPa+nz+eiFhkvjRrNiYXHQ4SQamFdxJYk+wcgPo=
X-Received: by 2002:aa7:c987:: with SMTP id c7mr8494138edt.385.1601730598743; 
 Sat, 03 Oct 2020 06:09:58 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 3 Oct 2020 16:09:38 +0300
Message-ID: <CAE_Rk54ZCgr=aPjNnUZ6wrygAMZWO5D=wUgqc0zoH7cEQRmO+A@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] reading from ddr3 - high latency
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
From: Daniel Ozer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Daniel Ozer <danielozer22@gmail.com>
Content-Type: multipart/mixed; boundary="===============6377706006098963115=="
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

--===============6377706006098963115==
Content-Type: multipart/alternative; boundary="0000000000005d31a005b0c3f7b3"

--0000000000005d31a005b0c3f7b3
Content-Type: text/plain; charset="UTF-8"

Hi everyone,
I'm working on usrp x310 .
I create my own version of the replay block .
I almost didn't change anything in the 2 state  machines in the
axi_replay.v .
everything worked fine  but then i saw in the chipscope that my replay
block got data after 110 clks. (although the read ctrl ports indicate that
the ddr start processing my read request )
Is there any reason it takes 110clks to get the first data from a burst ?
How can I lower this high latency ?

--0000000000005d31a005b0c3f7b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><div style=3D"direction:ltr">Hi everyone,</div><div style=
=3D"direction:ltr">I&#39;m working=C2=A0on usrp x310 .</div><div style=3D""=
 dir=3D"ltr">I create my own version of the replay block .</div><div style=
=3D"" dir=3D"ltr">I almost didn&#39;t=C2=A0change anything in the 2 state=
=C2=A0 machines in the axi_replay.v .</div><div style=3D"" dir=3D"ltr">ever=
ything=C2=A0worked fine=C2=A0 but then i saw in the chipscope that my repla=
y block got data after 110 clks. (although the read ctrl ports indicate tha=
t the ddr start processing my read request )</div><div style=3D"" dir=3D"lt=
r">Is there any reason it takes 110clks to get the first data from a burst =
?</div><div style=3D"" dir=3D"ltr">How can I lower this high latency=C2=A0?=
</div><br class=3D"gmail-Apple-interchange-newline"><div style=3D"direction=
:ltr">=C2=A0=C2=A0</div></div>

--0000000000005d31a005b0c3f7b3--


--===============6377706006098963115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6377706006098963115==--

