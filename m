Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E316946E9F
	for <lists+usrp-users@lfdr.de>; Sat, 15 Jun 2019 08:47:44 +0200 (CEST)
Received: from [::1] (port=55494 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hc2T4-0005IA-3r; Sat, 15 Jun 2019 02:47:14 -0400
Received: from mail-io1-f52.google.com ([209.85.166.52]:33764)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1hc2T0-0005EU-Kt
 for USRP-users@lists.ettus.com; Sat, 15 Jun 2019 02:47:10 -0400
Received: by mail-io1-f52.google.com with SMTP id u13so10694276iop.0
 for <USRP-users@lists.ettus.com>; Fri, 14 Jun 2019 23:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=wrO0koSGpuOH7VkWBKzw15vK159rZDHYTGFdtuAxckc=;
 b=sJsr7GLeb2iakpK0m3O1TWhsnaH+Pkq4BVP18M23zj32s22rRvNyY96LjI82zrhFQ6
 u1xoYKQaNEttbbxfOBkizRx2YMOdzsvheHO49jgY2DwBwX6CLOun+jk5ZHYOwpQeGHqs
 mRTQQwPDQ7D+b5hXuipclo4vstHNSd2JMXfwPfXuF4zLIdtUxUd9uw38qSbVr7raa6dN
 9foLU+0/ddVUBJcb6Shyf6eD12WdJDq2JW2JWXwGRB4NjQBA3jCjW4nAZZGx2bWKXmTM
 0E8Lm9TWi07AAM0Rjb8phB/7phr83ZgrAaRaD3dQA8LmjKlQU5u4dP/Pq6KQDKQN8MeP
 Gj5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=wrO0koSGpuOH7VkWBKzw15vK159rZDHYTGFdtuAxckc=;
 b=G8AZ0Op861pVg+4WnWhGRuxpfXdrm1nJBgYW3QjyUUJshuIXJHYayGuU1//XKa1rxD
 Zuc49lTTJPTVfveCkzG1QNtsHrm7V/4ezFlnjU7HRPDifulz9JejqWgX/m5QG87S3rP9
 FV5EQWQvQstA2QhNsK8KcVbyAlHnhq+q7rmQXv/C+RGFBoq73ONv8mrJK1zKDnuzauDp
 t6PX+wDKHp/JcGEhyku6di2qK2jbjqYb/KVDxsJJ7fqTNSpGkYg80uIf64ikSzWUenZX
 s0zNajUtBVd69s/2X3r0tDYiInFeBT3KRwUvbVCjfKrdH3PUqmA+9GH71vfjxCoyCJtv
 2JCA==
X-Gm-Message-State: APjAAAVZEs7NDng++CyJ/MxNYX48LnQK7fsc78t2QT6rxor2AXOxzQ7N
 QnQf8smhWPQsTaA6rY1s2tYqn8cl+dIXT03menqdQU36alU=
X-Google-Smtp-Source: APXvYqwQJlyXC+NtI9mDz25VQkW97ZszAUOHdDc+OMg4u7Ohp6zqh+j/y+rWfO9kcGtXMACpVL11pOkMnFEMKCh0o5I=
X-Received: by 2002:a02:a07:: with SMTP id 7mr21055221jaw.65.1560581189494;
 Fri, 14 Jun 2019 23:46:29 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 14 Jun 2019 23:43:24 -0700
Message-ID: <CA+JMMq8vzuW8yHWmkzRODB4MvVgYnWjfNauagmnTM3ENZoNxhg@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Subject: [USRP-users] X310 master clock rate incorrect?
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Content-Type: multipart/mixed; boundary="===============4497283759639099938=="
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

--===============4497283759639099938==
Content-Type: multipart/alternative; boundary="0000000000007169e7058b571f31"

--0000000000007169e7058b571f31
Content-Type: text/plain; charset="UTF-8"

Got a weird one here. I'm using an X310 with UHD 3.14.0.0-87-g4e084337,
with two LFRX daughterboards installed. Legacy interface with gr-uhd, not
gr-ettus, just testing things in the field. When I tune to 15MHz sample
rate at 1Msps, I get a resulting stream that looks for all the world like
it's coming in at 7.5MHz and 500ksps. Because this is a field deployment,
and because I don't have immediate access to a signal generator, it's a bit
hard to confirm that. It looks to me (at first blush) like the DDC block is
getting an incorrect master clock rate, and setting its tick rate
accordingly. When I set the frequency to 30MHz and the sample rate to
2Msps, I get the result I'm expecting.

I don't believe I'm seeing the same problem with device3/gr-ettus, but I'll
test that further today. Anyone seen behavior like this before? There's
also an unexpected DC offset I haven't seen before, if that helps jog
anyone's memory. Since it's direct-sampled, not zero-IF, any DC offset must
be the result of the DSP chain.

Nick

--0000000000007169e7058b571f31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Got a weird one here. I&#39;m using an X310 with UHD =
3.14.0.0-87-g4e084337, with two LFRX daughterboards installed. Legacy inter=
face with gr-uhd, not gr-ettus, just testing things in the field. When I tu=
ne to 15MHz sample rate at 1Msps, I get a resulting stream that looks for a=
ll the world like it&#39;s coming in at 7.5MHz and 500ksps. Because this is=
 a field deployment, and because I don&#39;t have immediate access to a sig=
nal generator, it&#39;s a bit hard to confirm that. It looks to me (at firs=
t blush) like the DDC block is getting an incorrect master clock rate, and =
setting its tick rate accordingly. When I set the frequency to 30MHz and th=
e sample rate to 2Msps, I get the result I&#39;m expecting.<br></div><div><=
br></div><div>I don&#39;t believe I&#39;m seeing the same problem with devi=
ce3/gr-ettus, but I&#39;ll test that further today. Anyone seen behavior li=
ke this before? There&#39;s also an unexpected DC offset I haven&#39;t seen=
 before, if that helps jog anyone&#39;s memory. Since it&#39;s direct-sampl=
ed, not zero-IF, any DC offset must be the result of the DSP chain.<br><br>=
</div><div>Nick<br></div></div>

--0000000000007169e7058b571f31--


--===============4497283759639099938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4497283759639099938==--

