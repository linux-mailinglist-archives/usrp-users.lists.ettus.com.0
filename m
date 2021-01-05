Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DC12EB5DC
	for <lists+usrp-users@lfdr.de>; Wed,  6 Jan 2021 00:08:45 +0100 (CET)
Received: from [::1] (port=54322 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kwvRR-0000Zj-Q0; Tue, 05 Jan 2021 18:08:41 -0500
Received: from mail-oi1-f169.google.com ([209.85.167.169]:34651)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kwvRO-0000ST-2Q
 for usrp-users@lists.ettus.com; Tue, 05 Jan 2021 18:08:38 -0500
Received: by mail-oi1-f169.google.com with SMTP id s75so1486452oih.1
 for <usrp-users@lists.ettus.com>; Tue, 05 Jan 2021 15:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=6YRv8JNIZOgbI4ym/WHi7IW34Dh0VZGRYJYt2UcJ9N4=;
 b=EKazG5B2J0B+IbkDUL3IEMeJS0ub/1/eTcXXPkiSYvo/FL3kmV9DjRhefIArmN7Xe/
 Gm0dHcpxLBOPgKLKNQXSYUPTa1sMq2tDmictSF1hq/C0EaeCA0uGxGhzLly5+tUTO1vU
 HKM/cv+GRt9FzcjRroHWESofPHoqIptsXo461b0bRRMoLOvROrBX0UZozfYW/uaM0yMk
 k8osvpBtt+eA98NXHv7wKBVAnjAjX3ZIUOVaFWw56hV8Q3Xq6L9rntVKrNspLRAargQ5
 oy6dCRULqEiS1fR7UWymXGLve91wSuoKPYALb1o8wbHg3i+9MWStvkIa+5zcwF6GSKzY
 9Quw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=6YRv8JNIZOgbI4ym/WHi7IW34Dh0VZGRYJYt2UcJ9N4=;
 b=CwDYlEXbd3t1u2WQfqYf+Pob5ZQ9fkMU37rFCAag309TK47id3yqy/Svr4NpMobZ2B
 OWYmFREvPqpBXje9CtpVnvBp/yX8YYBmBrM65cjcctAM/1uZ6vI5buotel4ZIpnQlCXL
 O4dYCaDvdQf+6Z3Gpg5yKBB35lA3/KLrZZN058yk9vJpdmjYaLqB5VJiVuMfNvytXYX4
 d+Apz5RLgphId4w3y61JABgsGMOtTo9d5+/s7Xp6reb5sIEzzDJhv5F+H4ls7iyPEwVJ
 AkVxNouBfiLnIoCt5CQViWrk8T7Cl74PnG2ojC7sqTztwPQWlO5MPnMTTgHQSOD2oz8M
 4/ew==
X-Gm-Message-State: AOAM531nXFHrcqzeyJNV/jKUENru2++xxSzbU+1Xbzon3D+woYQ29TH9
 wy9LrVQo+ZPHYnJMFNcm8JNiHqeoFE0L59xpJEIC+D1qlGbsoA==
X-Google-Smtp-Source: ABdhPJz+xcUuNQorLbzgr3sBo97sG8wOdVu/ARm4fuZhY3OL8Yzm6Ze61RgzgUA7g5czd8WdzU/YpUwxKK74ry4hUTQ=
X-Received: by 2002:a05:6808:9a:: with SMTP id
 s26mr1427180oic.124.1609888076626; 
 Tue, 05 Jan 2021 15:07:56 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 5 Jan 2021 18:07:45 -0500
Message-ID: <CAB__hTT6AyXGPERxgJQiDoyvhxPcLSZts2SmnrhE0kyMvr7fXw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Testing single RFNoC block produces out-of-sequence
 (S) errors
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1038004951033712763=="
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

--===============1038004951033712763==
Content-Type: multipart/alternative; boundary="000000000000efce4405b82f46d7"

--000000000000efce4405b82f46d7
Content-Type: text/plain; charset="UTF-8"

Hi,
I created a custom pulse-detector block which attempts to pass/discard
samples based upon an instantaneous power estimate. Each set of
consecutively passed samples constitutes a "burst" (i.e. the EOB is set on
the TLAST corresponding to the final passed sample of the burst).  A burst
can have as few as 1 sample because my block does not prevent this.

The block does what I expect in the testbench and even in the FPGA binary
when using the same data as the testbench.  However, when using a long
input stream (~250MSamps from previous recording that I have handy) to test
this block running in the FPGA, I get out-of-sequence errors on receive. My
graph is tx_streamer => pulse_detector => rx_streamer (actually, my
pulse_detector is a 2x2 block so there are 2 tx_streamers and 2
rx_streamers, all of which are run in separate threads).

I am wondering if the Sequence errors have nothing to do with my block but
rather are related to the way Ubuntu handles incoming Ethernet data such
that perhaps it is running out of RX descriptors. I have tried slowing down
my Transmit and seen some improvement but without eliminating the errors
completely. So, I'm wondering what suggestions others might have.  My ideas
are:
* invest some time to get DPDK working.  With this, perhaps Sequence errors
cannot occur??
* try slowing down my Tx even further?
* create artificial data sets (rather than real collected data) such that I
can control the length of the output pulses

Let me know if you have any suggestions.
Rob

--000000000000efce4405b82f46d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I created a custom pulse-detector block which atte=
mpts to pass/discard samples based upon an instantaneous power estimate. Ea=
ch set of consecutively passed samples constitutes a &quot;burst&quot; (i.e=
. the EOB is set on the TLAST corresponding to the final passed sample of t=
he burst).=C2=A0 A burst can have as few as 1 sample because my block does =
not prevent this.</div><div><br></div><div>The block does what I expect in =
the testbench and even in the FPGA binary when using the same data as the t=
estbench.=C2=A0 However, when using a long input stream (~250MSamps from pr=
evious recording that I have handy) to test this block running in the FPGA,=
 I get out-of-sequence errors on receive. My graph is tx_streamer =3D&gt; p=
ulse_detector =3D&gt; rx_streamer (actually, my pulse_detector is a 2x2 blo=
ck so there are 2 tx_streamers and 2 rx_streamers, all of which are run in =
separate threads).</div><div><br></div><div>I am wondering if the Sequence =
errors have nothing to do with my block but rather are related to the way U=
buntu handles incoming Ethernet data such that perhaps it is running out of=
 RX descriptors. I have tried slowing down my Transmit and seen some improv=
ement but without eliminating the errors completely. So, I&#39;m wondering =
what suggestions others might have.=C2=A0 My ideas are:</div><div>* invest =
some time to get DPDK working.=C2=A0 With this, perhaps Sequence errors can=
not occur??</div><div>* try=C2=A0slowing down my Tx even further?</div><div=
>* create artificial data sets (rather than real collected data) such that =
I can control the length of the output pulses</div><div><br></div><div>Let =
me know if you have any suggestions.</div><div>Rob</div></div>

--000000000000efce4405b82f46d7--


--===============1038004951033712763==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1038004951033712763==--

