Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0259BC25F
	for <lists+usrp-users@lfdr.de>; Tue,  5 Nov 2024 02:13:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 91854385AAC
	for <lists+usrp-users@lfdr.de>; Mon,  4 Nov 2024 20:13:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730769201; bh=TMgDsZ334LBRoC+IKYwg+nooVhSnlbA+kQScpSv5+1A=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=FlfG/uboqlv7E0xC9cQYCbXuaO4gB7GCj+9auJZETCU+SDaBbDpIGOZcJxdlXygBp
	 wc3Ja3kOQNbtIEA6DVbuxVrL3zEGYj3lVwc9cp0iwr6RJ1uwOggmwK2rwCnRAad9Dd
	 v6E2i1orWtFt6RIipyTwGvI7wg4Uw4/hJYlYCclfCN0D3ungLYidMAZJxWCFEru2n2
	 7d6u2B0dsWUAGl+yftgRKMw1wezt0eCsTmtwshhwTKMj+KNYNGbXA+rTXnypmzVfYC
	 rqWZHfapuRXb5I5gGl1gWKoBR9E65YkYlDuZLT2BAWaA0JJeyKrLUTN92Nz8fqCfc6
	 /0KS8H8xK+Rvw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 462CA385A8B
	for <usrp-users@lists.ettus.com>; Mon,  4 Nov 2024 20:12:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730769177; bh=6kCYQhavsgyE4gzTU3STIUYAbJr3UmTO4e5MaDSBjgc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=UGMOI1oR4rhSFSSXaEvTdnBln48C0P97akOAhJpNmgK/axhypeUiBYJKul5XsZJ0L
	 cz4Ve/zjkBZ5paRYO4A6AMVYJJ/U2hive8R6Taqm81g2XUM3tiotswi89gaErboMMW
	 itIj4dSVbslK3f/1tlaIjcTfXbp/XKTlJzrf35eXdVnwZc50rR6lKq9Lu8dSa1Dm6g
	 3ydT8Y/7DPOkg/NWCwhJdrBrZK5hRfhTRZKea0ALiT6TJDED9p0cyXLnQkXGfp4PhI
	 W223Icnxu3TWxlrLr2vDsz6jmDfWq5sSriMarelTJSxArV1BhSqnUPePsrGVKrdov+
	 1+48KerriQAig==
Date: Tue, 5 Nov 2024 01:12:57 +0000
To: usrp-users@lists.ettus.com
From: dhpanchaai@gmail.com
Message-ID: <oVMUSqyj4Xpu4T131VUDzTnU1z0lh8sQWkhgi96EpyA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 3JsLpo8xjTrlyMuaHmQmruQwdo4Z0rWBugWprIbBkM@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: O2XRG6ORZX3JSAE5W3EPJXRBXO5JISMX
X-Message-ID-Hash: O2XRG6ORZX3JSAE5W3EPJXRBXO5JISMX
X-MailFrom: dhpanchaai@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Drop packets and sequence errors during X410 DPDK benchmark test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O2XRG6ORZX3JSAE5W3EPJXRBXO5JISMX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0433477724141874113=="

This is a multi-part message in MIME format.

--===============0433477724141874113==
Content-Type: multipart/alternative;
 boundary="b1_oVMUSqyj4Xpu4T131VUDzTnU1z0lh8sQWkhgi96EpyA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_oVMUSqyj4Xpu4T131VUDzTnU1z0lh8sQWkhgi96EpyA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I got it work. It seems RT_RUNTIME_SHARE disabled was the culprit. I re-e=
nabled it using these instructions and the benchmark worked without packe=
t drops or underruns:\
\
**Underruns Every Second with DPDK + Ubuntu**

With Linux kernels 5.10 and beyond, we have observed periodic underruns o=
n systems that otherwise have no issues. These Linux kernel versions are =
the default for Ubuntu 20.04.3 LTS and later. The underrun issue is due t=
o the=C2=A0`RT_RUNTIME_SHARE`=C2=A0feature being disabled by default in t=
hese versions of the Linux kernel (shown as=C2=A0`NO_RT_RUNTIME_SHARE`). =
The following procedure can be used to enable this feature. This process =
was tested on Linux kernel version 5.13; the procedure may be slightly di=
fferent on other kernel versions. To determine the Linux kernel version o=
f your system, in a terminal issue the command=C2=A0`uname -r`.

```
$ sudo -s
$ cd /sys/kernel/debug/sched
$ cat features | tr ' ' '\n' | grep RUNTIME_SHARE
NO_RT_RUNTIME_SHARE
$ echo RT_RUNTIME_SHARE > features
$ cat features | tr ' ' '\n' | grep RUNTIME_SHARE
RT_RUNTIME_SHARE
```

--b1_oVMUSqyj4Xpu4T131VUDzTnU1z0lh8sQWkhgi96EpyA
Content-Type: text/html; charset=us-ascii

<p>I got it work. It seems RT_RUNTIME_SHARE disabled was the culprit. I re-enabled it using these instructions and the benchmark worked without packet drops or underruns:<br><br><strong>Underruns Every Second with DPDK + Ubuntu</strong></p><p>With Linux kernels 5.10 and beyond, we have observed periodic underruns on systems that otherwise have no issues. These Linux kernel versions are the default for Ubuntu 20.04.3 LTS and later. The underrun issue is due to the&nbsp;<code>RT_RUNTIME_SHARE</code>&nbsp;feature being disabled by default in these versions of the Linux kernel (shown as&nbsp;<code>NO_RT_RUNTIME_SHARE</code>). The following procedure can be used to enable this feature. This process was tested on Linux kernel version 5.13; the procedure may be slightly different on other kernel versions. To determine the Linux kernel version of your system, in a terminal issue the command&nbsp;<code>uname -r</code>.</p><pre><code>$ sudo -s
$ cd /sys/kernel/debug/sched
$ cat features | tr ' ' '\n' | grep RUNTIME_SHARE
NO_RT_RUNTIME_SHARE
$ echo RT_RUNTIME_SHARE &gt; features
$ cat features | tr ' ' '\n' | grep RUNTIME_SHARE
RT_RUNTIME_SHARE</code></pre>


--b1_oVMUSqyj4Xpu4T131VUDzTnU1z0lh8sQWkhgi96EpyA--

--===============0433477724141874113==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0433477724141874113==--
