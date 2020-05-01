Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 744591C19CB
	for <lists+usrp-users@lfdr.de>; Fri,  1 May 2020 17:39:07 +0200 (CEST)
Received: from [::1] (port=39806 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jUXko-0003e5-Jz; Fri, 01 May 2020 11:39:06 -0400
Received: from mail-wr1-f44.google.com ([209.85.221.44]:35994)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <miscengr@gmail.com>) id 1jUXkk-0003So-K4
 for usrp-users@lists.ettus.com; Fri, 01 May 2020 11:39:02 -0400
Received: by mail-wr1-f44.google.com with SMTP id d15so11953495wrx.3
 for <usrp-users@lists.ettus.com>; Fri, 01 May 2020 08:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=QnqUYnRZ520RROoJY2E7vF5y5jCM47bEuICWLCCTfFE=;
 b=BsXTGqoUr5ZQ4Qx4QRk9Lh+jVIx3OT9SrlMWh1sdoTEAvjMtwln+Z1zwmjUPG6tq5Q
 MiIibf85YwoD40cSqLUNJNHCHdIjTHdeQY6pFVI1soEMuuj7W3yzqmU6efJ8jom7bun0
 76a3ICjyerT4+5FiLfarm8tO6vdy+41YUfGqlM3b6NEGw3DbhjyWquncN4UrKYs9IbbV
 Y8jJQR9LGLVV4qzT27Bz0TlsU+RVKJC2Y3tP+AEcHSfyeeScoyeyQX1p6w+uQ0v8dQjj
 gLsDduNJtauX4zIx2EnBicmumk7oVTrgFG79RxCrRnOm69CuY/NQdSHny9HGKH01WWvH
 tR9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=QnqUYnRZ520RROoJY2E7vF5y5jCM47bEuICWLCCTfFE=;
 b=FzqSCP21bbUHxhTLgp0YPNpj3Y1nleCj7J1fHoM1BgDK/u0RYup6MHQvclEnE2MM6s
 LmPQ6jQFTkEXyVlr+14zhBwMl2RuvAavdsbqCPQkx/oo5XzFEu7AdNzAAwr94hBBJnZq
 cLbmQA2p3EHoI/L7zbp6TX7ABw6ATxPbpzwamFZ2zM+7ACPgEyibfm/QaTQiEveKEUqA
 RSGuiy9q851KhpfnhrNMvbqgdfwmBnapOv88+Ybe3RQA39QWqQEjfgN0maYteIqm45gv
 9dioBL5OAW+U8+egb02gYGVNsuaGecpG8yolNcrSQtl5jJg4bUzo9kQLgNVOEAZhfgeG
 y/Kg==
X-Gm-Message-State: AGi0PubHICyKlTzzwmgmJbvul3N3EkQdCOamyiEeUWIfQwbEdLsWBk6h
 D0IsMWzdYr6c/RJi5zw4jIkm7dKj1u1HUOyH9UnQaTe22ZU=
X-Google-Smtp-Source: APiQypKebjkyLr7OZHfVr2BIq4FHHW7h8Yl1jZmbGoJdoxQkrBAVZghBdpr8x2ACfSAjFkUKGevycvv/xn8qe3fCpz8=
X-Received: by 2002:adf:a151:: with SMTP id r17mr4563090wrr.161.1588347501394; 
 Fri, 01 May 2020 08:38:21 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 1 May 2020 11:38:10 -0400
Message-ID: <CAPCkAAe1o60xat4LmhTj8=vfmjnTQYjvz9MM2--umEHV3xHGJA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] B2xx DDC Gain Adjustment
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
From: Misc Engineer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Misc Engineer <miscengr@gmail.com>
Content-Type: multipart/mixed; boundary="===============8153437263190260548=="
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

--===============8153437263190260548==
Content-Type: multipart/alternative; boundary="00000000000099bfcc05a497f8b7"

--00000000000099bfcc05a497f8b7
Content-Type: text/plain; charset="UTF-8"

We are using the B2xx USB based radios in a system.  In certain cases, we
are in an environment where there is significant power in a interfering
signal that significantly suppressed by the filtering (CIC) within the
DDC.  Near the output of the DDC there is a set of gain multipliers for
both quadrature components.  The gain is controlled by scale_factor which I
believe is controlled via the setting register at SR_RX_DSP (BASE) + 1 =
145.  In the host UHD code I believe I have found the section that
manipulates this scale factor in comprised of code in set_host_rate and
update_scaler.  I have a few questions regarding manipulating of this
scaler.  We would really like to use the existing gain compensation blocks
so this functionality doesn't required additional host processing if this
is an option.

1. Is _host_extra_scaling applied in the host in UHD or is it left up to
the user to perform such compensation in GNU Radio etc?  If it is the
latter how is this information retrieved via the API?

2. Does UHD expose any method to directly manipulate scale_factor of the
DDC either by FPGA register peeks and pokes or through the API?

3.  How does one access FPGA registers including the USER Registers?  Does
this require modification of UHD or is this functionality available in the
distributed version of UHD for the B2xx series of radios?

Thank you,
Andrew

--00000000000099bfcc05a497f8b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>We are using the B2xx USB based radios in a system.=
=C2=A0 In certain cases, we are in an environment where there is significan=
t power in a interfering signal that significantly suppressed by the filter=
ing (CIC) within the DDC.=C2=A0 Near the output of the DDC there is a set o=
f gain multipliers for both quadrature components.=C2=A0 The gain is contro=
lled by scale_factor which I believe is controlled via the setting register=
 at SR_RX_DSP (BASE) + 1 =3D 145.=C2=A0 In the host UHD code I believe I ha=
ve found the section that manipulates this scale factor in comprised of cod=
e in set_host_rate and update_scaler.=C2=A0 I have a few questions regardin=
g manipulating of this scaler.=C2=A0 We would really like to use the existi=
ng gain compensation blocks so this functionality doesn&#39;t required addi=
tional host processing if this is an option.<br></div><div><br></div><div>1=
. Is _host_extra_scaling applied in the host in UHD or is it left up to the=
 user to perform such compensation in GNU Radio etc?=C2=A0 If it is the lat=
ter how is this information retrieved via the API?<br></div><div><br></div>=
<div>2. Does UHD expose any method to directly manipulate scale_factor of t=
he DDC either by FPGA register peeks and pokes or through the API?</div><di=
v><br></div><div>3.=C2=A0 How does one access FPGA registers including the =
USER Registers?=C2=A0 Does this require modification of UHD or is this func=
tionality available in the distributed version of UHD for the B2xx series o=
f radios?</div><div><br></div><div>Thank you,</div><div>Andrew<br></div></d=
iv>

--00000000000099bfcc05a497f8b7--


--===============8153437263190260548==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8153437263190260548==--

