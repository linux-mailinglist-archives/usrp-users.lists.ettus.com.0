Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EE78A58A
	for <lists+usrp-users@lfdr.de>; Mon, 12 Aug 2019 20:20:24 +0200 (CEST)
Received: from [::1] (port=37146 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxEvd-000066-9U; Mon, 12 Aug 2019 14:20:21 -0400
Received: from mail-lf1-f43.google.com ([209.85.167.43]:38029)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <erivelton.thalesgroup@gmail.com>)
 id 1hxEvZ-0008PN-Sy
 for USRP-users@lists.ettus.com; Mon, 12 Aug 2019 14:20:18 -0400
Received: by mail-lf1-f43.google.com with SMTP id h28so74817599lfj.5
 for <USRP-users@lists.ettus.com>; Mon, 12 Aug 2019 11:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=DbC2/tMOAmN5hdfSfGcPFc1spLi0FLug6wZzvO6R86Q=;
 b=miY98Roa62/0SfRzi2/hIq9rtafvOTQbel5b4QMW60HnGcwaSGqCRIUsvQ4iSC2Jsa
 fBGFdbnd34xGLsflWmIR8Vc6kRZnj6ZYRKsdU07Zz0Lunk8nZG8K94hZf7Emm7oNZAqs
 QWPzbugr8Sqojoi++BVx8+u07fVYmn/EzXKNvh0FBUL5KhGS5GEi6Yv4WUqskaejPxTX
 EnHeVDdu59JFnwh9K+xlBuLCcYxEje/ev4dc+wdYqukLAyk+Xu6qi9DEoda0dHe7LVV6
 Qza9PLwPIKeNcW4Qhuw1mAwWSfgak7RmPPUXKZbgnR8wReUq5nTKp71uVQKqyL3gSbTO
 81KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=DbC2/tMOAmN5hdfSfGcPFc1spLi0FLug6wZzvO6R86Q=;
 b=TXte9N1txojZKkY0LmC/OegPSk5Z/uydGkU+a+a2FvYpbjOFo7RHhz5HJheHqGpUCu
 PYdOcQvlY8T25xbfcRvLecOSZg04Xc8Faby0JD095XHVY3MeaaWVbtz+kSRgm4GJ5MlS
 LgOdqVEk9wqPZvyDV7LW8ehSwF7tNGt5P4hS7Yt3pDFkSfQECRNs24jzz5Af9SgiXR83
 wFx0Xs8WJRRPp0NjaJPtHyfmYcB4x9MmXu0ctuPu7cWgCKOW0RjEZXU492oqh+Ja9mpD
 /8odjZasY5HOonMXZvd6Qc2bsaOcfO3UnleyESeyKJJREy+xz0X1ylLQmW5fzRR2nIsX
 qbxw==
X-Gm-Message-State: APjAAAVtUdQXV5hkBUrv+IMijVxXhay2EGg/DtgdAR+B+D2N9CDzy/l9
 PgSBQcPPvCqRfrpIMVO1QlYo+/wcVWOmf5U04um+HNDQcLM=
X-Google-Smtp-Source: APXvYqzXIm3FpZVOCzVD9veqaAaYUiPnG3eRlz63vJKx3OE3+d4zZS0x7d/9SCA56UBHk98H4AJkYGGENvzw8W9RORk=
X-Received: by 2002:a05:6512:c1:: with SMTP id
 c1mr21729267lfp.35.1565633976410; 
 Mon, 12 Aug 2019 11:19:36 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 12 Aug 2019 15:17:34 -0300
Message-ID: <CAGBdiianOWQ0u0ysi-vg-zUbaL9d7+f0RPDLmQMBYvt6mqF=mA@mail.gmail.com>
To: USRP-users@lists.ettus.com
Subject: [USRP-users] N310 Embedded Linux Interruption
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
From: Erivelton Castro via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Erivelton Castro <erivelton.thalesgroup@gmail.com>
Content-Type: multipart/mixed; boundary="===============1540096225303707027=="
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

--===============1540096225303707027==
Content-Type: multipart/alternative; boundary="000000000000032747058fef9191"

--000000000000032747058fef9191
Content-Type: text/plain; charset="UTF-8"

Hello People,

Could you help me about the embedded N310 Linux. My component in the FPGA
block project has simple data to read through the IRQ event on the ARM
processor. How can I build the API / Device Driver on linux to handle
interrupt for my C / C ++. Could you help me about the embedded N310 Linux.
My component in the FPGA block project has simple data to read through the
IRQ event on the ARM processor. I created a simple GPIO peripheral with
interrupt to ARM. How can I build the API / Device Driver on linux to
handle interrupt for my C / C ++ application to read this data by GPIO? Are
there any examples using the UHD API to read data using tpplication to read
this data? Are there any examples using the UHD API to read data using the
interrupt event?

Best Regards,

Erivelton Castro

--000000000000032747058fef9191
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello People,<br></div><div><br></div><div>Could you =
help me about the embedded N310 Linux. My component in the FPGA block proje=
ct has simple data to read through the IRQ event on the ARM processor. How =
can I build the API / Device Driver on linux to handle interrupt for my C /=
 C ++. Could you help me about the embedded N310 Linux. My component in the=
 FPGA block project has simple data to read through the IRQ event on the AR=
M processor. I created a simple GPIO peripheral with interrupt to ARM. How =
can I build the API / Device Driver on linux to handle interrupt for my C /=
 C ++ application to read this data by GPIO? Are there any examples using t=
he UHD API to read data using tpplication to read this data? Are there any =
examples using the UHD API to read data using the interrupt event?</div><di=
v><br></div><div>Best Regards,</div><div><br></div><div>Erivelton Castro<br=
></div></div>

--000000000000032747058fef9191--


--===============1540096225303707027==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1540096225303707027==--

