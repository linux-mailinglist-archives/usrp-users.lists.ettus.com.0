Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5DE9DC49
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2019 06:05:25 +0200 (CEST)
Received: from [::1] (port=40922 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i2SjP-0000U2-LY; Tue, 27 Aug 2019 00:05:19 -0400
Received: from mail-ed1-f54.google.com ([209.85.208.54]:37764)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <timothy.kurp@gmail.com>)
 id 1i2SjL-0000P4-Qa
 for usrp-users@lists.ettus.com; Tue, 27 Aug 2019 00:05:15 -0400
Received: by mail-ed1-f54.google.com with SMTP id f22so29408585edt.4
 for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2019 21:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=WEmtOHMrn/weNRo5rbQKVR1jcZQIOrQvxwfsUVgVHJ4=;
 b=BVzu/nzLeqSleT03eGzyvpYmjnGu7VEoFfQWsmS5Ac8w+PtkNQXGqzpyappyOrT+bN
 zgk4dTJh8AbjewaV3UyCX/lKy+mxR5f1+RYqrp3fJxm7dsywgpOXv+F85t29cxupIO1o
 6ePjeJAhDCvbuetjQ+GkQHxZf0p+O9A1kDQwjbL6LCY/j/TAvel82IP+HYWLt3GqUWyg
 ZrYFYs3hDAL3mABhnZNe2QRxaAYAtQBnt/+qeliajr7pz/7dQWbJ6+Z/yViDBLxpjMcS
 XshqfAVzU+tk3RPQ/Nl0PQC4eWPdvdV5TIA0ZhFUfdHe+Dm1XKB9h6Nu18GhW3jK+HPT
 BADA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=WEmtOHMrn/weNRo5rbQKVR1jcZQIOrQvxwfsUVgVHJ4=;
 b=A/v4kT1Rwrnf/teKibeLuOboqKsc5ur5NlcNvKkhoQ/Z+rEZlBVX8/c2Kwy1Zd7eBk
 Tm4AcNXXzBUurXkEiPfQ+P+YcEUQsOVVt1PNUw/BVzb0WqII1VNRnGUjo6WUL/9faa6q
 o9NrBvx+qOjPrtdrnjVldJEyyiff0VJnuRB8KQQfABXMY7GjccLP4Ps81RPerEBilZQ9
 b850pD6Qid/YIAr/3WD34PYEjvhi7PLBkRX5dj+gPxSgZpK6vrR1vVB9CrcVxghZjrC3
 KfE3zweNy1UleD3jQBOn78heBBUnrIy0y5qh9HCp+/ks8PQ1dYk4+ZVSLhLcjruZ8Hkl
 PXbg==
X-Gm-Message-State: APjAAAXQCmesZB/OE7fDk2HIHfRjkV/bB0jopPNjEMXaCKOtueONvw/x
 zhrLc1nqUZHD7NUsB5aE0F7nIxM1QTA2lJEvNzw1Bg==
X-Google-Smtp-Source: APXvYqxTu2VeaVL3iC4A6mTQI6hhypdcnS1ObyQePMiBbn/CzbBMwaf7ENcJa0j2OhIwqrAi9Qgl15tLF0XlzVsyQ1c=
X-Received: by 2002:a17:906:4ed8:: with SMTP id
 i24mr19161305ejv.312.1566878674535; 
 Mon, 26 Aug 2019 21:04:34 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 27 Aug 2019 00:04:23 -0400
Message-ID: <CABsifTm54UOtwEfSp8nEzTTw2518qHqSBj7fbZsB-fvvbNxGkA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] RFNoc Testbench / EOB
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
From: Timothy Kurp via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Timothy Kurp <timothy.kurp@gmail.com>
Content-Type: multipart/mixed; boundary="===============7804998669329593909=="
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

--===============7804998669329593909==
Content-Type: multipart/alternative; boundary="000000000000cd47230591115e99"

--000000000000cd47230591115e99
Content-Type: text/plain; charset="UTF-8"

Hey Users!

I think this may be a possible deficiency in the test bench architecture,
or perhaps I just don't know how to instrument it properly. I have a custom
block that performs a 2:1 rate change roughly, performing compression of
the 16 bit I/Q from the radio down to a 16 bit word that is compressed, I
won't describe how. There is a corner case if EOB occurs when there is an
odd number of samples received from the radio. I have handled this by using
simple mode = 0, manipulating cvita header manually and throwing tlast to
make packets, with success. The noc block works, but I am struggling with
how to exercise the corner case in the testbench.

From what I have seen, the testbench only allows for EOB to be manipulated
on sample counts that are a multiple of 2 (send() operates on 64 bits, or 2
samples of 16 bit I/Q). We have looked at the source and there doesn't seem
to be an easy way to throw EOB/TLAST on odd samples.We also think it is not
guaranteed that this will never happen from the radio. Thoughts?

Tim

--000000000000cd47230591115e99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Users!<div><br></div><div>I think this may be a possib=
le deficiency in the test bench architecture, or perhaps I just don&#39;t k=
now how to instrument it properly. I have a custom block that performs a 2:=
1 rate change roughly, performing compression of the 16 bit I/Q from the ra=
dio down to a 16 bit word that is compressed, I won&#39;t describe how. The=
re is a corner case if EOB occurs when there is an odd number of samples re=
ceived from the radio. I have handled this by using simple mode =3D 0, mani=
pulating cvita header manually and throwing tlast to make packets, with suc=
cess. The noc block works, but I am struggling with how to exercise the cor=
ner case in the testbench.</div><div><br></div><div>From what I have seen, =
the testbench only allows for EOB to be manipulated on sample counts that a=
re a multiple of 2 (send() operates on 64 bits, or 2 samples of 16 bit I/Q)=
. We have looked at the source and there doesn&#39;t seem to be an easy way=
 to throw EOB/TLAST on odd samples.We also think it is not guaranteed that =
this will never happen from the radio. Thoughts?</div><div><br></div><div>T=
im</div></div>

--000000000000cd47230591115e99--


--===============7804998669329593909==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7804998669329593909==--

