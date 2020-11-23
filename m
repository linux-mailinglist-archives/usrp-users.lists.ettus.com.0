Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E962BFE22
	for <lists+usrp-users@lfdr.de>; Mon, 23 Nov 2020 03:21:26 +0100 (CET)
Received: from [::1] (port=42734 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kh1Tl-0003dh-AZ; Sun, 22 Nov 2020 21:21:21 -0500
Received: from mail-pg1-f173.google.com ([209.85.215.173]:43093)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jmcrossen80@gmail.com>)
 id 1kh1Th-0003a6-BH
 for usrp-users@lists.ettus.com; Sun, 22 Nov 2020 21:21:17 -0500
Received: by mail-pg1-f173.google.com with SMTP id 34so12828223pgp.10
 for <usrp-users@lists.ettus.com>; Sun, 22 Nov 2020 18:20:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=2BgZgBO20fnuXEWxzeA3m2yFlH5+h6IdIJlcs4HQUsM=;
 b=iND1HCOxP15xHKMczzdiAdFNljXpjTcO8QsAX9pwFdLvePaBg1lRr++5Jv579t0sP7
 ywc806DYQGvYBDPiO1u9WvM4rauqR3Qw03N4WoS6eeCsUAr/UnjnuDBmZM39ghlVgPfA
 YAz7z7NdCr2Vr7NzhYFvbwvQ+7HgnBzFiHtQ5OL1KYCgPgbnfKbCd6UAYmsbxa4YErvG
 uRgoD/fXmQj9/QfdVbRoEDc6QehQ769OuYU/58RgFitTl9tdJ2ah7vIKouaMxTpTVFub
 YfCm3pbjhjm7VQuB2okrlD21QmtKy9vXqPbJunAURs2F4lW87mb4HIvGH2TRbs5K9C+8
 Odpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=2BgZgBO20fnuXEWxzeA3m2yFlH5+h6IdIJlcs4HQUsM=;
 b=Pt3SyHku8JccsqfqkdOgpxUNlQscS1HBBwQCzn5UsvpLmIhHx/uwXzVtHxVA0nP6/E
 yZ9GV6s6jAAoWQcrFWfuREmzyK6dzOyuLXMBiWDXt4G7uSXc5/gSBwGILIDMRZsjraQi
 ld7BkyNDEdLhXMiSvwuSjtl8PKogup/Kt7RHTjfEigR3Xgjvtuxl3qcm7rRhTfVj5QZI
 64pf06sFePQyPLsskDjtvyuglbGqYdlz5RW2Adhr6XPVSBaw/mr/yfy78xLIqXa/EBbU
 txnsu8FD2n2I3IH3BDCQJeTEKFysmfzQU08tK98cEEc/ZAPf/m8Gq3C83Ey9JMTV3OH8
 MICQ==
X-Gm-Message-State: AOAM531kDC/oZ2okCgW0hUTLZOPTnwDzJh8eTorLFwoh4L+74uCS8/Ac
 DggatbmiIllr3+JvuEHtTcOM34ok9/eAt6fEwAECE7fR4FM=
X-Google-Smtp-Source: ABdhPJwMOI6CvPxsH4PTygV1AwF/ht5fs6lEhBut1TCWPpptlaBgH1Sii+5ioWpFfPEFAwYAJ7LS86/1N0Cb54p7LAU=
X-Received: by 2002:a63:389:: with SMTP id 131mr26056668pgd.128.1606098036266; 
 Sun, 22 Nov 2020 18:20:36 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 23 Nov 2020 12:50:25 +1030
Message-ID: <CAEnX9dG87HxLnGoNeeEgK+QBYcB7idJnN4A715BzPye_4XYT2Q@mail.gmail.com>
To: discuss-gnuradio@gnu.org, usrp-users@lists.ettus.com
Subject: [USRP-users] Poor Data Rates with the USRP E312
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
From: Joe Crossen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Joe Crossen <jmcrossen80@gmail.com>
Content-Type: multipart/mixed; boundary="===============8828685397114383061=="
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

--===============8828685397114383061==
Content-Type: multipart/alternative; boundary="000000000000ed198605b4bcd603"

--000000000000ed198605b4bcd603
Content-Type: text/plain; charset="UTF-8"

 Hi all,

I'm attempting to use the USRP E312 as a wifi node using the gr-ieee802.11
module...
though for now I'm testing basic USRP functionality with a couple of simple
GNU graphs.

Here's my setup:
- the host is an Ubuntu 18.04 virtual machine with a bridged adaptor.
Firewall disabled.
- the USRP is the E312, connected via ethernet to the host network.
- the host and USRP are both running GR3.8 and UHD4.0 (Zeus branch).
- the host can see the USRP with uhd_usrp_probe.
- the USRP is running the following GNU graph - UHD:USRP Source -> UDP Sink.
- host is running the following GNU graph - UDP Source -> QT GUI Sink.
- all block parameters are default.

I'm experiencing the following issues:
1. For sample rates > ~2Msps, the USRP spams overrun "O" and "D" characters
(what does the "D" signify?) , regardless of whether the host graph is
running or not.
2. At any sample rate the host graph spams the following message (when the
USRP graph is running) - "gr::log :WARN: udp_source0 - Too much data;
dropping packet."

And a question:
3. What sample rates are realistic for this setup, and what are the
limitations? wifi channels span 20MHz, so I'm hoping to run at 20Msps

Thanks,
Joe

--000000000000ed198605b4bcd603
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>

Hi all, <br></div><div><br></div><div>I&#39;m attempting to use the USRP E3=
12 as a wifi node using the gr-ieee802.11 module... <br></div><div> though =
for now I&#39;m testing basic USRP functionality with a couple of simple GN=
U graphs.=C2=A0

</div><div><br></div><div>Here&#39;s my setup:</div><div>
- the host is an Ubuntu 18.04 virtual machine with a bridged adaptor. Firew=
all disabled. <br></div><div>- the USRP is the E312, connected via ethernet=
 to the host network.=C2=A0 <br></div><div></div><div>- the host and USRP a=
re both running GR3.8 and UHD4.0 (Zeus branch). <br></div><div>- the host c=
an see the USRP with uhd_usrp_probe.<br></div><div>- the USRP is running=20
the following=20

GNU graph - UHD:USRP Source -&gt; UDP Sink.</div><div>- host is running the=
 following GNU graph - UDP Source -&gt; QT GUI Sink.</div><div>- all block =
parameters are default.</div><div><br></div><div></div><div>I&#39;m experie=
ncing the following issues:</div><div>1. For sample rates &gt; ~2Msps, the =
USRP spams overrun &quot;O&quot; and &quot;D&quot; characters (what does th=
e &quot;D&quot; signify?) , regardless of whether the host graph is running=
 or not.</div><div>2. At any sample rate the host graph spams the following=
 message (when the USRP graph is running) - &quot;gr::log :WARN: udp_source=
0 - Too much data; dropping packet.&quot;</div><div><br></div><div>And a qu=
estion:<br></div><div>3. What sample rates are realistic for this setup, an=
d what are the limitations? wifi channels span 20MHz, so I&#39;m hoping to =
run at 20Msps</div><div><br></div><div>Thanks,</div><div>Joe<br></div><div>=
<br></div><div><br></div><div><br></div><div><br></div></div>

--000000000000ed198605b4bcd603--


--===============8828685397114383061==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8828685397114383061==--

