Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A2B280BE5
	for <lists+usrp-users@lfdr.de>; Fri,  2 Oct 2020 03:18:42 +0200 (CEST)
Received: from [::1] (port=34964 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kO9iX-0008Tw-WB; Thu, 01 Oct 2020 21:18:38 -0400
Received: from mail-ed1-f45.google.com ([209.85.208.45]:34181)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <kelvin.lok266@gmail.com>)
 id 1kO9iT-0008Ol-Fp
 for usrp-users@lists.ettus.com; Thu, 01 Oct 2020 21:18:33 -0400
Received: by mail-ed1-f45.google.com with SMTP id k14so59826edo.1
 for <usrp-users@lists.ettus.com>; Thu, 01 Oct 2020 18:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=2JzmMhJiFftwG9ydU6wJVxxMT8/l5C7ULzqbVgmIL2w=;
 b=DEJ7ob2+jkRpAQ8th7kH6fWPIPmxDH7xIxGSjghi/sKUBPLc3T19J63MhC1iJ5W1d6
 uyhsRDuDCXc3KPjKp2J6X3qQ+yyRyainZDUzJ+awkz7mM1KDUVG3k7RKiSOupgJGbZpn
 khiTuns/L9dvBKN2SReTw9YFFtZtPvPaPx2RdSl7JYN7FZVetBNEnuxnHlabHCRGzPbG
 uavk+QUN2rw0eSroyFyOq8PaGrfqW0O+8ppuvfktUyBFw0LJOnvNWZa8q0Hg4dxFPt2L
 NJ0hlq38rqYXnvjP9yWlvdpmIV8Mj5223innMH51sQ6KBp7OCPkRJSqX1aD2mW9A1AeQ
 0JyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=2JzmMhJiFftwG9ydU6wJVxxMT8/l5C7ULzqbVgmIL2w=;
 b=XJBAOg7pY5ceEiZOX3+Ec2VJBQvPUiBT26+NAzQH9SvTLZPWuMLoEyFRpNl1CtlZDB
 ZzJtyxLzNyWT402oVoBOtBixHieie6TktyMhjDUzQo1Xkko63s5btYv2dNGNXoT5+4Sn
 DJoUpCdGa9V2Th/9kMaWUD0UaLUB0l7M107YKQVrObwyCi/b/o70pmU7ZIP1r0TpkVYU
 laFSmErX1H3qcHdRMwbBiNBi95du0oV6pYeAYLyQdtGsylYb60ROHbGwdn5EnBaB0q4u
 NxaytK1AdRwaHfw86yGJRHFQaWlP124GExQeFlzVxZRTiQZcDOo40/TpMSQjp/2L2oPj
 1bZg==
X-Gm-Message-State: AOAM531CxGm52ViegUJuWZJBprPPqwfEbsWu4GIMc1zBXiGC+BOs8MXx
 z/iOA5REnCWPmrjoue9XjVZitcjGKsQ6L9gJLb/w9p1MsCk=
X-Google-Smtp-Source: ABdhPJySMp7I7hxB1sVR40xBxPUJtHvkZJc/vfML/YAUvl5XFqdcf348VKBhQeVEfiSFtMTYbMZbPA2Aw7y3TbyaPEA=
X-Received: by 2002:a50:d5d4:: with SMTP id g20mr10112063edj.169.1601601472084; 
 Thu, 01 Oct 2020 18:17:52 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 2 Oct 2020 09:17:41 +0800
Message-ID: <CACSyVY2dm3ASsdK_b6k1v_CRk3G9J-wdh9_FLWHCZi+JGv=TAg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Loading B210 firmware takes forever (i.e. hang) after
 installing NI-USRP driver
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
From: Kelvin Lok via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Kelvin Lok <kelvin.lok266@gmail.com>
Content-Type: multipart/mixed; boundary="===============6688586857791829652=="
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

--===============6688586857791829652==
Content-Type: multipart/alternative; boundary="000000000000d0bf5205b0a5e612"

--000000000000d0bf5205b0a5e612
Content-Type: text/plain; charset="UTF-8"

I am running on the latest release of UHD (3.15.0.0) from github. Using
Windows 10, installed with the UHD binary installer.

Typically, running ./uhd_usrp_probe takes only a few moments for the
firmware to be loaded onto the USRP. However, recently I have installed
labview runtime and NI-USRP and after that, I am no longer able to use UHD
to communicate to the USRP. Running uhd_usrp_probe or any of the uhd_xx_xx
commands will result in an endless wait for 'Loading firmware image'.

I suspect that installing NI-USRP has resulted in a clash with my UHD.
Anyone have any suggestions?

--000000000000d0bf5205b0a5e612
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am running on the latest=C2=A0release of UHD (3.15.0.0) =
from github. Using Windows 10, installed with the UHD binary installer.=C2=
=A0<div><br></div><div>Typically, running ./uhd_usrp_probe takes only a few=
 moments for the firmware to be loaded onto the USRP. However, recently I h=
ave installed labview runtime and NI-USRP and after that, I am no longer ab=
le to use UHD to communicate to the USRP. Running uhd_usrp_probe or any of =
the uhd_xx_xx commands will result in an endless wait for &#39;Loading firm=
ware image&#39;.<div><br></div><div>I suspect that installing NI-USRP has r=
esulted in a clash with my UHD. Anyone have any suggestions?</div></div></d=
iv>

--000000000000d0bf5205b0a5e612--


--===============6688586857791829652==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6688586857791829652==--

