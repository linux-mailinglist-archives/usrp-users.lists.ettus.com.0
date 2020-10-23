Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 693FF297588
	for <lists+usrp-users@lfdr.de>; Fri, 23 Oct 2020 19:08:45 +0200 (CEST)
Received: from [::1] (port=40346 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kW0YV-0004CX-Vq; Fri, 23 Oct 2020 13:08:44 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:46007)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <danielozer22@gmail.com>)
 id 1kW0YS-00046I-GR
 for usrp-users@lists.ettus.com; Fri, 23 Oct 2020 13:08:40 -0400
Received: by mail-ed1-f67.google.com with SMTP id dg9so2216804edb.12
 for <usrp-users@lists.ettus.com>; Fri, 23 Oct 2020 10:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=z7Ao9tEL3TaE3NuiypwoKTtvwqvaGS0WqoAN7GR65/o=;
 b=nqecPU3SHC+kCIo9B6nyxW1QY2YuhwXB/QAoXoXiZG9vjFfDdVqk5BQ6IjOZmbBr+/
 pv6lADRuqTUX6W7aDFtuRGB79pwP8rYaDL92Pb7v8p/J00aSMgnMxosBDbykT1Ok3L0V
 E5HTWck3HIjm+QTpo+Q9c2FWtCaWUbSMo8PPGOfyo7bgQoAjZdHWCRdDdvmCdZNTJ7EQ
 sQ7XMdgGw8kbQSX1rZF7HtAGmUV5ICJY0ZXahQYs+nf/0CH51LzyZcOp3NZbjiYn0ZhY
 nJGW5pXrnZz0mCUPceA+C3PljU8a8mn+cKus++ujwiTTecBFLq0N+affww75dhroeFTl
 hZxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=z7Ao9tEL3TaE3NuiypwoKTtvwqvaGS0WqoAN7GR65/o=;
 b=h+HwhZPl1iJ3rvXjU5y3go2IBX5iO9BFgttThiXMD8EQxueLf5+Wb+wjB3uu/OqFuO
 Pow97DchHOqRAlMuIwdTiUDSOmLdxo4CATPzs0u8l+vwommpIBWlw5hH7xAjYyFUcsfs
 ZHNu0hpSrdeJtHLe0U8220UboL0vCabYUOEs49JdQ8UxOMlwXgDfuGi2m+Nc3Ic8GYx0
 iLrwdKGYldi1ywjQK+NbzI4siOa6QAVoThh5xv9kMs0H9NGNpngS7QDSpi1BYm6Vq1dg
 wRWKNNAAU24hgGGyk09L6uy6fIdU63Y1gs31IEPidAl6iSiYUhn5aIWwY073qG1NOOjQ
 4qTw==
X-Gm-Message-State: AOAM533rgG1tmywzOAbc872yv5cCFojKUKyYegnOLneLpGx3wE0lAIPz
 8iGPNSq7CDsuJhaYFSjX75hGfsbl92Ua1lUUHBHppsxuUfQ35Q==
X-Google-Smtp-Source: ABdhPJwR/ARLbLV7RZI1uTGURpNNIiYAWWmXdc0sumbcUi7f0gtu+s40sQmG1aqayIT3Xez4URBy56g5u+Iz6zY3Lpo=
X-Received: by 2002:aa7:cf99:: with SMTP id z25mr3210849edx.139.1603472878214; 
 Fri, 23 Oct 2020 10:07:58 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 23 Oct 2020 20:07:38 +0300
Message-ID: <CAE_Rk56YtB8XtRz6m+OSksU6a+VjdeEDS=1s=8-onsEkFz8eTA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] low send data rate - x310- VM
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
Content-Type: multipart/mixed; boundary="===============3893773152433275433=="
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

--===============3893773152433275433==
Content-Type: multipart/alternative; boundary="0000000000005023bc05b2599ff0"

--0000000000005023bc05b2599ff0
Content-Type: text/plain; charset="UTF-8"

Hi everyone,
I'm working on usrp x310 .
After few experiment with the system, i tried to send data from file source
(gnuradio) to my own OOT rfnoc block that do nothing (tready is always on
'1'  and one register that count axi_stream data valid) i saw that the
average send rate to the FPGA is 320KB which is low .
The packet size is on the maximum MTU 1500 .
What can I do to make the Software send data faster ?
my setup is :
usrp x310 connected to a switch(with 1Gb ethernet ) and I'm working on
linux-vm( VMWARE) that is on a windows server that is connected to the same
switch .

thanks in advanced

--0000000000005023bc05b2599ff0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><div style=3D"direction:ltr">Hi everyone,</div><div style=
=3D"direction:ltr">I&#39;m working=C2=A0on usrp x310 .</div><div style=3D""=
 dir=3D"ltr">After few experiment=C2=A0with the system, i tried to send dat=
a from file source (gnuradio) to my own OOT rfnoc block that do nothing (tr=
eady is always on &#39;1&#39;=C2=A0 and one register that count axi_stream =
data valid) i saw that the average=C2=A0send rate to the FPGA is 320KB whic=
h=C2=A0is low .</div><div style=3D"" dir=3D"ltr">The packet size is on the =
maximum=C2=A0MTU 1500 .</div><div style=3D"" dir=3D"ltr">What can I do to m=
ake the=C2=A0Software send data faster ?</div><div style=3D"" dir=3D"ltr">m=
y setup is :</div><div style=3D"" dir=3D"ltr">usrp x310 connected to a swit=
ch(with 1Gb ethernet ) and I&#39;m working=C2=A0on linux-vm( VMWARE) that i=
s on a windows server that is connected to the same switch .</div><div styl=
e=3D"" dir=3D"ltr"><br></div><div style=3D"" dir=3D"ltr">thanks in advanced=
=C2=A0</div></div>

--0000000000005023bc05b2599ff0--


--===============3893773152433275433==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3893773152433275433==--

