Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE3442E162
	for <lists+usrp-users@lfdr.de>; Thu, 14 Oct 2021 20:34:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 150B43844A3
	for <lists+usrp-users@lfdr.de>; Thu, 14 Oct 2021 14:34:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=umich.edu header.i=@umich.edu header.b="O1ly5mvX";
	dkim-atps=neutral
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 3B0A5384466
	for <usrp-users@lists.ettus.com>; Thu, 14 Oct 2021 14:33:25 -0400 (EDT)
Received: by mail-lf1-f50.google.com with SMTP id r19so29812648lfe.10
        for <usrp-users@lists.ettus.com>; Thu, 14 Oct 2021 11:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umich.edu; s=google-2016-06-03;
        h=mime-version:from:date:message-id:subject:to;
        bh=IxwLjRDaMLTtjUjNvJmr2+8S1dc2VsCg2AcaQoZM/U0=;
        b=O1ly5mvXsCexdPqv5bqrbZcr7Gl+HflxRYUnhwD5ZQWzvrOf18I6zyns9din9VwpWg
         9MfboaRPL4QIeQEc9NGJxHKAk32RVN4i3fLsQZcn6/yLapj6ZVrrm16xar8IZhzWyGwO
         RXPEkw+CVvIL2hQHS8cc2ZKmkc55vTODdz4K72ZHdkIBxdalcP9z0Rqiaf/ChYtyFNVH
         Vt+6gHO/CDalSsbDFtAa1eBMIJvzCLQeeQsrlZLN6FiIUjm0lcWD7EtFCJkctILGC3A2
         JzHVUpfcdoCVs2nDsMZ6q2NT4kgIc1fFC3e2viHFAZU1vdt9yYhRf5R32lDpCUYw+C+S
         /w1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=IxwLjRDaMLTtjUjNvJmr2+8S1dc2VsCg2AcaQoZM/U0=;
        b=1OfJJGv1zFRxpgSB7EC0+8kfhdyE6v8xi0w3XwgGn5v/F8putGdmgqauK1qEJBou7e
         CxPZTb3586AXRcEzeKQxt4/NRit0q4kyPF+eQ1JAbByMYswVxJ/Z/+7bVsm698SSQDXL
         YFhYA9C+gFtRc2gZOlBqhKFoJTnSEK9S7A893tU41zcB3Yi8EKYITqiaa5aIeGnBa15k
         l+lyzkUd+JqpFEZ2jYFPJocrUvh1o+Nf8nZoghrQ7PVlmmu1e4ruwQln542TjnX+xDaU
         W2BAt/bNQKqH2ci5NRCpUNEgJ8ITGJz3hTO8hkTVXFzstInAhwjRDP6IkpYNOqYrIpfJ
         /7Fw==
X-Gm-Message-State: AOAM530QsWs9/WI4LCvxb1NAmilp6AYj5SpqVwf4oYtwcl+Lac8yjV8p
	nR44Q4i5pJbtZbV7hJd8SyyLlUS5sr9m5qCIKzzTAMzeAZc=
X-Google-Smtp-Source: ABdhPJzWWXl2wyDPTuK5wCagEcxiTdgxJ23DewwUm48c1kllAx6m3OojmL/gaHwsvltx16rZNNEhAuWnMfwCcsnB4i0=
X-Received: by 2002:ac2:4157:: with SMTP id c23mr6414683lfi.184.1634236403182;
 Thu, 14 Oct 2021 11:33:23 -0700 (PDT)
MIME-Version: 1.0
From: Achilleas Anastasopoulos <anastas@umich.edu>
Date: Thu, 14 Oct 2021 14:33:07 -0400
Message-ID: <CAErymBgdKeG9dKdwN_LTmYW0=gXTvO+POuGZ6Ge9VOkk5X33aw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: RAJPY3LRRL7RKFK5Q3ZGNI2WQR45NULO
X-Message-ID-Hash: RAJPY3LRRL7RKFK5Q3ZGNI2WQR45NULO
X-MailFrom: anastas@umich.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP X310 with internal GPSDO: GSM led in front panel
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RAJPY3LRRL7RKFK5Q3ZGNI2WQR45NULO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0720129652791253350=="

--===============0720129652791253350==
Content-Type: multipart/alternative; boundary="0000000000004a8aad05ce5450ae"

--0000000000004a8aad05ce5450ae
Content-Type: text/plain; charset="UTF-8"

I have some questions regarding the operation of X310.

1) How do I know if I have an internal GPSDO (we have 20 USRPs in the Lab
and I remember we bought some of them with GPSDO). I know that when I do
"uhd_usrp_probe", a device without GPSDO says "no internal GPSDO detected"
but in the absence of this message, should I assume there is one inside?

2) Upon powering up the USRP and assuming I have an active antenna
connected in the back side (GPS antenna) input, should I expect that at
some point the GPS led (front panel) will start blinking? or do I have to
do something to initiate GPS acquisition?

thanks
Achilleas

--0000000000004a8aad05ce5450ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have some questions regarding the operation of X310.<div=
><br></div><div>1) How do I know if I have an internal GPSDO (we have 20 US=
RPs in the Lab and I remember we bought some of them with GPSDO). I know th=
at when I do &quot;uhd_usrp_probe&quot;, a device without GPSDO says &quot;=
no internal GPSDO detected&quot; but in the absence of this message, should=
 I assume there is one inside?</div><div><br></div><div>2) Upon powering up=
 the USRP and assuming I have an active antenna connected in the back side =
(GPS antenna) input, should I expect that at some point the=C2=A0GPS led (f=
ront panel) will start blinking? or do I have to do something to initiate G=
PS acquisition?</div><div><br></div><div>thanks</div><div>Achilleas</div></=
div>

--0000000000004a8aad05ce5450ae--

--===============0720129652791253350==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0720129652791253350==--
