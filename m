Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 100B223027C
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jul 2020 08:18:18 +0200 (CEST)
Received: from [::1] (port=52152 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k0IwE-0006EF-T0; Tue, 28 Jul 2020 02:18:10 -0400
Received: from mail-wr1-f49.google.com ([209.85.221.49]:41670)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jayant17154@iiitd.ac.in>)
 id 1k0IwA-00067e-6U
 for usrp-users@lists.ettus.com; Tue, 28 Jul 2020 02:18:06 -0400
Received: by mail-wr1-f49.google.com with SMTP id r2so11964316wrs.8
 for <usrp-users@lists.ettus.com>; Mon, 27 Jul 2020 23:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iiitd.ac.in; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=VGGp7aiaaER4gQFX0h//4jVJYD4O89hhNE63+Rx0ACI=;
 b=NaGo7HlUCh6W5w9LKG1qTA6mxifA8yJYwVU7PfjA8TfBhMTZqvUTm1750A+f+JfEkn
 1inznH/WLqLXIm3ojyX3cp1xpfA/1DDEZU4nOi9jcJpb4h+IOTiPWpGxX38xfZHFl+iw
 X/nPE0a37ZJtpJwT8CxIEee1BbbYUWznCeTVs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=VGGp7aiaaER4gQFX0h//4jVJYD4O89hhNE63+Rx0ACI=;
 b=DyYUOXuXl2S3stFNhDVqK20SvCgSaUQekan9bTACIxTgvLHyzJUw9jILiVzvA8GYtF
 h2lj8MidRAoEEbESvKfYSbL/eFWksqBolltApXfYAJp8et5kuGuy0zRbFNo02Ssq0m+S
 xGEZ5fpuLkvHKlKmliEZDyCnY2ZivX3jfGh+ZBAaez8oMnNv1pArkwFJ7IG/Q+YfwA3H
 WZxMH5d8xapryA5iij4Lggmb7+GC30oFkKMhZszLFqBQOnVKakLiOkO9/yf3bvEFUwZv
 sZBmRpIQ+Itxj2VUbodLGz7wnZD9l4Mv1GAX8CjjZm4Qjx8j81oSBtOhc2p1nBTmtFVf
 5vcw==
X-Gm-Message-State: AOAM532pAzF6w+rHCImO5F7vv9mXa72Xtqn1orA5a6sT50jAYTrLz3Mk
 SqcBQAPomDEgYcewZ7BAf1xHit9jog+SJqv9iLMoyp8v
X-Google-Smtp-Source: ABdhPJzbsYDDDONTF5Vv7vKQ5oPM/qYOyMhjjUNdoB58qiXIWSCwsdf8jgwuq50//niuZdKAQu1SCp2cvh67u3ghf0U=
X-Received: by 2002:adf:8b1a:: with SMTP id n26mr24961849wra.182.1595917044582; 
 Mon, 27 Jul 2020 23:17:24 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 28 Jul 2020 11:47:12 +0530
Message-ID: <CAKwrT9SNz7tFqmYrJthCfRUgrHCzqbkKrA+NDPX324NmeSxc-g@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] CHIPSCOPE ERROR (RFNOC)
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
From: Jayant Chhillar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jayant Chhillar <jayant17154@iiitd.ac.in>
Content-Type: multipart/mixed; boundary="===============6252523776115896625=="
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

--===============6252523776115896625==
Content-Type: multipart/alternative; boundary="00000000000088a0e605ab7a64c5"

--00000000000088a0e605ab7a64c5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,
I am trying to generate a bitstream for X310 board with the FFT block along
with few other ettus provided blocks. However, at the time of logic
optimization step I get this error

ERROR: [Chipscope 16-213] The debug port 'u_ila_0/probe1' has 9 unconnected
channels (bits). This will cause errors during implementation.

I=E2=80=99m not able to identify the source of this error. Also, before thi=
s
bitstream generation I did create a bitstream where I used chipscope using
the methode defined here:

https://kb.ettus.com/Debugging_FPGA_images

And was able to do that without any errors. However, since then I have been
getting the above mentioned error.

Thanks

--00000000000088a0e605ab7a64c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi everyone,</div><div dir=3D"auto">I am trying to genera=
te a bitstream for X310 board with the FFT block along with few other ettus=
 provided blocks. However, at the time of logic optimization step I get thi=
s error</div><div dir=3D"auto"><br></div><div dir=3D"auto">ERROR: [Chipscop=
e 16-213] The debug port &#39;u_ila_0/probe1&#39; has 9 unconnected channel=
s (bits). This will cause errors during implementation.<br></div><div dir=
=3D"auto"><br></div><div dir=3D"auto">I=E2=80=99m not able to identify the =
source of this error. Also, before this bitstream generation I did create a=
 bitstream where I used chipscope using the methode defined here:</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto"><div><a href=3D"https://kb.ettus.=
com/Debugging_FPGA_images">https://kb.ettus.com/Debugging_FPGA_images</a></=
div><br></div><div dir=3D"auto">And was able to do that without any errors.=
 However, since then I have been getting the above mentioned error.=C2=A0</=
div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks</div>

--00000000000088a0e605ab7a64c5--


--===============6252523776115896625==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6252523776115896625==--

