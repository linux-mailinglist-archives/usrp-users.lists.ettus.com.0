Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D5C168828
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2020 21:16:17 +0100 (CET)
Received: from [::1] (port=60646 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j5EiX-0004xn-Nr; Fri, 21 Feb 2020 15:16:09 -0500
Received: from mail-io1-f50.google.com ([209.85.166.50]:42428)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1j5EiT-0004ra-UJ
 for USRP-users@lists.ettus.com; Fri, 21 Feb 2020 15:16:05 -0500
Received: by mail-io1-f50.google.com with SMTP id z1so3691935iom.9
 for <USRP-users@lists.ettus.com>; Fri, 21 Feb 2020 12:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=3NxN1jfoTDHCnbdNokRxQx8GpmS4L7VIiu6vKA+yJ18=;
 b=OQbdXBhK4z0I9bg46yDDv6weKr32iJLesRwFz83cF/1FFKfjklcJ1IQT//yZ3XP3+L
 MktHuRpqL5/sgs1zxBjc8FcKEVIbgdeeWqKrtFzSatxg9pYoAuu+KNWXZ8/Che+kO/En
 tGtdxOnc8WFG6S7Rf607A9T1gWucAj870SeaHXFeq/DzoyxAEeRcyvxpXO5lnAOI/njF
 wJXzWJ8Dx9bCNhFXukZ+Fg1LmqBPQG/prS4TjtDIWlcgt0YyGCN3dbtnfHn+8sH7zGS+
 R4Iuh5JQb2sinoKV7iiAWaMTYphQMIxTUBIB910n6lDS/QvRHrf5ZdYxgy114hBCEehQ
 vsKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=3NxN1jfoTDHCnbdNokRxQx8GpmS4L7VIiu6vKA+yJ18=;
 b=XRCOoZHwaGFCCJcSI6tC0NEVSKr3IqGC39SJSqIQcvelb0Hw6+X6ZhzoGWea8jQkPw
 x5bZtQcjH7mfPbwPBPPZiKdzCddqx+4xuXNTpj6OimsgRWaiQsbB6GZHgJa+NkzGsBI2
 QMGPTFqUFQ0rnV9bcBrWaVOgREwYLO47i3IbaAzrETsCRR3Av+JQgEsMMDcjpLOt15DZ
 4btXBsfGnQgsmCQgntQEAlFdfQK+U5tn6PmTivcxFyTMGdPFa3cDAWFnAg0dhxtN1ezl
 +JqGwKAURTtAdhETah6pfTXluc2TaC01gqNhk6huGvGKzJb03cdOahyMY7z7WyxHsZ9y
 XWCg==
X-Gm-Message-State: APjAAAWAvfNMAOojJq5TS+kNZAO7k/b7++42pHgyhFj0uD/PhXOJlyof
 boALMtmmi/YA9T3fcmxkTyPI8tyTTcU+ITod3qGtpQ==
X-Google-Smtp-Source: APXvYqzD98e8kY5eMlDct8KrQ28fjCt5/HkfqlPyK687+U06PaaYVes1Egl7OUuUlbbmM3l/+/kNEcKnxOOcZbmuoFY=
X-Received: by 2002:a02:9469:: with SMTP id a96mr34717429jai.52.1582316124913; 
 Fri, 21 Feb 2020 12:15:24 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 21 Feb 2020 12:15:04 -0800
Message-ID: <CA+JMMq-fdsxg05hjVTtN2PZuMYjZ0XRLQ4R8jYTrTL8qrB5mOg@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Subject: [USRP-users] Block parameters in NOC block testbenches
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Content-Type: multipart/mixed; boundary="===============6856862183155030193=="
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

--===============6856862183155030193==
Content-Type: multipart/alternative; boundary="0000000000008c4da8059f1bae47"

--0000000000008c4da8059f1bae47
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm wondering if there's any good way to instantiate blocks in testbenches
with testbench-defined block parameters. The macro `RFNOC_ADD_BLOCK takes
care of defining all the NOC bus interfaces, but there's no place to define
block parameters.

Say I have a NOC block which takes a parameter N_TAPS. How can I
instantiate the block in the testbench with a testbench-defined N_TAPS
parameter without setting it as the default in the block's module?

Nick

--0000000000008c4da8059f1bae47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I&#39;m wondering if=
 there&#39;s any good way to instantiate blocks in testbenches with testben=
ch-defined block parameters. The macro `RFNOC_ADD_BLOCK takes care of defin=
ing all the NOC bus interfaces, but there&#39;s no place to define block pa=
rameters. <br></div><div><br></div><div>Say I have a NOC block which takes =
a parameter N_TAPS. How can I instantiate the block in the testbench with a=
 testbench-defined N_TAPS parameter without setting it as the default in th=
e block&#39;s module?</div><div><br></div><div>Nick<br></div></div>

--0000000000008c4da8059f1bae47--


--===============6856862183155030193==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6856862183155030193==--

