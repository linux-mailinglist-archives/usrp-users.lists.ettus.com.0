Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEEC240679
	for <lists+usrp-users@lfdr.de>; Mon, 10 Aug 2020 15:13:18 +0200 (CEST)
Received: from [::1] (port=36258 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k57c0-000554-KK; Mon, 10 Aug 2020 09:13:12 -0400
Received: from mail-qk1-f171.google.com ([209.85.222.171]:34207)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dapodun@gmail.com>) id 1k57bw-00050v-QU
 for usrp-users@lists.ettus.com; Mon, 10 Aug 2020 09:13:08 -0400
Received: by mail-qk1-f171.google.com with SMTP id x69so8236605qkb.1
 for <usrp-users@lists.ettus.com>; Mon, 10 Aug 2020 06:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=H3S+IJAG7S6/97BifThBZr383tLgXyY8nhoxcAl/Gqc=;
 b=KDmiJTLWr/7yt8lkNTX7HBGDDgosXS6e0juf4UZ41N0dJZlboxDbZERB+bMLuGzlml
 5rptcxhViYLq+CD3NOvdzseDZZxnNniF4dcf/ASvNt02+BQhwORcFhotgM85UN10AT+c
 j/r1aKN4LxHoauXs4Stw9t/ulLoXsKMb44b1ObHYEB+mtc3Us1VqvlbTXLzhv2UK2qC2
 +vDaLrHZ9qZMiRKosOdgxv4pHUiWV5XKe4/yyVNros6fJ0BCguvPVCgcnV7+zv/NGCd3
 zpqs7VF6sbcL//skC3pxeJxpY7MeSs694RNMQbje9NT1vEG/H3ks+GGRrq3vNKKwtd5V
 GgZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=H3S+IJAG7S6/97BifThBZr383tLgXyY8nhoxcAl/Gqc=;
 b=O/p56qexgz5mIgQAmT4QfG5kN7azTbhLN0x0IWLOrUsbPdi4VATpve7SSwBW+uqtcc
 hNW8N7Rppadw9/k+5i22znHNyhRzJO4JGMpmrL8TXwtyrEIsfq2NbRC8To4tBKd5Ieh5
 TVEQ4MFf1M4HHR+oHhKIcC9d08+gQVfomFbCFAN0DcChmtjhoMHHIOKikHejf06YWn57
 1p0iBFKmqWOfdVawMXLL4ngWKZ/hMN+c7OOCVJseXwPIQcmgb3AmWnLfJ7bHw5H3sWwi
 sGLxBq0Uq+762qYW42LqiRBW+UYNR/56Uurnv8pX5F+yJu+NZlkAa8v0LPFrRYUll4uh
 U7Xg==
X-Gm-Message-State: AOAM533ihAEgg4zJYl7TgGqLl3/RgZKJGg7x0kGmwBILrJ3n0pUB5jjS
 pVylyTkdDdHwDLzYLnuJAudCCtBgyzYuTtb5Cw+pkWUE
X-Google-Smtp-Source: ABdhPJxWJ+Yue3ymQhVmur3roL8BVGTwcB6f3AKCIfs8T3EybQOFnO5CMthCxwoiS478J2xafa5d7glu6Uj586APodA=
X-Received: by 2002:a05:620a:c16:: with SMTP id
 l22mr25258463qki.271.1597065147764; 
 Mon, 10 Aug 2020 06:12:27 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 10 Aug 2020 21:12:16 +0800
Message-ID: <CAHH7kPZ0J2GCKJ_cC2BhCNSQUvTtKktA7aGn-85pnhEt8rErag@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] adaptive modulation using USRP
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
From: dapodun nudopad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: dapodun nudopad <dapodun@gmail.com>
Content-Type: multipart/mixed; boundary="===============8828521503789284057=="
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

--===============8828521503789284057==
Content-Type: multipart/alternative; boundary="000000000000d0d49805ac85b472"

--000000000000d0d49805ac85b472
Content-Type: text/plain; charset="UTF-8"

Hello everyone,
I am looking towards how to make a flowgraph to detect when received signal
strength is below -20 dB for instance. It'll automatically change
modulation techniques to a low-order modulation (QPSK) and when more than
-20 dB (say -10 dB). It'll take a high modulation technique (16QAM).
May I know if anyone is working on this. I am willing to learn and
contribute as well.
Thank you.

--000000000000d0d49805ac85b472
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everyone,<div>I am looking towards how to make a flo=
wgraph to detect when received signal strength is below -20 dB for instance=
. It&#39;ll automatically change modulation techniques to a low-order modul=
ation (QPSK) and when more than -20 dB (say -10 dB). It&#39;ll take a high =
modulation technique (16QAM).<br></div><div>May I know if anyone is working=
 on this. I am willing to learn and contribute as well.</div><div>Thank you=
.</div></div>

--000000000000d0d49805ac85b472--


--===============8828521503789284057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8828521503789284057==--

