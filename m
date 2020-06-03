Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECD61ECD26
	for <lists+usrp-users@lfdr.de>; Wed,  3 Jun 2020 12:06:22 +0200 (CEST)
Received: from [::1] (port=33766 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jgQHr-0005Jc-DS; Wed, 03 Jun 2020 06:06:19 -0400
Received: from mail-io1-f49.google.com ([209.85.166.49]:42652)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carlosruiznaranjo@gmail.com>)
 id 1jgQHn-0004tm-Hu
 for usrp-users@lists.ettus.com; Wed, 03 Jun 2020 06:06:15 -0400
Received: by mail-io1-f49.google.com with SMTP id d5so1559980ios.9
 for <usrp-users@lists.ettus.com>; Wed, 03 Jun 2020 03:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=zY7m8VN9fzMib0L3FX/1RJJPli/mArbuktb2n+ba1Yk=;
 b=OQSLAgVb8/QSFs8ldN8vMB4h0htFzpuFNbxqnxbqwEQ9oLv5Rv8JfQRw/NcyaWIkIG
 gnZdK/7QUEKZxPPmsekAtLInVyJ0WiwoSnYwXPH44cTGH/ftu+HDvMOcON0ypWwkR3A3
 /Nfbr6HP+b7VEjdLXX25YHwdgBP5J3J+nfkUgodCTtoQesXGXzngGZJfRrWbwh3DUAF8
 mVGN/gIprTZIhvfw7VbbxQ9qBRlmBuk+djGgYg312/q5rkw68VUCpg3cUGpHPEy360Rl
 /aooRzajvCfvMAtHrsQdncUd+EReQzTHJG3JFX8JokMRZ38kREckk+xUEsd5MzQkc9Kz
 LtBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=zY7m8VN9fzMib0L3FX/1RJJPli/mArbuktb2n+ba1Yk=;
 b=URSWbDNqE3tXcLoWYFe8BD0VzuavWdhDClkQmXZn1CpJ4DS2EPQoXcWn+/gxS+J3rY
 0GiotgHt6pGYjtcOFcqJ02QAIbwT879gHCu+PAZ/DhvMNg9tNK4DaH/QBxazQdk54JRg
 fduLCYtgdF6ev6UPlVl+cQR+EhHLGLyiEGJ2XYw0MvsSaZ10YSAt4R3FNA9VMgecaqfI
 mFO9m8JStqVopj3JIuuMP8herxzT9JuOZVLv4HgENTMInW3BH7hZFD+FEsHewl9gD9+5
 INfJXOuUCF48ngyIYRoN0+YIEGTUtgvQY6K5ehCtDirE8cC7lTarKyfZFA0O9aCiXyfq
 5OLQ==
X-Gm-Message-State: AOAM5307htoh8Pj0E26gbw/Rq4hNWfvhLcJznDiFe/bOFmuEPIU5yKNQ
 MI12Fk0DEU8ARqwneHkOnQOZO72TnNWKfYiMYtIiXYbX9tM=
X-Google-Smtp-Source: ABdhPJztRrxmeJs9WPmirAeCrqx5Ps4ZA2lk88kY5Tb8/qDLwNi8/7pPUO5LpuXXKKI/WQPMgt8vblwAB/6w7KZ8CUw=
X-Received: by 2002:a5d:8cc1:: with SMTP id k1mr2939944iot.123.1591178734621; 
 Wed, 03 Jun 2020 03:05:34 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 3 Jun 2020 12:05:23 +0200
Message-ID: <CAP2eGPhuvqJaWPwE2SwaEfLK3wzRqn9VgT7MEiWO0_ed3t7dRw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] timeouts problems with custom DUC multi channel
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Carlos Alberto Ruiz Naranjo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Carlos Alberto Ruiz Naranjo <carlosruiznaranjo@gmail.com>
Content-Type: multipart/mixed; boundary="===============7178235356149666513=="
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

--===============7178235356149666513==
Content-Type: multipart/alternative; boundary="000000000000405e7905a72b2bfb"

--000000000000405e7905a72b2bfb
Content-Type: text/plain; charset="UTF-8"

Hi,

I have modified the DUC block to do it 2inputs-1outputs. The output is
duc_0 + duc_1.

input_0  ---> duc_0 --->
                                        cadd ---> output
input_1  ---> duc_1 --->

Apparently it works fine, but after 1 second I have timeout problems and
the output is weird.

cadd is the Ettus complex adder (
https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/cadd.v)
3.15LTS

I think that it due the tvalid/tready. If I use (
https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/cadd.v#L23
):

   assign int_tvalid = a_tvalid & b_tvalid;
*   assign a_tready = int_tvalid & int_tready;*
   assign b_tready = a_tready;

a_tready and b_tready are always '0' and I haven't any output. But if I use:

   assign int_tvalid = a_tvalid & b_tvalid;
*   assign a_tready = int_tready; //Independent tready*
   assign b_tready = a_tready;

I have the timeout problems. Why is tready dependent of tvalid?

Thank you.

--000000000000405e7905a72b2bfb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I have modified the DUC block to do it 2inputs-=
1outputs. The output is duc_0 + duc_1.<br><br>input_0 =C2=A0---&gt; duc_0 -=
--&gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cadd ---&gt; output<br>input_1 =C2=A0-=
--&gt; duc_1 ---&gt;<br><br>Apparently it works fine, but after 1 second I =
have timeout problems and the output is weird. <br><br>cadd is the Ettus co=
mplex adder (<a href=3D"https://github.com/EttusResearch/fpga/blob/UHD-3.15=
.LTS/usrp3/lib/rfnoc/cadd.v">https://github.com/EttusResearch/fpga/blob/UHD=
-3.15.LTS/usrp3/lib/rfnoc/cadd.v</a>) 3.15LTS<br><br>I think that it due th=
e tvalid/tready. If I use (<a href=3D"https://github.com/EttusResearch/fpga=
/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/cadd.v#L23">https://github.com/EttusRese=
arch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/cadd.v#L23</a>):<br><br>=C2=A0 =
=C2=A0assign int_tvalid =3D a_tvalid &amp; b_tvalid;<br><b>=C2=A0 =C2=A0ass=
ign a_tready =3D int_tvalid &amp; int_tready;</b><br>=C2=A0 =C2=A0assign b_=
tready =3D a_tready;<br>=C2=A0 =C2=A0<br>a_tready and b_tready are always &=
#39;0&#39; and I haven&#39;t any output. But if I use:<br><br>=C2=A0 =C2=A0=
assign int_tvalid =3D a_tvalid &amp; b_tvalid;<br><b>=C2=A0 =C2=A0assign a_=
tready =3D int_tready; //Independent tready</b><br>=C2=A0 =C2=A0assign b_tr=
eady =3D a_tready;<br>=C2=A0 =C2=A0<br>I have the timeout problems. Why is =
tready dependent of tvalid?<br><br>Thank you.</div>

--000000000000405e7905a72b2bfb--


--===============7178235356149666513==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7178235356149666513==--

