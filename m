Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DACA422B2C8
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 17:42:26 +0200 (CEST)
Received: from [::1] (port=34508 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jydMV-0000cv-8R; Thu, 23 Jul 2020 11:42:23 -0400
Received: from mail-qt1-f178.google.com ([209.85.160.178]:36380)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <andreas.hagstrom@testteknik.se>)
 id 1jydMR-0000C9-Id
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 11:42:19 -0400
Received: by mail-qt1-f178.google.com with SMTP id t23so1595555qto.3
 for <usrp-users@lists.ettus.com>; Thu, 23 Jul 2020 08:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=testteknik-se.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=j/pHS28GOQuy4Zo22GUgRWbdSXAdt2iLW8GSHUJQU8U=;
 b=V9XNONwn1XoE3y7LvnIhR5t4871TyDTQ+WKYLXx8J5x74tUxAUfo7VrsAKtRvdGkt7
 c8UzKqAjVsCDX7zVo+3l9dGGDUwVZlODfVLpquG7b/PhaNJsHSRffumCbWzSSLF1BAz4
 oQT4gLl4ukAsf7gm1AOSkov8DDn+j0nJq7j9E1p/lMeG3fE2mgXU/5/tj6B5LWAnBceK
 eVSHn34yglKtFCLDEkp1NC9ABwVGrM9liGSearqh+4Lcb2HG3A7bifztxEBQ7TF828jF
 3kfffKRmD/y/frOzL5KWHx33lN1KdlVdG5/BXxei//uMqHG4ofmZrDZ5V2CCU6FM7Lfm
 LXPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=j/pHS28GOQuy4Zo22GUgRWbdSXAdt2iLW8GSHUJQU8U=;
 b=VG4ewnUp1+PY15e07i03ljbVtQPzNBbrGdby499lMYehjclqdCDtAMwpcxb9/22YAP
 TbEnWITmVjOYw4Psyr3j3+SI0SGNRl2xXh/Bn/pckZfdnojJgkZPUyHTw3F2e3Jt26dn
 LM0vdlXq8nmwzLoObxo2+opS8HDPybxyHSr8eUvCtH+XUhrflKX/ha9uJ/g9vRtYibxi
 Ik0x+mE4G1ArJczrv4fO1VMpd1iV2PpgYMS5USxphAS9yBoFV9TNf9ZgH1zOvVZUoBrr
 k8Z/jQk9JRDi/gYX0emMxIPEpunSCVGlOU7oyeBglnNrnxaotUZqGGbTKsBOOExVvwBT
 6wng==
X-Gm-Message-State: AOAM531rvpgLQRoKchdUqkKVDVnV/RiMFQ91n8wCqUpulpRWdIS3NbGO
 fqnThKwSJ2bGubOH+Y2ZnrpkgHOylINoaOzqSmBt1c44yUc=
X-Google-Smtp-Source: ABdhPJysLY0Gb5kKEaEoN+orORZ+FnPSNXlnVGNlkJf/klntCwEz54f7S5aMzscsAqHbI0EwONWQBkOTs/5nSO0Ir4M=
X-Received: by 2002:ac8:744a:: with SMTP id h10mr4994772qtr.241.1595518898470; 
 Thu, 23 Jul 2020 08:41:38 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 23 Jul 2020 17:41:26 +0200
Message-ID: <CAKo1dg8S2C+3uQA-Xmdc5E47yLnQRWAsHQWv8ZVAepFyWGLJBw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] C# implementation for uhd_usrp_set_tx_freq in UHD:
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
From: =?utf-8?q?Andreas_Hagstr=C3=B6m_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Andreas_Hagstr=C3=B6m?= <andreas.hagstrom@testteknik.se>
Content-Type: multipart/mixed; boundary="===============4598284700862879738=="
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

--===============4598284700862879738==
Content-Type: multipart/alternative; boundary="0000000000002d163305ab1db196"

--0000000000002d163305ab1db196
Content-Type: text/plain; charset="UTF-8"

Hello, I am trying to use a UHD on a B210 on windows. I'm writing bindings
for c# through P/invoke on the C-bindings of the DLL. I tried to combine
the examples of tx_samples_c and rx_samples_c to see if I can replicate the
results of running the examples.

It's not going great; I can call and connect the B210 through the
uhd_usrp_make function. But the rest of my function calls doesn't seem to
do anything else than return  UHD_ERROR_NONE.

An example of this is calling uhd_usrp_set_tx_freq method. I check the
return value for errors and will get the return code UHD_ERROR_NONE (which
hopefully is fine). And then I check the uhd_usrp_get_tx_freq function the
value is not what I set it to. Whatever a do I cannot seem to be able to
set the frequency to anything.

I treat all the handles as an IntPtr which should respond to an struct*.

Anyone having tips and tricks are welcome!

--0000000000002d163305ab1db196
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello, I am trying to use a UHD on a B210 on windows.=
 I&#39;m writing bindings for c# through P/invoke on the C-bindings of the =
DLL. I tried to combine the examples of tx_samples_c and rx_samples_c to se=
e if I can replicate the results of running the examples.</div><div><br>

</div><div>It&#39;s not going great; I can call and connect the B210 throug=
h the uhd_usrp_make function. But the rest of my function calls doesn&#39;t=
 seem to do anything else than return=C2=A0
UHD_ERROR_NONE. <br></div><div><br></div><div>An example of this is calling=
 uhd_usrp_set_tx_freq method. I check the return value for errors and will =
get the return code UHD_ERROR_NONE (which hopefully is fine). And then I ch=
eck the uhd_usrp_get_tx_freq function the value is not what I set it to. Wh=
atever a do I cannot seem to be able to set the frequency to anything. <br>=
</div><div><br></div><div>I treat all the handles as an IntPtr which should=
 respond to an struct*. <br></div><div><br></div><div>Anyone having tips an=
d tricks are welcome!<br></div></div>

--0000000000002d163305ab1db196--


--===============4598284700862879738==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4598284700862879738==--

