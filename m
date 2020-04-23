Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC2F1B5AB2
	for <lists+usrp-users@lfdr.de>; Thu, 23 Apr 2020 13:45:27 +0200 (CEST)
Received: from [::1] (port=39610 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jRaIE-0003XT-SC; Thu, 23 Apr 2020 07:45:22 -0400
Received: from mail-il1-f176.google.com ([209.85.166.176]:44410)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1jRaIB-0003TT-7I
 for usrp-users@lists.ettus.com; Thu, 23 Apr 2020 07:45:19 -0400
Received: by mail-il1-f176.google.com with SMTP id s10so5192477iln.11
 for <usrp-users@lists.ettus.com>; Thu, 23 Apr 2020 04:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=g17Thuw9DffsS9gVcy8C9qIyqhG/JwMiXrfYHhKAFDc=;
 b=MKVkkQE2RLjvTq4+bARVli2qQMNnlJVapQNJv+b9PFo1bEbxUACU2bmgc5fwVi4kG2
 fmDUjDsXGRavMG30zOIgVGQqCI4y9Ic5kpxdJheQuRUOb2zoyUc5vsekfwPymCPb4QN1
 oU2eg4Fu4YC5cRMvv+HTLDY0OgfBBgsKYzLVSBx5LpRNrfsnmPorP73cixGGth9SfRCR
 iW82HyHCXAzF0FkyHYm2moHcJ4fx3qOUAs1mXZmfcFS09pe0Trha9lkTitTM9Klj0XZD
 6BqdOTg+9at+m5B+t6mtAZnapZgBQ9jX4F6lrr5LMjJZSpigq5PlIVy8m4mvSomDXpBd
 B4DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=g17Thuw9DffsS9gVcy8C9qIyqhG/JwMiXrfYHhKAFDc=;
 b=V2PhmTTn+RnQrrJNArQzr7XV+fUV5LnqvZ+Xs6akZEcunUnx2SXk9P36bffZUiyojr
 NwXmzTeTgiWe8MEX2XTMB6eTkX3+2Gjla8UCXj1l0efFAY5FPPIBnrsezVlyTA5vw10N
 TCsMN4f6NTpe/+RKFs0VzRJBmquioN4xtuLb5LeSP7UM9HE/gvZtgaCewlLJ5tO40C1Q
 1pOCEFwXEvETixlwHt2WwjqvfQBIuCHDzavAUDOWca3CH3WBzEVHArVyLSSL7uuS+SqQ
 EIWkItjmAs+egYIQGBQz4w2xgyh39nXzQevR3GipcRFOq6D4c3pxVHFb/QbHXkKceUWy
 2Sjw==
X-Gm-Message-State: AGi0PuaJUA4rVkIOR0a3hsmKpCCWcD3CaD4xoidaJCDudM96MaafIqJY
 o01rEcdHlbWHdhjxwsNJ2MGevx0G/oDzQZYTXBe7SWwELPg=
X-Google-Smtp-Source: APiQypIaLLIpMw10XPmYD42xJsBUp7Om5AbJl0Q8Xahe+CgXvMkhHDw8u+pJRj1YCwSjIwnE55jlmIaH7lrb5WMgDy8=
X-Received: by 2002:a92:cf02:: with SMTP id c2mr3018331ilo.259.1587642278281; 
 Thu, 23 Apr 2020 04:44:38 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 23 Apr 2020 14:44:27 +0300
Message-ID: <CAPRRyxsB9xcepkmENm5=nFm+kC7C7UATywaC+k6TgUf2j=N7Dg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Subject: [USRP-users] Download RFNoC image for usrp E310
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
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Content-Type: multipart/mixed; boundary="===============0117582280484649112=="
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

--===============0117582280484649112==
Content-Type: multipart/alternative; boundary="00000000000007097505a3f3c640"

--00000000000007097505a3f3c640
Content-Type: text/plain; charset="UTF-8"

Hello. I am using uhd 3.15 on the usrp e310 board. I want to run
gr-phosphor but when flashing FPGA using
 uhd_image_loader --args type = e3xx --fpga-path / home / adray / rfnoc /
src / uhd / fpga-src / usrp3 / top / e300 / build-E310_RFNOC_sg3 / e300.bit
which is created by version uhd 3.14.1 and uhd_image_builder_gui.py the
following message is displayed
uhd_image_loader --args type = e3xx --fpga-path
/home/adray/rfnoc/src/uhd/fpga-src/usrp3/top/e300/build-E310_RFNOC_sg3/e300.bit
[INFO] [UHD] linux; GNU C ++ version 7.5.0; Boost_106501;
UHD_3.15.0.HEAD-0-gaea0e2de [INFO] [MPMD] Initializing 1 device (s) in
parallel with args: mgmt_addr = 192.168.10.2, type = e3xx, product =
e310_sg3, serial = 31370CF, claimed = False, reachable = No, skip_init = 1
Error: rpc :: timeout: Timeout of 10000ms while calling RPC function 'claim
and then when uhd_find_devices is output, I see this
 -------------------------------------------------- - UHD Device 0
-------------------------------------------------- Device Address:
serial:
claimed: False
mgmt_addr: 192.168.10.2
product:
reachable: No
type

--00000000000007097505a3f3c640
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello. I am using uhd 3.15 on the usrp e310 board. I want =
to run gr-phosphor but when flashing FPGA using<div>=C2=A0uhd_image_loader =
--args type =3D e3xx --fpga-path / home / adray / rfnoc / src / uhd / fpga-=
src / usrp3 / top / e300 / build-E310_RFNOC_sg3 / e300.bit=C2=A0</div><div>=
which is created by version uhd 3.14.1 and uhd_image_builder_gui.py
the following message is displayed=C2=A0</div><div>uhd_image_loader --args =
type =3D e3xx --fpga-path /home/adray/rfnoc/src/uhd/fpga-src/usrp3/top/e300=
/build-E310_RFNOC_sg3/e300.bit
[INFO] [UHD] linux; GNU C ++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0=
-gaea0e2de
[INFO] [MPMD] Initializing 1 device (s) in parallel with args: mgmt_addr =
=3D 192.168.10.2, type =3D e3xx, product =3D e310_sg3, serial =3D 31370CF, =
claimed =3D False, reachable =3D No, skip_init =3D 1
Error: rpc :: timeout: Timeout of 10000ms while calling RPC function &#39;c=
laim=C2=A0</div><div>and then when uhd_find_devices is output, I see this</=
div><div>=C2=A0--------------------------------------------------
- UHD Device 0
--------------------------------------------------
Device Address:
=C2=A0=C2=A0=C2=A0=C2=A0</div><div>serial:
=C2=A0=C2=A0=C2=A0=C2=A0</div><div>claimed: False
=C2=A0=C2=A0=C2=A0=C2=A0</div><div>mgmt_addr: 192.168.10.2
=C2=A0=C2=A0=C2=A0=C2=A0</div><div>product:
=C2=A0=C2=A0=C2=A0=C2=A0</div><div>reachable: No
=C2=A0=C2=A0=C2=A0=C2=A0</div><div>type</div></div>

--00000000000007097505a3f3c640--


--===============0117582280484649112==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0117582280484649112==--

