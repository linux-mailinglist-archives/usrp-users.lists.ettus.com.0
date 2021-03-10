Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F08F43347D4
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 20:23:37 +0100 (CET)
Received: from [::1] (port=44262 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lK4Qd-0001o1-Uz; Wed, 10 Mar 2021 14:23:31 -0500
Received: from mail-lj1-f177.google.com ([209.85.208.177]:34615)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <lucky.cimon@gmail.com>)
 id 1lK4Qa-0001js-BH
 for usrp-users@lists.ettus.com; Wed, 10 Mar 2021 14:23:28 -0500
Received: by mail-lj1-f177.google.com with SMTP id i26so15462529ljn.1
 for <usrp-users@lists.ettus.com>; Wed, 10 Mar 2021 11:23:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=3Y8Ih7mxqMqELD4cXHRlyBT3sNdYYB+szV7RcDF1OVo=;
 b=cZEB+wB7tsrTJHEJnGDFNrySf2XmXb/wRRE54V9/rVhobbaQsarY+T4+nRuc08hFhY
 rADf4zGkkJrqLCS3p71FmrN4U4ScFfftQyX4Zx4tc5+fOdI4OJBMMRZ7GkdDRWQj5Z+h
 4EwOJhwMDd9LXmFCvCQIORcKUXlPAXr43ytww0LuyrUwhyiX55akGXJQANiqdqluYI/T
 +sjzbp911bqKV7dw6twh0vbB9H8JU7xakSPQO2RUuZq4Nhs1L7gtaZgWrvaBjYs8Wrwa
 6UU5Uq3lE4ibBbBKbk6rqZJ5voZIibh0bNbBa7ogyOL2KNEihe8yWG4ttD3kkegZcmAF
 XuVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=3Y8Ih7mxqMqELD4cXHRlyBT3sNdYYB+szV7RcDF1OVo=;
 b=UIWBwLifjY83ydAaXYUGCn47r4DX4IsX+ocQhTG++LR6IxAHaimnw0p53Eq+vm0YkI
 cF1GOWBVWC1/Br0Eu3EXmMxZmNwx/JfLu2wkhPN4dgT8NLVMs13XuU/gH8vRViuYLk90
 CgrKsTZFDCICHsSuRs3qLC3o+d2vB/cHfjn/bSoMSg760m5gzNePuLQDsE13M6g+2UxM
 97wt4NEpP3BOqPsuYTzjRKwcnDEyxUmxuTFuUuHhKl7o/Ihv7rLlhese6fp3DZEvS2Qp
 PPRbPXzfXMCawSCWncfM9WjAG/Poi5Eil1/p5G4tseG/qZ6vHspbRiv/pXQaCLc1jfe3
 1sGA==
X-Gm-Message-State: AOAM532keFGlhfzFD+r1NkcpPyhKFxtNynw7GZsRPpkWZn4z+jhvL8HB
 c9XrirgnGgzr0uuZuaw4fMQeYYg5XDFQ4r/Lje+UtZuWel4=
X-Google-Smtp-Source: ABdhPJwQjC0Txm9xijl0se/QLfy2nYcKRnNctrWIyYuO/A3rxWXoBvErJKZIo2IAlGzvb+J6KK4I6lAx3CjeGJ1QTnw=
X-Received: by 2002:a2e:b7c1:: with SMTP id p1mr2616358ljo.198.1615404166398; 
 Wed, 10 Mar 2021 11:22:46 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 10 Mar 2021 11:22:35 -0800
Message-ID: <CADj+HFVQ=V6H2WhGr6C_TQB+igv=mifiUjs59DtF3r901S1dAg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] X300/X310: how to control an external TX/RX switch for
 60GHz mm-wave transceiver?
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
From: SungWon Chung via USRP-users <usrp-users@lists.ettus.com>
Reply-To: SungWon Chung <lucky.cimon@gmail.com>
Content-Type: multipart/mixed; boundary="===============7674898142797390469=="
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

--===============7674898142797390469==
Content-Type: multipart/alternative; boundary="00000000000081c43705bd339790"

--00000000000081c43705bd339790
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm working to use X300/X310 as a front-end of a custom built 60GHz mm-wave
transceiver, which needs a digital signal for its TX/RX switch to share a
horn antenna.

What do you think is the best solution?

Any methods are welcome as long as it's a robust solution. Your thoughts
will be much appreciated.

Thanks,
sungwon

--00000000000081c43705bd339790
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto"><br></div><div dir=3D"auto">I&#39=
;m working to use X300/X310 as a front-end of a custom built 60GHz mm-wave =
transceiver, which needs a digital signal for its TX/RX switch to share a h=
orn antenna.</div><div dir=3D"auto"><br></div><div dir=3D"auto">What do you=
 think is the best solution?=C2=A0=C2=A0</div><div dir=3D"auto"><br></div><=
div dir=3D"auto">Any methods are welcome as long as it&#39;s a robust solut=
ion. Your thoughts will be much appreciated.</div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">Thanks,</div><div dir=3D"auto">sungwon</div></div>

--00000000000081c43705bd339790--


--===============7674898142797390469==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7674898142797390469==--

