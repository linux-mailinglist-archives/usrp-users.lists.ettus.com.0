Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0F022949D
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 11:13:16 +0200 (CEST)
Received: from [::1] (port=48968 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyAoL-0006w9-MG; Wed, 22 Jul 2020 05:13:13 -0400
Received: from mail-ej1-f52.google.com ([209.85.218.52]:41311)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <pbasaras@gmail.com>) id 1jyAoI-0006ql-0N
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 05:13:10 -0400
Received: by mail-ej1-f52.google.com with SMTP id w9so1410533ejc.8
 for <usrp-users@lists.ettus.com>; Wed, 22 Jul 2020 02:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=wWhi2EhIrbv05NoK3BhhEy4h/RpjPAZJDgPb5IsRY/k=;
 b=lIZh5EObkpJSza4BW8Vs8u5N2v+xf9xsOAlwr1afr/KNFq7TFFQtn705pxFhO9I2jr
 17VRA5FYYc7RFPx/Drw2iZGqiwphXknh0y4ZiRf42mNwaW7DPpwaYGzqZguk/zixzDEo
 CX6LAX3+gn4+Ll+aVw3YptNOcEB6j/muDzXQBB/GeQeUdckD+1yWZ2IBOd2ZWfVfuKhE
 4TDFsy5DkspYO/z4Ll9urcseRbbweDTlsbKKfx0A+hdOEk/jKUwDY4OYd2fTBu270sAI
 1CuaJUgf2acP1OoNt2dsAaiyDtWCQwoVmfJFgJcME/z3I1sIFwn+4fko3gO3z6+OndgQ
 XdDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=wWhi2EhIrbv05NoK3BhhEy4h/RpjPAZJDgPb5IsRY/k=;
 b=LEqhy8f8fCY1JrZTM5AqdGqDUbf0OQhPzxXX5tkWUNAaH2KtAv8cvySd01S2u1yyez
 QefJrmiV8P2uXVsjdv2YE8nfw6QhY5KcWOd2oViacBUEoQveILhBB5Gh0a04jhA6g8Hf
 gVyU8q3Rz4u99fTL60QSzb21xebm+prH0QFuIaXJ1Hl8Df84kVLHhcitLqROVueolAlj
 UUPrHQB9hzTbYJYedoFzNu8YA4I7Iok1ZGMJPV1t1ke8m6KnhSqUpwDGiLMamcRFdhqN
 0uLbdZC3Lzrhpecil8yXPmkG12wqvU44pw9/4/fnP8f9W4qmYFIVF4Tej3CBaZnzH5Xz
 Omxg==
X-Gm-Message-State: AOAM532s6G0qr+gbvrBpmeoxS6bWxhk94izcBYWrrshAXO7ewSx1uSiA
 543sG0ObVb9bQH426aUgjmQjUPM4CXMl7lx953fYeYquM5o=
X-Google-Smtp-Source: ABdhPJyhWxbEMGjdgehP8j53B4AcCfXc/0GHZiLpPp+S5/Xh08BSNcDn8G83lq2vN5ZiCJlAW0yH5kuN3mhSPZVWv8g=
X-Received: by 2002:a17:906:48d3:: with SMTP id
 d19mr28499013ejt.180.1595409148450; 
 Wed, 22 Jul 2020 02:12:28 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 22 Jul 2020 12:12:17 +0300
Message-ID: <CAMVZM+_-CjX8EEzSNuAXrLuDTA2BN1d01eMyfnNHLf79Q88fQw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Which ports to secure with RF terminators and how to
 setup loopback testing.
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
From: Pavlos Basaras via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Pavlos Basaras <pbasaras@gmail.com>
Content-Type: multipart/mixed; boundary="===============2984229607090158799=="
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

--===============2984229607090158799==
Content-Type: multipart/alternative; boundary="0000000000009099da05ab0423fe"

--0000000000009099da05ab0423fe
Content-Type: text/plain; charset="UTF-8"

Hello,

i am a newbie to this so i would appreciate all help and pointers for
reading/understanding what i should (please excuse possibly newbie
questions, thanks!).

I have configured 2 usrp n310 devices, following the instructions from:
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide
I am connected to both over all available ports eth0/sfp0/sfp1, and both
"usrp_find_devices" and "uhd_usrp_probe" seem to be working properly.

I would like to proceed with some real testing (
https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UHD_and_GNU_Radio
).

Q1: which TX ports should be secured with RF terminators? Assuming that we
use e.g., only RF 0, all TX ports in the remaining RF1-3 should be
terminated, correct? As we are not currently using any other port from the
front panel (e.g., gps, ref in, trig out, pps ), should these also be
terminated?  What about the daughterboard ports?

Q2:  the loopback configuration refers to using one usrp to test TX/RX,
correct?. So the setup for this testing is a single usrp, and focusing on
e.g., only on RF 0, by using sma-m to sma-m cable with 30dB attenuator to
start testing?

all the best,
Pavlos.

--0000000000009099da05ab0423fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>i am a newbie to this=
 so i would appreciate all help and pointers for reading/understanding what=
 i should (please excuse possibly newbie questions, thanks!).</div><div><br=
></div><div>I have configured 2 usrp n310 devices, following the instructio=
ns from: <a href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_S=
tarted_Guide">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started=
_Guide</a></div><div>I am connected to both over all available ports eth0/s=
fp0/sfp1, and both &quot;usrp_find_devices&quot; and &quot;uhd_usrp_probe&q=
uot; seem to be working properly.</div><div><br></div><div>I would like to =
proceed with some real testing (<a href=3D"https://kb.ettus.com/Verifying_t=
he_Operation_of_the_USRP_Using_UHD_and_GNU_Radio">https://kb.ettus.com/Veri=
fying_the_Operation_of_the_USRP_Using_UHD_and_GNU_Radio</a>).</div><div><br=
></div><div>Q1: which TX ports should be secured with RF terminators? Assum=
ing that we use e.g., only RF 0, all TX ports in the remaining RF1-3 should=
 be terminated, correct? As we are not currently using any other port from =
the</div><div>front panel (e.g., gps, ref in, trig out, pps ), should these=
 also be terminated?=C2=A0 What about the daughterboard ports?<br></div><di=
v><br></div><div>Q2:=C2=A0 the loopback configuration refers to using one u=
srp to test TX/RX, correct?. So the setup for this testing is a single usrp=
, and focusing on e.g., only on RF 0, by using sma-m to sma-m cable with 30=
dB attenuator to start testing? <br></div><div></div><div><br></div><div>al=
l the best,</div><div>Pavlos.<br></div></div>

--0000000000009099da05ab0423fe--


--===============2984229607090158799==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2984229607090158799==--

