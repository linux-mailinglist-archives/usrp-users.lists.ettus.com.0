Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MwBM4Tu6GkdRwIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 22 Apr 2026 17:51:32 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B5F448227
	for <lists+usrp-users@lfdr.de>; Wed, 22 Apr 2026 17:51:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98CF0385DA8
	for <lists+usrp-users@lfdr.de>; Wed, 22 Apr 2026 11:51:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1776873090; bh=4W860HC8ijpLEKgt0Vieo8duPOJ3TS7YSAePaNPCu88=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=HkW0gE27i1zgIIgD65L3EsGvcZ96NxEAA3ydGq3YdvrYnhmmPouBlNAo1SOwHBLct
	 EQEru8At57rDFTK2eyUIylmBX8xGehzZUrSm/vu5Cr8hQPi2K3JGTjSroIO/TQg00B
	 GKraVGcYXTWxzOEKfHYGkIsnDFYrxGVguFc7AmSN1wLHDnhxCg7TYpyrUu1Kqiat2Q
	 lX3Son4zEOrItiAnDQRCjVAPeIq800elBx1pujaHEPdQkKqPnmGvGA39R+eEJg1be/
	 h+xcoh4PpTSUxyugIDz3MHwypC7sh+v3RwgA98/j+cry8c991FdjGSwMO7EwxSn4aO
	 H442y0OMbC0TQ==
Received: from mail-yx1-f43.google.com (mail-yx1-f43.google.com [74.125.224.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 03C69386A86
	for <usrp-users@lists.ettus.com>; Wed, 22 Apr 2026 11:50:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="kzAytAPK";
	dkim-atps=neutral
Received: by mail-yx1-f43.google.com with SMTP id 956f58d0204a3-65427236e94so3055487d50.1
        for <usrp-users@lists.ettus.com>; Wed, 22 Apr 2026 08:50:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776873024; cv=none;
        d=google.com; s=arc-20240605;
        b=CDU7TLY8j0nvbUv7LNW8lmXDQNWQEJH2xwACjq3SLbn/5Ucj6BERsOzRXt6ETzFaK8
         6wkLHV6gTQf8Tbro+ypkKYig7zqeUwggRRviVRAFfKoN2dIZP5T4p+O6elgmp3xDI/jC
         g/3GzE5gN3YWASLBnPzURAS+VZtH8pJ2kqMqsY7SeZruHw97u7VllO7Uwo5zLnvXdhtw
         7JaqMM6Ikqc8NRHhw8/tiwktU1kd9qkkACAnLKlQuASDvo2NJc7ErT9STQpH94FHlpNR
         CxfHjNFdrE1XQgoiWiTXJkqOFFJL7u+zamlz/wszbAUo0KREXa+R+LJunH+JJztJEGX9
         1WYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=/NDNyIeyOxsm0oTu/jccDSZ8grQb7cI21J6F4Xm8Nq4=;
        fh=7x+5Qq5FC8MUtCGcJvrnDrCV484FJE2pnnNf2U13jts=;
        b=JUJIJ0cEho2GEtQMiiRDRbld+eVmECmS0VJB3fwRes+AxJS3oKGvAQG9s0dEKg3OjP
         ZD4LlbVp1cJOEd2kQOedKYW9Xo3xAkQGDcehPTa5NzAXYYRUH4qE51nY9BTeTlndiC5S
         EpqNzY6R/wqD07r6DJtfEowBPMAYDIt/lw6/G3tQKJa9pml9EXNi9+318JSN+B1D5Jis
         TyP02BgJ+562lZpJLha00nuryDLoZL9M+ufRVtpohggE61P25sjLVsc87j6DXZtglTGc
         2WtKJlFGuA29uitMJJLVBIzEZ59oqleeabs9Py9mPItVpiR4s5odK8URcms1VNwKTJHE
         CumQ==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1776873024; x=1777477824; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/NDNyIeyOxsm0oTu/jccDSZ8grQb7cI21J6F4Xm8Nq4=;
        b=kzAytAPKbf6Pg4OR7Wa0cD77cFU9IgTt7NMJxwPCfSSZSAHM4Zy7O/IH8Cf74y7BY/
         uMEd6pKPWLitNyAkg06qdElpkqCIc5FItf8U4p+y8ufwhNp4O6FqM9cxHEhcLWvSvGr6
         bB+Mw0frF33I/YnSaLTij30MzUzc8S0xX93BVsfRIH4Fw5OGrkP74zUd+B59m0Am/C5g
         FI0zSwOEn8hKynEZmwAhIEnR/za2YmJfUnb2RNt4q2NKCJmEXeIG1FwwrCDq8Ecs8hVd
         QPOk59cQ9yfkCYrXJLYIs+9ZkM9UuZurO8CAZ++Yza+imENYyWtIpDa0zW5OyL1TmD8Q
         j/xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776873024; x=1777477824;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/NDNyIeyOxsm0oTu/jccDSZ8grQb7cI21J6F4Xm8Nq4=;
        b=FTHyt2e+ZKEN4GyNDzEUaPGe4LrRGkXAwoFeSK7dICAO3XUBfdP7VYFquo4EUKoI6T
         +hkHX28TMplqBRpKIO94L2Qe9TPMkHTYffiyPyseqomES6ToiTTHKzICUjZa+zBM4MRS
         kFj4WPXw88mjXWtqNNNGypy4PI0iXemciGPRVhQTD/aAYoRc/kI50/8KIK+jzzEzLIvB
         w08eFXLn6/Gma4c+dQ/UetekDcy/GK4dt6ZV3/zRMn+7KId2+Pwk4x2CmxrMq80VkEj+
         rk2L3LLrYGWFTLcQ2FNziJB3LexIVDHyNiBFY02K6daj/WZ0EH6VDG/wnKkIygK9cU0K
         /dnw==
X-Gm-Message-State: AOJu0YwYekq0okVdDxyhWYp1LoC4U2Rv1OvL1giiMy6qoMTvlEBSeTpy
	G50bELOt4RIx0ss9s+pn9SV1HFYqKzHnZ9otSnnuMEl3FghBTuQNrNnSg9bcuKKDqkIZ0e248IZ
	YE4Y3S6j+MKOhdPzMDZdCybG77CBtJ21ED8vJAjZZ1yXmC7wqEElZjJjf
X-Gm-Gg: AeBDietvHOaIaFO6bTeEBCAg1pnzv8eNWWG8O05veuAG/SeQFxmZyypMMmgj0bSPgqP
	m8pOxGFmEGNjaziOy53dMZOfxaqhEW2zF7MjtL36qsQI0VywXatQv+JNYw1KbiFj5kOO4QgXVfF
	79ML7lXDD4iMeAp6k6IAcMy7y3WjxdeW6W1RdTBN0U5z9TRBjZ/ffR8zRFVCNicRSs5BuikCdT+
	pQ+4PMdqrhS9bEzpWP9LYiCbinWgoz/MK4uBPqO0UYrPCK7VIrUGHEouZwRCpATfxYdkSMW9zLZ
	S5Jek+asntPwywiWeAM8Is6jdNtlZyb5elXH5AdR6a1sbn9pbp/FyKlNx4o=
X-Received: by 2002:a05:690e:251b:20b0:651:b938:188b with SMTP id
 956f58d0204a3-65310833e04mr17233603d50.24.1776873023962; Wed, 22 Apr 2026
 08:50:23 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 22 Apr 2026 11:50:12 -0400
X-Gm-Features: AQROBzBG8JbNkH2jVI3-sHD2trNSKN11wO1tEeMFy70E30vYvvqUGQMlLqFKBZ8
Message-ID: <CAB__hTQW024K+ihXtyU2fJZ9thxqb=HXNjPRsmSvscsad+YvVQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: BSMQX7AJH3I7DXIRXJ4UEFGEKKH6AZU5
X-Message-ID-Hash: BSMQX7AJH3I7DXIRXJ4UEFGEKKH6AZU5
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Problem updating X310 bitfile
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BSMQX7AJH3I7DXIRXJ4UEFGEKKH6AZU5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3866946325231953480=="
X-Spamd-Result: default: False [0.09 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DMARC_NA(0.00)[ettus.com];
	TO_EQ_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[rkossler@nd.edu];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[usrp-users];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[nd.edu:s=google];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,nd.edu:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[irisheyes8-hp-z240-sff-workstation:email,mail.gmail.com:mid,emwd.com:dkim,nd.edu:replyto]
X-Rspamd-Queue-Id: E9B5F448227
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============3866946325231953480==
Content-Type: multipart/alternative; boundary="00000000000067a4aa06500e7db4"

--00000000000067a4aa06500e7db4
Content-Type: text/plain; charset="UTF-8"

Hi,
I am having a problem updating the FPGA image for one of my X310 devices
(other X310 devices update fine).  The following two commands
"uhd_usrp_probe" and "uhd_image_loader" show the issue.  The first command
completes fine with no errors.  The second command dies immediately with an
"initialization" error.  I am wondering how to troubleshoot this.
Rob

irisheyes8@irisheyes8-HP-Z240-SFF-Workstation:~$ uhd_usrp_probe --args
addr=192.168.45.2
[INFO] [UHD] linux; GNU C++ version 13.2.0; Boost_108300;
UHD_4.7.0.0-0-ga5ed1872
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.932
[INFO] [X300] Radio 1x clock: 200 MHz
  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X310
|   |   revision: 6
|   |   revision_compat: 4
|   |   product: 30508
|   |   mac-addr0: 00:80:2f:16:07:f0
|   |   mac-addr1: 00:80:2f:16:07:f1
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.1.45
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.20.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.145.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.45.2
|   |   subnet3: 255.255.255.0
|   |   serial: F5FDDE
|   |   FW Version: 6.1
|   |   FPGA Version: 39.2
|   |   FPGA git hash: 6a990d9
|   |   RFNoC capable: Yes
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: gps_servo, gps_time, gps_locked, gps_gprmc, gps_gpgga,
ref_locked
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/DDC#0
|   |   * 0/DDC#1
|   |   * 0/DUC#0
|   |   * 0/DUC#1
|   |   * 0/Radio#0
|   |   * 0/Radio#1
|   |   * 0/Replay#0
|     _____________________________________________________
|    /
|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0==>0/DUC#0:0
|   |   * 0/DUC#0:0==>0/Radio#0:0
|   |   * 0/Radio#0:0==>0/DDC#0:0
|   |   * 0/DDC#0:0==>0/SEP#0:0
|   |   * 0/Radio#0:1==>0/DDC#0:1
|   |   * 0/DDC#0:1==>0/SEP#1:0
|   |   * 0/SEP#2:0==>0/DUC#1:0
|   |   * 0/DUC#1:0==>0/Radio#1:0
|   |   * 0/Radio#1:0==>0/DDC#1:0
|   |   * 0/DDC#1:0==>0/SEP#2:0
|   |   * 0/Radio#1:1==>0/DDC#1:1
|   |   * 0/DDC#1:1==>0/SEP#3:0
|   |   * 0/SEP#4:0==>0/Replay#0:0
|   |   * 0/Replay#0:0==>0/SEP#4:0
|   |   * 0/SEP#5:0==>0/Replay#0:1
|   |   * 0/Replay#0:1==>0/SEP#5:0
|     _____________________________________________________
|    /
|   |       TX Dboard: 0/Radio#0
|   |   ID: UBX-160 v1 (0x0079)
|   |   Serial: 30B8D4F
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: UBX TX
|   |   |   Antennas: TX/RX, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: QI
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: 0/Radio#0
|   |   ID: UBX-160 v1 (0x007a)
|   |   Serial: 30B8D4F
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: UBX RX
|   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       TX Dboard: 0/Radio#1
|   |   ID: UBX-160 v1 (0x0079)
|   |   Serial: 30B8D57
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: UBX TX
|   |   |   Antennas: TX/RX, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: QI
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: 0/Radio#1
|   |   ID: UBX-160 v1 (0x007a)
|   |   Serial: 30B8D57
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: UBX RX
|   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No

irisheyes8@irisheyes8-HP-Z240-SFF-Workstation:~$ uhd_image_loader --args
addr=192.168.45.2,type=x300,fpga=HG
[INFO] [UHD] linux; GNU C++ version 13.2.0; Boost_108300;
UHD_4.7.0.0-0-ga5ed1872
Unit: USRP X310 (F5FDDE, 192.168.45.2)
FPGA Image:
/home/irisheyes8/uhd/UHD-4.7/share/uhd/images/usrp_x310_fpga_HG.bit
failed.
Error: RuntimeError: Device reported an error during initialization.
irisheyes8@irisheyes8-HP-Z240-SFF-Workstation:~$

--00000000000067a4aa06500e7db4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><font face=3D"arial,sans-serif">Hi,</font></div><div>=
<font face=3D"arial,sans-serif">I am having a problem updating the FPGA ima=
ge for one of my X310 devices (other X310 devices update fine).=C2=A0 The f=
ollowing two commands &quot;uhd_usrp_probe&quot; and &quot;uhd_image_loader=
&quot; show the issue.=C2=A0 The first command completes fine with no error=
s.=C2=A0 The second command dies immediately with an &quot;initialization&q=
uot; error.=C2=A0 I am wondering how to troubleshoot this.</font></div><div=
><font face=3D"arial,sans-serif">Rob</font></div><div><font face=3D"arial,s=
ans-serif"><br></font><span style=3D"font-family:monospace"></span></div><d=
iv><span style=3D"font-family:monospace;background-color:rgb(255,255,0)">ir=
isheyes8@irisheyes8-HP-Z240-SFF-Workstation:~$ uhd_usrp_probe --args addr=
=3D192.168.45.2</span></div><div><span style=3D"font-family:monospace"></sp=
an></div><span style=3D"font-family:monospace">[INFO] [UHD] linux; GNU C++ =
version 13.2.0; Boost_108300; UHD_4.7.0.0-0-ga5ed1872<br>[INFO] [X300] X300=
 initialization sequence...<br>[INFO] [X300] Maximum frame size: 8000 bytes=
.<br>[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.932<br>[IN=
FO] [X300] Radio 1x clock: 200 MHz<br>=C2=A0 ______________________________=
_______________________<br>=C2=A0/<br>| =C2=A0 =C2=A0 =C2=A0 Device: X-Seri=
es Device<br>| =C2=A0 =C2=A0 ______________________________________________=
_______<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: X310=
<br>| =C2=A0 | =C2=A0 revision: 6<br>| =C2=A0 | =C2=A0 revision_compat: 4<b=
r>| =C2=A0 | =C2=A0 product: 30508<br>| =C2=A0 | =C2=A0 mac-addr0: 00:80:2f=
:16:07:f0<br>| =C2=A0 | =C2=A0 mac-addr1: 00:80:2f:16:07:f1<br>| =C2=A0 | =
=C2=A0 gateway: 192.168.10.1<br>| =C2=A0 | =C2=A0 ip-addr0: 192.168.1.45<br=
>| =C2=A0 | =C2=A0 subnet0: 255.255.255.0<br>| =C2=A0 | =C2=A0 ip-addr1: 19=
2.168.20.2<br>| =C2=A0 | =C2=A0 subnet1: 255.255.255.0<br>| =C2=A0 | =C2=A0=
 ip-addr2: 192.168.145.2<br>| =C2=A0 | =C2=A0 subnet2: 255.255.255.0<br>| =
=C2=A0 | =C2=A0 ip-addr3: 192.168.45.2<br>| =C2=A0 | =C2=A0 subnet3: 255.25=
5.255.0<br>| =C2=A0 | =C2=A0 serial: F5FDDE<br>| =C2=A0 | =C2=A0 FW Version=
: 6.1<br>| =C2=A0 | =C2=A0 FPGA Version: 39.2<br>| =C2=A0 | =C2=A0 FPGA git=
 hash: 6a990d9<br>| =C2=A0 | =C2=A0 RFNoC capable: Yes<br>| =C2=A0 | =C2=A0=
 <br>| =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo<br>| =
=C2=A0 | =C2=A0 Clock sources: internal, external, gpsdo<br>| =C2=A0 | =C2=
=A0 Sensors: gps_servo, gps_time, gps_locked, gps_gprmc, gps_gpgga, ref_loc=
ked<br>| =C2=A0 =C2=A0 ____________________________________________________=
_<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on th=
is device:<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 * 0/DDC#0<br>| =C2=A0=
 | =C2=A0 * 0/DDC#1<br>| =C2=A0 | =C2=A0 * 0/DUC#0<br>| =C2=A0 | =C2=A0 * 0=
/DUC#1<br>| =C2=A0 | =C2=A0 * 0/Radio#0<br>| =C2=A0 | =C2=A0 * 0/Radio#1<br=
>| =C2=A0 | =C2=A0 * 0/Replay#0<br>| =C2=A0 =C2=A0 ________________________=
_____________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 Static connections on this device:<br>| =C2=A0 | =C2=A0 <br>| =
=C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>| =C2=A0 | =C2=A0 * 0/DUC=
#0:0=3D=3D&gt;0/Radio#0:0<br>| =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DDC=
#0:0<br>| =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>| =C2=A0 | =C2=
=A0 * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>| =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D=
&gt;0/SEP#1:0<br>| =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0<br>| =C2=
=A0 | =C2=A0 * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>| =C2=A0 | =C2=A0 * 0/Radi=
o#1:0=3D=3D&gt;0/DDC#1:0<br>| =C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D&gt;0/SEP#2:=
0<br>| =C2=A0 | =C2=A0 * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1<br>| =C2=A0 | =C2=
=A0 * 0/DDC#1:1=3D=3D&gt;0/SEP#3:0<br>| =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&g=
t;0/Replay#0:0<br>| =C2=A0 | =C2=A0 * 0/Replay#0:0=3D=3D&gt;0/SEP#4:0<br>| =
=C2=A0 | =C2=A0 * 0/SEP#5:0=3D=3D&gt;0/Replay#0:1<br>| =C2=A0 | =C2=A0 * 0/=
Replay#0:1=3D=3D&gt;0/SEP#5:0<br>| =C2=A0 =C2=A0 __________________________=
___________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0=
 =C2=A0 TX Dboard: 0/Radio#0<br>| =C2=A0 | =C2=A0 ID: UBX-160 v1 (0x0079)<b=
r>| =C2=A0 | =C2=A0 Serial: 30B8D4F<br>| =C2=A0 | =C2=A0 =C2=A0 ___________=
__________________________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>=
| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>| =C2=A0 | =C2=
=A0 | =C2=A0 Name: UBX TX<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, CA=
L<br>| =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>| =C2=A0 | =C2=A0 | =
=C2=A0 Freq range: 10.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gai=
n range PGA0: 0.0 to 31.5 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwid=
th range: 160000000.0 to 160000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=
=A0 Connection Type: QI<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br=
>| =C2=A0 =C2=A0 _____________________________________________________<br>|=
 =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: 0/Radio#0<br>=
| =C2=A0 | =C2=A0 ID: UBX-160 v1 (0x007a)<br>| =C2=A0 | =C2=A0 Serial: 30B8=
D4F<br>| =C2=A0 | =C2=A0 =C2=A0 ___________________________________________=
__________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 RX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: UBX RX<br>| =
=C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL<br>| =C2=A0 | =C2=A0 | =
=C2=A0 Sensors: lo_locked<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 =
to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 =
step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 160000000.0 to 1=
60000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br=
>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 =C2=A0 _________=
____________________________________________<br>| =C2=A0 =C2=A0/<br>| =C2=
=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: 0/Radio#1<br>| =C2=A0 | =C2=A0 ID: UB=
X-160 v1 (0x0079)<br>| =C2=A0 | =C2=A0 Serial: 30B8D57<br>| =C2=A0 | =C2=A0=
 =C2=A0 _____________________________________________________<br>| =C2=A0 |=
 =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<=
br>| =C2=A0 | =C2=A0 | =C2=A0 Name: UBX TX<br>| =C2=A0 | =C2=A0 | =C2=A0 An=
tennas: TX/RX, CAL<br>| =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>| =
=C2=A0 | =C2=A0 | =C2=A0 Freq range: 10.000 to 6000.000 MHz<br>| =C2=A0 | =
=C2=A0 | =C2=A0 Gain range PGA0: 0.0 to 31.5 step 0.5 dB<br>| =C2=A0 | =C2=
=A0 | =C2=A0 Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz<br>| =
=C2=A0 | =C2=A0 | =C2=A0 Connection Type: QI<br>| =C2=A0 | =C2=A0 | =C2=A0 =
Uses LO offset: No<br>| =C2=A0 =C2=A0 _____________________________________=
________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX =
Dboard: 0/Radio#1<br>| =C2=A0 | =C2=A0 ID: UBX-160 v1 (0x007a)<br>| =C2=A0 =
| =C2=A0 Serial: 30B8D57<br>| =C2=A0 | =C2=A0 =C2=A0 ______________________=
_______________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 =
Name: UBX RX<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX, RX2, CAL<br>| =
=C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked<br>| =C2=A0 | =C2=A0 | =C2=A0 F=
req range: 10.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range =
PGA0: 0.0 to 31.5 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range=
: 160000000.0 to 160000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Conn=
ection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br><br><sp=
an style=3D"background-color:rgb(255,255,0)">irisheyes8@irisheyes8-HP-Z240-=
SFF-Workstation:~$ uhd_image_loader --args addr=3D192.168.45.2,type=3Dx300,=
fpga=3DHG</span><br>[INFO] [UHD] linux; GNU C++ version 13.2.0; Boost_10830=
0; UHD_4.7.0.0-0-ga5ed1872<br>Unit: USRP X310 (F5FDDE, 192.168.45.2)<br>FPG=
A Image: /home/irisheyes8/uhd/UHD-4.7/share/uhd/images/usrp_x310_fpga_HG.bi=
t<br>failed.<br>Error: RuntimeError: Device reported an error during initia=
lization.<br>irisheyes8@irisheyes8-HP-Z240-SFF-Workstation:~$ <br></span><b=
r></div>

--00000000000067a4aa06500e7db4--

--===============3866946325231953480==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3866946325231953480==--
